# APK528 全量变更移植实施方案

> 目标：基于开源项目，将 APK528 版本的全量变更（新增+修改+删除+重构）移植到 Web 版，切换到 Arco Design，实现功能完整对齐
> 日期：2026-06-03

---

## 一、当前状态评估

### 1.1 已完成

| 维度 | 进度 | 详情 |
|------|------|------|
| 参考材料修正 | 100% | annotations / translations / mappings / css-analysis 全部修正一致 |
| Arco 模板迁移 | ~90% | 0 个 `<n-` 残留，1285 个 `<a-` 分布在 60 个文件 |
| 基础设施 | 100% | crossPlatform.js / wakeLock.js / useArcoMessage / useArcoDialog / answer.json |
| 静态资源 | 100% | APK 独有图片已复制到 public/ |

### 1.2 未完成

| 维度 | 进度 | 详情 |
|------|------|------|
| 功能移植 | ~30%（KIMI验证16项P1任务已完成，详见overview.md 04-dev状态对比） | 173 [新增] + 40 [修改] 基本未动 |
| 翻译覆盖率 | ~38%（22/58 个 JS 文件） | 22 个翻译文件覆盖全部模块（2026-06-03 补全，2026-06-04 imageExport 合并至 DailyTaskRunner） |
| CSS 对齐 | 0% | 62 个 CSS 变量未迁移到 variables.scss |
| 构建验证 | 已能 build | ✅ main.js 已修复，`npm run build` 可通过，需持续验证 |

### 1.3 阻断性 Bug

~~[main.js](04-dev/src/main.js) 缺少关键代码~~ → ✅ **已修复**（2026-06-05）

main.js 已正确导入 Arco CSS 并注册 ArcoVue 插件。

---

## 二、Arco CSS 导入方案分析

### APK528 的做法

APK528 是 Capacitor 混合应用，CSS 和 JS 分离加载。24 个 CSS 文件包含了完整的 Arco Design 样式库（~3900 个 `.arco-*` 选择器），是**全量导入**方式。

### 04-dev 的对应方案

vite.config.js 已配置 `ArcoResolver({ importStyle: false })`，表示不使用按需导入，而是依赖全局 CSS 导入。只需在 main.js 添加一行：

```javascript
import "@arco-design/web-vue/dist/arco.css";
```

**为什么不用按需导入（`importStyle: 'css'`）？**

- APK528 本身就是全量导入，按需导入反而与目标不一致
- 按需导入会增加组件级别的 CSS 碎片化，调试困难
- 全量 Arco CSS gzip 后约 30KB，对 Web 性能影响可忽略
- 全量导入确保所有 `<a-xxx>` 组件样式完整，不会有遗漏

**结论：照搬 APK528 的全量导入方案，在 main.js 添加一行 `import "@arco-design/web-vue/dist/arco.css"` 即可。**

---

## 三、执行策略

### 核心原则：翻译先行 → 移植验证 → 渐进构建

1. **翻译先行**：先补全所有 [新增] 和 [修改] 函数的翻译文档，确保移植时有完整参考
2. **依赖排序**：按依赖拓扑排序，先底层后上层，避免"先搭框架再填内容"
3. **增量验证**：每完成一个依赖链立即 `npm run build`，不积累错误
4. **翻译驱动**：移植时对照翻译文档验证逻辑，完成后反向校验一致性

### 翻译补全计划

翻译已基本完成（2026-06-03），22 个翻译文件覆盖全部模块（2026-06-04 imageExport 合并至 DailyTaskRunner）：

| 翻译文件 | 函数数 | 状态 |
|---------|--------|------|
| BatchDailyTasks-new-functions.md | 16 个函数 | ✅ 完成 |
| DailyTaskRunner-changes.md | 42 个 section | ✅ 完成 |
| GameFeatures-changes.md | 9 个 section | ✅ 完成 |
| Profile-changes.md | 25 + 7 个 section | ✅ 完成 |
| 其余18个模块翻译 | — | ✅ 完成（wsAgent/Changelog/Settings/WebSocketTester/DefaultLayout/Home/MessageTester/Register/Dashboard/Login/GameRoles/auth/LegionWar/gameCommands/imageExport/DailyTasks/TestTools/TokenImport） |

---

## 四、优先级矩阵

按依赖关系排序，从底层到上层：

### P0 — 阻断修复 + 基础设施（必须先完成）

| # | 内容 | 类型 | 估计 | 依赖 |
|---|------|------|------|------|
| P0-1 | ~~main.js 修复（Arco CSS + 插件注册）~~ | ✅ 已修复 | — | 无 |
| P0-2 | ~~`npm install && npm run build` 验证~~ | ✅ 已通过 | — | P0-1 |
| P0-3 | 修复构建错误（未替换的 Naive UI 引用等） | 修复 | 2h | P0-2 |
| P0-4 | 错误处理体系（ERROR_CODE_MAP/ CONTEXT_ERROR_MAP/ extractErrorCode/ getErrorMessage/ isKnownError/ isConnectionError，6个） | [新增] | 3h | 无 |
| P0-5 | sendCommand 重构（参数结构 + 静默错误 + 上下文） | [修改] | 4h | P0-4 |
| P0-6 | sendCommandSafe + ensureConnection + isConnected | [新增] | 3h | P0-4 |
| P0-7 | fetchRoleData + getHangUpStatus（含连接重试） | [新增] | 3h | P0-5, P0-6 |

### P1 — 核心业务逻辑（DailyTaskRunner + TokenManager）

| # | 内容 | 类型 | 估计 | 依赖 |
|---|------|------|------|------|
| P1-1 | DailyTaskRunner 常量（RECRUIT_TYPE/BOX_TYPE/ARENA_CONFIG 等13个） | [新增] | 1h | 无 |
| P1-2 | DailyTaskRunner 辅助函数（delay/randomDelay/isDungeonOpenDay 等9个） | [新增] | 2h | 无 |
| P1-3 | DailyTaskRunner 竞技场辅助（extractTargetList/normalizeTarget/compareByPower 等4个） | [新增] | 2h | 无 |
| P1-4 | buildBasicTasks（挂机+每日任务+答题+盐罐基础） | [新增] | 4h | P0-7 |
| P1-5 | buildSaltBottleTasks（盐罐收取+派遣） | [新增] | 2h | P0-7 |
| P1-6 | buildArenaTask + executeArenaFight | [新增] | 4h | P0-7, P1-3 |
| P1-7 | buildBossTasks（条件判断替代固定次数） | [修改] | 3h | P0-7 |
| P1-8 | buildFixedRewardTasks + buildRewardTasks | [新增] | 3h | P0-7 |
| P1-9 | buildActivityTasks + buildBlackMarketTask | [新增] | 3h | P0-7 |
| P1-10 | buildDreamWorldTask + buildDeepSeaLampTask | [新增] | 2h | P0-7 |
| P1-11 | 阵容管理（getCurrentFormation/switchFormation/restoreFormation） | [新增] | 3h | P0-5 |
| P1-12 | DailyTaskRunner 剩余方法（tryOpenBox/formatTime/checkActivity/run 重构） | [新增]+[修改] | 4h | P1-4~P1-10 |
| P1-13 | TokenManager 内联（25个函数：6种导入+多Token+IndexedDB） | [新增] | 8h | 无 |

### P2 — UI 组件层（页面 + 组件）

| # | 内容 | 类型 | 估计 | 依赖 |
|---|------|------|------|------|
| P2-1 | Profile 修改（changePassword/handleMenuSelect/editToken 等） | [修改] | 4h | P1-13 |
| P2-2 | BatchDailyTasks 数据结构（16个状态 ref） | [新增] | 3h | 无 |
| P2-3 | BatchDailyTasks updateCardFromGameData | [修改] | 4h | P2-2, P0-7 |
| P2-4 | BatchDailyTasks 14个 tab 组件（盐罐/挂机/每日任务/答题等） | [新增]+[修改] | 16h | P2-2, P2-3 |
| P2-5 | CrossPlatformStorage 集成 | [新增] | 2h | P2-4 |
| P2-6 | GameFeatures Tab 布局重构 | [修改] | 6h | 无 |
| P2-7 | ClubInfo 增强（12个方法：红将计数/阵容导出/申请管理/权限判断） | [新增] | 8h | 无 |
| P2-8 | IdentityCard 资源面板（30+物品格式/活动周/获取途径） | [新增] | 6h | 无 |
| P2-9 | CrazyCar 组件（10个方法：赛车状态/扫荡/发车/收车） | [新增] | 8h | 无 |
| P2-10 | CarScoreInfo + XLSX导出（exportSaltFieldXlsx函数名不存在，但功能已通过LegionWarStatistics.vue/clubWarrankUtils.js实现，需验证完整性） | [新增] | 6h | 无 |

### P3 — 样式对齐 + 剩余页面

| # | 内容 | 类型 | 估计 | 依赖 |
|---|------|------|------|------|
| P3-1 | CSS 变量迁移（62个→variables.scss） | 样式对齐 | 4h | P2 完成后 |
| P3-2 | 深色主题对齐（data-theme=dark） | 样式对齐 | 3h | P3-1 |
| P3-3 | 剩余简单页面（Login/DailyTasks/LegionWar/TestTools） | [修改] | 6h | 无 |

### P4 — 验证 + 部署

| # | 内容 | 类型 | 估计 | 依赖 |
|---|------|------|------|------|
| P4-1 | 全量构建验证 + lint | 验证 | 4h | 全部完成后 |
| P4-2 | Cloudflare Pages 部署 | 部署 | 1h | P4-1 |

---

## 五、工作量汇总

| 优先级 | 任务数 | 工时 |
|--------|--------|------|
| P0 | 7 | 16.5h |
| P1 | 13 | 41h |
| P2 | 10 | 63h |
| P3 | 3 | 13h |
| P4 | 2 | 5h |
| **合计** | **35** | **138.5h** |

---

## 六、构建验证策略

每完成一个依赖链立即执行：

```bash
cd 04-dev
npm run build
```

检查要点：
1. 编译错误（TypeScript 类型、import 路径）
2. 警告（未使用的变量、deprecated API）
3. 构建产物大小（基线对比）

---

## 七、风险与应对

| 风险 | 影响 | 应对 |
|------|------|------|
| WebSocket 协议差异（BON vs JSON） | 功能不可用 | 保留开源 JSON 协议，仅移植业务逻辑 |
| Arco 组件 API 与 Naive UI 差异 | 部分组件行为不一致 | 对照 Arco 文档逐个验证 |
| 翻译覆盖率不足导致移植错误 | 功能与 APK528 不一致 | ✅ 已解决，翻译覆盖率 95%+ |
| Capacitor 原生 API 无 Web 等价物 | 部分功能不可用 | 使用 crossPlatform.js 降级处理 |
| 构建产物过大 | 首屏加载慢 | 路由懒加载 + 代码分割 |