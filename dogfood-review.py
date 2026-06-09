#!/usr/bin/env python3
"""Dogfood review script for 04-dev UI changes"""
from playwright.sync_api import sync_playwright
import os
import json

OUTPUT_DIR = "/workspace/dogfood-output"
os.makedirs(f"{OUTPUT_DIR}/screenshots", exist_ok=True)

issues = []
issue_counter = [0]

def add_issue(severity, title, description, repro_steps=None, screenshot=None):
    issue_counter[0] += 1
    issues.append({
        "id": f"ISSUE-{issue_counter[0]:03d}",
        "severity": severity,
        "title": title,
        "description": description,
        "repro_steps": repro_steps or [],
        "screenshot": screenshot
    })
    print(f"  [!] {severity}: {title}")

with sync_playwright() as p:
    browser = p.chromium.launch(headless=True)
    page = browser.new_page(viewport={"width": 1280, "height": 800})

    console_logs = []
    page.on("console", lambda msg: console_logs.append(f"[{msg.type}] {msg.text}"))
    page.on("pageerror", lambda err: console_logs.append(f"[PAGE ERROR] {err}"))

    # =====================
    # 1. Initial Page Load
    # =====================
    print("\n=== 1. Initial Page Load ===")
    page.goto("http://localhost:4173")
    page.wait_for_load_state("networkidle")
    page.wait_for_timeout(2000)

    page.screenshot(path=f"{OUTPUT_DIR}/screenshots/01-initial.png", full_page=True)
    print("  Screenshot saved: 01-initial.png")

    errors = [l for l in console_logs if "error" in l.lower() or "PAGE ERROR" in l]
    if errors:
        add_issue("HIGH", "Console errors on initial load",
                  f"Found {len(errors)} console errors on page load",
                  screenshot="01-initial.png")
        for e in errors[:5]:
            print(f"    {e}")

    # Check for broken images
    broken_images = page.evaluate("""() => {
        return Array.from(document.querySelectorAll('img'))
            .filter(img => !img.complete || img.naturalWidth === 0)
            .map(img => img.src);
    }""")
    if broken_images:
        add_issue("MEDIUM", "Broken images on initial load",
                  f"Broken images: {broken_images}",
                  screenshot="01-initial.png")

    # =====================
    # 2. Check CSS Variables Applied
    # =====================
    print("\n=== 2. CSS Variables Check ===")
    primary_color = page.evaluate("getComputedStyle(document.documentElement).getPropertyValue('--primary-color')")
    bg_primary = page.evaluate("getComputedStyle(document.documentElement).getPropertyValue('--bg-primary')")
    print(f"  --primary-color: {primary_color}")
    print(f"  --bg-primary: {bg_primary}")

    if not primary_color or primary_color.strip() == "":
        add_issue("HIGH", "CSS variables not loaded",
                  "Primary color CSS variable is not defined",
                  screenshot="01-initial.png")

    # =====================
    # 3. Navigate to Dashboard
    # =====================
    print("\n=== 3. Dashboard Page ===")
    try:
        page.goto("http://localhost:4173/admin/dashboard")
        page.wait_for_load_state("networkidle")
        page.wait_for_timeout(1500)
        page.screenshot(path=f"{OUTPUT_DIR}/screenshots/02-dashboard.png", full_page=True)
        print("  Screenshot saved: 02-dashboard.png")

        # Check for welcome section gradient
        welcome_bg = page.evaluate("""() => {
            const el = document.querySelector('.welcome-section');
            return el ? getComputedStyle(el).background : 'not found';
        }""")
        print(f"  Welcome section background: {welcome_bg[:80] if welcome_bg else 'N/A'}...")

        # Check for action cards
        cards = page.locator('.action-card').count()
        print(f"  Action cards found: {cards}")
        if cards == 0:
            add_issue("HIGH", "Dashboard action cards missing",
                      "No .action-card elements found on Dashboard",
                      screenshot="02-dashboard.png")
    except Exception as e:
        add_issue("HIGH", "Dashboard navigation failed", str(e))

    # =====================
    # 4. Navigate to GameFeatures
    # =====================
    print("\n=== 4. GameFeatures Page ===")
    try:
        page.goto("http://localhost:4173/admin/game-features")
        page.wait_for_load_state("networkidle")
        page.wait_for_timeout(1500)
        page.screenshot(path=f"{OUTPUT_DIR}/screenshots/03-gamefeatures.png", full_page=True)
        print("  Screenshot saved: 03-gamefeatures.png")

        # Check tabs
        tabs = page.locator('.section-tabs .arco-tabs-nav-tab').count()
        print(f"  Tabs found: {tabs}")

        # Check for Naive UI residue
        naive_elements = page.evaluate("""() => {
            return document.querySelectorAll('[class*="n-"]').length;
        }""")
        if naive_elements > 0:
            add_issue("MEDIUM", "Naive UI class residue found",
                      f"Found {naive_elements} elements with 'n-' class prefix",
                      screenshot="03-gamefeatures.png")
    except Exception as e:
        add_issue("HIGH", "GameFeatures navigation failed", str(e))

    # =====================
    # 5. Navigate to BatchDailyTasks
    # =====================
    print("\n=== 5. BatchDailyTasks Page ===")
    try:
        page.goto("http://localhost:4173/admin/batch-daily-tasks")
        page.wait_for_load_state("networkidle")
        page.wait_for_timeout(1500)
        page.screenshot(path=f"{OUTPUT_DIR}/screenshots/04-batchdailytasks.png", full_page=True)
        print("  Screenshot saved: 04-batchdailytasks.png")

        # Check main layout
        layout = page.evaluate("""() => {
            const left = document.querySelector('.left-column');
            const right = document.querySelector('.right-column');
            return {
                left: left ? getComputedStyle(left).display : 'not found',
                right: right ? getComputedStyle(right).width : 'not found'
            };
        }""")
        print(f"  Layout: left={layout.get('left')}, right width={layout.get('right')}")

        # Check for Naive UI residue in styles
        style_content = page.evaluate("""() => {
            return Array.from(document.querySelectorAll('style')).map(s => s.textContent).join(' ');
        }""")
        if 'n-card__content' in style_content:
            add_issue("HIGH", "Naive UI n-card__content still in styles",
                      "Found 'n-card__content' in page styles - should be 'arco-card-body'",
                      screenshot="04-batchdailytasks.png")

        # Check log container styling
        log_bg = page.evaluate("""() => {
            const el = document.querySelector('.log-container');
            return el ? getComputedStyle(el).backgroundColor : 'not found';
        }""")
        print(f"  Log container background: {log_bg}")
    except Exception as e:
        add_issue("HIGH", "BatchDailyTasks navigation failed", str(e))

    # =====================
    # 6. Navigate to TokenImport
    # =====================
    print("\n=== 6. TokenImport Page ===")
    try:
        page.goto("http://localhost:4173/admin/token-import")
        page.wait_for_load_state("networkidle")
        page.wait_for_timeout(1500)
        page.screenshot(path=f"{OUTPUT_DIR}/screenshots/05-tokenimport.png", full_page=True)
        print("  Screenshot saved: 05-tokenimport.png")

        # Check token card styles
        cards = page.locator('.token-card').count()
        print(f"  Token cards found: {cards}")
    except Exception as e:
        add_issue("HIGH", "TokenImport navigation failed", str(e))

    # =====================
    # 7. Navigate to DailyTasks
    # =====================
    print("\n=== 7. DailyTasks Page ===")
    try:
        page.goto("http://localhost:4173/admin/daily-tasks")
        page.wait_for_load_state("networkidle")
        page.wait_for_timeout(1500)
        page.screenshot(path=f"{OUTPUT_DIR}/screenshots/06-dailytasks.png", full_page=True)
        print("  Screenshot saved: 06-dailytasks.png")

        # Check page header gradient
        header_bg = page.evaluate("""() => {
            const el = document.querySelector('.page-header');
            return el ? getComputedStyle(el).background : 'not found';
        }""")
        print(f"  Page header background: {header_bg[:80] if header_bg else 'N/A'}...")
    except Exception as e:
        add_issue("HIGH", "DailyTasks navigation failed", str(e))

    # =====================
    # 8. Dark Mode Check
    # =====================
    print("\n=== 8. Dark Mode Check ===")
    try:
        page.goto("http://localhost:4173/admin/dashboard")
        page.wait_for_load_state("networkidle")

        # Simulate dark mode
        page.evaluate("document.documentElement.setAttribute('arco-theme', 'dark')")
        page.wait_for_timeout(1000)
        page.screenshot(path=f"{OUTPUT_DIR}/screenshots/07-darkmode.png", full_page=True)
        print("  Screenshot saved: 07-darkmode.png")

        bg = page.evaluate("getComputedStyle(document.body).backgroundColor")
        print(f"  Dark mode body background: {bg}")
    except Exception as e:
        add_issue("LOW", "Dark mode check failed", str(e))

    browser.close()

    # =====================
    # Report Summary
    # =====================
    print("\n" + "="*60)
    print("DOGFOOD REVIEW SUMMARY")
    print("="*60)

    severity_counts = {"HIGH": 0, "MEDIUM": 0, "LOW": 0}
    for issue in issues:
        severity_counts[issue["severity"]] += 1

    print(f"Total issues found: {len(issues)}")
    print(f"  HIGH: {severity_counts['HIGH']}")
    print(f"  MEDIUM: {severity_counts['MEDIUM']}")
    print(f"  LOW: {severity_counts['LOW']}")

    if issues:
        print("\nIssue Details:")
        for issue in issues:
            print(f"\n{issue['id']} [{issue['severity']}] {issue['title']}")
            print(f"  {issue['description']}")
            if issue['screenshot']:
                print(f"  Screenshot: {issue['screenshot']}")

    # Save JSON report
    with open(f"{OUTPUT_DIR}/report.json", "w") as f:
        json.dump({
            "summary": severity_counts,
            "issues": issues
        }, f, indent=2, ensure_ascii=False)

    print(f"\nReport saved to: {OUTPUT_DIR}/report.json")
