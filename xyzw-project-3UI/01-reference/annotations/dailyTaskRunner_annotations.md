# DailyTaskRunner 增量标记

> 目标文件: `/workspace/formatted_528/imageExport-BfNAYNiL.js`
> 开源源码: `/workspace/opensource/src/utils/dailyTaskRunner.js`
> 生成时间: 2026-05-28

> **⚠️ 2026-06-05 纠正说明**：
> 1. **目标文件声明错误**：DailyTaskRunner 代码与 imageExport 在同一个 formatted-js 文件中（imageExport-BfNAYNiL.js），但 DailyTaskRunner 是独立模块，不应与 imageExport 混淆。实际 DailyTaskRunner 类定义在该文件的后半部分。
> 2. **[新增] 行号缺失**：全部 50 条 [新增] 条目的行号列仅填写"新增"/"新增常量"/"新增方法"占位符，缺少 formatted-js 中的精确行号。执行移植时需在 `imageExport-BfNAYNiL.js` 中定位具体行号。
> 3. **[修改] 引用基线行号**：[修改] 表格中的行号引用的是开源源码（dailyTaskRunner.js）的行号，而非 formatted-js 中的行号，定位时需注意转换。

---

## [新增] 函数列表

| 函数名 | 行号 | 功能描述 | 移植优先级 |
|--------|------|---------|-----------|
| `ERROR_CODE_MAP` (`D`) | 新增常量 | 错误码→中文消息映射，如 "400010"→"数量不足" | P1-高 |
| `CONTEXT_ERROR_MAP` (`P`) | 新增常量 | 按模块分类的错误消息(dreamWorld/arena/blackMarket等) | P1-高 |
| `extractErrorCode` (`C`) | 新增 | 从错误对象中提取6-7位数字错误码 | P1-高 |
| `getErrorMessage` (`$`) | 新增 | 获取友好的错误消息，优先查上下文映射再查通用映射 | P1-高 |
| `isKnownError` (`N`) | 新增 | 判断错误是否为已知业务错误(可静默处理) | P1-高 |
| `isConnectionError` (`U`) | 新增 | 判断是否为连接错误(含"连接"或"WebSocket") | P1-高 |
| `delay` (`p`) | 新增 | `(s) => new Promise(e => setTimeout(e, s))` 延时函数 | P2-中 |
| `randomDelay` (`x`) | 新增 | `(s, e) => p(s + Math.random() * (e - s))` 随机延时 | P2-中 |
| `isDungeonOpenDay` (`j`) | 新增 | 判断今天是否为梦境开放日 | P2-中 |
| `getNestedValue` (`f`) | 新增 | 深层属性访问器，如 `f(obj, "info.roleId")` | P2-中 |
| `extractTargetList` (`z`) | 新增 | 从目标数据中提取列表，兼容多种字段名 | P1-高 |
| `normalizeTarget` (`L`) | 新增 | 标准化目标对象 `{targetId, targetName, targetRank, targetPower}` | P1-高 |
| `compareByPower` (`K`) | 新增 | 按战力排序比较函数 | P2-中 |
| `RECRUIT_TYPE` (`R`) | 新增常量 | `{ FREE: 3, PAID: 1 }` 招募类型 | P3-低 |
| `BOX_TYPE` (`_`) | 新增常量 | 宝箱类型配置(钻石/木质/青铜) | P3-低 |
| `ARENA_CONFIG` (`y`) | 新增常量 | `{ START_HOUR: 6, END_HOUR: 22, MAX_FIGHTS: 3 }` 竞技场配置 | P2-中 |
| `CARD_TYPE` (`b`) | 新增常量 | `{ WEEKLY: 4001, MONTHLY: 4002, PERMANENT: 4003 }` 卡片类型 | P3-低 |
| `GENIE_COUNT` (`G`) | 新增常量 | `4` 灯神国家数量 | P3-低 |
| `FREE_FISH_COUNT` (`A`) | 新增常量 | `3` 免费钓鱼次数 | P3-低 |
| `FREE_SWEEP_COUNT` (`O`) | 新增常量 | `3` 免费扫荡卷次数 | P3-低 |
| `FREE_GOLD_COUNT` (`F`) | 新增常量 | `3` 免费点金次数 | P3-低 |
| `ADD_TIME_COUNT` (`S`) | 新增常量 | `4` 挂机加钟次数 | P3-低 |
| `DAILY_TASK_COUNT` (`q`) | 新增常量 | `10` 每日任务奖励数量 | P3-低 |
| `DUNGEON_OPEN_DAYS` (`X`) | 新增常量 | `[0, 1, 3, 4]` 咸王梦境开放日 | P3-低 |
| `DailyTaskRunner.success` | 新增方法 | `this.log(e, "success")` 日志快捷方法 | P3-低 |
| `DailyTaskRunner.warn` | 新增方法 | `this.log(e, "warning")` 日志快捷方法 | P3-低 |
| `DailyTaskRunner.error` | 新增方法 | `this.log(e, "error")` 日志快捷方法 | P3-低 |
| `DailyTaskRunner.info` | 新增方法 | `this.log(e, "info")` 日志快捷方法 | P3-低 |
| `DailyTaskRunner.isConnected` | 新增方法 | 检查WebSocket连接状态 | P1-高 |
| `DailyTaskRunner.ensureConnection` | 新增方法 | 确保连接可用，最多重试3次 | P1-高 |
| `DailyTaskRunner.sendCommandSafe` | 新增方法 | 静默错误版 sendCommand，已知业务错误不抛异常 | P1-高 |
| `DailyTaskRunner.getCurrentFormation` | 新增方法 | 获取当前阵容ID，调用 `presetteam_getinfo` | P2-中 |
| `DailyTaskRunner.switchFormation` | 新增方法 | 切换阵容，调用 `presetteam_saveteam` | P2-中 |
| `DailyTaskRunner.restoreFormation` | 新增方法 | 恢复原始阵容 | P2-中 |
| `DailyTaskRunner.buildBasicTasks` | 新增方法 | 从run()中提取的基础任务构建方法 | P1-高 |
| `DailyTaskRunner.buildSaltBottleTasks` | 新增方法 | 从run()中提取的盐罐任务构建方法 | P1-高 |
| `DailyTaskRunner.buildArenaTask` | 新增方法 | 从run()中提取的竞技场任务构建方法 | P1-高 |
| `DailyTaskRunner.executeArenaFight` | 新增方法 | 从run()中提取的竞技场战斗执行方法 | P1-高 |
| `DailyTaskRunner.buildBossTasks` | 新增方法 | 从run()中提取的BOSS任务构建方法 | P1-高 |
| `DailyTaskRunner.buildFixedRewardTasks` | 新增方法 | 从run()中提取的固定奖励任务构建方法 | P1-高 |
| `DailyTaskRunner.buildActivityTasks` | 新增方法 | 从run()中提取的活动任务构建方法 | P1-高 |
| `DailyTaskRunner.buildBlackMarketTask` | 新增方法 | 从run()中提取的黑市购买任务构建方法 | P1-高 |
| `DailyTaskRunner.buildDreamWorldTask` | 新增方法 | 从run()中提取的咸王梦境任务构建方法 | P2-中 |
| `DailyTaskRunner.buildDeepSeaLampTask` | 新增方法 | 从run()中提取的深海灯神任务构建方法 | P2-中 |
| `DailyTaskRunner.buildRewardTasks` | 新增方法 | 从run()中提取的任务奖励构建方法 | P1-高 |
| `DailyTaskRunner.tryOpenBox` | 新增方法 | 尝试开箱，含错误处理 | P2-中 |
| `DailyTaskRunner.fetchRoleData` | 新增方法 | 获取角色数据，含连接重试逻辑 | P1-高 |
| `DailyTaskRunner.getHangUpStatus` | 新增方法 | 获取挂机状态详情(加钟/时长/进度) | P1-高 |
| `DailyTaskRunner.formatTime` | 新增方法 | 格式化秒数为中文时间("1小时30分钟15秒") | P2-中 |
| `DailyTaskRunner.checkActivity` | 新增方法 | 检查活跃度是否已满 | P2-中 |

## [修改] 函数列表

| 函数名 | 行号 | 修改内容 | 开源版本 | 目标版本 |
|--------|------|---------|---------|---------|
| `DailyTaskRunner.executeGameCommand` → `sendCommand` | dailyTaskRunner.js:65 | 参数结构重构，支持静默错误/上下文/重试 | `(tokenId, cmd, params, description, timeout)` | `(cmd, params, {description,timeout,context,silentErrors,retryCount})` |
| `DailyTaskRunner.switchToFormationIfNeeded` | dailyTaskRunner.js:93 | 参数简化，内部调用getCurrentFormation/switchFormation | `(tokenId, targetFormation, formationName)` | `(targetFormation, formationName)` 内部使用this.tokenId |
| `DailyTaskRunner.loadSettings` | dailyTaskRunner.js:152 | 新增 `blackMarketStandalonePurchase` 设置项 | 无此设置项 | 新增 `blackMarketStandalonePurchase: false` |
| `DailyTaskRunner.run` | dailyTaskRunner.js:175 | 从单一方法拆分为多个build*方法调用 | 所有逻辑在run()内 | 拆分为buildBasicTasks等子方法 |
| `DailyTaskRunner.constructor` | dailyTaskRunner.js:46 | 新增 this.settings/this.tokenId/this.callbacks 属性 | 仅 tokenStore/delaySettings | 新增 settings/tokenId/callbacks |
| `isTodayAvailable` (`v`) | dailyTaskRunner.js:29 | 逻辑相同但位置变化 | 顶层函数 | 模块内函数 |
| `getTodayBossId` (`Y`) | dailyTaskRunner.js:40 | 逻辑相同但位置变化 | 顶层函数 | 模块内函数 |
| `defaultSettings` (`I`) | dailyTaskRunner.js:155-167 | 新增配置项 | 基础11项设置 | 新增 blackMarketStandalonePurchase |
| `pickArenaTargetId` | dailyTaskRunner.js:4 | 重构为 extractTargetList + normalizeTarget + compareByPower | 单一函数取第一个目标 | 拆分为提取/标准化/排序三步 |
| `每日BOSS` | dailyTaskRunner.js:474 | 从固定3次改为条件判断 | `for (i=0; i<3; i++)` | `for (i=0; i<1; i++)` 条件判断 |

## [共享] 函数列表（跳过，无需移植）

| 函数名 | 行号 | 说明 |
|--------|------|------|
| `DailyTaskRunner.log` | dailyTaskRunner.js:55 | 通用日志方法，逻辑与开源一致 |

## [删除] 函数列表

| 函数名 | 行号 | 说明 |
|--------|------|------|
| 无 | - | 开源函数在目标中均有对应（部分被重构拆分） |
