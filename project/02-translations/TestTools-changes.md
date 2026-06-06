# MessageTester & WebSocketTester 模块 APK528 增量翻译

> 源文件: `MessageTester-CO511llf.js`, `WebSocketTester-BuenJ3NW.js`
> 对应基线: `00-baseline/src/components/Test/MessageTester.vue`, `WebSocketTester.vue`

---

## 1. 概览

APK528 的测试工具模块相比基线有**显著增强**：

| 组件 | 基线 | APK528 | 变化程度 |
|------|------|--------|----------|
| MessageTester | 消息收发测试 | BON解码 + BIN文件上传 + 多种消息测试 | 🔴 重大 |
| WebSocketTester | 基础连接测试 | 预设命令 + 并发测试 + Promise模式 | 🔴 重大 |

---

## 2. MessageTester — 核心变更

### 2.1 新增: BON 解码测试

```js
// 测试游戏 BON (Binary Object Notation) 解码器是否正常工作
const testBONDecoding = async () => {
  const { g_utils } = await import("./index-BUwMeHKm.js").then(m => m.b4);

  // 测试数据: 编码后的 "role" 字符串
  const testData = new Uint8Array([8, 2, 5, 4, 114, 111, 108, 101]);

  if (g_utils && g_utils.bon && g_utils.bon.decode) {
    const result = g_utils.bon.decode(testData);
    message.success(`BON解码器工作正常: ${JSON.stringify(result)}`);
    addToHistory("test", {
      testType: "BON解码测试",
      input: Array.from(testData),
      output: result,
      status: "success",
    }, "bon_decode_test");
  } else {
    message.error("BON解码器不可用");
  }
};
```

### 2.2 新增: BIN 文件上传解码

```js
// 上传 BIN 文件并解码，用于抓包后分析
const handleBinFileUpload = async (event) => {
  const { g_utils } = await import("./index-BUwMeHKm.js").then(m => m.b4);
  const file = event.target.files[0];
  if (!file) return;

  const reader = new FileReader();
  reader.readAsArrayBuffer(file);
  reader.onload = (e) => {
    const buffer = e.target.result;
    const uint8 = new Uint8Array(buffer);

    // 先用 BON 解码器解码
    g_utils.bon.decode(uint8);
    // 再解析完整消息结构
    const parsed = g_utils.parse(uint8);
    const body = g_utils.bon.decode(parsed.body);

    addToHistory(
      parsed.cmd,
      {
        testType: "BIN文件解码",
        input: Array.from(body),
        output: body,
        status: "success",
      },
      parsed.cmd,
    );
  };
};
```

### 2.3 新增: 多种消息发送测试

```js
// 发送心跳消息
const sendHeartbeat = () => {
  if (!isConnected.value) return;
  tokenStore.sendHeartbeat(selectedTokenId.value)
    ? message.success("心跳消息已发送")
    : message.error("心跳消息发送失败");
};

// 发送角色信息请求
const sendGetRoleInfo = () => {
  if (!isConnected.value) return;
  tokenStore.sendGetRoleInfo(selectedTokenId.value)
    ? (addToHistory("sent", { cmd: "role_getroleinfo" }, "role_getroleinfo"),
       message.success("角色信息请求已发送"))
    : message.error("角色信息请求发送失败");
};

// 发送数据版本请求
const sendGetDataBundleVer = () => {
  if (!isConnected.value) return;
  tokenStore.sendGameMessage(selectedTokenId.value, "system_getdatabundlever", { isAudit: false })
    ? (addToHistory("sent", { cmd: "system_getdatabundlever" }, "system_getdatabundlever"),
       message.success("数据版本请求已发送"))
    : message.error("数据版本请求发送失败");
};

// 发送签到请求
const sendSignin = () => {
  if (!isConnected.value) return;
  tokenStore.sendGameMessage(selectedTokenId.value, "system_signinreward", {})
    ? (addToHistory("sent", { cmd: "system_signinreward" }, "system_signinreward"),
       message.success("签到请求已发送"))
    : message.error("签到请求发送失败");
};
```

### 2.4 新增: 自定义消息发送（带回调）

```js
// 发送自定义消息，支持 onSent 回调获取 seq/ack/time
const sendCustomMessage = () => {
  if (!isConnected.value || !customCmd.value) return;
  try {
    const body = JSON.parse(customBody.value || "{}");
    let historyEntry = null;
    const meta = {};

    tokenStore.sendGameMessage(selectedTokenId.value, customCmd.value, body, {
      onSent: (sentMeta = {}) => {
        // 捕获发送时的 seq/ack/time 元数据
        const newMeta = {};
        if (typeof sentMeta.seq === "number") newMeta.seq = sentMeta.seq;
        if (typeof sentMeta.ack === "number") newMeta.ack = sentMeta.ack;
        if (typeof sentMeta.time === "number") newMeta.time = sentMeta.time;

        if (historyEntry) {
          historyEntry.meta = { ...historyEntry.meta, ...newMeta };
        } else if (Object.keys(newMeta).length > 0) {
          Object.assign(meta, newMeta);
        }
      },
    })
      ? ((historyEntry = addToHistory("sent", { cmd: customCmd.value, body }, customCmd.value, meta) || null),
         message.success(`自定义消息 ${customCmd.value} 已发送`),
         (customCmd.value = ""),
         (customBody.value = "{}"))
      : message.error("自定义消息发送失败");
  } catch (e) {
    message.error("消息体JSON格式错误: " + e.message);
  }
};
```

### 2.5 新增: 消息历史管理

```js
// 添加消息到历史记录，最多保留 50 条
const addToHistory = (type, data, cmd = null, meta = {}) => {
  // 过滤掉系统消息: _sys/ack 和 heartbeat
  if (type !== "test" && (cmd === "_sys/ack" || cmd === "heartbeat")) {
    return null;
  }

  const entry = {
    type,
    timestamp: new Date().toISOString(),
    cmd,
    data,
    meta,
  };

  history.value.unshift(entry);
  // 限制最多 50 条
  if (history.value.length > 50) {
    history.value = history.value.slice(0, 50);
  }

  return entry;
};
```

### 2.6 WebSocket 连接管理

```js
const connectWebSocket = () => {
  if (!selectedTokenId.value) {
    message.error("请先选择一个token");
    return;
  }
  const token = tokenStore.gameTokens.find(t => t.id === selectedTokenId.value);
  if (token) {
    try {
      tokenStore.selectToken(selectedTokenId.value);
      message.success("正在建立WebSocket连接...");
    } catch (e) {
      message.error("WebSocket连接失败: " + e.message);
    }
  } else {
    message.error("找不到选中的token");
  }
};
```

---

## 3. WebSocketTester — 核心变更

### 3.1 新增: 预设命令列表

```js
const presetCommands = [
  { label: "获取角色信息", value: "role_getroleinfo" },
  { label: "获取数据包版本", value: "system_getdatabundlever" },
  { label: "签到奖励", value: "system_signinreward" },
  { label: "领取每日任务奖励", value: "task_claimdailyreward" },
  { label: "获取邮件列表", value: "mail_getlist" },
  { label: "领取所有邮件附件", value: "mail_claimallattachment" },
  { label: "获取军团信息", value: "legion_getinfo" },
  { label: "英雄招募", value: "hero_recruit" },
  { label: "领取挂机奖励", value: "system_claimhangupreward" },
];
```

### 3.2 新增: 三种发送模式

```js
// 模式1: 普通发送（fire-and-forget）
const sendCommand = async () => {
  if (!selectedCommand.value) {
    message.error("请选择要发送的命令");
    return;
  }
  try {
    let params = {};
    if (paramsInput.value.trim()) {
      params = JSON.parse(paramsInput.value);
    }
    const success = store.sendMessage(selectedTokenId.value, selectedCommand.value, params);
    if (success) {
      addLog("sent", { command: selectedCommand.value, params });
      message.success("命令发送成功");
    } else {
      message.error("命令发送失败");
    }
  } catch (e) {
    message.error("发送命令失败: " + e.message);
  }
};

// 模式2: Promise 发送（等待响应）
const sendCommandWithPromise = async () => {
  if (!selectedCommand.value) {
    message.error("请选择要发送的命令");
    return;
  }
  try {
    let params = {};
    if (paramsInput.value.trim()) {
      params = JSON.parse(paramsInput.value);
    }
    const response = await store.sendMessageWithPromise(
      selectedTokenId.value,
      selectedCommand.value,
      params
    );
    addLog("sent", { command: selectedCommand.value, params });
    addLog("received", response);
    message.success("命令执行成功，已收到响应");
  } catch (e) {
    message.error("发送命令失败: " + e.message);
  }
};

// 模式3: 并发测试（同时发送5个请求）
const testConcurrent = async () => {
  if (!selectedCommand.value) {
    message.error("请选择要发送的命令");
    return;
  }
  try {
    addLog("sent", {
      message: "开始并发测试：同时发送5个相同命令",
      command: selectedCommand.value,
    });

    const promises = [];
    const startTime = Date.now();
    for (let i = 0; i < 5; i++) {
      const promise = store
        .sendMessageWithPromise(selectedTokenId.value, selectedCommand.value, {
          requestIndex: i + 1,
        })
        .then((response) => ({
          requestIndex: i + 1,
          response,
          success: true,
        }))
        .catch((error) => ({
          requestIndex: i + 1,
          error: error.message,
          success: false,
        }));
      promises.push(promise);
    }

    const results = await Promise.allSettled(promises);
    const elapsed = Date.now() - startTime;
    const successCount = results.filter(r => r.status === "fulfilled" && r.value.success).length;
    const failCount = results.length - successCount;

    addLog("received", {
      message: "并发测试完成",
      totalRequests: 5,
      successCount,
      failCount,
      duration: `${elapsed}ms`,
      results: results.map(r => r.status === "fulfilled" ? r.value : { error: r.reason }),
    });

    if (successCount === 5) {
      message.success(`并发测试成功！5个请求全部正确响应，耗时${elapsed}ms`);
    } else if (successCount > 0) {
      message.warning(`并发测试部分成功：${successCount}个成功，${failCount}个失败`);
    } else {
      message.error("并发测试失败：所有请求都失败了");
    }
  } catch (e) {
    message.error("并发测试失败: " + e.message);
  }
};
```

### 3.3 连接状态轮询

```js
// 每秒轮询一次连接状态
onMounted(() => {
  statusTimer = setInterval(() => {
    if (selectedTokenId.value) {
      updateConnectionStatus();
    }
  }, 1000);
});

onUnmounted(() => {
  if (statusTimer) clearInterval(statusTimer);
});

const updateConnectionStatus = () => {
  if (!selectedTokenId.value) {
    connectionStatus.value = "disconnected";
    connectionInfo.value = null;
    return;
  }
  connectionStatus.value = tokenStore.getWebSocketStatus(selectedTokenId.value);
  const connection = tokenStore.wsConnections[selectedTokenId.value];
  if (connection) {
    connectionInfo.value = {
      roleId: selectedTokenId.value,
      status: connection.status,
      connectedAt: connection.connectedAt,
      wsUrl: connection.wsUrl,
    };
  } else {
    connectionInfo.value = null;
  }
};
```

### 3.4 消息日志管理

```js
// 添加消息日志，最多保留 100 条
const addLog = (type, data) => {
  log.value.unshift({
    type,
    data,
    timestamp: new Date().toISOString(),
  });
  if (log.value.length > 100) {
    log.value = log.value.slice(0, 100);
  }
};

const clearLog = () => {
  log.value = [];
};
```

### 3.5 连接状态显示

```js
// 状态映射
const getStatusType = (status) => ({
  connected: "success",
  connecting: "warning",
  disconnected: "default",
  reconnecting: "info",
  error: "error",
})[status] || "default";

const getStatusText = (status) => ({
  connected: "已连接",
  connecting: "连接中",
  disconnected: "已断开",
  reconnecting: "重连中",
  error: "连接错误",
})[status] || "未知状态";
```

---

## 4. 关键依赖

### 共享模块

```js
// index-BUwMeHKm.js 中的关键导出:
// b4: { g_utils } — 游戏工具模块（BON解码器、消息解析器）
//   g_utils.bon.decode() — BON 格式解码
//   g_utils.parse() — 消息结构解析

// 测试数据常量:
// Uint8Array([8, 2, 5, 4, 114, 111, 108, 101]) — 编码后的 "role" 字符串
```

### 新增 API

```js
// tokenStore 新增方法:
// sendHeartbeat(tokenId) — 发送心跳
// sendGetRoleInfo(tokenId) — 获取角色信息
// sendGameMessage(tokenId, cmd, body, options) — 发送游戏消息
//   options.onSent — 回调：消息发送时获取 seq/ack/time
// sendMessageWithPromise(tokenId, cmd, params) — 发送消息并等待响应
// getWebSocketStatus(tokenId) — 获取连接状态
// wsConnections — 连接信息映射
```

---

## 5. 实现优先级

| 功能 | 优先级 | 说明 |
|------|--------|------|
| WebSocketTester 预设命令 | P0 | 简单，提升测试效率 |
| WebSocketTester 连接状态轮询 | P0 | 提供实时状态反馈 |
| MessageTester 多种消息发送 | P1 | 需要 tokenStore 支持对应 API |
| MessageTester BON 解码测试 | P1 | 需要 g_utils 模块 |
| MessageTester BIN 文件上传 | P2 | 需要 FileReader + g_utils |
| WebSocketTester 并发测试 | P2 | 需要 Promise.all + sendMessageWithPromise |
| WebSocketTester Promise 模式 | P2 | 需要 sendMessageWithPromise 实现 |