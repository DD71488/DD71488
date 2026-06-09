# wsAgent 模块 minified→源码 变量名映射表

> 目标文件: `/workspace/TRAE 使用/GLM仅修复修正/01-reference/formatted-js/wsAgent-C4mLjQ4W.js`
> 生成时间: 2026-06-03

---

## 1. 导入映射 (import aliases)

### 1.1 来自 `./index-BUwMeHKm.js`

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `h` | `g_utils` | 工具对象 | L1 | BON 协议编解码工具 (含 parse/encode) |

---

## 2. WsAgent 类映射

> 类定义在 L2 (`class m`)

### 2.1 构造函数参数

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `e` | `options` | 参数 | L3 | 配置选项对象 |
| `t` | `heartbeatInterval` | 解构 | L5 | 心跳间隔 (默认 2000ms) |
| `s` | `queueInterval` | 解构 | L6 | 队列处理间隔 (默认 50ms) |
| `i` | `heartbeatCmd` | 解构 | L7 | 心跳命令名 (默认 "heart_beat") |
| `n` | `channel` | 解构 | L8 | 通道标识 (默认 "x") |
| `o` | `autoReconnect` | 解构 | L9 | 是否自动重连 (默认 true) |
| `c` | `maxReconnectAttempts` | 解构 | L10 | 最大重连次数 (默认 5) |
| `r` | `reconnectDelay` | 解构 | L11 | 重连延迟 (默认 3000ms) |

### 2.2 实例属性

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| - | `heartbeatInterval` | 属性 | L13 | 心跳间隔 |
| - | `queueInterval` | 属性 | L14 | 队列处理间隔 |
| - | `heartbeatCmd` | 属性 | L15 | 心跳命令名 |
| - | `channel` | 属性 | L16 | 通道标识 |
| - | `autoReconnect` | 属性 | L17 | 是否自动重连 |
| - | `maxReconnectAttempts` | 属性 | L18 | 最大重连次数 |
| - | `reconnectDelay` | 属性 | L19 | 重连延迟 |
| - | `ws` | 属性 | L20 | WebSocket 实例 (初始 null) |
| - | `connected` | 属性 | L21 | 是否已连接 (初始 false) |
| - | `connecting` | 属性 | L22 | 是否正在连接 (初始 false) |
| - | `reconnectAttempts` | 属性 | L23 | 当前重连次数 (初始 0) |
| - | `ack` | 属性 | L24 | 确认序号 (初始 0) |
| - | `seq` | 属性 | L25 | 发送序号 (初始 1) |
| - | `_heartbeatTimer` | 属性 | L26 | 心跳定时器 |
| - | `_queueTimer` | 属性 | L27 | 队列定时器 |
| - | `_reconnectTimer` | 属性 | L28 | 重连定时器 |
| - | `sendQueue` | 属性 | L29 | 发送队列 (初始 []) |
| - | `waitingPromises` | 属性 | L30 | 等待中的 Promise 映射 (初始 Map) |
| - | `onOpen` | 回调 | L31 | 连接打开回调 |
| - | `onClose` | 回调 | L32 | 连接关闭回调 |
| - | `onError` | 回调 | L33 | 错误回调 |
| - | `onMessage` | 回调 | L34 | 消息回调 |
| - | `onReconnect` | 回调 | L35 | 重连回调 |

### 2.3 公开方法

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| - | `connect` | 异步方法 | L37-91 | 建立 WebSocket 连接 |
| - | `close` | 方法 | L92-96 | 关闭连接 |
| - | `send` | 方法 | L97-99 | 发送消息 (入队列) |
| - | `sendWithPromise` | 方法 | L100-110 | 发送消息并等待响应 |
| - | `getStatus` | 方法 | L232-244 | 获取连接状态信息 |
| - | `buildUrl` | 静态方法 | L245-256 | 构建 WebSocket URL (含参数) |

### 2.4 私有方法

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| - | `_handleMessage` | 方法 | L111-130 | 处理收到的消息 (解析→分发) |
| - | `_startHeartbeat` | 方法 | L131-141 | 启动心跳定时器 |
| - | `_stopHeartbeat` | 方法 | L142-145 | 停止心跳定时器 |
| - | `_sendHeartbeat` | 方法 | L146-155 | 发送心跳包 |
| - | `_startQueueProcessor` | 方法 | L156-161 | 启动队列处理器 |
| - | `_stopQueueProcessor` | 方法 | L162-165 | 停止队列处理器 |
| - | `_processQueue` | 方法 | L166-177 | 处理发送队列 |
| - | `_buildPacket` | 方法 | L178-187 | 构建发送数据包 |
| - | `_rawSend` | 方法 | L188-208 | 原始发送 (编码→发送) |
| - | `_scheduleReconnect` | 方法 | L209-221 | 计划重连 |
| - | `_cleanup` | 方法 | L223-231 | 清理定时器和等待中的 Promise |

### 2.5 connect 方法内部变量

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `e` | `url` | 参数 | L37 | WebSocket URL |
| `t` | `options` | 参数 | L37 | 连接选项 |
| `s` | `resolve` | 变量 | L40 | Promise resolve |
| `i` | `reject` | 变量 | L40 | Promise reject |
| `n` | `onopen handler` | 回调 | L46-56 | 连接打开处理 |
| `n` | `onmessage handler` | 回调 | L57-59 | 消息接收处理 |
| `n` | `onclose handler` | 回调 | L60-79 | 连接关闭处理 |
| `n` | `onerror handler` | 回调 | L80-86 | 错误处理 |
| `o` | `closeInfo` | 变量 | L64-69 | 关闭信息对象 |

### 2.6 sendWithPromise 方法内部变量

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `t` | `cmd` | 解构 | L101 | 命令名 |
| `s` | `body` | 解构 | L101 | 消息体 |
| `i` | `respKey` | 解构 | L101 | 响应键名 |
| `n` | `timeout` | 解构 | L101 | 超时时间 (默认 8000ms) |
| `o` | `responseKey` | 变量 | L102 | 实际响应键 (respKey 或 `${cmd}resp`) |
| `c` | `resolve` | 变量 | L103 | Promise resolve |
| `r` | `reject` | 变量 | L103 | Promise reject |
| `a` | `timeoutId` | 变量 | L104 | 超时定时器 |

### 2.7 _handleMessage 方法内部变量

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `e` | `rawData` | 参数 | L111 | 原始消息数据 |
| `t` | `parsed` | 变量 | L113 | 解析后的消息对象 |
| `s` | `cmd` | 变量 | L119 | 命令名 (t.cmd 或 t.c) |
| `i` | `respKey` | 变量 | L120 | 响应键名 |

### 2.8 _buildPacket 方法内部变量

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `e` | `msg` | 参数 | L178 | 消息对象 |
| `t` | `cmd` | 解构 | L179 | 命令名 |
| `s` | `body` | 解构 | L179 | 消息体 |
| `i` | `respKey` | 解构 | L179 | 响应键名 |

### 2.9 _rawSend 方法内部变量

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `e` | `packet` | 参数 | L188 | 数据包 |
| `s` | `bodyPreview` | 变量 | L191-194 | 消息体预览 (Uint8Array→"[BON]") |
| `t` | `encoded` | 变量 | L203 | 编码后的数据 |

### 2.10 _scheduleReconnect 方法内部变量

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `e` | `url` | 参数 | L209 | WebSocket URL |
| `t` | `options` | 参数 | L209 | 连接选项 |
| `s` | `error` | 变量 | L218 | 重连失败错误 |

### 2.11 _cleanup 方法内部变量

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `e` | `key` | 迭代 | L228 | waitingPromises 的键 |
| `t` | `reject` | 解构 | L228 | Promise reject |
| `s` | `timeoutId` | 解构 | L228 | 超时定时器 ID |

### 2.12 getStatus 返回对象字段

| 字段名 | 类型 | 说明 |
|---|---|---|
| `connected` | boolean | 是否已连接 |
| `connecting` | boolean | 是否正在连接 |
| `readyState` | number | WebSocket readyState |
| `ack` | number | 确认序号 |
| `seq` | number | 发送序号 |
| `queueLength` | number | 队列长度 |
| `waitingPromises` | number | 等待中的 Promise 数量 |
| `reconnectAttempts` | number | 重连次数 |

### 2.13 buildUrl 参数

| 参数名 | 类型 | 说明 |
|---|---|---|
| `e` (baseUrl) | string | 基础 URL |
| `t` (params) | object | URL 参数 {p, e, lang, ...} |

---

## 3. 导出映射

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `m` | `WsAgent` | 类 | L2-257 | WebSocket 代理客户端类 |
| `m` | `default` | 默认导出 | L258 | 默认导出 (同 WsAgent) |
