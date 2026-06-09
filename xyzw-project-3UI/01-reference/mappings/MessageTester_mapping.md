# MessageTester & WebSocketTester 模块 Minified→源码 变量名映射表

> 目标文件: `MessageTester-CO511llf.js` (1673行), `WebSocketTester-BuenJ3NW.js` (783行)
> 生成日期: 2026-06-03
> 映射方法: 中文字符串锚点匹配 + 代码结构对比

---

## 1. 组件名映射

| minified名 | 源码名 | 类型 | 位置(行号) | 说明 |
|---|---|---|---|---|
| `st` (组件对象) | `MessageTester` | 组件 | ~65 | `__name: "MessageTester"`，消息加解密测试组件 |
| `at` | `MessageTester` (SFC编译结果) | 组件 | ~1672 | `Ve(st, [["__scopeId", "data-v-eab730dc"]])` |
| `ve` (组件对象) | `WebSocketTester` | 组件 | ~28 | `__name: "WebSocketTester"`，WebSocket连接测试组件 |
| `_e` | `WebSocketTester` (SFC编译结果) | 组件 | ~782 | `oe(ve, [["__scopeId", "data-v-7d8648b4"]])` |

---

## 2. MessageTester 变量映射

源码文件: `src/components/Test/MessageTester.vue`

### 2.1 导入映射

| minified | 源码名 | 来源 | 说明 |
|---|---|---|---|
| `ge` | `useTokenStore` | index | Pinia token store |
| `be` | `useMessage` | index | Naive UI 消息提示 |
| `B` | `ref` | index | Vue ref |
| `M` | `computed` | index | Vue computed |
| `f` | `selectedTokenId` | index (store导出) | 当前选中的token ID |
| `we` | `watch` | index | Vue watch |
| `V` | `createElementBlock` | index | Vue编译辅助 |
| `l` | `createBlock` | index | Vue编译辅助 |
| `o` | `withCtx` | index | Vue withCtx |
| `m` | `resolveComponent` | index | Vue resolveComponent |
| `A` | `createVNode` | index | Vue createVNode |
| `n` | `createBaseVNode` | index | Vue createBaseVNode |
| `S` | `createTextVNode` | index | Vue createTextVNode |
| `Ae` | `isRef` | index | Vue isRef |
| `L` | `unref` | index | Vue unref |
| `J` | `createBlock` | index | Vue createBlock（条件渲染） |
| `c` | `createTextVNode` | index | Vue createTextVNode |
| `v` | `toDisplayString` | index | Vue toDisplayString |
| `ke` | `Fragment` | index | Vue Fragment |
| `He` | `renderList` | index | Vue renderList |
| `Ce` | `normalizeClass` | index | Vue normalizeClass |
| `E` | `defineAsyncComponent` | index | Vue defineAsyncComponent |
| `Ve` | `_exportHelper` | export-helper | SFC导出辅助 |
| `Se` | `AlertCircleOutline` | AlertCircleOutline | 图标组件 |

### 2.2 响应式状态

| minified名 | 源码名 | 类型 | 位置(行号) | 说明 |
|---|---|---|---|---|
| `_` | `tokenStore` | store | ~67 | `ge()` = `useTokenStore()` |
| `u` | `message` | function | ~68 | `be()` = `useMessage()` |
| `k` | `customCmd` | ref(string) | ~69 | `B("")` — 自定义消息命令 |
| `x` | `customBody` | ref(string) | ~70 | `B("{}")` — 自定义消息体JSON |
| `g` | `history` | ref(array) | ~71 | `B([])` — 消息历史记录 |
| `N` | `lastMessage` | ref(object) | ~73 | `B(null)` — 上一条接收消息（去重用） |

### 2.3 计算属性

| minified名 | 源码名 | 类型 | 位置(行号) | 说明 |
|---|---|---|---|---|
| `G` | `tokenOptions` | computed | ~86 | `M(() => gameTokens.map(...))` — Token下拉选项 |
| `z` | `wsStatus` | computed | ~87 | `M(() => getWebSocketStatus(f.value))` — 连接状态 |
| `W` | `statusTagType` | computed | ~88-99 | 连接状态→标签类型映射 |
| `F` | `statusText` | computed | ~100-111 | 连接状态→中文文本映射 |
| `b` | `isConnected` | computed | ~112 | `M(() => f.value && z.value === "connected")` — 是否已连接 |

### 2.4 工具函数

| minified名 | 源码名 | 类型 | 位置(行号) | 参数 | 说明 |
|---|---|---|---|---|---|
| `Z` | `extractMeta` | function | ~74-85 | `(data)` → `meta` | 从消息数据提取seq/ack/resp/time |
| `$` | `formatTime` | function | ~300 | `(timestamp)` → `string` | 时间戳→本地时间字符串 |
| `j` | `getSeq` | function | ~301-310 | `(entry)` → `number\|undefined` | 从消息提取SEQ值 |
| `T` | `getAck` | function | ~311-320 | `(entry)` → `number\|undefined` | 从消息提取ACK值 |
| `ne` | `hasSeqAck` | function | ~321 | `(entry)` → `boolean` | 判断是否有SEQ/ACK |
| `oe` | `getCmdTagType` | function | ~322-333 | `(cmd)` → `string` | 命令字符串→标签类型 |
| `U` | `getDataSize` | function | ~334-346 | `(data)` → `string` | 计算数据字节大小 |
| `re` | `getPreviewText` | function | ~347-363 | `(data)` → `string` | 生成消息预览文本(150字符截断) |
| `q` | `describeBinaryFormat` | function | ~420-430 | `(data)` → `string` | 描述二进制数据格式类型 |
| `I` | `isBinaryData` | function | ~431-439 | `(data)` → `boolean` | 判断数据是否为二进制格式 |
| `R` | `formatJson` | function | ~440-495 | `(data, maxDepth, currentDepth)` → `string` | 智能JSON格式化(含BON解码) |

### 2.5 操作函数

| minified名 | 源码名 | 类型 | 位置(行号) | 说明 |
|---|---|---|---|---|
| `P` | `connectWebSocket` | function | ~113-132 | 建立WebSocket连接 |
| `K` | `handleBinFileUpload` | async function | ~133-168 | 上传BIN文件并解码 |
| `Q` | `testBONDecoding` | async function | ~169-224 | 测试BON解码器 |
| `H` | `addToHistory` | function | ~225-241 | 添加消息到历史(最多50条) |
| `X` | `sendHeartbeat` | function | ~242-247 | 发送心跳消息 |
| `Y` | `sendGetRoleInfo` | function | ~248-254 | 发送角色信息请求 |
| `ee` | `sendGetDataBundleVer` | function | ~255-265 | 发送数据版本请求 |
| `te` | `sendSignin` | function | ~266-272 | 发送签到请求 |
| `se` | `sendCustomMessage` | function | ~273-299 | 发送自定义消息(带onSent回调) |
| `le` | `clearHistory` | function | ~364-366 | 清空消息历史 |
| `ae` | `exportHistory` | function | ~367-388 | 导出消息历史为JSON文件 |
| `O` | `copyToClipboard` | async function | ~389-402 | 复制到剪贴板(含降级方案) |
| `ie` | `copyMessage` | function | ~403-407 | 复制消息摘要文本 |
| `de` | `copyRawJson` | function | ~408-410 | 复制原始JSON数据 |
| `ce` | `copyFormattedJson` | function | ~411-413 | 复制格式化JSON(含BON解码) |
| `ue` | `copyRawJsonIndented` | function | ~414-416 | 复制原始JSON(带缩进) |
| `fe` | `copyCompactJson` | function | ~417-419 | 复制紧凑JSON(无缩进) |

### 2.6 模板静态节点

| minified名 | 源码名/内容 | 类型 | 位置(行号) | 说明 |
|---|---|---|---|---|
| `Oe` | `"message-tester"` | class | ~32 | 根容器class |
| `Be` | `"space-y-4"` | class | ~33 | 内容区class |
| `Me` | key=0 | conditional | ~34 | 连接状态区域 |
| `xe` | `"grid grid-cols-2 gap-2"` | class | ~35 | BIN文件上传区class |
| `Ne` | `"grid grid-cols-2 gap-2"` | class | ~36 | 预设消息按钮区class |
| `ze` | `"space-y-2"` | class | ~37 | 自定义消息区class |
| `De` | `"flex items-center justify-between w-full"` | class | ~38 | 消息历史标题栏class |
| `je` | `"flex items-center gap-2"` | class | ~39 | 操作按钮区class |
| `Te` | `"message-history max-h-96 overflow-y-auto"` | class | ~40 | 消息历史列表class |
| `he` | `"flex justify-between items-start mb-2"` | class | ~41 | 消息条目头部class |
| `Le` | `"font-semibold"` | class | ~42 | 消息类型标签class |
| `Je` | `"text-sm text-gray-500 ml-2"` | class | ~43 | 时间戳class |
| `$e` | key=0 | conditional | ~44 | SEQ/ACK标签区域 |
| `Ue` | `"flex items-center gap-1"` | class | ~45 | 复制按钮区class |
| `qe` | key=0 | conditional | ~46 | 命令标签区域 |
| `Ie` | `"mb-2"` | class | ~47 | 消息预览区class |
| `Re` | `"text-xs text-gray-600 mb-1"` | class | ~48 | 数据大小标签class |
| `Ee` | `"text-sm bg-gray-50 p-2 rounded border max-h-20 overflow-hidden message-preview"` | class | ~49-52 | 预览文本class |
| `Ge` | `"json-display-container"` | class | ~54 | 格式化Tab容器class |
| `We` | `"json-header"` | class | ~55 | 格式化Tab头部class |
| `Fe` | `"json-content formatted"` | class | ~56 | 格式化内容class |
| `Pe` | `"json-display-container"` | class | ~57 | 原始Tab容器class |
| `Ke` | `"json-header"` | class | ~58 | 原始Tab头部class |
| `Qe` | `"json-content raw"` | class | ~59 | 原始内容class |
| `Xe` | `"json-display-container"` | class | ~60 | 紧凑Tab容器class |
| `Ye` | `"json-header"` | class | ~61 | 紧凑Tab头部class |
| `et` | `"json-content compact"` | class | ~62 | 紧凑内容class |
| `tt` | key=0 | conditional | ~63 | 空状态区域 |

---

## 3. WebSocketTester 变量映射

源码文件: `src/components/Test/WebSocketTester.vue`

### 3.1 导入映射

| minified | 源码名 | 来源 | 说明 |
|---|---|---|---|
| `Y` | `useMessage` | index | Naive UI 消息提示 |
| `Z` | `useTokenStore` | index | Pinia token store |
| `y` | `ref` | index | Vue ref |
| `ee` | `computed` | index | Vue computed |
| `te` | `onMounted` | index | Vue onMounted |
| `se` | `onUnmounted` | index | Vue onUnmounted |
| `I` | `createElementBlock` | index | Vue编译辅助 |
| `a` | `createBlock` | index | Vue编译辅助 |
| `t` | `withCtx` | index | Vue withCtx |
| `f` | `resolveComponent` | index | Vue resolveComponent |
| `v` | `createVNode` | index | Vue createVNode |
| `W` | `createBlock` | index | Vue createBlock（条件渲染） |
| `S` | `createTextVNode` | index | Vue createTextVNode |
| `u` | `createTextVNode` | index | Vue createTextVNode |
| `_` | `toDisplayString` | index | Vue toDisplayString |
| `M` | `createBaseVNode` | index | Vue createBaseVNode |
| `ae` | `Fragment` | index | Vue Fragment |
| `le` | `renderList` | index | Vue renderList |
| `ne` | `normalizeClass` | index | Vue normalizeClass |
| `oe` | `_exportHelper` | export-helper | SFC导出辅助 |

### 3.2 响应式状态

| minified名 | 源码名 | 类型 | 位置(行号) | 说明 |
|---|---|---|---|---|
| `l` | `message` | function | ~31 | `Y()` = `useMessage()` |
| `g` | `tokenStore` | store | ~32 | `Z()` = `useTokenStore()` |
| `n` | `selectedTokenId` | ref | ~33 | `y(null)` — 当前选中的角色ID |
| `m` | `connectionStatus` | ref(string) | ~34 | `y("disconnected")` — 连接状态 |
| `c` | `connectionInfo` | ref(object) | ~35 | `y(null)` — 连接详情信息 |
| `r` | `selectedCommand` | ref | ~36 | `y(null)` — 当前选中的命令 |
| `b` | `paramsInput` | ref(string) | ~37 | `y("{}")` — 命令参数JSON |
| `N` | `isSending` | ref(bool) | ~38 | `y(!1)` — 普通发送中 |
| `U` | `isSendingWithPromise` | ref(bool) | ~39 | `y(!1)` — Promise发送中 |
| `O` | `isConcurrentTesting` | ref(bool) | ~40 | `y(!1)` — 并发测试中 |
| `C` | `log` | ref(array) | ~41 | `y([])` — 消息日志 |

### 3.3 计算属性与常量

| minified名 | 源码名 | 类型 | 位置(行号) | 说明 |
|---|---|---|---|---|
| `q` | `tokenOptions` | computed | ~42-47 | `ee(() => gameTokens.map(...))` — Token下拉选项(含服务器) |
| `J` | `presetCommands` | array | ~48-58 | 预设游戏命令列表(9个) |
| `$` | `getStatusType` | function | ~59-66 | 状态→标签类型映射 |
| `A` | `getStatusText` | function | ~67-74 | 状态→中文文本映射 |
| `R` | `formatTime` | function | ~75 | 时间戳→中文本地时间 |

### 3.4 操作函数

| minified名 | 源码名 | 类型 | 位置(行号) | 说明 |
|---|---|---|---|---|
| `P` | `onTokenChange` | function | ~76-78 | Token选择变更处理 |
| `D` | `updateConnectionStatus` | function | ~79-94 | 更新连接状态和详情 |
| `B` | `connectWebSocket` | async function | ~95-116 | 建立WebSocket连接 |
| `E` | `disconnectWebSocket` | function | ~117-123 | 断开WebSocket连接 |
| `V` | `sendCommand` | async function | ~124-143 | 普通发送(fire-and-forget) |
| `F` | `sendCommandWithPromise` | async function | ~144-163 | Promise发送(等待响应) |
| `j` | `testConcurrent` | async function | ~164-226 | 并发测试(5个请求) |
| `G` | `onConnected` | function | ~227 | 空函数(预留钩子) |
| `h` | `addLog` | function | ~228-235 | 添加日志(最多100条) |
| `H` | `clearLog` | function | ~236-238 | 清空日志 |
| `L` | `statusTimer` | variable | ~239 | 定时器ID(每秒轮询) |

### 3.5 模板静态节点

| minified名 | 源码名/内容 | 类型 | 位置(行号) | 说明 |
|---|---|---|---|---|
| `re` | `"websocket-tester"` | class | ~23 | 根容器class |
| `ue` | `"message-log"` | class | ~24 | 消息日志列表class |
| `ce` | `"message-header"` | class | ~25 | 日志条目头部class |
| `ie` | `"message-content"` | class | ~26 | 日志条目内容class |
| `de` | key=0 | conditional | ~27 | 空状态区域 |

---

## 4. 预设命令映射 (WebSocketTester)

| label | value (cmd) | 说明 |
|---|---|---|
| 获取角色信息 | `role_getroleinfo` | 获取角色基础信息 |
| 获取数据包版本 | `system_getdatabundlever` | 获取数据包版本号 |
| 签到奖励 | `system_signinreward` | 每日签到 |
| 领取每日任务奖励 | `task_claimdailyreward` | 领取每日任务奖励 |
| 获取邮件列表 | `mail_getlist` | 获取邮件列表 |
| 领取所有邮件附件 | `mail_claimallattachment` | 一键领取所有邮件附件 |
| 获取军团信息 | `legion_getinfo` | 获取军团/俱乐部信息 |
| 英雄招募 | `hero_recruit` | 招募英雄 |
| 领取挂机奖励 | `system_claimhangupreward` | 领取挂机收益 |

---

## 5. 连接状态映射 (两个组件共用)

### MessageTester 状态映射

| 状态值 | 标签类型 | 显示文本 |
|---|---|---|
| `connected` | `success` | 🟢 已连接 |
| `connecting` | `warning` | 🟡 连接中 |
| `error` | `error` | 🔴 连接错误 |
| 其他 | `default` | ⚪ 未连接 |

### WebSocketTester 状态映射

| 状态值 | 标签类型 | 显示文本 |
|---|---|---|
| `connected` | `success` | 已连接 |
| `connecting` | `warning` | 连接中 |
| `disconnected` | `default` | 已断开 |
| `reconnecting` | `info` | 重连中 |
| `error` | `error` | 连接错误 |

---

## 6. 消息类型映射

### MessageTester 消息类型

| type值 | 显示文本 | 背景色 | 边框色 |
|---|---|---|---|
| `sent` | 📤 发送 | `bg-blue-50` | `border-blue-200` |
| `test` | 🧪 测试 | `bg-purple-50` | `border-purple-200` |
| `received` | 📨 接收 | `bg-green-50` | `border-green-200` |

### WebSocketTester 消息类型

| type值 | 标签类型 | 显示文本 |
|---|---|---|
| `sent` | `info` | 发送 |
| `received` | `success` | 接收 |

---

## 7. 命令标签类型推断 (MessageTester)

| 命令包含关键词 | 标签类型 | 说明 |
|---|---|---|
| `error` / `fail` | `error` | 错误响应 |
| `resp` / `response` | `success` | 成功响应 |
| `get` / `info` | `info` | 查询请求 |
| `send` / `start` | `primary` | 发送/启动请求 |
| 其他 | `default` | 默认 |

---

## 8. API调用映射

### MessageTester 调用的API

| 方法 | cmd字符串 | 默认参数 | 说明 |
|---|---|---|---|
| `sendHeartbeat()` | (内部) | — | 心跳消息 |
| `sendGetRoleInfo()` | `role_getroleinfo` | — | 获取角色信息 |
| `sendGameMessage()` | `system_getdatabundlever` | `{ isAudit: false }` | 获取数据版本 |
| `sendGameMessage()` | `system_signinreward` | `{}` | 签到 |
| `sendGameMessage()` | (自定义) | (自定义JSON) | 自定义消息 |

### WebSocketTester 调用的API

| 方法 | cmd字符串 | 说明 |
|---|---|---|
| `sendMessage()` | 预设命令列表中的任意cmd | 普通发送 |
| `sendMessageWithPromise()` | 预设命令列表中的任意cmd | Promise发送 |
| `createWebSocketConnection()` | — | 建立连接 |
| `closeWebSocketConnection()` | — | 断开连接 |

---

## 9. 两个组件的store方法差异

| 功能 | MessageTester | WebSocketTester |
|---|---|---|
| 建立连接 | `tokenStore.selectToken(tokenId)` | `tokenStore.createWebSocketConnection(tokenId, token, wsUrl)` |
| 断开连接 | ❌ 无 | `tokenStore.closeWebSocketConnection(tokenId)` |
| 发送消息 | `tokenStore.sendGameMessage(tokenId, cmd, body, options)` | `tokenStore.sendMessage(tokenId, cmd, params)` |
| Promise发送 | ❌ 无 | `tokenStore.sendMessageWithPromise(tokenId, cmd, params)` |
| 心跳 | `tokenStore.sendHeartbeat(tokenId)` | ❌ 无 |
| 角色信息 | `tokenStore.sendGetRoleInfo(tokenId)` | ❌ 无 |
| 获取状态 | `tokenStore.getWebSocketStatus(tokenId)` | `tokenStore.getWebSocketStatus(tokenId)` |
| 连接数据 | `tokenStore.wsConnections[tokenId]` | `tokenStore.wsConnections[tokenId]` |

---

## 备注

1. **映射方法**: 主要通过中文字符串锚点（如"消息加解密测试"、"WebSocket连接测试"、"BON解码"等）在minified代码中定位对应代码段，然后通过代码结构（变量声明顺序、函数调用关系、API命令名）与源码进行交叉匹配。

2. **Vue编译模式**: SFC组件编译后，`<script setup>` 中的变量按声明顺序排列，`ref()` → `B()`/`y()`, `computed()` → `M()`/`ee()`, `onMounted()` → `te()`, `onUnmounted()` → `se()`, `watch()` → `we()` 等。

3. **组件编译**: 每个SFC组件编译为两个变量：原始组件对象（如 `st`）和添加了 `__scopeId` 的最终组件（如 `at = Ve(st, ...)`）。

4. **两个组件的ref/computed函数名不同**: MessageTester使用 `B`=ref, `M`=computed；WebSocketTester使用 `y`=ref, `ee`=computed。这是因为它们从index.js导入时使用了不同的解构别名。

5. **MessageTester特有功能**: BON解码测试、BIN文件上传、智能JSON格式化（含BON解码检测）、消息导出、多种复制格式。

6. **WebSocketTester特有功能**: 预设命令列表、Promise发送模式、并发测试、连接状态轮询、连接详情展示（含URL/错误/重连次数）。
