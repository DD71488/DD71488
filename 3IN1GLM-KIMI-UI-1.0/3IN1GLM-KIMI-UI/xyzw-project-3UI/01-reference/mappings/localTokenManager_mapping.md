# localTokenManager 模块 minified→源码 变量名映射表

> 目标文件: `/workspace/TRAE 使用/GLM仅修复修正/01-reference/formatted-js/localTokenManager-DrgF481l.js`
> 生成时间: 2026-06-03

---

## 1. 导入映射 (import aliases)

### 1.1 来自 `./index-BUwMeHKm.js` 的框架 API

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `z` | `defineStore` | Pinia API | L12 | Pinia Store 定义函数 |
| `A` | `ref` | Vue API | L12 | Vue 响应式引用 |
| `_` | `computed` | Vue API | L12 | Vue 计算属性 |
| `D` | `__vitePreload` | Vite 内部 | L12 | Vite 预加载辅助 |

---

## 2. 模块级常量映射

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `F` | `DB_NAME` | 常量 | L13 | IndexedDB 数据库名 "xyzw_token_db" |
| `H` | `DB_VERSION` | 常量 | L14 | IndexedDB 版本号 1 |
| `h` | `KV_STORE` | 常量 | L15 | KV 对象仓库名 "kv" |
| `w` | `GAME_TOKEN_STORE` | 常量 | L16 | 游戏Token对象仓库名 "gameTokens" |

---

## 3. IndexedDB 工具函数映射

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `J` | `openDB` | 异步函数 | L17-30 | 打开 IndexedDB 数据库 |
| `T` | `withTransaction` | 异步函数 | L31-41 | 执行 IndexedDB 事务 |
| `N` | `kvGet` | 异步函数 | L42-53 | 从 KV 仓库读取值 |
| `Q` | `kvPut` | 异步函数 | L54-58 | 向 KV 仓库写入值 |
| `X` | `kvDelete` | 异步函数 | L59-63 | 从 KV 仓库删除值 |
| `x` | `getUserToken` | 异步函数 | L64-66 | 获取用户Token (kvGet("userToken")) |
| `W` | `setUserToken` | 异步函数 | L67-69 | 保存用户Token (kvPut("userToken")) |
| `Y` | `clearUserToken` | 异步函数 | L70-72 | 删除用户Token (kvDelete("userToken")) |
| `P` | `getAllGameTokens` | 异步函数 | L73-91 | 获取所有游戏Token (转为 roleId→token 映射) |
| `y` | `putGameToken` | 异步函数 | L92-96 | 保存单个游戏Token |
| `G` | `deleteGameToken` | 异步函数 | L97-101 | 删除单个游戏Token |
| `Z` | `clearAllGameTokensDB` | 异步函数 | L102-106 | 清空游戏Token仓库 |
| `I` | `migrateFromLocalStorage` | 异步函数 | L107-131 | 从 localStorage 迁移数据到 IndexedDB |

---

## 4. Pinia Store (useLocalTokenStore) 内部变量映射

> Store 定义在 L132，使用 `defineStore("localToken", () => {...})`

### 4.1 响应式状态

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `o` | `userToken` | ref | L133 | 用户Token (初始 null) |
| `s` | `gameTokens` | ref | L134 | 游戏Token映射 (初始 {}) |
| `n` | `wsConnections` | ref | L135 | WebSocket连接映射 (初始 {}) |
| `k` | `isUserAuthenticated` | computed | L136 | 用户是否已认证 (userToken存在) |
| `r` | `hasGameTokens` | computed | L137 | 是否有游戏Token (gameTokens非空) |

### 4.2 Store 方法

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `m` | `setUserToken` | 函数 | L138-140 | 设置用户Token并持久化 |
| `a` | `clearUserToken` | 函数 | L141-144 | 清除用户Token |
| `S` | `addGameToken` | 函数 | L145-157 | 添加游戏Token (含 createdAt/lastUsed) |
| `d` | `getGameToken` | 函数 | L158-166 | 获取游戏Token (更新 lastUsed) |
| `p` | `updateGameToken` | 函数 | L167-175 | 更新游戏Token (合并字段) |
| `$` | `removeGameToken` | 函数 | L176-180 | 删除游戏Token (同时关闭连接) |
| `j` | `clearAllGameTokens` | 函数 | L181-187 | 清空所有游戏Token |
| `C` | `createWebSocketConnection` | 异步函数 | L188-281 | 创建WebSocket连接 |
| `R` | `handleMessage` | 函数 | L282-284 | 处理收到的消息 (空实现) |
| `v` | `closeWebSocketConnection` | 函数 | L285-294 | 关闭WebSocket连接 |
| `B` | `getWebSocketStatus` | 函数 | L295-298 | 获取WebSocket连接状态 |
| `V` | `sendGameCommand` | 函数 | L299-311 | 发送游戏命令 (无Promise) |
| `M` | `sendGameCommandWithPromise` | 异步函数 | L312-325 | 发送游戏命令 (带Promise等待) |
| `K` | `getWebSocketDetails` | 函数 | L326-340 | 获取WebSocket连接详情 |
| `q` | `exportTokens` | 函数 | L341-345 | 导出Token数据 |
| `L` | `importTokens` | 函数 | L346-363 | 导入Token数据 |
| `O` | `cleanExpiredTokens` | 函数 | L364-378 | 清理过期Token (超过24小时) |

### 4.3 Store 导出

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `oe` | `useLocalTokenStore` | Store | L132 | Pinia Store 定义 |
| - | `userToken` | 导出 | L380 | 用户Token |
| - | `gameTokens` | 导出 | L381 | 游戏Token映射 |
| - | `wsConnections` | 导出 | L382 | WebSocket连接映射 |
| - | `isUserAuthenticated` | 导出 | L383 | 用户是否已认证 |
| - | `hasGameTokens` | 导出 | L384 | 是否有游戏Token |
| - | `setUserToken` | 导出 | L385 | 设置用户Token |
| - | `clearUserToken` | 导出 | L386 | 清除用户Token |
| - | `addGameToken` | 导出 | L387 | 添加游戏Token |
| - | `getGameToken` | 导出 | L388 | 获取游戏Token |
| - | `updateGameToken` | 导出 | L389 | 更新游戏Token |
| - | `removeGameToken` | 导出 | L390 | 删除游戏Token |
| - | `clearAllGameTokens` | 导出 | L391 | 清空所有游戏Token |
| - | `createWebSocketConnection` | 导出 | L392 | 创建WebSocket连接 |
| - | `closeWebSocketConnection` | 导出 | L393 | 关闭WebSocket连接 |
| - | `getWebSocketStatus` | 导出 | L394 | 获取WebSocket状态 |
| - | `getWebSocketDetails` | 导出 | L395 | 获取WebSocket详情 |
| - | `sendGameCommand` | 导出 | L396 | 发送游戏命令 |
| - | `sendGameCommandWithPromise` | 导出 | L397 | 发送游戏命令(带Promise) |
| - | `exportTokens` | 导出 | L398 | 导出Token |
| - | `importTokens` | 导出 | L399 | 导入Token |
| - | `cleanExpiredTokens` | 导出 | L400 | 清理过期Token |
| - | `initTokenManager` | 导出 | L401-412 | 初始化Token管理器 (迁移+加载+清理) |

---

## 5. createWebSocketConnection 内部变量映射

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `e` | `roleId` | 参数 | L188 | 角色 ID |
| `t` | `token` | 参数 | L188 | Token 字符串 |
| `c` | `wsUrl` | 参数 | L188 | WebSocket URL (可选) |
| `u` | `WsAgent` | 解构 | L191 | WsAgent 类 |
| `l` | `gameCommands` | 解构 | L198 | 游戏命令模块 |
| `i` | `actualToken` | 变量 | L206-218 | 解析后的实际Token (Base64解码) |
| `f` | `agent` | 变量 | L219-225 | WsAgent 实例 |
| `E` | `finalWsUrl` | 变量 | L251-257 | 最终WebSocket URL |

---

## 6. 动态导入映射

| 导入路径 | 导出名 | 说明 |
|---|---|---|
| `./wsAgent-C4mLjQ4W.js` | `WsAgent` | WebSocket 代理客户端 |
| `./gameCommands-BYMl-9HL.js` | `gameCommands` | 游戏命令模块 |

---

## 7. __vite__mapDeps 依赖索引

| 索引 | 文件路径 |
|---|---|
| 0 | `assets/wsAgent-C4mLjQ4W.js` |
| 1 | `assets/index-BUwMeHKm.js` |
| 2 | `assets/index-DlxoWD7I.css` |
| 3 | `assets/gameCommands-BYMl-9HL.js` |
