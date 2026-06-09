# wsAgent WebSocket代理类翻译

> 源文件: `wsAgent-C4mLjQ4W.js` (258行)
> 翻译时间: 2026-06-03
> 翻译方法: minified变量名 → 可读名 + 中文注释

---

## 1. WsAgent WebSocket代理类

**类名**: `WsAgent`
**行号范围**: 1-258
**功能描述**: WebSocket连接代理类，封装连接管理、心跳检测、消息队列、请求-响应匹配、自动重连等核心功能

### 1.1 constructor — 构造函数

```javascript
// 行 2-36
class WsAgent {
  constructor(options = {}) {                    // m = class { constructor(e = {}) => ...
    const {
      heartbeatInterval: heartbeatInterval = 2000,   // 心跳间隔，默认2秒
      queueInterval: queueInterval = 50,             // 队列处理间隔，默认50ms
      heartbeatCmd: heartbeatCmd = "heart_beat",     // 心跳命令名
      channel: channel = "x",                        // 通信频道，默认"x"
      autoReconnect: autoReconnect = true,           // 自动重连，默认开启
      maxReconnectAttempts: maxReconnectAttempts = 5, // 最大重连次数，默认5次
      reconnectDelay: reconnectDelay = 3000,          // 重连延迟，默认3秒
    } = options;

    // 配置参数
    this.heartbeatInterval = heartbeatInterval;
    this.queueInterval = queueInterval;
    this.heartbeatCmd = heartbeatCmd;
    this.channel = channel;
    this.autoReconnect = autoReconnect;
    this.maxReconnectAttempts = maxReconnectAttempts;
    this.reconnectDelay = reconnectDelay;

    // 连接状态
    this.ws = null;                               // WebSocket实例
    this.connected = false;                        // 是否已连接
    this.connecting = false;                       // 是否正在连接
    this.reconnectAttempts = 0;                    // 当前重连次数

    // 协议计数器
    this.ack = 0;                                  // 确认序号（服务端最新seq）
    this.seq = 1;                                  // 发送序号（递增）

    // 定时器
    this._heartbeatTimer = null;                   // 心跳定时器
    this._queueTimer = null;                       // 队列处理定时器
    this._reconnectTimer = null;                   // 重连定时器

    // 消息队列
    this.sendQueue = [];                           // 待发送消息队列
    this.waitingPromises = new Map();              // 等待响应的Promise映射（respKey → {resolve, reject, timeoutId}）

    // 回调函数
    this.onOpen = () => {};                        // 连接成功回调
    this.onClose = () => {};                       // 连接关闭回调
    this.onError = () => {};                       // 错误回调
    this.onMessage = () => {};                     // 收到消息回调（非请求-响应类型）
    this.onReconnect = () => {};                   // 重连回调
  }
```

### 1.2 connect — 建立连接

```javascript
// 行 37-91
connect(url, options = {}) {                     // connect(e, t = {}) => ...
  // 已连接或正在连接中，直接返回
  if (this.connecting || (this.ws && this.ws.readyState === WebSocket.OPEN)) {
    console.warn("WebSocket已连接或正在连接中");
    return Promise.resolve();
  }

  return new Promise((resolve, reject) => {
    try {
      this.connecting = true;
      console.log(`🔗 连接WebSocket: ${url}`);
      this.ws = new WebSocket(url);
      this.ws.binaryType = "arraybuffer";         // 使用二进制传输

      // 连接成功
      this.ws.onopen = () => {
        this.connecting = false;
        this.connected = true;
        this.reconnectAttempts = 0;               // 重置重连计数
        console.log("✅ WebSocket连接已建立");
        this.seq = 1;                             // 重置发送序号
        this._startHeartbeat();                   // 启动心跳
        this._startQueueProcessor();              // 启动队列处理
        this.onOpen();
        resolve();
      };

      // 收到消息
      this.ws.onmessage = (event) => {
        this._handleMessage(event.data);
      };

      // 连接关闭
      this.ws.onclose = (event) => {
        this.connecting = false;
        this.connected = false;
        this._cleanup();                          // 清理定时器和等待中的Promise

        const closeInfo = {
          code: event.code,
          reason: event.reason || "无",
          wasClean: event.wasClean,
          timestamp: new Date().toISOString(),
        };
        console.log("🔌 WebSocket连接已关闭:", closeInfo);
        this.onClose(event);

        // 自动重连逻辑
        if (this.autoReconnect && this.reconnectAttempts < this.maxReconnectAttempts) {
          this._scheduleReconnect(url, options);
        } else if (this.reconnectAttempts >= this.maxReconnectAttempts) {
          console.error(`❌ 达到最大重连次数 (${this.maxReconnectAttempts})，停止重连`);
        }
      };

      // 连接错误
      this.ws.onerror = (event) => {
        console.warn("⚠️ WebSocket 错误事件触发（详情请查看关闭事件）");
        this.onError(event);
        if (this.connecting) {
          this.connecting = false;
          reject(event);                          // 连接阶段的错误reject
        }
      };
    } catch (err) {
      this.connecting = false;
      reject(err);
    }
  });
}
```

### 1.3 close — 关闭连接

```javascript
// 行 92-96
close(code = 1000, reason = "normal") {          // close(e = 1e3, t = "normal") => ...
  this.autoReconnect = false;                     // 关闭自动重连
  if (this.ws) this.ws.close(code, reason);       // 关闭WebSocket
  this._cleanup();                                // 清理资源
}
```

### 1.4 send — 入队消息

```javascript
// 行 97-99
send(message) {                                   // send(e) => ...
  // 支持单条或批量入队
  Array.isArray(message) ? this.sendQueue.push(...message) : this.sendQueue.push(message);
}
```

### 1.5 sendWithPromise — 请求-响应模式发送

```javascript
// 行 100-110
sendWithPromise(message) {                        // sendWithPromise(e) => ...
  const { cmd, body = {}, respKey, timeout = 8000 } = message;
  const responseKey = respKey || `${cmd}resp`;    // 默认响应key为cmd+"resp"

  return new Promise((resolve, reject) => {
    const timeoutId = setTimeout(() => {
      this.waitingPromises.delete(responseKey);   // 超时后移除等待
      reject(new Error(`请求超时: ${cmd}`));
    }, timeout);                                  // 默认8秒超时

    this.waitingPromises.set(responseKey, { resolve, reject, timeoutId });
    this.send({ cmd, body, respKey: responseKey });  // 入队发送
  });
}
```

### 1.6 _handleMessage — 处理收到的消息

```javascript
// 行 111-130
_handleMessage(rawData) {                         // _handleMessage(e) => ...
  try {
    const message = BONProtocol.parse(rawData, this.channel);  // BON协议解析
    if (!message) {
      console.warn("消息解析失败");
      return;
    }

    console.log("📨 收到消息:", message);
    if (message.seq) this.ack = message.seq;      // 更新确认序号

    const cmd = message.cmd || message.c;
    const respKey = message.respKey || cmd;

    // 匹配等待中的请求-响应
    if (respKey && this.waitingPromises.has(respKey)) {
      const { resolve, timeoutId } = this.waitingPromises.get(respKey);
      clearTimeout(timeoutId);                    // 清除超时定时器
      this.waitingPromises.delete(respKey);       // 移除等待
      resolve(message);                           // resolve等待中的Promise
      return;
    }

    // 非请求-响应类型，触发onMessage回调
    this.onMessage(message);
  } catch (err) {
    console.error("消息处理失败:", err);
    this.onError(err);
  }
}
```

### 1.7 _startHeartbeat / _stopHeartbeat — 心跳管理

```javascript
// 行 131-145
_startHeartbeat() {                               // _startHeartbeat() => ...
  this._stopHeartbeat();                          // 先停止旧的心跳
  if (this.heartbeatInterval) {
    this._heartbeatTimer = setInterval(() => {
      if (this.connected && this.ws?.readyState === WebSocket.OPEN) {
        this._sendHeartbeat();                    // 定时发送心跳包
      }
    }, this.heartbeatInterval);
  }
}

_stopHeartbeat() {                                // _stopHeartbeat() => ...
  if (this._heartbeatTimer) {
    clearInterval(this._heartbeatTimer);
    this._heartbeatTimer = null;
  }
}
```

### 1.8 _sendHeartbeat — 发送心跳包

```javascript
// 行 146-155
_sendHeartbeat() {                                // _sendHeartbeat() => ...
  const heartbeatPacket = {
    ack: this.ack,                                // 当前确认序号
    body: {},                                     // 空body
    cmd: "_sys/ack",                              // 系统确认命令
    seq: 0,                                       // 心跳包seq固定为0
    time: Date.now(),                             // 时间戳
  };
  this._rawSend(heartbeatPacket);                 // 直接发送（不入队）
}
```

### 1.9 _startQueueProcessor / _stopQueueProcessor — 队列处理

```javascript
// 行 156-165
_startQueueProcessor() {                          // _startQueueProcessor() => ...
  this._stopQueueProcessor();
  this._queueTimer = setInterval(() => {
    this._processQueue();                         // 定时处理发送队列
  }, this.queueInterval);                         // 默认50ms处理一次
}

_stopQueueProcessor() {                           // _stopQueueProcessor() => ...
  if (this._queueTimer) {
    clearInterval(this._queueTimer);
    this._queueTimer = null;
  }
}
```

### 1.10 _processQueue — 处理发送队列

```javascript
// 行 166-177
_processQueue() {                                 // _processQueue() => ...
  // 前置检查：未连接或队列为空则跳过
  if (!this.connected || !this.ws ||
      this.ws.readyState !== WebSocket.OPEN ||
      this.sendQueue.length === 0) return;

  const message = this.sendQueue.shift();         // 取出队首消息
  const packet = this._buildPacket(message);      // 构建协议包
  this._rawSend(packet);                          // 发送
}
```

### 1.11 _buildPacket — 构建协议包

```javascript
// 行 178-187
_buildPacket(message) {                           // _buildPacket(e) => ...
  const { cmd, body = {}, respKey } = message;
  return {
    ack: this.ack,                                // 确认序号
    seq: cmd === this.heartbeatCmd ? 0 : this.seq++,  // 心跳包seq=0，其他递增
    time: Date.now(),                             // 时间戳
    cmd,                                          // 命令名
    body,                                         // 请求体
  };
}
```

### 1.12 _rawSend — 底层发送

```javascript
// 行 188-208
_rawSend(packet) {                                // _rawSend(e) => ...
  try {
    // 非心跳包打印发送日志
    if (packet?.cmd && packet.cmd !== "_sys/ack") {
      const bodyPreview =
        packet.body instanceof Uint8Array || Array.isArray(packet.body)
          ? "[BON]"                               // 二进制body显示为[BON]
          : packet.body || {};
      console.info("📤 发送报文", {
        cmd: packet.cmd,
        ack: packet.ack ?? 0,
        seq: packet.seq ?? 0,
        time: packet.time,
        body: bodyPreview,
      });
    }

    const encoded = BONProtocol.encode(packet, this.channel);  // BON协议编码
    this.ws.send(encoded);                        // 发送二进制数据
  } catch (err) {
    console.error("发送消息失败:", err);
    this.onError(err);
  }
}
```

### 1.13 _scheduleReconnect — 计划重连

```javascript
// 行 209-222
_scheduleReconnect(url, options) {                // _scheduleReconnect(e, t) => ...
  if (this._reconnectTimer) clearTimeout(this._reconnectTimer);

  this.reconnectAttempts++;
  console.log(
    `🔄 计划重连 (${this.reconnectAttempts}/${this.maxReconnectAttempts}) 延迟: ${this.reconnectDelay}ms`,
  );

  this._reconnectTimer = setTimeout(() => {
    console.log(`🔄 开始第${this.reconnectAttempts}次重连...`);
    this.onReconnect(this.reconnectAttempts);     // 触发重连回调
    this.connect(url, options).catch((err) => {
      console.error("重连失败:", err);
    });
  }, this.reconnectDelay);                        // 延迟后执行重连
}
```

### 1.14 _cleanup — 清理资源

```javascript
// 行 223-231
_cleanup() {                                      // _cleanup() => ...
  this._stopHeartbeat();                          // 停止心跳
  this._stopQueueProcessor();                     // 停止队列处理
  if (this._reconnectTimer) {
    clearTimeout(this._reconnectTimer);
    this._reconnectTimer = null;
  }

  // 拒绝所有等待中的Promise
  for (const [key, { reject, timeoutId }] of this.waitingPromises) {
    clearTimeout(timeoutId);
    reject(new Error("连接已关闭"));
  }
  this.waitingPromises.clear();                   // 清空等待映射
}
```

### 1.15 getStatus — 获取连接状态

```javascript
// 行 232-244
getStatus() {                                     // getStatus() => ...
  return {
    connected: this.connected,                    // 是否已连接
    connecting: this.connecting,                  // 是否正在连接
    readyState: this.ws?.readyState,              // WebSocket原始状态
    ack: this.ack,                                // 确认序号
    seq: this.seq,                                // 发送序号
    queueLength: this.sendQueue.length,           // 队列长度
    waitingPromises: this.waitingPromises.size,   // 等待中的Promise数量
    reconnectAttempts: this.reconnectAttempts,    // 重连次数
  };
}
```

### 1.16 buildUrl — 静态方法：构建WebSocket URL

```javascript
// 行 245-257
static buildUrl(baseUrl, params = {}) {           // static buildUrl(e, t = {}) => ...
  const url = new URL(baseUrl);

  // 特殊处理 "p" 参数：序列化为JSON字符串
  if (params.p && typeof params.p === "object") {
    url.searchParams.set("p", JSON.stringify(params.p));
  }

  // 其他参数直接设置
  Object.keys(params).forEach((key) => {
    if (key !== "p" && params[key] !== undefined) {
      url.searchParams.set(key, params[key]);
    }
  });

  return url.toString();
}
```

### 功能说明

WsAgent 是WebSocket连接代理类，提供完整的连接管理能力：

- **连接管理**: connect/close，支持Promise化连接，连接中状态防重入
- **心跳检测**: 默认2秒间隔发送 `_sys/ack` 心跳包，携带最新ack序号
- **消息队列**: 50ms间隔从队列取消息发送，避免并发发送问题
- **请求-响应匹配**: `sendWithPromise` 支持超时（默认8秒），通过respKey匹配响应
- **自动重连**: 连接断开后自动重连，最多5次，每次延迟3秒
- **BON协议**: 使用 `BONProtocol.parse/encode` 进行消息编解码
- **序号管理**: ack（服务端最新seq）+ seq（发送递增序号），心跳包seq固定为0
- **资源清理**: 连接关闭时清理所有定时器，拒绝所有等待中的Promise
- **状态查询**: `getStatus` 返回完整的连接状态信息
- **URL构建**: `buildUrl` 静态方法，支持将参数编码到URL中（p参数序列化为JSON）

---

## 附录: 配置参数速查

| 参数 | 默认值 | 说明 |
|------|--------|------|
| heartbeatInterval | 2000ms | 心跳发送间隔 |
| queueInterval | 50ms | 队列处理间隔 |
| heartbeatCmd | "heart_beat" | 心跳命令名 |
| channel | "x" | BON协议频道 |
| autoReconnect | true | 是否自动重连 |
| maxReconnectAttempts | 5 | 最大重连次数 |
| reconnectDelay | 3000ms | 重连延迟 |
| timeout (sendWithPromise) | 8000ms | 请求超时时间 |
