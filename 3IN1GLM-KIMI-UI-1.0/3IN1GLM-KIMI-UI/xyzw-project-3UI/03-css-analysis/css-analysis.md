# APK528 CSS 样式差异分析

> 分析对象：`01-reference/css/` 目录下的 24 个 CSS 文件
> 基线对比：`00-baseline/src/assets/styles/` 的 SCSS 文件及 Vue 组件 scoped 样式
> 分析日期：2026-05-31

---

## 1. BatchDailyTasks-NwjZA8HH.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 49,844 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-d967aec2`（主，338次）、`data-v-72c8b5ac`（150次） |
| 自定义属性数量 | 68 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 480px, 600px, 640px, 768px, 992px, 1200px, min-width:769px |

**关键选择器**：
- `.batch-daily-tasks`, `.batch-daily-tasks-container`
- `.car-grid`, `.car-item`, `.car-status-container`, `.car-status-header`
- `.climb-tower-container`, `.climb-tower-grid`, `.climb-tower-item`
- `.button-group`, `.button-row`, `.button-row-config`, `.button-row-task`, `.button-row-time`
- `.arena-rank-tag`, `.avatar-container`
- `.claimable-pulse`, `.cleared`

**自定义属性（暗色主题新增）**：
- `--card-bg`, `--card-bg-hover`, `--input-bg`, `--input-border`（基线无）⚠️ 注意：此处"新增"为组件级描述，DS验证确认这些变量在所有4个scoped CSS的暗色主题块中均有定义，实际为全局标配，见迁移建议第3点

**关键帧动画**：
- `claimable-pulse-d967aec2`, `dot-pulse-d967aec2`, `loading-pulse-d967aec2`
- `pulse-d967aec2`, `pulse-glow-d967aec2`, `spin-72c8b5ac`, `spin-d967aec2`, `status-dot-pulse-d967aec2`

**与基线差异**：
- 基线 `BatchDailyTasks.vue` 使用 scoped 样式，选择器基本一致
- APK528 新增了更多响应式断点（480px, 600px, 992px, 1200px），基线只有 640px 和 768px
- APK528 暗色主题变量定义在组件内（带 scoped ID），基线在 `variables.scss` 全局定义
- APK528 暗色主题新增了 `--card-bg`, `--card-bg-hover`, `--input-bg`, `--input-border` 四个变量

---

## 2. Changelog-UHrCM-2g.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 7,409 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-7cb59dc3`、`data-v-e42e0b51`（ChangelogCard，29次） |
| 自定义属性数量 | 6 |
| 深色主题 | ❌ 无 `[data-theme=dark]`，但有 `@media (prefers-color-scheme: dark)` |
| 响应式断点 | 768px |

**关键选择器**：
- `.changelog-card`, `.changelog-container`, `.changelog-content`, `.changelog-header`
- `.changelog-page`, `.changelog-title`, `.changelog-list`, `.changelog-meta`
- `.version-badge`, `.badge-major`, `.badge-minor`, `.badge-patch`, `.badge-hotfix`
- `.type-tag`, `.tag-major`, `.tag-minor`, `.tag-patch`, `.tag-hotfix`
- `.change-section`, `.change-list`, `.breaking`
- `.filter-btn`, `.filter-buttons`, `.filter-section`
- `.changelog-fade-enter-active/from`, `.changelog-fade-leave-active/to`（Vue transition）

**与基线差异**：
- 基线 `Changelog.vue` 和 `ChangelogCard.vue` 均使用 scoped 样式
- APK528 使用 `prefers-color-scheme: dark` 媒体查询实现深色模式，而非 `[data-theme=dark]` 属性选择器
- APK528 未包含完整的 CSS 变量定义块（仅 6 个自定义属性），说明此组件依赖全局变量
- APK528 新增了 Vue transition 类名（`changelog-fade-*`）

**独立变量体系**：
Changelog 使用与项目标准不同的变量体系：
- `--text-primary`：Changelog 使用 `#1f2937`（亮色）/ `#f9fafb`（暗色），标准使用 `#333333` / `#e5e7eb`
- `--border-color`：Changelog 专用变量，不属于标准变量集

---

## 3. DailyTasks-C9TnkgUy.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 12,623 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-b4b158a9`（55次）、`data-v-90043dfd`（35次） |
| 自定义属性数量 | 62（原统计63，`--shadow-large`为断裂引用而非有效变量） |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px, 1024px |

**关键选择器**：
- `.daily-tasks-page`, `.daily-task-card`
- `.filter-bar`, `.filter-section`
- `.header-actions`, `.header-content`, `.header-left`, `.header-right`
- `.page-header`, `.page-title`, `.page-subtitle`
- `.complete-button`, `.completed`
- `.execution-log`, `.log-container`, `.log-item`, `.log-message`, `.log-time`
- `.info-container`, `.info-item`, `.info-label`, `.info-value`
- `.empty-state`, `.loading-state`, `.error`
- `.modal-header`, `.modal-icon`

**与基线差异**：
- 基线 `DailyTasks.vue` 和 `DailyTaskCard.vue` 均使用 scoped 样式
- APK528 新增 1024px 断点
- 选择器基本一致，说明样式结构未大改

---

## 4. Dashboard-DiMfkymb.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 7,445 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-01286b0c` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px, 1024px |

**关键选择器**：
- `.dashboard-page`, `.dashboard-main`
- `.stats-grid`, `.stat-card`, `.stat-icon`, `.stat-label`, `.stat-number`, `.stat-change`
- `.quick-actions-section`, `.action-card`, `.action-icon`, `.actions-grid`
- `.recent-activity-section`, `.activity-list`, `.activity-item`, `.activity-icon`, `.activity-content`, `.activity-text`, `.activity-time`
- `.nav-menu`, `.main-container`
- `.positive`, `.negative`, `.warning`, `.success`, `.info`

**与基线差异**：
- 基线 `Dashboard.vue` 使用 scoped 样式，选择器基本一致
- APK528 新增 1024px 断点

---

## 5. DefaultLayout-BV-b_cIE.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 5,030 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-66290297` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.nav-container`, `.nav-brand`, `.nav-menu`, `.nav-item`, `.nav-user`
- `.brand-logo`, `.brand-text`, `.brand-toggle`
- `.dashboard-nav`
- `.drawer-menu`, `.drawer-item`
- `.active`, `.disabled`
- `.router-link-active`
- `.user-info`, `.username`
- `.n-icon`

**与基线差异**：
- 基线 `DefaultLayout.vue` 使用 scoped 样式，选择器完全一致
- 布局组件样式差异最小

---

## 6. GameFeatures-C9x6Qcs5.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 455,197 bytes（最大文件） |
| 行数 | 1 行（压缩） |
| Scoped ID | 聚合约41个独立组件，至少6个主要scoped ID：`data-v-d64a96bd`（77次）、`data-v-14a876f8`（54次）、`data-v-b8d2bebd`（51次）、`data-v-3cf22b64`（43次）、`data-v-b6784b87`（41次）、`data-v-0f94243b`（23次）。总`data-v-`出现：3186次，含123个`:root`块 |
| 自定义属性数量 | 92 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 480px, 640px, 768px, 900px, 1024px, 1200px, min-width:1400px |

**关键选择器**：
- `.access-denied-container`, `.access-denied-info`
- `.alliance-group`, `.alliance-tab`, `.alliance-tabs-section`, `.alliance-tag`
- `.announcement`, `.announcement-content`, `.announcement-section`
- `.ModalEquipment`（大写开头，特殊命名）
- `.action-btn`, `.action-button`, `.action-row`, `.action-section`
- `.apply-item`, `.apply-details`, `.apply-info`, `.apply-list`
- `.KD`, `.Sscore`（大写开头，特殊命名）
- 大量游戏功能相关选择器（联盟、装备、战斗等）

**自定义属性（新增）**：
- 除标准 62 个变量外，新增约 30 个组件特有变量

**关键帧动画**：
- `glowAnimation-14a876f8`, `rotate-d64a96bd`, `spin-3cf22b64`, `spin-b6784b87`, `spin-b8d2bebd`, `spin-d64a96bd`

**与基线差异**：
- **这是差异最大的文件**，455KB 占全部 CSS 的近 50%
- 基线 `GameFeatures.vue` 仅包含简单的功能卡片样式（`.feature-card`, `.feature-icon` 等）
- APK528 将大量子组件样式内联到此文件中，包括：
  - 联盟系统（`.alliance-*`）
  - 装备系统（`.ModalEquipment`, `.equipment-*`）
  - 战斗记录（`.battle-*`）
  - 排行榜（`.rank-*`）
  - 公会战（`.club-warrank-*`）
- 基线中这些样式分散在 `components/Club/`、`components/cards/` 等子组件中
- APK528 新增了 480px, 900px, 1200px, 1400px 等更细粒度的响应式断点

---

## 7. GameRoles-UqO8KVbV.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 5,591 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-ad062ad7` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.game-roles-page`, `.roles-grid`
- `.role-card`, `.role-avatar`, `.role-info`, `.role-name`, `.role-stats`, `.role-tags`
- `.card-header`, `.card-body`, `.card-footer`
- `.header-actions`, `.header-content`
- `.modal-actions`
- `.stat-item`, `.stat-label`, `.stat-value`
- `.empty-state`, `.page-header`

**与基线差异**：
- 基线 `GameRoles.vue` 选择器基本一致
- 差异较小

---

## 8. Home-C18y52uD.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 8,879 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-f4a62037` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.home-page`, `.hero-section`, `.hero-content`, `.hero-title`, `.hero-subtitle`, `.hero-text`, `.hero-actions`, `.hero-button`
- `.features-section`, `.features-grid`, `.feature-card`, `.feature-icon`, `.feature-title`, `.feature-description`, `.feature-item`
- `.footer`, `.footer-bottom`, `.footer-brand`, `.footer-content`, `.footer-link`, `.footer-links`, `.footer-logo`, `.footer-text`
- `.drawer-menu`, `.drawer-item`, `.drawer-actions`
- `.brand-logo`, `.brand-text`
- `.card-icon`

**与基线差异**：
- 基线 `Home.vue` 选择器基本一致
- 差异较小

---

## 9. LegionWar-DROwzH3f.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 5,171 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-1892cc19` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.legion-war-container`, `.legion-war-map`
- `.legion-war-operation`, `.legion-war-operation-container`, `.legion-war-operation-item`, `.legion-war-operation-title`
- `.map-container`, `.map-title`, `.mapCanvas`
- `.status-connected`, `.status-disconnected`

**与基线差异**：
- 基线 `LegionWar.vue` 选择器完全一致
- 差异最小

---

## 10. Login-Ckgxbeog.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 7,148 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-f2fda67e` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px, 1024px |

**关键选择器**：
- `.login-page`, `.login-container`, `.login-card`, `.login-button`
- `.brand`, `.brand-logo`, `.brand-title`
- `.background-decoration`, `.decoration-circle`, `.circle-1`, `.circle-2`, `.circle-3`
- `.features-showcase`, `.features-list`, `.feature-item`, `.feature-icon`, `.feature-content`, `.showcase-header`
- `.form-options`, `.social-login`, `.social-button`
- `.register-prompt`, `.welcome-text`, `.divider-text`
- `.card-header`, `.n-form-item`

**关键帧动画**：
- `float-f2fda67e`（浮动动画，基线无）

**与基线差异**：
- APK528 新增 `float` 动画关键帧
- APK528 新增 1024px 断点
- 装饰性圆圈样式（`.circle-1/2/3`）在基线中也存在

---

## 11. MessageTester-BNMczmpy.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 1,011 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-eab730dc` |
| 自定义属性数量 | 0 |
| 深色主题 | ❌ 无 |
| 响应式断点 | 无 |

**关键选择器**：
- `.message-tester`, `.message-item`, `.message-history`, `.message-preview`
- `.max-h-80`, `.max-h-20`
- `.n-tab-pane`, `.n-tag`

**与基线差异**：
- 基线 `MessageTester.vue` 选择器基本一致
- **唯一不包含 CSS 变量定义和深色主题的组件 CSS**
- 使用硬编码颜色值（如 `#f1f1f1`, `#c1c1c1`），未使用 CSS 变量

---

## 12. NotFound-pFMZl5Qx.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 3,567 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-642fb8f8` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.not-found-page`
- `.error-visual`, `.error-number`, `.error-text`, `.error-icon`, `.error-content`, `.error-actions`

**与基线差异**：
- 基线 `NotFound.vue` 选择器完全一致
- 差异最小

---

## 13. Profile-DEVRzYXh.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 12,735 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-d3c7c1d5`、`data-v-67100bbd`（3个`:root`块） |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.profile-page`, `.profile-section`
- `.info-card`, `.security-info`, `.security-item`, `.security-items`
- `.preference-item`
- `.page-header`
- `.container`, `.danger`
- `.n-select`, `.n-switch`

**与基线差异**：
- 基线 `Profile.vue` 选择器基本一致
- 差异较小

**触控设备适配**：
```css
@media (max-width: 768px) and (hover: none) and (pointer: coarse) {
  /* 对 .n-button, .n-tag, .n-icon, .n-upload, .n-dropdown 应用 transform: scale(0.8) */
  /* 对整个卡片应用 zoom: 0.8 */
}
```

---

## 14. Register-DMAKH146.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 4,358 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-6933294e` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.register-page`, `.register-container`, `.register-card`, `.register-button`
- `.brand`, `.brand-logo`, `.brand-title`
- `.card-header`, `.form-options`
- `.login-prompt`, `.welcome-text`
- `.n-checkbox`, `.n-form-item`

**与基线差异**：
- 基线 `Register.vue` 选择器基本一致
- 差异较小

---

## 15. ServerRoleList-DrBlpfF5.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 3,958 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-483cd692` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px, min-width:768px |

**关键选择器**：
- `.server-role-list--desktop`, `.server-role-list--mobile`
- `.server-role-list-card`, `.server-role-list-scroll`, `.server-role-list-search`, `.server-role-list-search__input`
- `.server-role-card`, `.server-role-card__title`, `.server-role-card__main`, `.server-role-card__meta`, `.server-role-card__actions`
- `.n-button`

**与基线差异**：
- 基线 `ServerRoleList.vue` 选择器完全一致
- APK528 新增 `min-width:768px` 桌面端断点

---

## 16. ThemeToggle-DtMlv2YM.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 2,497 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-8808456b` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.theme-toggle`

**与基线差异**：
- 基线 `ThemeToggle.vue` 选择器完全一致
- 文件较大（2,497 bytes）但只有一个选择器，主要体积来自 CSS 变量定义块

---

## 17. WebSocketTester-D2i8r6vr.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 741 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-7d8648b4` |
| 自定义属性数量 | 0 |
| 深色主题 | ❌ 无 |
| 响应式断点 | 无 |

**关键选择器**：
- `.websocket-tester`, `.message-log`, `.message-item`
- `.message-sent`, `.message-received`
- `.message-header`, `.message-content`
- `.no-messages`

**与基线差异**：
- 基线 `WebSocketTester.vue` 选择器完全一致
- **不包含 CSS 变量定义和深色主题**（与 MessageTester 类似）
- 使用硬编码颜色值（如 `#e0e0e6`, `#fafafa`, `#2080f0`, `#18a058`）

---

## 18. bin-CEif7r-s.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 2,764 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-bac29de9` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.dropzone-content`, `.form-actions`, `.optional-fields`

**与基线差异**：
- 基线 `TokenImport/bin.vue` 选择器完全一致
- 大部分体积为 CSS 变量定义块

---

## 19. index-BzxMFq4L.css（TokenImport/index）

| 属性 | 值 |
|------|-----|
| 文件大小 | 14,520 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-82d82eb8` |
| 自定义属性数量 | 62（原统计63，`--shadow-large`为断裂引用而非有效变量） |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.token-import-page`, `.import-card`, `.import-section`
- `.container`, `.page-header`, `.header-content`, `.header-top`
- `.brand-logo`, `.theme-toggle`
- `.card-header`, `.card-body`, `.card-footer`
- `.token-card`, `.token-info`, `.token-name`, `.token-meta`, `.token-value`, `.token-label`, `.token-display`
- `.connection-status`, `.connection-indicator`, `.status-dot`
- `.tokens-grid`, `.tokens-list`, `.tokens-section`
- `.form-actions`, `.form-tips`, `.form-tip`, `.cors-tip`
- `.optional-fields`
- `.storage-info`, `.storage-item`, `.storage-label`, `.storage-upgrade`
- `.empty-state`, `.modal-actions`
- 深色主题覆盖：`.n-form-item-label`, `.n-input__input`, `.n-card`, `.import-card`, `.n-collapse-item__header`, `.n-radio-button` 等

**自定义属性（断裂引用BUG）**：
- `--shadow-large`（基线无）⚠️ **断裂引用BUG**：此变量通过 `var(--shadow-large)` 被引用，但在所有 CSS 文件中均无 `--shadow-large: ...` 定义，运行时将失效

**关键帧动画**：
- `pulse-green-82d82eb8`, `pulse-yellow-82d82eb8`, `pulse-red-82d82eb8`

**与基线差异**：
- 基线 `TokenImport/index.vue` 选择器基本一致
- APK528 新增 `--shadow-large` 变量 ⚠️ **断裂引用BUG**：此变量被引用但从未定义，运行时失效
- APK528 新增连接状态脉冲动画
- APK528 新增大量 Naive UI 组件深色主题覆盖样式

**Arco 组件样式覆盖**：
此文件是唯一一个直接覆盖 `.arco-*` 组件样式的 scoped CSS 文件：
```css
[data-theme=dark] .token-import-modal .arco-modal { background: linear-gradient(135deg,#667eea,#764ba2)!important; }
[data-theme=dark] .token-card { background: linear-gradient(135deg,#667eea,#764ba2); }
```

---

## 20. index-DlxoWD7I.css（全局/Arco Design）

| 属性 | 值 |
|------|-----|
| 文件大小 | 422,089 bytes（第二大文件） |
| 行数 | 1 行（压缩） |
| Scoped ID | 无（全局样式） |
| 自定义属性数量 | 大量（200+） |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 576px, 640px, 768px, 992px, 1024px, 1200px, 1280px, 1536px, 1600px |

**内容组成**：
1. **normalize.css v8.0.1** — CSS 重置
2. **Arco Design CSS** — 完整的 Arco Design 组件库样式
3. **UnoCSS 工具类** — Tailwind/UnoCSS 风格的原子化工具类
4. **全局 CSS 变量** — 项目自定义变量 + Arco Design 变量

**关键选择器类别**：
- `arco-*` — Arco Design 组件（alert, avatar, badge, button, card, carousel, checkbox, collapse, dialog, drawer, dropdown, form, input, menu, modal, notification, pagination, radio, select, spin, switch, table, tabs, tag, tooltip 等）
- `absolute`, `relative`, `flex`, `grid`, `p-*`, `m-*`, `text-*`, `bg-*` — UnoCSS 原子类

**自定义属性**：
- **项目变量**：与 `variables.scss` 一致的 62 个变量
- **Arco Design 变量**：`--arcoblue-*`, `--color-bg-*`, `--color-border-*`, `--color-text-*`, `--color-fill-*`, `--color-primary-light-*`, `--color-success-light-*`, `--color-warning-light-*`, `--color-danger-light-*`, `--color-neutral-*` 等
- **颜色系统**：`--red-*`, `--blue-*`, `--green-*`, `--cyan-*`, `--orange-*`, `--gold-*`, `--lime-*`, `--purple-*`, `--pinkpurple-*`, `--gray-*` 等（1-10 色阶）
- **UnoCSS 变量**：`--un-*` 系列（backdrop, blur, border, ring, rotate, scale, shadow, skew, translate 等）

**关键帧动画**：
- `arco-badge-scale`, `arco-carousel-*`, `arco-dot-loading`, `arco-form-blink`, `arco-loading-circle`, `arco-menu-selected-item-label-enter`, `arco-msg-fade/scale`, `arco-progress-loading`, `arco-rate-scale`, `arco-skeleton-circle`, `arco-transfer-drag-item-blink`

**与基线差异**：
- **基线使用 Naive UI**，APK528 是 **Naive UI JS + Arco Design CSS 混合体**：JS 层使用 Naive UI 组件（481 个 `n-*` 引用），CSS 层引入完整 Arco Design 样式库（3929 个 `.arco-*` 选择器）并保留 Naive UI scoped 覆盖（295个`.n-*`选择器总出现次数，跨所有CSS文件）
- 基线的全局样式在 `global.scss` 中手动定义工具类，APK528 使用 UnoCSS 自动生成
- APK528 的 normalize.css 版本与基线一致
- APK528 的响应式断点体系更完整（576px-1600px 共 9 个断点）

---

## 21. manual-MoNI39tE.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 2,774 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-2a37aa51` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.cors-tip`, `.form-actions`, `.form-tips`, `.optional-fields`

**与基线差异**：
- 基线 `TokenImport/manual.vue` 选择器完全一致
- 大部分体积为 CSS 变量定义块

---

## 22. singlebin-DqQkKtR0.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 2,764 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-16185db8` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.dropzone-content`, `.form-actions`, `.optional-fields`

**与基线差异**：
- 基线 `TokenImport/singlebin.vue` 选择器完全一致
- 与 `bin-CEif7r-s.css` 几乎完全相同（仅 scoped ID 不同）

---

## 23. url-rcSaJGrk.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 2,770 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-16a36d9b` |
| 自定义属性数量 | 62 |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.cors-tip`, `.form-actions`, `.form-tip`, `.form-tips`, `.optional-fields`

**与基线差异**：
- 基线 `TokenImport/url.vue` 选择器基本一致
- 新增 `.form-tip`（单数形式）

---

## 24. wxqrcode-BMIjaBGP.css

| 属性 | 值 |
|------|-----|
| 文件大小 | 4,591 bytes |
| 行数 | 1 行（压缩） |
| Scoped ID | `data-v-f549e16e` |
| 自定义属性数量 | 62（原统计63，`--shadow-small`为断裂引用而非有效变量） |
| 深色主题 | ✅ 有 `[data-theme=dark]` |
| 响应式断点 | 640px, 768px |

**关键选择器**：
- `.wx-qrcode-import`, `.qrcode-container`, `.qr-placeholder`, `.qr-image`, `.qr-status`
- `.login-flow-info`, `.flow-steps`
- `.account-name-input`, `.form-actions`
- `.info`, `.success`, `.error`

**自定义属性（断裂引用BUG）**：
- `--shadow-small`（基线无）⚠️ **断裂引用BUG**：此变量通过 `var(--shadow-small)` 被引用，但在所有 CSS 文件中均无 `--shadow-small: ...` 定义，运行时将失效

**与基线差异**：
- 基线 `TokenImport/wxqrcode.vue` 选择器完全一致
- APK528 新增 `--shadow-small` 变量 ⚠️ **断裂引用BUG**：此变量被引用但从未定义，运行时失效

---

## 总结：CSS 差异汇总

### 一、文件规模统计

| 文件 | 大小 | 占比 |
|------|------|------|
| index-DlxoWD7I.css（全局/Arco） | 422,089 B | 43.5% |
| GameFeatures-C9x6Qcs5.css | 455,197 B | 46.9% |
| BatchDailyTasks-NwjZA8HH.css | 49,844 B | 5.1% |
| 其余 21 个文件 | 114,921 B | 4.5% |
| **合计** | **1,042,051 B** | **100%** |

> 两个巨型文件（全局 Arco 样式 + GameFeatures 组件）占据了总量的 90.4%。

### 二、核心差异

#### 1. UI 框架差异：Naive UI → Naive UI + Arco CSS 混合

| 维度 | 基线（开源项目） | APK528 |
|------|------------------|--------|
| JS 层 UI 框架 | Naive UI | Naive UI（481 个 `n-*` 引用） |
| CSS 层样式库 | Naive UI 样式 | Arco Design 完整样式库（3929 个 `.arco-*`）+ Naive UI scoped 覆盖（295个`.n-*`选择器总出现次数） |
| CSS 变量前缀 | 无统一前缀 | `--arcoblue-*`, `--color-*` |
| 组件类名前缀 | `.n-*` | `.arco-*`（CSS 主导）+ `.n-*`（JS scoped 覆盖） |
| 全局样式文件 | `global.scss`（手动工具类） | UnoCSS（原子化自动生成） |

**影响**：APK528 采用混合架构——JS 运行时仍为 Naive UI，但 CSS 层加载了完整的 Arco Design 库。本项目已统一到纯 Arco Design（JS + CSS）。

#### 2. CSS 变量体系差异

| 变量 | 基线值 | APK528 值 | 差异 |
|------|--------|-----------|------|
| `--text-primary` (dark) | `#ffffff` | `#e5e7eb` | APK528 更柔和 |
| `--bg-primary` (dark) | `#1f2937` | `#111827` | APK528 更深 |
| `--bg-secondary` (dark) | `#374151` | `#1f2937` | APK528 更深 |
| `--bg-tertiary` (dark) | `#4b5563` | `#374151` | APK528 更深 |
| `--bg-overlay` (dark) | `rgba(0,0,0,0.7)` | `rgba(0,0,0,0.8)` | APK528 更暗 |
| `--border-light` (dark) | `#4b5563` | `#374151` | APK528 更深 |
| `--border-medium` (dark) | `#6b7280` | `#4b5563` | APK528 更深 |

**APK528 新增变量**（基线 `variables.scss` 中不存在）：
- `--card-bg` / `--card-bg-hover` — 卡片背景色
- `--input-bg` / `--input-border` — 输入框背景/边框色
- `--shadow-large` / `--shadow-small` — 额外阴影级别 ⚠️ **断裂引用BUG**：被 `var()` 引用但从未在任何 CSS 文件中定义，运行时失效

⚠️ **亮色模式变量缺失BUG**：`--card-bg`、`--card-bg-hover`、`--input-bg`、`--input-border` 仅在 `[data-theme=dark]` 块中定义，但在亮色模式的 `:root` 块中未定义。这意味着在亮色模式下，`var(--card-bg)` 等将解析为无效值，导致运行时样式失效。

⚠️ **`--border-color` 跨组件断裂引用**：`--border-color` 在 GameFeatures CSS 中被使用 11 次，但定义 0 次。该变量仅在 Changelog（4 次）和全局 CSS（2 次）中定义。由于 scoped CSS 隔离机制，GameFeatures 中的引用可能无法正确解析。

#### 3. CSS 变量重复定义问题

APK528 的每个 scoped CSS 文件都**独立包含完整的 CSS 变量定义块**（62 个变量 + 暗色主题覆盖 + 响应式变量覆盖），导致：

- 同样的变量定义在 20+ 个文件中重复出现
- 变量定义被 scoped ID 限定（如 `[data-v-xxx]:root`），实际作用域被限制
- 大量冗余体积（每个文件约 2KB 的变量定义）

基线项目中变量仅在 `variables.scss` 中定义一次，通过 SCSS `@import` 共享。

#### 4. 深色主题实现差异

| 维度 | 基线 | APK528 |
|------|------|--------|
| 触发方式 | `[data-theme="dark"]` 属性 | `[data-theme=dark]` 属性 |
| 定义位置 | `variables.scss` 全局 | 每个组件 CSS 内重复定义 |
| 覆盖范围 | 仅覆盖基础变量 | 基础变量 + `--card-bg`, `--input-bg` 等 |
| 特殊处理 | 无 | Changelog 组件使用 `prefers-color-scheme` 媒体查询 |
| UI 组件覆盖 | 覆盖 `.n-*` 组件 | 覆盖 `.arco-*` 组件 |

#### 5. 响应式断点体系差异

| 断点 | 基线使用 | APK528 使用 |
|------|---------|-------------|
| 480px | ❌ | ✅（BatchDailyTasks, GameFeatures） |
| 576px | ❌ | ✅（全局 UnoCSS） |
| 600px | ❌ | ✅（BatchDailyTasks） |
| 640px | ✅ | ✅ |
| 768px | ✅ | ✅ |
| 900px | ❌ | ✅（GameFeatures） |
| 992px | ❌ | ✅（BatchDailyTasks, GameFeatures, 全局） |
| 1024px | ❌ | ✅（DailyTasks, Dashboard, Login, 全局） |
| 1200px | ❌ | ✅（BatchDailyTasks, GameFeatures, 全局） |
| 1280px | ❌ | ✅（全局 UnoCSS） |
| 1400px | ❌ | ✅（GameFeatures min-width） |
| 1536px | ❌ | ✅（全局 UnoCSS） |
| 1600px | ❌ | ✅（全局 UnoCSS） |

APK528 的响应式体系更加精细，从 2 个断点扩展到 13 个断点。

#### 6. 组件样式聚合差异

基线项目中，子组件样式分散在各自的 `.vue` 文件中。APK528 将子组件样式**聚合到父页面 CSS** 中：

| 基线位置 | APK528 位置 |
|---------|-------------|
| `components/Club/ClubInfo.vue` | GameFeatures-C9x6Qcs5.css |
| `components/Club/ClubWarrank.vue` | GameFeatures-C9x6Qcs5.css |
| `components/Club/ClubBattleRecords.vue` | GameFeatures-C9x6Qcs5.css |
| `components/cards/RefineHelperCard.vue` | GameFeatures-C9x6Qcs5.css |
| `components/cards/FightPvp.vue` | GameFeatures-C9x6Qcs5.css |
| `components/cards/Unlimitedlineup.vue` | GameFeatures-C9x6Qcs5.css |
| `components/Daily/DailyTaskCard.vue` | DailyTasks-C9TnkgUy.css |
| `components/Daily/DailyTaskStatus.vue` | BatchDailyTasks-NwjZA8HH.css |
| `components/Common/IdentityCard.vue` | BatchDailyTasks-NwjZA8HH.css |
| `components/Setting/RoleProfileCard.vue` | BatchDailyTasks-NwjZA8HH.css |

#### 7. 不支持深色主题的组件

以下 2 个组件的 CSS 不包含深色主题支持：
- **MessageTester-BNMczmpy.css** — 使用硬编码颜色，无 CSS 变量
- **WebSocketTester-D2i8r6vr.css** — 使用硬编码颜色，无 CSS 变量

#### 8. 动画关键帧差异

| 组件 | APK528 新增动画 |
|------|----------------|
| BatchDailyTasks | `claimable-pulse`, `dot-pulse`, `loading-pulse`, `pulse`, `pulse-glow`, `spin`, `status-dot-pulse` |
| GameFeatures | `glowAnimation`, `rotate`, `spin`（多个变体） |
| Login | `float` |
| TokenImport/index | `pulse-green`, `pulse-yellow`, `pulse-red` |

基线项目中这些动画可能通过 UnoCSS 的 `animate-*` 工具类或内联样式实现。

#### 9. `!important` 滥用问题

APK528 CSS 中存在大量 `!important` 声明，总计 **430 次**，分布如下：

| 文件 | `!important` 次数 |
|------|-------------------|
| BatchDailyTasks-NwjZA8HH.css | 195 |
| GameFeatures-C9x6Qcs5.css | 167 |
| index-DlxoWD7I.css（全局） | 38 |
| index-BzxMFq4L.css（TokenImport） | 17 |
| Profile-DEVRzYXh.css | 13 |
| **合计** | **430** |

大量 `!important` 会破坏 CSS 优先级规则，增加维护难度和样式覆盖风险。

#### 10. 现代 CSS 特性使用记录

| 特性 | 使用文件数 | 文件列表 |
|------|-----------|---------|
| `100dvh`（动态视口高度） | 6 | GameFeatures, GameRoles, Home, Login, Profile, Register |
| `env(safe-area-inset-bottom)` | 6 | GameFeatures, GameRoles, Home, Login, Profile, Register |
| `backdrop-filter` | 5 | Home, TokenImport, 全局, Login, Register |
| `-webkit-backdrop-filter`（厂商前缀） | 5 | Home, TokenImport, 全局, Login, Register |
| `-webkit-overflow-scrolling: touch` | 2 | TokenImport, ServerRoleList — ⚠️ **已废弃属性** |

注意：`-webkit-overflow-scrolling: touch` 已被标准废弃，建议迁移至 `overflow: auto` 配合 `overscroll-behavior`。

### 三、迁移建议

1. **CSS 变量去重**：将每个组件内重复的 62 个变量定义提取到全局 CSS 文件，避免 scoped 限定导致变量无法跨组件共享
2. **UI 框架适配**：本项目已统一到纯 Arco Design，`.n-*` 选择器改为 `.arco-*`。注意：APK528 中 `.n-*` 选择器共 295 次出现（跨所有 CSS 文件），本项目因纯 Arco 方案无需保留
3. **深色主题变量补全**：在 `variables.scss` 中新增 `--card-bg`, `--card-bg-hover`, `--input-bg`, `--input-border`, `--shadow-large`, `--shadow-small`。⚠️ 注意：原始分析将 `--card-bg` 等 4 个变量标记为"BatchDailyTasks 新增"，但 DS重开验证确认这些变量在所有 4 个 scoped CSS 的暗色主题块中均有定义，属于**全局标配**而非组件独有
4. **暗色色值调整**：APK528 的暗色主题色值整体比基线更深，需确认设计意图
5. **响应式断点统一**：建议在全局定义统一的断点体系，而非每个组件各自定义
6. **MessageTester/WebSocketTester**：补充深色主题支持，将硬编码颜色替换为 CSS 变量
7. **Changelog 组件**：将 `prefers-color-scheme: dark` 改为与项目一致的 `[data-theme=dark]` 方式
