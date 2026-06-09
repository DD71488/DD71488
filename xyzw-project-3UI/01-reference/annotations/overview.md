# 增量标记总览

> 生成时间: 2026-05-28
> 基于: 4个模块的变量名映射表 + 开源源码对比分析

---

## 一、各模块增量统计

| 模块 | [新增] | [修改] | [共享] | [删除] | 合计 |
|------|--------|--------|--------|--------|------|
| BatchDailyTasks | 19 | 26 | 43 | 0 | 88 |
| imageExport | 2 | 3 | 18 | 0 | 23 |
| DailyTaskRunner | 50 | 10 | 1 | 0 | 61 |
| Profile | 65 | 6 | 11 | 4 | 86 |
| GameFeatures | 78 | 12 | 32 | 7 | 129 |
| **合计** | **214** | **57** | **105** | **11** | **387** |

> **⚠️ 2026-06-05 纠正说明**：原始统计为 [新增]198/[修改]51/[共享]99/[删除]11/合计359。
> 经逐文件精确计数，发现以下偏差：
> - BatchDailyTasks [修改] 20→26（+6），[共享] 37→43（+6）
> - GameFeatures [新增] 65→78（+13）
> - Profile [新增] 64→65（+1）
> - DailyTaskRunner [新增] 48→50（+2）
> - 此外，BatchDailyTasks 中有 17 项标注为 [修改] 的条目，其开源版本列标注为"无"，实际应为 [新增]（详见该模块纠正说明）
> - 如将这 17 项从 [修改] 重新归类为 [新增]，则最终修正统计为：[新增]231/[修改]40/[共享]105/[删除]11

### 统计说明

- **[新增] 214个**（原始198，纠正后实际计数）: 目标代码中有但开源源码中不存在的函数/类/常量，需要从零实现
- **[修改] 57个**（原始51，纠正后实际计数）: 开源和目标都有但逻辑不同的函数，需要基于开源版本改造
- **[共享] 105个**（原始99，纠正后实际计数）: 开源和目标逻辑一致的函数，可直接复用，无需移植
- **[删除] 11个**: 仅开源有但目标中已移除的函数，无需处理
- **⚠️ 分类争议**：BatchDailyTasks 中 17 项标为 [修改] 但开源版本为"无"的条目，严格分类应为 [新增]。若采纳此分类，最终统计为 [新增]231/[修改]40

---

## 二、按优先级排序的移植任务清单

### P1-高优先级（核心业务逻辑，影响主要功能）

| 序号 | 模块 | 函数名 | 功能描述 | 预估工时 |
|------|------|--------|---------|---------|
| 1 | BatchDailyTasks | `CrossPlatformStorage` 类(6个方法) | 跨平台存储管理器，TokenCard状态持久化基础 | 4h |
| 2 | BatchDailyTasks | `startStarChallenge` / `loadStarChallengeData` | 十殿星级挑战，新增游戏玩法 | 6h |
| 3 | BatchDailyTasks | `saveCardStatus` / `restoreCardStatus` / `getStorageKey` | 卡片状态持久化到CrossPlatformStorage | 3h |
| 4 | DailyTaskRunner | `ERROR_CODE_MAP` / `CONTEXT_ERROR_MAP` / 错误处理函数(4个) | 错误处理体系，DailyTaskRunner核心依赖 | 4h |
| 5 | DailyTaskRunner | `DailyTaskRunner.build*Tasks` 方法(11个) | 从run()拆分的任务构建方法，核心重构 | 8h |
| 6 | DailyTaskRunner | `DailyTaskRunner.ensureConnection` / `isConnected` | 连接管理，自动重连 | 3h |
| 7 | DailyTaskRunner | `DailyTaskRunner.sendCommandSafe` | 静默错误版命令发送 | 2h |
| 8 | DailyTaskRunner | `DailyTaskRunner.fetchRoleData` / `getHangUpStatus` | 角色数据获取+挂机状态判断 | 4h |
| 9 | DailyTaskRunner | `extractTargetList` / `normalizeTarget` | 竞技场目标选择重构 | 3h |
| 10 | imageExport | `downloadInApk` / `downloadFile` | Capacitor文件下载(需替换为Web方案) | 4h |
| 11 | Profile | `TokenManager` 内联组件(14个方法) | 完整Token管理功能 | 8h |
| 12 | Profile | `useLocalTokenManager` / `useGameRoles` / `useAuthStore` | Store依赖 | 4h |
| 13 | GameFeatures | `CarScoreInfo` 组件 | 赛车积分信息 | 4h |
| 14 | GameFeatures | `CrazyCar` 组件(10个方法) | 疯狂赛车完整功能 | 8h |
| 15 | GameFeatures | `DailyTaskStatus` 组件(7个方法) | 每日任务状态 | 6h |
| 16 | GameFeatures | `ClubInfo` 扩展(12个方法) | 俱乐部成员管理+申请审批 | 8h |
| 17 | GameFeatures | `IdentityCard` 扩展(30+物品) | 完整资源面板 | 6h |
| 18 | GameFeatures | `exportSaltFieldXlsx` + XLSX库 | 盐场匹配详情Excel导出 | 4h |
| 19 | GameFeatures | `BatchDailyTasks` 类 | 批量执行每日任务 | 4h |
| 20 | GameFeatures | 月赛系统(5个月赛类型) | 盐场月赛功能 | 4h |

**P1 小计: 20项任务，预估 91h**

### P2-中优先级（增强功能，提升用户体验）

| 序号 | 模块 | 函数名 | 功能描述 | 预估工时 |
|------|------|--------|---------|---------|
| 1 | BatchDailyTasks | `isTauri` / `isCapacitor` | 平台检测函数 | 1h |
| 2 | BatchDailyTasks | `isWeekResetNeeded` | 周重置检测 | 1h |
| 3 | BatchDailyTasks | `fetchCarStatus` / `fetchArenaRank` / `startArenaFight` / `claimLegacy` | TokenCard内单项功能 | 4h |
| 4 | DailyTaskRunner | `delay` / `randomDelay` | 延时函数 | 0.5h |
| 5 | DailyTaskRunner | `isDungeonOpenDay` / `getNestedValue` / `compareByPower` | 辅助判断函数 | 1.5h |
| 6 | DailyTaskRunner | `DailyTaskRunner.getCurrentFormation` / `switchFormation` / `restoreFormation` | 阵容管理独立方法 | 2h |
| 7 | DailyTaskRunner | `DailyTaskRunner.tryOpenBox` / `formatTime` / `checkActivity` | 任务辅助方法 | 2h |
| 8 | DailyTaskRunner | `ARENA_CONFIG` 常量 | 竞技场配置 | 0.5h |
| 9 | Profile | `getStatusType` / `getStatusText` / `getStatusIcon` / `getImportMethodLabel` | 状态映射函数 | 2h |
| 10 | Profile | `refreshGameToken` / `refreshFromUrl` | Token刷新(含CORS处理) | 3h |
| 11 | Profile | `exportTokens` / `importTokens` / `cleanExpired` | Token导入导出 | 2h |
| 12 | Profile | `copyToken` / `getTokenMenuOptions` / `handleMenuSelect` | Token操作菜单 | 2h |
| 13 | Profile | `Schema` + 验证器类(9个) | 表单验证体系 | 4h |
| 14 | Profile | `bulkOptions` / `handleBulkAction` | 批量操作 | 1h |
| 15 | GameFeatures | `ClubWarHistory` xlsx导出扩展 | 战绩Excel导出 | 2h |
| 16 | GameFeatures | `ClubWeirdTowerInfo` 导出图片扩展 | 怪异塔图片导出 | 1h |
| 17 | GameFeatures | `LegionWarStatistics` 视图模式切换 | 战况视图切换 | 2h |
| 18 | GameFeatures | `IdentityCard` 活动周/物品格式化 | 资源面板增强 | 2h |
| 19 | GameFeatures | `CrazyCar` 辅助方法(5个) | 赛车辅助功能 | 2h |
| 20 | GameFeatures | `ClubInfo` 辅助方法(6个) | 俱乐部辅助功能 | 2h |
| 21 | GameFeatures | `DailyTaskStatus` 辅助方法(3个) | 每日任务辅助 | 1h |
| 22 | GameFeatures | 碎片系统(6种碎片) | IdentityCard碎片展示 | 1h |

**P2 小计: 22项任务，预估 38.5h**

### P3-低优先级（常量/工具/图标，不影响核心功能）

| 序号 | 模块 | 函数名 | 功能描述 | 预估工时 |
|------|------|--------|---------|---------|
| 1 | DailyTaskRunner | 游戏配置常量(10个) | RECRUIT_TYPE/BOX_TYPE/CARD_TYPE等 | 1h |
| 2 | DailyTaskRunner | `DailyTaskRunner.success/warn/error/info` | 日志快捷方法 | 0.5h |
| 3 | Profile | `IconQuestionCircle` | 问号圆圈图标 | 0.5h |
| 4 | Profile | 滚动辅助函数(9个) | scroll-into-view polyfill | 1h |
| 5 | Profile | 类型判断工具函数(13个) | isArray/isObject/isString等 | 1h |
| 6 | Profile | `editToken` | 编辑Token(开发中) | 0.5h |
| 7 | GameFeatures | `getCarIcon` | 车辆图标映射 | 0.5h |
| 8 | GameFeatures | `MAX_LOGS` / `showToolsTab` | 常量 | 0.5h |
| 9 | GameFeatures | `getJobName` / `formatRedCount` / `formatNumber` | 格式化辅助 | 0.5h |
| 10 | GameFeatures | `showExpand` | 展开按钮控制 | 0.5h |

**P3 小计: 10项任务，预估 6.5h**

---

## 三、预估工作量汇总

| 优先级 | 任务数 | 预估工时 | 占比 |
|--------|--------|---------|------|
| P1-高 | 20 | 91h | 67% |
| P2-中 | 22 | 38.5h | 28% |
| P3-低 | 10 | 6.5h | 5% |
| **合计** | **52** | **136h** | **100%** |

### 按模块工作量分布

| 模块 | P1工时 | P2工时 | P3工时 | 合计 |
|------|--------|--------|--------|------|
| BatchDailyTasks | 13h | 6h | 0h | 19h |
| imageExport | 4h | 0h | 0h | 4h |
| DailyTaskRunner | 24h | 6.5h | 1.5h | 32h |
| Profile | 12h | 16h | 3h | 31h |
| GameFeatures | 38h | 10.5h | 2h | 50.5h |

### 移植建议

1. **先基础设施**: 优先移植 `CrossPlatformStorage` 和错误处理体系，它们是其他功能的基础依赖
2. **再核心业务**: 移植 DailyTaskRunner 重构方法（build*Tasks系列），这是每日任务的核心
3. **然后UI组件**: 移植 TokenManager、CrazyCar、DailyTaskStatus 等UI组件
4. **最后增强功能**: 移植导出xlsx、月赛系统等增强功能
5. **Capacitor替换**: `downloadInApk`/`downloadFile` 中的 Capacitor 代码需替换为纯Web方案
6. **共享函数直接复用**: 99个共享函数可直接从开源代码复用，无需修改

### 风险提示

- `CrossPlatformStorage` 是新增的跨平台存储层，开源中无对应实现，需完整实现
- `DailyTaskRunner` 从单一run()方法拆分为11个build*方法，重构幅度大，需仔细验证
- `Capacitor` 相关代码（downloadInApk/downloadFile/isCapacitor）在Web环境中不可用，必须替换
- Profile模块内联了完整的TokenManager组件，需确认与开源独立组件的接口兼容性
- GameFeatures模块体量最大(61988行)，包含10+子组件，建议按组件分批移植

---

## 四、与 04-dev 实际状态对比

> 以下基于 2026-06-03 对 04-dev 的全面检查结果（KIMI验证），2026-06-09 更新已补全项

| 任务 | 预估状态 | 04-dev 实际状态 | 差异说明 | 状态 |
|------|---------|----------------|---------|------|
| `CrossPlatformStorage` 类 | 需移植(P1) | **已实现** | `04-dev/src/utils/crossPlatform.js` 完整实现 | ✅完成 |
| `isTauri` / `isCapacitor` | 需移植(P2) | **已实现** | `crossPlatform.js` 中包含平台检测 | ✅完成 |
| `WakeLockManager` | 未预估 | **已实现** | `04-dev/src/utils/wakeLock.js` 完整实现 | ✅完成 |
| `answer.json` | 未预估 | **已补全** | 从 APK 复制到 `04-dev/public/answer.json` | ✅完成 |
| `scheduler-worker.js` | 未预估 | **无需创建** | APK 中该文件为 0 字节空白文件，非业务代码 | ✅无需处理 |
| `startStarChallenge` / `loadStarChallengeData` | 需移植(P1) | **已实现** | `BatchDailyTasks.vue` 中包含星级挑战 | ✅完成 |
| `saveCardStatus` / `restoreCardStatus` | 需移植(P1) | **已实现** | `BatchDailyTasks.vue` 中包含卡片状态持久化 | ✅完成 |
| `isWeekResetNeeded` | 需移植(P2) | **已实现** | `BatchDailyTasks.vue` 中包含周重置检测 | ✅完成 |
| `fetchCarStatus` / `fetchArenaRank` / `startArenaFight` / `claimLegacy` | 需移植(P2) | **已实现** | `BatchDailyTasks.vue` 中包含这些功能 | ✅完成 |
| `downloadInApk` / `downloadFile` | 需移植(P1) | **已重写** | `imageExport.js` 已重写为纯 Web 版本 | ✅完成 |
| `TokenManager` 内联组件 | 需移植(P1) | **已实现** | `Profile.vue` 中包含 TokenManager 内联 | ✅完成 |
| `useLocalTokenManager` / `useGameRoles` | 需移植(P1) | **已实现** | Store 中已包含 | ✅完成 |
| `gameCommands` 新增命令 | 未预估 | **已全部补全** | 32个缺失命令已全部注册 | ✅完成 |
| `DailyTaskRunner` 错误处理体系 | 需移植(P1) | **已实现** | `dailyTaskRunner.js` 中包含错误码映射 | ✅完成 |
| `DailyTaskRunner.build*Tasks` (11个) | 需移植(P1) | **已实现** | `dailyTaskRunner.js` 中包含所有 build 方法 | ✅完成 |
| `DailyTaskRunner` 连接管理 | 需移植(P1) | **已实现** | `connectionManager.js` 中实现 | ✅完成 |
| `CarScoreInfo` 组件 | 需移植(P1) | **已实现** | `04-dev/src/components/Club/CarScoreInfo.vue` | ✅完成 |
| `CrazyCar` 组件 | 需移植(P1) | **需确认** | 组件存在，但 10 个方法完整性待验证 | ⚠️待确认 |
| `DailyTaskStatus` 组件 | 需移植(P1) | **已实现** | `04-dev/src/components/Daily/DailyTaskStatus.vue` | ✅完成 |
| `ClubInfo` 扩展 | 需移植(P1) | **需确认** | 12 个方法完整性待验证 | ⚠️待确认 |
| `IdentityCard` 扩展(30+物品) | 需移植(P1) | **需确认** | 30+ 物品资源面板完整性待验证 | ⚠️待确认 |
| `exportSaltFieldXlsx` | 需移植(P1) | **⚠️函数名不存在，但XLSX导出功能已通过 LegionWarStatistics.vue 和 clubWarrankUtils.js 实现（需验证完整性）** | 函数名不存在于04-dev，但XLSX导出功能已实现 | ⚠️待验证 |
| `ClubWarHistory` xlsx导出 | 需移植(P2) | **未找到** | 俱乐部战绩 Excel 导出未找到 | ❌缺失 |
| `LegionWarStatistics` 视图模式 | 需移植(P2) | **需确认** | 视图模式切换待验证 | ⚠️待确认 |
| `eval(taskName)` | [新增]标注 | **已移除** | 安全风险，04-dev 已移除 | ✅已修正 |
| `responseToCommandMap` 缺失条目 | 未预估 | **已全部补全** | 13条缺失条目已全部注册 | ✅完成 |
| `errorCodeMap` 7300232 | 未预估 | **已补全** | 错误码已存在 | ✅完成 |
| 14个 `XyzwWebSocketClient` 便捷方法 | 未预估 | **已全部实现** | claimBoxPointReward 等14个方法已实现 | ✅完成 |
| 月赛 `typeLabel` 映射(type 15-25) | 未预估 | **已实现** | LegionWarMap.vue 中 type 15-25 全部映射 | ✅完成 |
| `runDailyTaskCompletion` 函数 | 未预估 | **缺失** | tasksHangUp.js 中有引用但无定义 | ❌缺失 |
| `shouldSendCar` matchAll 参数 | 未预估 | **与APK528差异** | 04-dev 仍保留 matchAll 参数，APK528 已移除 | ⚠️差异 |
| `isTodayAvailable` 比较方式 | 未预估 | **与APK528差异** | 04-dev 用 toDateString()，APK528 用时间戳比较 | ⚠️差异 |

### 修正后工作量预估

| 优先级 | 原始任务数 | 原始工时 | 已完成数 | 剩余工时 |
|--------|-----------|---------|---------|---------|
| P1-高 | 20 | 91h | 16 | ~20h |
| P2-中 | 22 | 38.5h | 0 | ~15h |
| P3-低 | 10 | 6.5h | 0 | ~6.5h |
| **合计** | **52** | **136h** | **16** | **~41.5h** |

### 剩余工作重点

1. **GameFeatures 模块**：剩余工作量最大，需重点验证 CrazyCar、ClubInfo、IdentityCard 的完整性
2. **XLSX 导出功能**：`exportSaltFieldXlsx` 和 `ClubWarHistory` xlsx 导出缺失，需实现
3. **Capacitor 清理**：`crossPlatform.js` 和 `wakeLock.js` 中的 Capacitor/Tauri 死代码需清理

---

## 五、更新记录

| 日期 | 更新内容 |
|------|---------|
| 2026-05-28 | 初始版本，基于 4 个模块的映射表 |
| 2026-06-03 | 添加"与 04-dev 实际状态对比"章节，更新工时预估，标记已完成任务（KIMI） |
| 2026-06-05 | 纠正统计数字（198/51→214/57），添加分类争议说明（17项⚠️） |
| 2026-06-06 | 修正 `scheduler-worker.js` 状态：APK 中为 0 字节空白文件，无需创建 |
| 2026-06-09 | 更新 04-dev 状态对比：gameCommands 32个命令已补全、responseToCommandMap 13条已补全、errorCodeMap 已补全、14个便捷方法已实现、月赛typeLabel已实现；新增 runDailyTaskCompletion 缺失、shouldSendCar/isTodayAvailable 差异记录 |
