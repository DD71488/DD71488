# 重构执行方案 v2：模块推进 + 布局优先

> **注意**：此文档为历史版本（v2），当前执行方案请参考 [IMPLEMENTATION-PLAN.md](./IMPLEMENTATION-PLAN.md)（v3）。
> v3 核心变更：翻译先行策略 + 依赖拓扑排序 + Arco CSS 全量导入方案确认。

> 生成时间：2026-06-01
> 最后更新：2026-06-03（添加 v3 引用 + 修正 main.js 方案）
> 目标：基于开源项目，将 APK528 版本的增量功能移植到 Web 版，切换到 Arco Design，实现像素级一致
> 部署方式：Cloudflare Pages
> 策略：模块一次性完成（UI+逻辑同步），布局优先拓扑排序

---

## 总览

```
Phase 0: 基础设施（Arco Design 注册 + 主题系统 + 命令式 API 封装）
Phase 1: 布局框架 + 基础组件 + 简单页面（layout-first 拓扑排序）
Phase 2: 模块逐模块完成（UI+逻辑同步，不再两遍扫）
Phase 3: CSS 对齐
Phase 4: 验证 + 部署
```

**核心策略**：
- 布局优先：`DefaultLayout.vue` → 主题系统 → 基础组件 → 再动模块
- 模块一次性完成：每个模块的 UI 替换 + 增量功能移植同步进行，不拆两遍
- 混合重构/增量：结构变用重构，增量改用增量

---

## Phase 0: 基础设施

### 0.1 修改 main.js

```diff
- import naive from "naive-ui";
+ import ArcoVue from "@arco-design/web-vue";
+ import "@arco-design/web-vue/dist/arco.css";

- app.use(naive);
+ app.use(ArcoVue);

- document.documentElement.setAttribute("data-theme", "dark");
+ document.body.setAttribute("arco-theme", "dark");
```

> **修正 (2026-06-03)**: APK528 采用全量 Arco CSS 导入方式，04-dev 照搬此方案。`ArcoResolver({ importStyle: false })` 配合全局 CSS 导入，无需按需引入。

验证：`npm run build` 通过

### 0.2 创建命令式 API 封装

**`src/composables/useArcoMessage.js`**

```javascript
import { Message } from '@arco-design/web-vue'
export function useArcoMessage() {
  return {
    success: (content) => Message.success(content),
    error: (content) => Message.error(content),
    warning: (content) => Message.warning(content),
    info: (content) => Message.info(content),
    loading: (content) => Message.loading(content),
  }
}
```

**`src/composables/useArcoDialog.js`**

```javascript
import { Modal } from '@arco-design/web-vue'
export function useArcoDialog() {
  return {
    success: (opts) => Modal.success(opts),
    error: (opts) => Modal.error(opts),
    warning: (opts) => Modal.warning(opts),
    info: (opts) => Modal.info(opts),
    confirm: (opts) => Modal.confirm(opts),
  }
}
```

### 0.3 重写 App.vue

移除所有 Naive UI Provider 嵌套，简化为 `<a-config-provider>`。

主题切换：`document.body.setAttribute('arco-theme', 'dark')`。

### Phase 0 验证标准

- [ ] `npm run build` 通过
- [ ] 深色/浅色主题切换正常

---

## Phase 1: 布局框架 + 基础组件 + 简单页面

### 1.1 主题系统 + 布局（layout-first 顶层）

| 文件 | 操作 | 说明 |
|------|------|------|
| `composables/useTheme.js` | 重写 | `arco-theme` 属性 + computed `isDark` |
| `components/Common/ThemeToggle.vue` | 修改 | `<a-button>` + Arco 图标 |
| `layout/DefaultLayout.vue` | 修改 | `<a-button>`, `<a-avatar>`, `<a-dropdown>`, `<a-drawer>`, Arco 图标, `useArcoMessage` |

### 1.2 基础组件

| 文件 | 操作 | 说明 |
|------|------|------|
| `components/Common/IdentityCard.vue` | 修改 | `<n-tag>` → `<a-tag>`, `<n-button text>` → `<a-button type="text">` |
| `components/GameStatus.vue` | 修改 | `<n-tabs>` → `<a-tabs>`, `<n-tab-pane>` → `<a-tab-pane>`, `useArcoMessage` |

### 1.3 简单页面

| 文件 | 操作 | 说明 |
|------|------|------|
| `views/Login.vue` | 重写 | Arco Form/Input 完整替换 |
| `views/Home.vue` | 修改 | `<a-button>`, `<a-drawer>`, Arco 图标 |

### Phase 1 验证标准

- [ ] `npm run build` 通过
- [ ] 布局框架渲染正常
- [ ] 主题切换正常

---

## Phase 2: 模块逐模块完成

### 模块推进策略

每个模块一次性完成 UI 替换 + 增量功能移植，完成后 `npm run build` 验证。

### 混合重构/增量策略

| 模块 | 策略 | 原因 |
|------|------|------|
| DailyTaskRunner | 重构 | 结构变化大（11个 build 方法拆分） |
| Profile | 重构 | TokenManager 内联 + 表单重构 |
| GameFeatures/GameStatus | 重构 | Tab 式布局 + 42 个子组件 |
| BatchDailyTasks | 增量 | 14 个 tab 逐个添加 |
| 简单页面/卡片 | 增量 | 改动小，直接替换 |

### Batch 1: 基础设施（P0）

| 文件 | 操作 | 参考 |
|------|------|------|
| `src/utils/crossPlatform.js` | 新增 | translations/BatchDailyTasks |
| `src/utils/wakeLock.js` | 新增 | translations/BatchDailyTasks |
| `public/answer.json` | 新增 | formatted-js/gameCommands |

### Batch 2: DailyTaskRunner（P0）

| 内容 | 参考 |
|------|------|
| 错误处理体系 | translations/DailyTaskRunner |
| 辅助函数 | translations/DailyTaskRunner |
| 构造函数扩展 | translations/DailyTaskRunner |
| 连接管理 | translations/DailyTaskRunner |
| 命令发送重构 | translations/DailyTaskRunner |
| 阵容管理 | translations/DailyTaskRunner |
| 11 个 build 方法 | translations/DailyTaskRunner |
| 主方法重构 | translations/DailyTaskRunner |

### Batch 3: Profile（P1）

| 内容 | 参考 |
|------|------|
| TokenManager 内联（25 个新增函数） | translations/Profile |
| changePassword | translations/Profile |
| updateTheme | translations/Profile |
| 多服务器配置 | translations/Profile |

### Batch 4: BatchDailyTasks（P1）

14 个 tab 逐个推进，每个 tab 完成后验证。

### Batch 5: GameFeatures（P2）

| 内容 | 参考 |
|------|------|
| GameStatus Tab 式布局 | translations/GameFeatures |
| ClubInfo 增强 | translations/GameFeatures |
| IdentityCard 完整资源面板 | translations/GameFeatures |
| ClubWeirdTowerInfo Modal | translations/GameFeatures |
| LegionWarStatistics 视图模式 | translations/GameFeatures |
| CarScoreInfo / ClubCarKing | translations/GameFeatures |

### Batch 6: 剩余页面/组件（P3）

| 文件 | 操作 |
|------|------|
| `views/NotFound.vue` | 修改 |
| `views/Register.vue` | 修改 |
| `views/Dashboard.vue` | 修改 |
| `views/DailyTasks.vue` | 修改 |
| `views/GameRoles.vue` | 修改 |
| `views/LegionWar.vue` | 修改 |
| `views/Changelog.vue` | 修改 |
| `views/TokenImport/` (6 个文件) | 修改 |
| `components/Club/` (15 个文件) | 修改 |
| `components/cards/` (20 个文件) | 修改 |
| `components/Test/` (2 个文件) | 修改 |
| `components/Setting/` (1 个文件) | 修改 |
| `components/Team/` (2 个文件) | 修改 |
| `components/Tower/` (3 个文件) | 修改 |
| `components/Daily/` (2 个文件) | 修改 |
| 根级组件 (6 个文件) | 修改 |

### 每个模块的移植流程

1. 读 `02-translations/` 理解增量逻辑
2. 读 `01-reference/annotations/` 确认行号和类型
3. 读 `01-reference/mappings/` 还原 minified 变量名
4. 在 `04-dev/src/` 中实现（template + script + style 同步）
5. `npm run build` 验证

---

## Phase 3: 样式对齐

### 3.1 CSS 变量迁移

APK528 定义了 62 个 CSS 自定义属性，需迁移到 `04-dev/src/assets/styles/variables.scss`。

参考：`01-reference/css/index-DlxoWD7I.css` 和 `03-css-analysis/css-analysis.md`

### 3.2 深色主题对齐

Arco Design 深色主题激活方式：
```javascript
document.body.setAttribute('arco-theme', 'dark')
```

### Phase 3 验证标准

- [ ] 深色/浅色主题切换与 APK528 一致
- [ ] 移动端响应式布局与 APK528 一致
- [ ] 每个页面的视觉效果与 APK528 差异 < 5%

---

## Phase 4: 验证 + 部署

### 4.1 代码质量

```bash
npm run lint
npm run build
```

### 4.2 安全修复

| 修复项 | 文件 | 说明 |
|--------|------|------|
| `eval(taskName)` → 函数映射表 | BatchDailyTasks.vue | 2 处 |
| Capacitor 残留检查 | 全局 | `grep -rn 'Capacitor\|@tauri-apps' src/` |

### 4.3 移除 naive-ui 依赖

Phase 2 全部完成后：
```bash
npm uninstall naive-ui
```

### 4.4 功能测试

逐页面对比 `ena.pages.dev`。

### 4.5 部署

```bash
npm run build
# 推送到 GitHub → Cloudflare Pages 自动部署
```

---

## 增量统计

APK528 相对于开源项目的差异：

| 类型 | 数量 | 说明 |
|------|------|------|
| [新增] | 173 | 目标独有，需从零实现（不含第三方库代码） |
| [修改] | 40 | 开源有但逻辑不同，需改造 |
| [共享] | 99 | 逻辑一致，直接复用 |
| [删除] | 11 | 开源有但目标已移除 |

---

## 工作量估算

| Phase | 工作内容 | 预估 |
|-------|---------|------|
| Phase 0 | 基础设施 | 1-2h |
| Phase 1 | 布局框架 + 基础组件 + 简单页面 | 3-5h |
| Phase 2 | 模块逐模块完成 | 50-70h |
| Phase 3 | 样式对齐 | 10-15h |
| Phase 4 | 验证+部署 | 5-8h |
| **合计** | | **69-100h** |

---

## 风险和缓解

| 风险 | 影响 | 缓解措施 |
|------|------|---------|
| `<n-data-table>` → `<a-table>` API 完全不同 | 高 | 优先处理，单独测试 |
| `<n-icon>` 需逐个替换为 Arco 图标组件 | 中 | 建立图标映射表 |
| `useMessage` 有 133 处使用 | 中 | 创建统一封装 `useArcoMessage.js` |
| 深色主题系统完全不同 | 中 | Phase 0 先搞定主题系统 |
| 构建可能中途失败 | 中 | 每个批次替换后立即 `npm run build` |
| APK528 翻译覆盖率约 53% | 高 | 未翻译函数需直接读 formatted-js 代码 |

---

## 参考材料索引

| 材料 | 路径 | 用途 |
|------|------|------|
| 基线源码 | `00-baseline/` | 修改起点 |
| 基线校验 | `01-reference/baseline-verification.md` | formatted-js 偏差参考 |
| APK 原始文件 | `01-reference/apk-raw/` | 最终验证基准 |
| 格式化后 JS | `01-reference/formatted-js/` | 读取 minified 代码逻辑 |
| CSS 文件 | `01-reference/css/` | 样式参考 |
| 变量名映射 | `01-reference/mappings/` | minified → 可读名 |
| 增量标记 | `01-reference/annotations/` | 确认函数类型和行号 |
| 翻译文档 | `02-translations/` | 可读代码 + 中文注释 |
| CSS 分析 | `03-css-analysis/css-analysis.md` | 样式差异详细分析 |