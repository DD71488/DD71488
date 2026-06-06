# APK528 全量变更移植执行方案（修订版）

> 基于 04-dev 代码实际验证结果，而非文档声称的状态
> 生成时间：2026-06-06

---

## 一、核心发现：项目实际状态 vs 文档声称

### 1.1 关键差异

| 维度 | 文档声称 | 实际验证结果 |
|------|---------|-------------|
| `<n-` 残留 | "0匹配，已全部清除" | ✅ **确认**：src/ 中 grep 0 匹配 |
| naive-ui 依赖 | "已移除" | ✅ **确认**：04-dev/package.json 无 naive-ui |
| main.js Arco CSS | "阻断性bug" | ✅ **确认**：缺少 `import arco.css` 和 `app.use(ArcoVue)` |
| dailyTaskRunner 重构 | "1235行，已完成" | ⚠️ **部分完成**：04-dev 1235行 vs 00-baseline 736行（+499行），diff 1838行，已新增常量/错误映射/辅助函数，但 build*Tasks 方法是否完整需验证 |
| BatchDailyTasks | "6952行，14tabs已完成" | ⚠️ **仅UI迁移**：6952行 vs 00-baseline 6255行（+697行），diff 2378行，差异主要是 `<n-*> → <a-*>` 替换，APK528 新增逻辑是否完整移植需验证 |
| Profile | "1167行，已完成" | ⚠️ **部分完成**：1167行 vs 00-baseline 415行（+752行），diff 966行，TokenManager 内联已做，但 `handleMenuSelect` 缺5个break（安全风险） |
| GameFeatures | "906行，已完成" | ⚠️ **仅UI迁移**：906行 vs 00-baseline 689行（+217行），Tab布局已重构，但8项死代码未清理 |
| tokenStore/xyzwWebSocket/bonProtocol/router | "与基线一致" | ✅ **确认**：diff 0行，完全一致 |
| crossPlatform.js | "已实现" | ❌ **Stub**：59行，函数内部只有注释，无实际功能 |
| wakeLock.js | "已实现" | ⚠️ **部分实现**：207行，有基本实现但含 Capacitor 死代码 |
| 30+组件 | "已迁移" | ⚠️ **仅UI标签替换**：ClubInfo 509行diff、ClubWarrank 382行diff 等主要是 `<n-*> → <a-*>` 替换 |

### 1.2 核心结论

**04-dev 的实际工作 = Naive UI → Arco Design 模板标签替换 + dailyTaskRunner 部分重构 + Profile TokenManager 内联 + 4个新增文件**

**APK528 的 173个[新增] + 40个[修改] 业务逻辑大部分尚未移植。** 之前文档声称"Phase 0-3 全部完成"是**高估**了——完成的是 UI 框架迁移，不是功能对齐。

---

## 二、错漏与优化建议

### 2.1 错漏清单

| # | 错漏 | 影响 | 严重程度 |
|---|------|------|---------|
| 1 | **main.js 缺 Arco CSS + ArcoVue 注册** | 所有 Arco 组件无样式，命令式 API 不可用 | 🔴 阻断 |
| 2 | **crossPlatform.js 是空壳** | 下载功能、平台判断不可用 | 🔴 高 |
| 3 | **Profile.vue handleMenuSelect 缺5个break** | switch 穿透导致错误行为 | 🔴 高 |
| 4 | **GameFeatures.vue 8项死代码未清理** | 代码冗余、潜在运行时错误 | 🟡 中 |
| 5 | **约20个 APK528 独有游戏命令未注册** | 新功能（宠物/噩梦/抽卡等）不可用 | 🟡 中 |
| 6 | **14个 XyzwWebSocketClient 便捷方法缺失** | 日常任务自动化不完整 | 🟡 中 |
| 7 | **3个[共享]函数实际有差异** | shouldSendCar/checkRewardConditions/isTodayAvailable 逻辑不一致 | 🟡 中 |
| 8 | **runDailyTaskCompletion 完全缺失** | 一键完成日常任务不可用 | 🟡 中 |
| 9 | **LegionWarMap 月赛 typeLabel 映射缺失** | type 15-25 显示异常 | 🟡 中 |
| 10 | **clientVersion 版本号不一致** | 04-dev 用 2.21.2，APK528 用 2.10.3 | 🟢 低 |

### 2.2 优化建议

| # | 优化 | 收益 | 优先级 |
|---|------|------|--------|
| 1 | **拆分 BatchDailyTasks.vue（6952行→14个文件）** | 可维护性、构建速度、code-splitting | P1 |
| 2 | **路由级 code-splitting** | 首屏 JS 体积 -58% | P1 |
| 3 | **清理 Capacitor 死代码** | 减少包体积、消除混淆 | P2 |
| 4 | **统一主题属性**：`arco-theme` vs `data-theme` | 当前混用，04-dev 用 `arco-theme`，00-baseline 用 `data-theme`，需统一 | P1 |
| 5 | **CSS 变量去重**：62个变量在20+文件中重复定义 | 减少~40KB CSS | P2 |
| 6 | **补充 lint 和 typecheck** | 代码质量保障 | P1 |

---

## 三、执行方案

### 核心原则

1. **先修阻断，再补逻辑，最后优化** — 严格按依赖顺序
2. **每步验证** — 每完成一个任务就 `npm run build`
3. **翻译驱动** — 移植时对照 02-translations/ 翻译文档

### Phase 0：阻断修复（必须最先完成）

| # | 任务 | 文件 | 具体操作 | 验证 |
|---|------|------|---------|------|
| 0-1 | 修复 main.js | `src/main.js` | 添加 `import ArcoVue from "@arco-design/web-vue"` + `import "@arco-design/web-vue/dist/arco.css"` + `app.use(ArcoVue)` | `npm run build` |
| 0-2 | 实现 crossPlatform.js | `src/utils/crossPlatform.js` | 实现 `downloadFile()`（Blob URL + `<a>` 标签）、`isWeb()`、`isCapacitor()` 返回值 | build + 运行时验证 |
| 0-3 | 修复 Profile.vue break | `src/views/Profile.vue` | 在 `handleMenuSelect` 的5个 case 中补充 `break` | build |
| 0-4 | 统一主题属性 | `src/main.js` + `src/composables/useTheme.js` | 确认统一使用 `arco-theme`（当前已是，但需确认所有组件一致） | build |
| 0-5 | 首次构建验证 | — | `cd 04-dev && npm install && NODE_OPTIONS=--max-old-space-size=4096 npm run build` | 构建通过 |

### Phase 1：APK528 核心逻辑移植（底层→上层）

| # | 任务 | 文件 | 具体操作 | 依赖 |
|---|------|------|---------|------|
| 1-1 | 补充游戏命令 | `src/utils/gameCommands.js` | 注册约20个 APK528 独有命令（activity_buystoregoods/pet_*/nmext_*/nightmare_*/evotower_*/gacha_*/warguess_*/presetteam_*/typecalcpowerbyteam/legion_storegoodslist/discount_getdiscountinfo 等） | 0-5 |
| 1-2 | 补充响应映射 | `src/utils/xyzwWebSocket.js` | 补充13条 responseToCommandMap + 1条 errorCodeMap + 14个便捷方法 | 1-1 |
| 1-3 | 修复3个[共享]函数差异 | `src/utils/batch/` | shouldSendCar 移除 matchAll 参数；checkRewardConditions 改为 OR 模式；isTodayAvailable 改为时间戳比较 | 0-5 |
| 1-4 | DailyTaskRunner 补全 | `src/utils/dailyTaskRunner.js` | 验证11个 build*Tasks 方法是否完整；补充 sendCommand 重构（参数结构+静默错误+上下文）；补充 ensureConnection/isConnected；补充阵容管理3个方法 | 1-2 |
| 1-5 | 实现 runDailyTaskCompletion | `src/utils/batch/tasksHangUp.js` | 一键完成日常任务函数 | 1-4 |
| 1-6 | LegionWarMap 月赛映射 | `src/components/Club/LegionWarMap.vue` | 补充 type 15-25 的 typeLabel 映射 | 0-5 |
| 1-7 | 赛车金砖保底 | `src/utils/batch/carUtils.js` | 补充 createCarManager 金砖刷新保底逻辑 | 0-5 |
| 1-8 | 答题重试增强 | `src/utils/studyQuestionsFromJSON.js` | 补充 batchStudy 重试/检查机制 | 0-5 |
| 1-9 | pickArenaTargetId 返回值 | `src/utils/dailyTaskRunner.js` | 修改返回完整对象（含 roleId/name/rank/power） | 1-4 |

### Phase 2：UI 层清理与增强

| # | 任务 | 文件 | 具体操作 | 依赖 |
|---|------|------|---------|------|
| 2-1 | GameFeatures 死代码清理 | `src/views/GameFeatures.vue` | 删除8项死代码（handleFeatureAction/connectWebSocket/disconnectWebSocket/toggleConnection/initializeGameData/pickArenaTargetId原位置/useRouter导入/ws-status-section模板） | 0-5 |
| 2-2 | ClubInfo 增强 | `src/components/Club/ClubInfo.vue` | 补充12个方法（红将计数/阵容导出/申请管理/权限判断） | 1-2 |
| 2-3 | IdentityCard 资源面板 | `src/components/Common/IdentityCard.vue` | 补充30+物品格式/活动周/获取途径 | 0-5 |
| 2-4 | XLSX 导出验证 | `src/components/Club/LegionWarStatistics.vue` + `clubWarrankUtils.js` | 验证现有 XLSX 导出是否覆盖 APK528 全部功能 | 0-5 |
| 2-5 | wakeLock 清理 | `src/utils/wakeLock.js` | 清理 Capacitor 死代码，保留纯 Web Wake Lock API | 0-5 |
| 2-6 | clientVersion 确认 | `src/utils/xyzwWebSocket.js` | 确认正确版本号（2.10.3 vs 2.21.2） | 0-5 |

### Phase 3：CSS 对齐与样式完善

| # | 任务 | 文件 | 具体操作 | 依赖 |
|---|------|------|---------|------|
| 3-1 | CSS 变量迁移 | `src/assets/styles/variables.scss` | 迁移62个 CSS 自定义属性（参考 03-css-analysis/css-analysis.md） | Phase 2 |
| 3-2 | 新增6个全局 CSS 变量 | `variables.scss` | 添加 `--card-bg`/`--card-bg-hover`/`--input-bg`/`--input-border`/`--shadow-large`/`--shadow-small` | 3-1 |
| 3-3 | 深色主题统一 | 多文件 | 统一为 `[arco-theme="dark"]` 选择器；修复 MessageTester/WebSocketTester 硬编码颜色 | 3-1 |
| 3-4 | 响应式断点补全 | `variables.scss` | 补充11个响应式断点（480/576/600/900/992/1024/1200/1280/1400/1536/1600px） | 3-1 |
| 3-5 | scoped CSS 变量去重 | 20+文件 | 将62个重复定义的 scoped 变量统一到 variables.scss | 3-1 |

### Phase 4：构建优化

| # | 任务 | 具体操作 | 预期效果 | 依赖 |
|---|------|---------|---------|------|
| 4-1 | 路由级 code-splitting | 在 vite.config.js 中配置 `manualChunks`，将 GameFeatures/BatchDailyTasks/LegionWar 等拆分为独立 chunk | 首屏 JS -58% | Phase 2 |
| 4-2 | 拆分 BatchDailyTasks | 6952行 → 14个独立组件文件 + 1个主文件 | 可维护性、构建速度 | Phase 2 |
| 4-3 | Arco 按需引入评估 | 当前全量导入 gzip ~30KB，可接受；如需优化则配置 `importStyle: 'css'` | 可选 | Phase 4 部署后 |

### Phase 5：验证与部署

| # | 任务 | 具体操作 | 验证标准 | 依赖 |
|---|------|---------|---------|------|
| 5-1 | lint 检查 | `npm run lint`，分批修复 error | 0 error | Phase 3 |
| 5-2 | 运行时验证 | `npm run dev`，逐一测试核心功能 | Token导入/连接/日常任务/批量操作/盐场 | 5-1 |
| 5-3 | 构建验证 | `NODE_OPTIONS=--max-old-space-size=4096 npm run build` | 构建通过 + 产物大小合理 | 5-2 |
| 5-4 | Cloudflare Pages 部署 | 推送到 GitHub + 配置 CF Pages | 线上可访问 | 5-3 |

---

## 四、工作量估算

| Phase | 任务数 | 估计工时 | 说明 |
|-------|--------|---------|------|
| Phase 0 | 5 | 3h | 阻断修复，必须最先完成 |
| Phase 1 | 9 | 25h | 核心业务逻辑移植 |
| Phase 2 | 6 | 16h | UI 层清理与增强 |
| Phase 3 | 5 | 8h | CSS 对齐 |
| Phase 4 | 3 | 5h | 构建优化 |
| Phase 5 | 4 | 6h | 验证与部署 |
| **合计** | **32** | **63h** | 比原方案 138.5h 大幅减少（因 UI 迁移已完成） |

---

## 五、执行顺序依赖图

```
Phase 0 (阻断修复)
  0-1 main.js修复 ──→ 0-5 首次构建验证
  0-2 crossPlatform  ──↗
  0-3 Profile break  ──↗
  0-4 主题统一     ──↗

Phase 1 (核心逻辑) ── 依赖 0-5
  1-1 游戏命令 ──→ 1-2 响应映射 ──→ 1-4 DailyTaskRunner补全 ──→ 1-5 runDailyTaskCompletion
  1-3 共享函数修复（独立）
  1-6 月赛映射（独立）
  1-7 赛车保底（独立）
  1-8 答题增强（独立）
  1-9 竞技场返回值（依赖1-4）

Phase 2 (UI清理) ── 依赖 Phase 1
  2-1~2-6 大部分独立，可并行

Phase 3 (CSS) ── 依赖 Phase 2
Phase 4 (优化) ── 依赖 Phase 2
Phase 5 (部署) ── 依赖 Phase 3+4
```

---

## 六、风险与应对

| 风险 | 概率 | 影响 | 应对 |
|------|------|------|------|
| main.js 修复后仍有运行时错误 | 中 | 高 | 准备回滚方案，git commit 每个 Phase |
| DailyTaskRunner build*Tasks 方法不完整 | 高 | 高 | 对照 02-translations/DailyTaskRunner-changes.md 逐个验证 |
| Arco 组件 API 与 Naive UI 行为差异 | 中 | 中 | 对照 Arco 文档逐个验证，重点关注 v-model 差异 |
| 构建内存不足 | 低 | 中 | `NODE_OPTIONS=--max-old-space-size=4096` |
| 5个待验证 gameCommands 命令 | 低 | 低 | 在 apk-raw 中搜索确认后决定 |

---

## 七、与原方案的关键差异

| 维度 | 原 IMPLEMENTATION-PLAN | 本方案 | 原因 |
|------|----------------------|--------|------|
| 工时 | 138.5h | 63h | UI 迁移已完成，无需重复 |
| Phase 0 内容 | 7项（含 sendCommand 重构等） | 5项（仅阻断修复） | sendCommand 重构移至 Phase 1 |
| DailyTaskRunner | 从零实现 | 验证+补全 | 已有1235行基础代码 |
| 功能移植 | 173新增+40修改全部列出 | 聚焦7项高优先级+7项中优先级差异 | 基于 apk528-vs-04dev-diff.md 精确差异 |
| 构建优化 | P2可选 | Phase 4 必做 | 6952行单文件不可维护 |
| CSS 对齐 | "0%未开始" | Phase 3 系统执行 | 62个变量+深色主题+响应式 |

---

## 八、验证操作记录

### 8.1 已执行的验证命令及结果

| # | 验证项 | 命令/操作 | 结果 |
|---|--------|----------|------|
| 1 | `<n-` 残留检查 | `grep -r '<n-' src/ --include='*.vue' --include='*.js' --include='*.ts' -l` | 0个文件匹配 ✅ |
| 2 | naive-ui 引用检查 | `grep -r 'naive-ui' src/ -l` | 0个文件匹配 ✅ |
| 3 | `<a-` 使用统计 | `grep -c '<a-'` 关键文件 | BatchDailyTasks:274, GameFeatures:25, Profile:54, DailyTasks:13, Home:9, Login:12, DefaultLayout:4, App:1 |
| 4 | 文件行数对比 | `wc -l` 04-dev vs 00-baseline | dailyTaskRunner: 1235 vs 736, BatchDailyTasks: 6952 vs 6255, Profile: 1167 vs 415, GameFeatures: 906 vs 689 |
| 5 | diff 行数统计 | `diff \| wc -l` | dailyTaskRunner: 1838, BatchDailyTasks: 2378, Profile: 966, GameFeatures: diff>100, DailyTasks: 133, LegionWar: 40, Dashboard: 35 |
| 6 | 04-dev 新增文件 | `diff <(find src -type f)` | 4个新增：useArcoDialog.js, useArcoMessage.js, crossPlatform.js, wakeLock.js |
| 7 | 组件 diff 排名 | 逐文件 diff 行数排序 | Top5: ClubInfo:509, ClubWarrank:382, GoldRankListPageCard:347, MessageTester:332, TopClubListPageCard:317 |
| 8 | main.js 对比 | `diff src/main.js ../00-baseline/src/main.js` | 04-dev 缺少 arco.css 导入和 ArcoVue 注册；主题属性从 data-theme 改为 arco-theme |
| 9 | App.vue 对比 | `diff src/App.vue ../00-baseline/src/App.vue` | 5层 Naive Provider → 单层 a-config-provider；移除 darkTheme/handleThemeChange；CSS 选择器从 .dark/[data-theme] 改为 [arco-theme] |
| 10 | 核心文件一致性 | diff tokenStore/xyzwWebSocket/bonProtocol/router | 全部 0 行差异 ✅ |

### 8.2 读取的关键文件

| # | 文件 | 用途 |
|---|------|------|
| 1 | 04-dev/package.json | 确认依赖（无 naive-ui ✅） |
| 2 | 04-dev/vite.config.js | 确认构建配置（ArcoResolver + 代理 + 插件） |
| 3 | 04-dev/src/main.js | 确认缺失 Arco CSS + ArcoVue |
| 4 | 04-dev/src/App.vue | 确认 Arco 迁移状态 |
| 5 | 04-dev/src/router/index.js | 确认路由配置 |
| 6 | 04-dev/src/stores/tokenStore.ts | 确认 Token 管理实现 |
| 7 | 04-dev/src/utils/xyzwWebSocket.js | 确认 WebSocket 实现 |
| 8 | 04-dev/src/utils/bonProtocol.js | 确认 BON 协议实现 |
| 9 | 04-dev/src/utils/crossPlatform.js | 确认为空壳 |
| 10 | 04-dev/src/utils/wakeLock.js | 确认含 Capacitor 死代码 |
| 11 | 04-dev/src/composables/useArcoMessage.js | 确认已实现 |
| 12 | 04-dev/src/composables/useArcoDialog.js | 确认已实现 |
| 13 | 00-baseline/package.json | 确认含 naive-ui 依赖 |
| 14 | README.md | 项目总体说明 |
| 15 | 项目全面分析报告.md | 项目分析报告 |
| 16 | 项目总览.md | 项目进度总览 |
| 17 | IMPLEMENTATION-PLAN.md | 原执行方案 |
| 18 | 01-reference/apk528-vs-04dev-diff.md | APK528 与 04-dev 精确差异清单 |

### 8.3 审查结论

#### 验证充分性评估

| 维度 | 评估 | 说明 |
|------|------|------|
| UI 迁移完成度 | ✅ 已验证 | `<n-` 残留 0 匹配，`<a-` 标签分布合理 |
| 核心文件一致性 | ✅ 已验证 | tokenStore/xyzwWebSocket/bonProtocol/router 与基线完全一致 |
| 阻断性 bug | ✅ 已验证 | main.js 缺 Arco CSS + ArcoVue 注册 |
| 业务逻辑移植 | ⚠️ 部分验证 | dailyTaskRunner 有新增代码但完整性未逐函数验证 |
| 组件迁移深度 | ⚠️ 部分验证 | 确认了 diff 行数但未逐组件验证业务逻辑 |

#### 未验证项（需后续执行时补充）

| # | 未验证项 | 原因 | 建议 |
|---|---------|------|------|
| 1 | dailyTaskRunner 11个 build*Tasks 方法完整性 | diff 仅显示新增了常量/错误映射，未逐函数核对 | 执行 Phase 1-4 时对照翻译文档逐个验证 |
| 2 | BatchDailyTasks 14个 tab 的业务逻辑 | diff 主要反映 UI 替换，业务逻辑差异需运行时验证 | 执行 Phase 5-2 时测试 |
| 3 | 30+组件的 Arco API 兼容性 | 仅验证了标签替换，未验证属性名差异（如 v-model:value vs v-model:model-value） | 执行 Phase 5-2 运行时验证 |
| 4 | 5个待验证 gameCommands 命令 | 需在 apk-raw 中搜索确认 | 执行 Phase 1-1 时验证 |
| 5 | `npm run build` 是否能通过 | 当前 main.js 有阻断性 bug | 执行 Phase 0-5 时验证 |
| 6 | crossPlatform.js 具体实现需求 | 仅确认是空壳，未确认需要哪些具体函数 | 执行 Phase 0-2 时对照 APK528 翻译文档 |
