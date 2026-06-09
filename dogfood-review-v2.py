#!/usr/bin/env python3
"""Dogfood review script for 04-dev UI changes - v2"""
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
    # 1. TokenImport Page (correct path: /tokens)
    # =====================
    print("\n=== 1. TokenImport Page (/tokens) ===")
    page.goto("http://localhost:4173/tokens")
    page.wait_for_load_state("networkidle")
    page.wait_for_timeout(2000)
    page.screenshot(path=f"{OUTPUT_DIR}/screenshots/01-tokenimport.png", full_page=True)
    print("  Screenshot saved: 01-tokenimport.png")

    # Check CSS Variables
    primary_color = page.evaluate("""() => getComputedStyle(document.documentElement).getPropertyValue('--primary-color')""")
    bg_primary = page.evaluate("""() => getComputedStyle(document.documentElement).getPropertyValue('--bg-primary')""")
    print(f"  --primary-color: {primary_color}")
    print(f"  --bg-primary: {bg_primary}")

    if not primary_color or primary_color.strip() == "":
        add_issue("HIGH", "CSS variables not loaded",
                  "Primary color CSS variable is not defined",
                  screenshot="01-tokenimport.png")

    # Check for modal/dialog
    modal = page.locator('.arco-modal').count()
    print(f"  Arco modal found: {modal}")

    # =====================
    # 2. Simulate having tokens to bypass redirect
    # =====================
    print("\n=== 2. Simulating Token State ===")
    # Inject token via IndexedDB since the app uses IndexedDB, not localStorage
    page.evaluate("""async () => {
        return new Promise((resolve) => {
            const request = indexedDB.open('xyzw_token_db', 2);
            request.onupgradeneeded = (event) => {
                const db = event.target.result;
                if (!db.objectStoreNames.contains('kv')) {
                    db.createObjectStore('kv', {keyPath: 'key'});
                }
                if (!db.objectStoreNames.contains('gameTokens')) {
                    db.createObjectStore('gameTokens', {keyPath: 'roleId'});
                }
                if (!db.objectStoreNames.contains('tokenList')) {
                    db.createObjectStore('tokenList', {keyPath: 'id'});
                }
            };
            request.onsuccess = (event) => {
                const db = event.target.result;
                const tx = db.transaction(['tokenList', 'kv'], 'readwrite');
                const tokenStore = tx.objectStore('tokenList');
                const kvStore = tx.objectStore('kv');

                tokenStore.put({
                    id: 'test1',
                    name: 'TestToken',
                    server: 's1',
                    roleToken: 'test',
                    sessId: 'test',
                    connId: 'test',
                    createdAt: new Date().toISOString()
                });
                kvStore.put({key: 'selectedTokenId', value: 'test1'});

                tx.oncomplete = () => {
                    db.close();
                    resolve('done');
                };
            };
            request.onerror = () => resolve('error');
        });
    }""")
    print("  Token state injected into IndexedDB")

    # =====================
    # 3. Dashboard Page
    # =====================
    print("\n=== 3. Dashboard Page ===")
    page.goto("http://localhost:4173/admin/dashboard")
    page.wait_for_load_state("networkidle")
    page.wait_for_timeout(2000)
    page.screenshot(path=f"{OUTPUT_DIR}/screenshots/02-dashboard.png", full_page=True)
    print("  Screenshot saved: 02-dashboard.png")

    welcome_bg = page.evaluate("""() => {
        const el = document.querySelector('.welcome-section');
        return el ? getComputedStyle(el).background : 'not found';
    }""")
    print(f"  Welcome section background: {welcome_bg[:80] if welcome_bg else 'N/A'}...")

    cards = page.locator('.action-card').count()
    print(f"  Action cards found: {cards}")
    if cards == 0:
        add_issue("HIGH", "Dashboard action cards missing",
                  "No .action-card elements found on Dashboard",
                  screenshot="02-dashboard.png")

    # =====================
    # 4. GameFeatures Page
    # =====================
    print("\n=== 4. GameFeatures Page ===")
    page.goto("http://localhost:4173/admin/game-features")
    page.wait_for_load_state("networkidle")
    page.wait_for_timeout(2000)
    page.screenshot(path=f"{OUTPUT_DIR}/screenshots/03-gamefeatures.png", full_page=True)
    print("  Screenshot saved: 03-gamefeatures.png")

    tabs = page.locator('.section-tabs .arco-tabs-nav-tab').count()
    print(f"  Tabs found: {tabs}")

    # Check for actual Naive UI classes (not false positives)
    naive_classes = page.evaluate("""() => {
        const elements = document.querySelectorAll('*');
        let count = 0;
        for (const el of elements) {
            const className = typeof el.className === 'string' ? el.className : '';
            const classes = className.split(' ');
            for (const c of classes) {
                if (c.startsWith('n-') && !c.includes('min-') && !c.includes('spin')) {
                    count++;
                }
            }
        }
        return count;
    }""")
    if naive_classes > 0:
        add_issue("MEDIUM", "Naive UI class residue found",
                  f"Found {naive_classes} elements with actual 'n-' class prefix",
                  screenshot="03-gamefeatures.png")
    else:
        print("  No Naive UI class residue found")

    # =====================
    # 5. BatchDailyTasks Page
    # =====================
    print("\n=== 5. BatchDailyTasks Page ===")
    page.goto("http://localhost:4173/admin/batch-daily-tasks")
    page.wait_for_load_state("networkidle")
    page.wait_for_timeout(2000)
    page.screenshot(path=f"{OUTPUT_DIR}/screenshots/04-batchdailytasks.png", full_page=True)
    print("  Screenshot saved: 04-batchdailytasks.png")

    layout = page.evaluate("""() => {
        const left = document.querySelector('.left-column');
        const right = document.querySelector('.right-column');
        return {
            left: left ? getComputedStyle(left).display : 'not found',
            right: right ? getComputedStyle(right).width : 'not found'
        };
    }""")
    print(f"  Layout: left={layout.get('left')}, right width={layout.get('right')}")

    # Check for Naive UI n-card__content in styles
    style_content = page.evaluate("""() => {
        return Array.from(document.querySelectorAll('style')).map(s => s.textContent).join(' ');
    }""")
    if 'n-card__content' in style_content:
        add_issue("HIGH", "Naive UI n-card__content still in styles",
                  "Found 'n-card__content' in page styles - should be 'arco-card-body'",
                  screenshot="04-batchdailytasks.png")
    else:
        print("  No n-card__content residue found")

    log_bg = page.evaluate("""() => {
        const el = document.querySelector('.log-container');
        return el ? getComputedStyle(el).backgroundColor : 'not found';
    }""")
    print(f"  Log container background: {log_bg}")

    # =====================
    # 6. DailyTasks Page
    # =====================
    print("\n=== 6. DailyTasks Page ===")
    page.goto("http://localhost:4173/admin/daily-tasks")
    page.wait_for_load_state("networkidle")
    page.wait_for_timeout(2000)
    page.screenshot(path=f"{OUTPUT_DIR}/screenshots/05-dailytasks.png", full_page=True)
    print("  Screenshot saved: 05-dailytasks.png")

    header_bg = page.evaluate("""() => {
        const el = document.querySelector('.page-header');
        return el ? getComputedStyle(el).background : 'not found';
    }""")
    print(f"  Page header background: {header_bg[:80] if header_bg else 'N/A'}...")

    # =====================
    # 7. Dark Mode Check
    # =====================
    print("\n=== 7. Dark Mode Check ===")
    page.goto("http://localhost:4173/admin/dashboard")
    page.wait_for_load_state("networkidle")
    page.evaluate("document.documentElement.setAttribute('arco-theme', 'dark')")
    page.wait_for_timeout(1500)
    page.screenshot(path=f"{OUTPUT_DIR}/screenshots/06-darkmode.png", full_page=True)
    print("  Screenshot saved: 06-darkmode.png")

    bg = page.evaluate("""() => getComputedStyle(document.body).backgroundColor""")
    print(f"  Dark mode body background: {bg}")

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

    with open(f"{OUTPUT_DIR}/report-v2.json", "w") as f:
        json.dump({
            "summary": severity_counts,
            "issues": issues
        }, f, indent=2, ensure_ascii=False)

    print(f"\nReport saved to: {OUTPUT_DIR}/report-v2.json")
