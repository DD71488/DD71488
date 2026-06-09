# localTokenManager Store 变更翻译

## 1. Store 概述

`localTokenManager` 是一个 Pinia store，负责管理用户认证 Token 和游戏角色 Token 的本地持久化存储，同时管理每个角色对应的 WebSocket 游戏连接。它是应用的核心状态管理层之一，连接了"用户登录态"、"多角色 Token 管理"和"游戏实时通信"三大功能。

---

## 2. APK528 实现

### 2.1 存储架构

APK528 使用**纯 IndexedDB** 作为持久化层，数据库名 `xyzw_token_db`，版本号 1，包含两个 Object Store：

| Store 名 | KeyPath | 用途 |
|---|---|---|
| `kv` | `key` | 通用键值存储，用于保存 `userToken` |
| `gameTokens` | `roleId` | 按角色ID存储游戏Token数据 |

所有 IndexedDB 操作均内联在同一个文件中（未抽取为独立模块），包括：
- `J()` — 打开数据库
- `T(store, mode, fn)` — 通用事务执行器
- `N(key)` / `Q(key, value)` / `X(key)` — kv store 的读/写/删
- `x()` / `W(token)` / `Y()` — userToken 的读/写/删（封装 kv）
- `P()` / `y(roleId, data)` / `G(roleId)` / `Z()` — gameTokens 的读/写/删/清空
- `I()` — 从 localStorage 迁移到 IndexedDB

### 2.2 状态结构

```javascript
// 混淆后的变量名 → 实际含义
const o = ref(null);    // userToken — 用户认证Token
const s = ref({});      // gameTokens — 游戏角色Token映射 { roleId: tokenData }
const n = ref({});      // wsConnections — WebSocket连接状态映射 { roleId: connectionInfo }
const k = computed(() => !!o.value);          // isUserAuthenticated
const r = computed(() => Object.keys(s.value).length > 0);  // hasGameTokens
```

### 2.3 关键方法

| 混淆名 | 实际方法名 | 功能 |
|---|---|---|
| `m` | `setUserToken` | 设置用户Token，异步写入 IndexedDB |
| `a` | `clearUserToken` | 清除用户Token，异步删除 IndexedDB 记录 |
| `S` | `addGameToken` | 添加游戏Token，自动填充 roleId/createdAt/lastUsed |
| `d` | `getGameToken` | 获取游戏Token，更新 lastUsed 时间 |
| `p` | `updateGameToken` | 更新游戏Token，合并更新并记录 updatedAt |
| `$` | `removeGameToken` | 删除游戏Token，同时断开对应 WebSocket |
| `j` | `clearAllGameTokens` | 清空所有游戏Token，关闭所有 WebSocket |
| `C` | `createWebSocketConnection` | 创建 WebSocket 连接（详见下文） |
| `R` | `handleGameMessage` | 处理游戏消息（空实现，仅解构 cmd/body） |
| `v` | `closeWebSocketConnection` | 关闭 WebSocket 连接，支持 WsAgent 和旧 WebSocket 两种实例 |
| `B` | `getWebSocketStatus` | 获取连接状态字符串 |
| `V` | `sendGameCommand` | 发送游戏命令（同步，返回 boolean） |
| `M` | `sendGameCommandWithPromise` | 发送游戏命令并等待响应（异步，返回 Promise） |
| `K` | `getWebSocketDetails` | 获取连接详细信息对象 |
| `q` | `exportTokens` | 导出所有Token数据 |
| `L` | `importTokens` | 导入Token数据 |
| `O` | `cleanExpiredTokens` | 清理超过24小时未使用的Token |
| 匿名 | `initTokenManager` | 初始化：迁移 → 恢复 → 清理过期 |

### 2.4 WebSocket 管理（WsAgent）

APK528 使用动态导入加载 `WsAgent` 和 `gameCommands`：

```javascript
// 动态导入（Vite代码分割）
const { WsAgent } = await import("./wsAgent-C4mLjQ4W.js");
const { gameCommands } = await import("./gameCommands-BYMl-9HL.js");
```

WsAgent 配置：
- `heartbeatInterval: 2000` — 心跳间隔2秒
- `queueInterval: 50` — 消息队列间隔50ms
- `channel: "x"` — 使用 x 通道
- `autoReconnect: true` — 自动重连
- `maxReconnectAttempts: 5` — 最大重连5次

连接流程：
1. 检查是否已有连接，有则先关闭
2. 动态导入 WsAgent 和 gameCommands
3. 解析 Base64 Token（尝试 JSON 解析取 token/gameToken 字段）
4. 创建 WsAgent 实例
5. 设置事件回调（onOpen/onMessage/onError/onClose/onReconnect）
6. onOpen 后延迟1秒发送 `role_getroleinfo` 和 `system_getdatabundlever`
7. 构建 WebSocket URL：`wss://xxz-xyzw.hortorgames.com/agent?p={token}&e=x&lang=chinese`
8. 保存连接信息到 wsConnections
9. 调用 `wsAgent.connect(url)` 建立连接

### 2.5 数据持久化流程

```
内存操作（同步） → IndexedDB 写入（异步，不阻塞UI）
    ↓                    ↓
ref.value = xxx    dbPutGameToken().catch(warn)
```

所有 DB 写入均为 fire-and-forget 模式，错误仅 console.warn 不抛出。

### 2.6 迁移逻辑

`I()` 函数实现从 localStorage 到 IndexedDB 的一次性迁移：
1. 检查 IndexedDB 是否已有数据，有则跳过
2. 读取 localStorage 中的 `userToken` 和 `gameTokens`
3. 逐条写入 IndexedDB
4. 返回 `{ migrated: true/false }`
5. 不删除 localStorage 原始数据

---

## 3. 04-dev 实现

### 3.1 存储架构

04-dev 将 IndexedDB 操作**抽取为独立模块** `@/utils/tokenDb.js`，store 层不再直接操作 IndexedDB API。

`tokenDb.js` 提供：
- `getUserToken()` / `setUserToken(token)` / `clearUserToken()`
- `getAllGameTokens()` / `putGameToken(roleId, data)` / `deleteGameToken(roleId)` / `clearGameTokens()`
- `migrateFromLocalStorageIfNeeded()`

数据库结构完全相同：`xyzw_token_db` v1，`kv` + `gameTokens` 两个 store。

### 3.2 状态结构

```javascript
const userToken = ref(null);           // 用户认证Token
const gameTokens = ref({});            // 游戏角色Token映射 { roleId: tokenData }
const wsConnections = ref({});         // WebSocket连接状态映射 { roleId: connectionInfo }

const isUserAuthenticated = computed(() => !!userToken.value);
const hasGameTokens = computed(() => Object.keys(gameTokens.value).length > 0);
```

与 APK528 完全一致，仅变量名可读化。

### 3.3 关键方法

04-dev 的方法与 APK528 **一一对应**，逻辑完全相同，仅代码可读性提升：

| 方法 | 功能 | 与APK528差异 |
|---|---|---|
| `setUserToken` | 设置用户Token | 逻辑相同，调用 `dbSetUserToken` |
| `clearUserToken` | 清除用户Token | 逻辑相同，调用 `dbClearUserToken` |
| `addGameToken` | 添加游戏Token | 逻辑相同 |
| `getGameToken` | 获取游戏Token | 逻辑相同 |
| `updateGameToken` | 更新游戏Token | 逻辑相同 |
| `removeGameToken` | 删除游戏Token | 逻辑相同 |
| `clearAllGameTokens` | 清空所有游戏Token | 逻辑相同 |
| `createWebSocketConnection` | 创建WebSocket连接 | 逻辑相同，动态导入路径不同 |
| `handleGameMessage` | 处理游戏消息 | 逻辑相同，增加了 switch-case 结构 |
| `closeWebSocketConnection` | 关闭WebSocket连接 | 逻辑相同 |
| `getWebSocketStatus` | 获取连接状态 | 逻辑相同 |
| `sendGameCommand` | 发送游戏命令 | 逻辑相同 |
| `sendGameCommandWithPromise` | 发送命令并等待响应 | 逻辑相同 |
| `getWebSocketDetails` | 获取连接详情 | 逻辑相同 |
| `exportTokens` | 导出Token | 逻辑相同 |
| `importTokens` | 导入Token | 逻辑相同 |
| `cleanExpiredTokens` | 清理过期Token | 逻辑相同 |
| `initTokenManager` | 初始化 | 逻辑相同 |

### 3.4 WebSocket 管理

04-dev 同样使用 `WsAgent`，配置参数与 APK528 完全一致：
- `heartbeatInterval: 2000`
- `queueInterval: 50`
- `channel: "x"`
- `autoReconnect: true`
- `maxReconnectAttempts: 5`

动态导入路径改为源码相对路径：
```javascript
const { WsAgent } = await import("../utils/wsAgent.js");
const { gameCommands } = await import("../utils/gameCommands.js");
```

连接流程、URL构建、事件回调逻辑与 APK528 完全一致。

### 3.5 handleGameMessage 增强

APK528 的 `handleGameMessage` 是空实现（仅解构 cmd/body）。04-dev 增加了 switch-case 骨架：

```javascript
const handleGameMessage = (roleId, message) => {
  const { cmd, body } = message;
  switch (cmd) {
    case "role_getroleinfo":      // 降噪
      break;
    case "system_getdatabundlever": // 降噪
      break;
    case "task_claimdailyreward":   // 降噪
      break;
    case "system_signinreward":     // 降噪
      break;
    default:
      // 降噪
  }
};
```

目前各 case 仍为空（降噪），但已为后续业务逻辑扩展预留了结构。

---

## 4. 关键差异

### 4.1 代码组织

| 维度 | APK528 | 04-dev |
|---|---|---|
| IndexedDB 操作 | 内联在 store 文件中（混淆变量名） | 抽取为 `@/utils/tokenDb.js` 独立模块 |
| 代码可读性 | 变量名混淆（o/s/n/k/r/m/a/S/d/p/$/j/C/R/v/B/V/M/K/q/L/O） | 完整可读命名 |
| 动态导入 | Vite 构建产物路径（`./wsAgent-C4mLjQ4W.js`） | 源码相对路径（`../utils/wsAgent.js`） |

### 4.2 存储架构

**两者完全一致**：均使用 `xyzw_token_db` IndexedDB 数据库，`kv` + `gameTokens` 双 store 结构。04-dev 的 `tokenDb.js` 是 APK528 内联代码的等价抽取，数据库 schema 无任何变化。

### 4.3 数据结构

**两者完全一致**：
- `userToken`: `ref(null)` — 字符串或null
- `gameTokens`: `ref({})` — `{ roleId: tokenData }` 对象映射
- `wsConnections`: `ref({})` — `{ roleId: connectionInfo }` 对象映射

gameToken 数据结构：
```javascript
{
  roleId,           // 角色ID（主键）
  createdAt,        // 创建时间 ISO字符串
  lastUsed,         // 最后使用时间 ISO字符串
  updatedAt,        // 更新时间（updateGameToken时添加）
  ...tokenData      // 其他Token数据（展开）
}
```

### 4.4 WebSocket 管理

**两者完全一致**：均使用 WsAgent，配置参数、连接流程、URL构建、事件回调逻辑均无差异。

### 4.5 04-dev 独有变化

04-dev 相对 APK528 **无功能新增**，主要变化为：

1. **代码重构**：IndexedDB 操作抽取为 `tokenDb.js` 独立模块
2. **可读性**：所有变量名/方法名从混淆名改为语义化命名
3. **handleGameMessage 骨架**：增加了 switch-case 结构，预留了 `role_getroleinfo`、`system_getdatabundlever`、`task_claimdailyreward`、`system_signinreward` 四个消息类型的处理分支（目前均为空实现）

> **注意**：任务描述中提到的"分组管理、连接锁、跨标签页协调、连接监控、自动刷新、randomSeed同步、战斗版本管理"等功能在当前 04-dev 代码中**均未实现**，可能计划在后续版本中添加。

---

## 5. 方法对照表

| APK528（混淆名） | 04-dev（可读名） | 功能描述 |
|---|---|---|
| `m(e)` | `setUserToken(token)` | 设置用户认证Token |
| `a()` | `clearUserToken()` | 清除用户认证Token |
| `S(e, t)` | `addGameToken(roleId, tokenData)` | 添加游戏角色Token |
| `d(e)` | `getGameToken(roleId)` | 获取游戏Token并更新lastUsed |
| `p(e, t)` | `updateGameToken(roleId, updates)` | 更新游戏Token（合并更新） |
| `$(e)` | `removeGameToken(roleId)` | 删除游戏Token及对应WebSocket |
| `j()` | `clearAllGameTokens()` | 清空所有游戏Token和WebSocket |
| `C(e, t, c)` | `createWebSocketConnection(roleId, base64Token, customWsUrl)` | 创建WebSocket游戏连接 |
| `R(e, t)` | `handleGameMessage(roleId, message)` | 处理游戏消息 |
| `v(e)` | `closeWebSocketConnection(roleId)` | 关闭WebSocket连接 |
| `B(e)` | `getWebSocketStatus(roleId)` | 获取连接状态 |
| `V(e, t, c)` | `sendGameCommand(roleId, commandName, params)` | 发送游戏命令 |
| `M(e, t, c, u)` | `sendGameCommandWithPromise(roleId, commandName, params, timeout)` | 发送命令并等待响应 |
| `K(e)` | `getWebSocketDetails(roleId)` | 获取连接详细信息 |
| `q()` | `exportTokens()` | 导出所有Token |
| `L(e)` | `importTokens(tokenData)` | 导入Token数据 |
| `O()` | `cleanExpiredTokens()` | 清理24小时未使用的Token |
| 匿名async | `initTokenManager()` | 初始化（迁移→恢复→清理） |

### IndexedDB 底层函数对照

| APK528（混淆名） | 04-dev tokenDb.js（导出名） | 功能 |
|---|---|---|
| `J()` | `openDB()` | 打开 IndexedDB 数据库 |
| `T(store, mode, fn)` | `withStore(storeName, mode, fn)` | 通用事务执行器 |
| `N(key)` | `getKV(key)` | kv store 读取 |
| `Q(key, value)` | `setKV(key, value)` | kv store 写入 |
| `X(key)` | `deleteKV(key)` | kv store 删除 |
| `x()` | `getUserToken()` | 获取用户Token |
| `W(token)` | `setUserToken(token)` | 保存用户Token |
| `Y()` | `clearUserToken()` | 清除用户Token |
| `P()` | `getAllGameTokens()` | 获取所有游戏Token（返回Object映射） |
| `y(roleId, data)` | `putGameToken(roleId, tokenData)` | 写入游戏Token |
| `G(roleId)` | `deleteGameToken(roleId)` | 删除游戏Token |
| `Z()` | `clearGameTokens()` | 清空所有游戏Token |
| `I()` | `migrateFromLocalStorageIfNeeded()` | 从localStorage迁移到IndexedDB |

---

## 6. 业务逻辑翻译

### 6.1 用户认证Token管理

**setUserToken(token)**
- 将 token 写入内存 `userToken.value`
- 异步写入 IndexedDB kv store（key="userToken"），失败仅警告不抛出

**clearUserToken()**
- 将 `userToken.value` 置为 null
- 异步从 IndexedDB 删除 userToken 记录，失败仅警告

### 6.2 游戏角色Token管理

**addGameToken(roleId, tokenData)**
- 合并传入数据，自动添加 `roleId`、`createdAt`（当前时间ISO字符串）、`lastUsed`（当前时间ISO字符串）
- 写入内存 `gameTokens.value[roleId]`
- 异步写入 IndexedDB gameTokens store，失败仅警告
- 返回完整的 tokenData 对象

**getGameToken(roleId)**
- 从内存读取 `gameTokens.value[roleId]`
- 若存在，更新 `lastUsed` 为当前时间，异步写回 IndexedDB
- 返回 token 对象或 undefined

**updateGameToken(roleId, updates)**
- 若 roleId 存在，合并 updates 到现有数据，添加 `updatedAt` 时间戳
- 异步写回 IndexedDB

**removeGameToken(roleId)**
- 从内存删除 `gameTokens.value[roleId]`
- 异步从 IndexedDB 删除
- 若该角色有 WebSocket 连接，同步关闭

**clearAllGameTokens()**
- 关闭所有 WebSocket 连接
- 清空内存 `gameTokens.value = {}`
- 异步清空 IndexedDB gameTokens store

### 6.3 WebSocket连接管理

**createWebSocketConnection(roleId, base64Token, customWsUrl?)**
1. 若该角色已有连接，先关闭旧连接
2. 动态导入 `WsAgent` 和 `gameCommands` 模块
3. **Base64 Token 解析**：
   - 去除 `data:...base64,` 前缀
   - `atob()` 解码
   - 尝试 JSON.parse，取 `token` 或 `gameToken` 字段
   - 若非 JSON，直接使用解码后字符串
   - 若解码失败，回退使用原始 token
4. 创建 WsAgent 实例（心跳2s、队列50ms、x通道、自动重连最多5次）
5. 设置事件回调：
   - **onOpen**：标记状态为 connected，记录 connectedAt，延迟1秒发送 `role_getroleinfo(0, 0, { roleId })` 和 `system_getdatabundlever()`
   - **onMessage**：若消息有 cmd 字段，调用 handleGameMessage
   - **onError**：标记状态为 error，记录 lastError
   - **onClose**：标记状态为 disconnected
   - **onReconnect**：标记状态为 reconnecting，记录重连次数
6. 构建 WebSocket URL：`wss://xxz-xyzw.hortorgames.com/agent?p={actualToken}&e=x&lang=chinese`，或使用自定义 URL
7. 保存连接信息到 `wsConnections.value[roleId]`
8. 调用 `wsAgent.connect(url)` 建立连接
9. 返回 wsAgent 实例，失败返回 null

**closeWebSocketConnection(roleId)**
- 若连接有 `agent.close()`（WsAgent 实例），调用之
- 若连接有 `connection.close()`（旧版 WebSocket 实例），调用之
- 从 `wsConnections` 中删除该条目

**sendGameCommand(roleId, commandName, params)**
- 前置检查：连接存在、agent存在、状态为 connected
- 从连接信息中获取 `gameCommands`，调用对应命令函数生成命令数据
- 通过 `agent.send()` 发送
- 返回 true/false

**sendGameCommandWithPromise(roleId, commandName, params, timeout=8000)**
- 同上前置检查，不满足则抛出错误
- 通过 `agent.sendWithPromise()` 发送并等待响应
- 返回 Promise

### 6.4 数据导入导出

**exportTokens()**
- 返回 `{ userToken, gameTokens, exportedAt }` 快照对象

**importTokens(tokenData)**
- 若有 userToken，调用 setUserToken
- 若有 gameTokens，覆盖内存并逐条写入 IndexedDB
- 返回 `{ success, message }`

### 6.5 过期清理

**cleanExpiredTokens()**
- 计算当前时间减24小时作为截止时间
- 遍历所有 gameTokens，保留 lastUsed/createdAt 在截止时间之后的
- 超过24小时的：关闭对应 WebSocket、从 IndexedDB 删除
- 更新内存 gameTokens
- 返回清理数量

### 6.6 初始化

**initTokenManager()**
1. 调用 `migrateFromLocalStorageIfNeeded()` — 从 localStorage 迁移旧数据到 IndexedDB（一次性）
2. 并行从 IndexedDB 恢复 userToken 和 gameTokens
3. 调用 `cleanExpiredTokens()` 清理过期数据
4. 失败时回退为空状态（userToken=null, gameTokens={}）

### 6.7 localStorage 迁移逻辑

**migrateFromLocalStorageIfNeeded()**
1. 检查 IndexedDB 是否已有数据（gameTokens 或 userToken），有则跳过
2. 从 localStorage 读取 `userToken` 和 `gameTokens`
3. 若有 userToken，写入 IndexedDB kv store
4. 逐条将 gameTokens 写入 IndexedDB gameTokens store
5. **不删除** localStorage 原始数据（避免意外）
6. 返回 `{ migrated: true/false, error? }`
