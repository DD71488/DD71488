# APK528 vs 04-dev 差异清单

> 生成时间：2026-06-05
> 基于：GLM重开1完整分析报告 + DS重开独立验证报告 + KIMI重开验证报告v2 + 交叉对比分析
> 目的：为 APK528 功能对齐提供精确的执行清单

---

## 一、🔴 高优先级逻辑差异（7项）

| # | 差异 | 04-dev现状 | APK528目标 | 修复方案 |
|---|------|----------|----------|---------|
| 1 | 月赛 typeLabel 映射缺失 | LegionWarMap.vue 仅 type 1-6（小/中/大/本/城/核） | type 15-25 共11个月赛类型（灰岩岛/进阶周赛/进阶月赛/青铜周赛/青铜月赛/秘蓝周赛/秘蓝月赛/月宫周赛/月宫月赛/天宫周赛/天宫月赛） | 补充 typeLabel 映射表 |
| 2 | exportSaltFieldXlsx 函数名不存在 | ClubWarrank.vue 中无此函数名 | APK528 有 exportSaltFieldXlsx 函数 | ⚠️ 函数名不存在于04-dev，但XLSX导出功能已通过 LegionWarStatistics.vue 和 clubWarrankUtils.js 实现（功能等价，需验证完整性） | 验证现有XLSX导出是否覆盖APK528全部功能 |
| 3 | APK528 独有游戏命令约20个缺失 | 未注册 | activity_buystoregoods/activity_claimweekactreward(6种变体)/activity_claimredquenchreward/activity_claimrolluppack/activity_battlepassrewardclaim/charge_claimaddup/pet_activatebook/pet_claimbookreward/pet_openegg/nmext_getinfo/nmext_drawturntable/nmext_claimstarreward/nmext_startboss/nightmare_clickturntable/nightmare_claimweekreward/nightmare_claimturnrewardtimes/nightmare_claimbook/evotower_claimlegiontask/evotower_claimlegionprivilege/gacha_claimstagereward/tower_readyfight/presetteam_typegetinfo/typecalcpowerbyteam/typesetteam/warguess_getguessinfo/warguess_guessclaim/pkroom_appoint/hb_quench/hb_upgradeorder/store_getpurchase/legion_storegoodslist/discount_getdiscountinfo | 在 gameCommands.js 中注册新命令 |
| 4 | APK528 独有 responseToCommandMap 约13条缺失 | 未注册 | charge_claimaddupresp/store_getpurchaseresp/evotower_claimlegiontaskresp/evotower_claimlegionprivilegeresp/activity_battlepassrewardclaimresp/pet_activatebookresp/pet_claimbookrewardresp/pet_openeggresp/warguess_getguessinforesp/warguess_guessclaimresp/legion_storebuygoodsresp/legion_storegoodslistresp/tower_readyfightresp | 在 xyzwWebSocket.js 中补充 |
| 5 | APK528 独有 errorCodeMap 1条缺失 | 未注册 | `7300232: "暂无可预约的直播"` | 在 xyzwWebSocket.js 中补充 |
| 6 | XyzwWebSocketClient 便捷方法14个缺失 | 仅5个 | claimBoxPointReward/claimBoxWeeklyTargetReward/claimRecruitWeeklyGift/claimMarketWeeklyGift/claimBoxWeeklyGift/claimBoxWeeklyHammerReward/claimMondayGift/openGoldenEgg/claimAllWeeklyGifts/claimBronzeBox/claimWeeklyCardReward/claimMonthlyCardReward/claimLifetimeCardReward/claimAllCardRewards | 在 xyzwWebSocket.js 中补充 |
| 7 | runDailyTaskCompletion 完全缺失 | 不存在 | APK528 有此函数，一键完成日常任务 | 在 tasksHangUp.js 中实现 |

## 二、🟡 中优先级逻辑差异（7项）

| # | 差异 | 04-dev现状 | APK528目标 | 修复方案 |
|---|------|----------|----------|---------|
| 8 | createCarManager 金砖保底缺失 | 无金砖刷新保底逻辑 | APK528 有金砖刷新保底（刷新次数达阈值自动金砖购买） | 在 carUtils.js 中补充 |
| 9 | shouldSendCar matchAll 参数 | 保留 matchAll 参数 | APK528 已移除 matchAll 参数（仅 OR 模式） | 移除 matchAll 参数 |
| 10 | startStarChallenge 批量版增强缺失 | 基础实现 | APK528 有更多错误处理和状态恢复逻辑 | 增强 startStarChallenge |
| 11 | pickArenaTargetId 返回值结构不同 | 返回简化版 | APK528 返回完整对象（含 roleId/name/rank/power） | 修改返回值结构 |
| 12 | batchStudy 缺少重试/检查机制 | 基础答题 | APK528 有更完善的答题重试逻辑 | 增强 batchStudy |
| 13 | clientVersion 版本号不同 | 04-dev 用 2.21.2 | APK528 用 2.10.3 | 需确认正确版本 |
| 14 | wxqrcode 多环境判断缺失 | 仅浏览器 | APK528 有3种环境适配（Capacitor/Android WebView/浏览器） | Web版仅需浏览器，可跳过 |

## 三、3个[共享]函数实际有差异

> GLM 独有发现：以下3个函数标注为[共享]但实际逻辑不同，需修正标注并同步代码

| # | 函数 | 差异说明 | 修复方案 |
|---|------|---------|---------|
| 1 | `shouldSendCar` | APK528 已移除 matchAll 参数，仅保留 OR 模式 | 移除 matchAll 参数 |
| 2 | `checkRewardConditions` | APK528 仅使用 OR 模式判断条件 | 同步为 OR 模式 |
| 3 | `isTodayAvailable` | APK528 使用时间戳比较，04-dev 使用日期字符串比较 | 同步为时间戳比较 |

## 四、8项误判排除

> GLM 独有发现：以下8项之前认为"APK528有但04-dev缺失"，实际APK528中也不存在独立实现，无需移植

| # | 功能 | 之前判断 | 实际情况 |
|---|------|---------|---------|
| 1 | `setGuard`/`getGuardStatus` 守卫系统 | APK528有 | APK中无guard相关独立函数 |
| 2 | `smartSendCar` 智能发车 | APK528有 | APK中无此独立函数名（功能包含在其他函数中） |
| 3 | `UploadQueue` 上传队列类 | APK528有 | APK中无此独立类 |
| 4 | `GENIE_DAY_MAP` 灯神日映射 | APK528有 | APK中无此常量名（但有isTowerActivityValid等判断函数） |
| 5 | `convertTowerCount` 塔层数转换 | APK528有 | APK中无此独立函数 |
| 6 | `formatPowerForExport` 战力格式化 | APK528有 | APK中无此独立函数 |
| 7 | `detectAlliance` 联盟检测 | APK528有 | baseline中此函数已存在（clubWarrankUtils.js） |
| 8 | `handleExportCSV` CSV导出 | APK528有 | APK中无此独立函数 |

## 五、8项死代码（04-dev有但APK528已删除）

| # | 应删除项 | 04-dev位置 | APK528状态 | 删除原因 |
|---|---------|-----------|-----------|---------|
| 1 | `handleFeatureAction` | GameFeatures.vue:441-524 | 已删除 | Tab式布局替代功能卡片操作分发 |
| 2 | `connectWebSocket` | GameFeatures.vue:526-551 | 已删除 | tokenStore统一管理 |
| 3 | `disconnectWebSocket` | GameFeatures.vue:553-559 | 已删除 | tokenStore统一管理 |
| 4 | `toggleConnection` | GameFeatures.vue:561-567 | 已删除 | 移至GameStatus |
| 5 | `initializeGameData` | GameFeatures.vue:569-585 | 已删除 | 移至GameStatus |
| 6 | `pickArenaTargetId`(原位置) | GameFeatures.vue:428-439 | 已迁移 | 已迁移到DailyTaskRunner |
| 7 | `useRouter` 导入和使用 | GameFeatures.vue:216等 | 已删除 | GameStatus不使用router |
| 8 | `ws-status-section` 模板 | GameFeatures.vue:185-210 | 已删除 | APK528中不存在此UI区域 |

## 六、04-dev独有增强（应保留，不回退）

| # | 增强项 | 说明 | 保留理由 |
|---|--------|------|---------|
| 1 | tokenStore 连接锁 | 防止同一Token多标签页重复连接 | 比APK528更健壮 |
| 2 | tokenStore 跨标签页协调 | localStorage广播连接状态 | 多标签页安全 |
| 3 | tokenStore 连接监控 | 自动检测连接健康状态 | 可靠性提升 |
| 4 | randomSeed 同步 | 安全增强 | 安全性 |
| 5 | **buildActivityTasks 参数修复** | 04-dev用`statisticsTime`（正确），APK528用`statistics`（错误） | **不应回退bug修复** |
| 6 | attemptTokenRefresh | Token过期自动刷新 | 用户体验 |
| 7 | handleGameMessage 实际处理 | APK528中为空壳 | 功能完整 |
| 8 | GameMessages 兼容层 | 向后兼容 | 兼容性 |
| 9 | ProtoMsg.hint getter | 协议提示 | 开发体验 |
| 10 | syncresp 多5个命令 | 更多响应处理 | 功能完整 |

## 七、安全风险

| # | 风险 | 位置 | 严重程度 | 修复方案 |
|---|------|------|---------|---------|
| 1 | `eval(taskName)` | BatchDailyTasks.vue（2处） | 🔴 高（04-dev已修复✅） | 替换为函数映射表 |
| 2 | `handleMenuSelect` 缺5个break | Profile.vue | 🔴 高 | 补充break语句 |
| 3 | Capacitor/Tauri 死代码残留 | wakeLock.js/crossPlatform.js | 🟡 中 | 清理降级处理代码 |

## 八、5个gameCommands命令验证

> KIMI 独有发现：以下5个标注为"新增"的命令在APK528编译产物(gameCommands-BYMl-9HL.js)中也不存在

| # | 命令 | 状态 | 说明 |
|---|------|------|------|
| 1 | `nmext_getinfo` | ⚠️ 待验证 | 可能在BatchDailyTasks-CDlX_GQ6.js中通过其他方式调用 |
| 2 | `nmext_startboss` | ⚠️ 待验证 | 同上 |
| 3 | `presetteam_typegetinfo` | ⚠️ 待验证 | 同上 |
| 4 | `hero_calcpowerbyteam` | ⚠️ 待验证 | 同上 |
| 5 | `car_getrolecar` | ⚠️ 待验证 | 同上 |

**建议**：在移植前，在apk-raw中搜索这些命令字符串，确认其实际调用方式。

## 九、CSS差异关键点

| # | 差异 | 详情 |
|---|------|------|
| 1 | 新增6个CSS变量 | `--card-bg`, `--card-bg-hover`, `--input-bg`, `--input-border`, `--shadow-large`, `--shadow-small`（全局标配，非组件独有） |
| 2 | 新增11个响应式断点 | 480/576/600/900/992/1024/1200/1280/1400/1536/1600px |
| 3 | .n-* 选择器约28个（非175个） | DS验证确认原始分析高估6倍 |
| 4 | 2个组件不支持深色主题 | MessageTester/WebSocketTester硬编码颜色 |
| 5 | Changelog 使用 prefers-color-scheme | 需统一为 [data-theme=dark] |
| 6 | scoped CSS变量冗余 | 62个变量在20+文件中重复定义（~2KB/文件） |
| 7 | APK528 CSS中不存在 --n-* Naive UI变量 | 对Naive→Arco迁移有积极参考价值 |

## 十、DailyTaskRunner 核心架构差异

| 维度 | 04-dev | APK528 |
|------|--------|--------|
| 架构 | 单一 `run()` 方法 | 11个 `build*Tasks` 方法 |
| 命令发送 | `executeGameCommand(tokenId, cmd, params, description, timeout)` | `sendCommand(cmd, params, {description, timeout, context, silentErrors, retryCount})` |
| 错误处理 | 无统一错误码映射 | ERROR_CODE_MAP(23条) + CONTEXT_ERROR_MAP(6模块) |
| 连接管理 | 依赖外部 | `ensureConnection`(最多3次重试) + `isConnected` |
| 阵容管理 | 内联在run()中 | `getCurrentFormation`/`switchFormation`/`restoreFormation` 独立方法 |
| 竞技场 | `pickArenaTargetId` 单一函数 | `extractTargetList` + `normalizeTarget` + `compareByPower` 三步 |

---

*本文档为执行阶段的核心参考，所有差异项均需在移植过程中逐一处理。*
