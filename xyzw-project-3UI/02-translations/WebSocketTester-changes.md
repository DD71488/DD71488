# WebSocketTester 核心新增/修改函数翻译

> 源文件: `WebSocketTester-BuenJ3NW.js` (783行)
> 翻译时间: 2026-06-03
> 翻译方法: minified变量名 → 可读名 + 中文注释

---

## 1. 组件概览

**组件名**: `WebSocketTester` (minified: `ve`)
**行号范围**: ~28-780 (setup函数)
**修改类型**: [重大增强] WebSocket连接测试工具，新增预设命令、三种发送模式、并发测试、连接状态轮询

### 1.1 导入映射

```javascript
// 行 1-21: 导入解构
import {
  s as useMessage,          // Y — Naive UI 消息提示
  x as useTokenStore,       // Z — Pinia token store
  r as ref,                 // y — Vue ref
  p as computed,            // ee — Vue computed
  o as onMounted,           // te — Vue onMounted
  M as onUnmounted,         // se — Vue onUnmounted
  c as createElementBlock,  // I — Vue编译辅助
  b as createBlock,         // a — Vue编译辅助
  w as withCtx,             // t — Vue withCtx
  d as resolveComponent,    // f — Vue resolveComponent
  h as createVNode,         // v — Vue createVNode
  e as createBlock,         // W — Vue createBlock（条件渲染）
  A as createTextVNode,     // S — Vue createTextVNode
  i as createTextVNode,     // u — Vue createTextVNode
  t as toDisplayString,     // _ — Vue toDisplayString
  a as createBaseVNode,     // M — Vue createBaseVNode
  F as Fragment,            // ae — Vue Fragment
  g as renderList,          // le — Vue renderList
  E as normalizeClass,      // ne — Vue normalizeClass
} from "./index-BUwMeHKm.js";
import { _ as _exportHelper } from "./_plugin-vue_export-helper-DlAUqK2U.js";
```

### 1.2 setup 核心状态

```javascript
// 行 31-41: 响应式状态声明
const message = useMessage();               // l = Y()
const tokenStore = useTokenStore();         // g = Z()
const selectedTokenId = ref(null);          // n = y(null) — 当前选中的角色ID
const connectionStatus = ref("disconnected"); // m = y("disconnected") — 连接状态
const connectionInfo = ref(null);           // c = y(null) — 连接详情信息
const selectedCommand = ref(null);          // r = y(null) — 当前选中的命令
const paramsInput = ref("{}");              // b = y("{}") — 命令参数JSON
const isSending = ref(false);               // N = y(!1) — 普通发送中
const isSendingWithPromise = ref(false);    // U = y(!1) — Promise发送中
const isConcurrentTesting = ref(false);     // O = y(!1) — 并发测试中
const log = ref([]);                        // C = y([]) — 消息日志
```

---

## 2. 计算属性与常量

### 2.1 Token选项列表

```javascript
// 行 42-47: 将 gameTokens 映射为下拉选项（含服务器信息）
const tokenOptions = computed(() =>          // q = ee(() => ...)
  tokenStore.gameTokens.map(token => ({
    label: `${token.name} (${token.server})`,  // 显示 "角色名 (服务器)"
    value: token.id,
  }))
);
```

### 2.2 预设命令列表

```javascript
// 行 48-58: 预定义的游戏命令列表
const presetCommands = [                     // J = [...]
  { label: "获取角色信息",     value: "role_getroleinfo" },
  { label: "获取数据包版本",   value: "system_getdatabundlever" },
  { label: "签到奖励",         value: "system_signinreward" },
  { label: "领取每日任务奖励", value: "task_claimdailyreward" },
  { label: "获取邮件列表",     value: "mail_getlist" },
  { label: "领取所有邮件附件", value: "mail_claimallattachment" },
  { label: "获取军团信息",     value: "legion_getinfo" },
  { label: "英雄招募",         value: "hero_recruit" },
  { label: "领取挂机奖励",     value: "system_claimhangupreward" },
];
```

### 2.3 状态映射函数

```javascript
// 行 59-74: 连接状态到UI属性的映射

// 状态 → n-tag类型
const getStatusType = (status) => ({         // $ = (e) => ...
  connected: "success",
  connecting: "warning",
  disconnected: "default",
  reconnecting: "info",
  error: "error",
})[status] || "default";

// 状态 → 中文显示文本
const getStatusText = (status) => ({         // A = (e) => ...
  connected: "已连接",
  connecting: "连接中",
  disconnected: "已断开",
  reconnecting: "重连中",
  error: "连接错误",
})[status] || "未知状态";
```

### 2.4 时间格式化

```javascript
// 行 75: 格式化时间戳为中文本地时间
const formatTime = (timestamp) =>            // R = (e) => ...
  timestamp ? new Date(timestamp).toLocaleString("zh-CN") : "-";
```

---

## 3. 连接状态管理

### 3.1 Token选择变更处理

```javascript
// 行 76-78: Token选择变更时更新连接状态
const onTokenChange = () => {                // P = () => ...
  updateConnectionStatus();                  // 调用 D()
};
```

### 3.2 更新连接状态

```javascript
// 行 79-94: 从store获取最新的连接状态和详情
const updateConnectionStatus = () => {       // D = () => ...
  if (!selectedTokenId.value) {
    connectionStatus.value = "disconnected";
    connectionInfo.value = null;
    return;
  }

  // 从store获取连接状态
  connectionStatus.value = tokenStore.getWebSocketStatus(selectedTokenId.value);

  // 获取连接详情
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

### 3.3 建立WebSocket连接

```javascript
// 行 95-116: 建立WebSocket连接
const connectWebSocket = async () => {       // B = async () => ...
  if (!selectedTokenId.value) {
    message.error("请先选择Token");
    return;
  }
  try {
    connectionStatus.value = "connecting";   // 先设为连接中状态

    const token = tokenStore.gameTokens.find(t => t.id === selectedTokenId.value);
    if (!token) {
      message.error("未找到Token数据");
      return;
    }

    // 调用store方法创建连接
    tokenStore.createWebSocketConnection(
      selectedTokenId.value,
      token.token,
      token.wsUrl,
    );

    G();                                    // 调用空函数（预留钩子）
    message.success("WebSocket连接已启动");
  } catch (e) {
    console.error("WebSocket连接失败:", e);
    message.error("WebSocket连接失败: " + e.message);
  } finally {
    // 1秒后刷新连接状态（等待连接建立）
    setTimeout(updateConnectionStatus, 1000);
  }
};
```

### 3.4 断开WebSocket连接

```javascript
// 行 117-123: 断开WebSocket连接
const disconnectWebSocket = () => {          // E = () => ...
  if (!selectedTokenId.value) return;
  tokenStore.closeWebSocketConnection(selectedTokenId.value);
  connectionStatus.value = "disconnected";
  connectionInfo.value = null;
  message.info("WebSocket连接已断开");
};
```

---

## 4. 三种发送模式

### 4.1 模式1: 普通发送（fire-and-forget）

```javascript
// 行 124-143: 发送命令，不等待响应
const sendCommand = async () => {            // V = async () => ...
  if (!selectedCommand.value) {
    message.error("请选择要发送的命令");
    return;
  }
  try {
    isSending.value = true;

    let params = {};
    if (paramsInput.value.trim()) {
      params = JSON.parse(paramsInput.value);
    }

    const success = tokenStore.sendMessage(
      selectedTokenId.value,
      selectedCommand.value,
      params,
    );

    if (success) {
      addLog("sent", { command: selectedCommand.value, params });
      message.success("命令发送成功");
    } else {
      message.error("命令发送失败");
    }
  } catch (e) {
    console.error("发送命令失败:", e);
    message.error("发送命令失败: " + e.message);
  } finally {
    isSending.value = false;
  }
};
```

### 4.2 模式2: Promise发送（等待响应）

```javascript
// 行 144-163: 发送命令并等待响应
const sendCommandWithPromise = async () => { // F = async () => ...
  if (!selectedCommand.value) {
    message.error("请选择要发送的命令");
    return;
  }
  try {
    isSendingWithPromise.value = true;

    let params = {};
    if (paramsInput.value.trim()) {
      params = JSON.parse(paramsInput.value);
    }

    // 使用Promise模式发送，等待服务器响应
    const response = await tokenStore.sendMessageWithPromise(
      selectedTokenId.value,
      selectedCommand.value,
      params,
    );

    addLog("sent", { command: selectedCommand.value, params });
    addLog("received", response);
    message.success("命令执行成功，已收到响应");
  } catch (e) {
    console.error("发送命令失败:", e);
    message.error("发送命令失败: " + e.message);
  } finally {
    isSendingWithPromise.value = false;
  }
};
```

### 4.3 模式3: 并发测试（同时发送5个请求）

```javascript
// 行 164-226: 并发测试，同时发送5个相同命令
const testConcurrent = async () => {         // j = async () => ...
  if (!selectedCommand.value) {
    message.error("请选择要发送的命令");
    return;
  }
  try {
    isConcurrentTesting.value = true;

    let params = {};
    if (paramsInput.value.trim()) {
      params = JSON.parse(paramsInput.value);
    }

    // 记录开始测试
    addLog("sent", {
      message: "开始并发测试：同时发送5个相同命令",
      command: selectedCommand.value,
      params,
    });

    // 创建5个并发请求
    const promises = [];
    const startTime = Date.now();

    for (let i = 0; i < 5; i++) {
      const promise = tokenStore
        .sendMessageWithPromise(
          selectedTokenId.value,
          selectedCommand.value,
          { ...params, requestIndex: i + 1 },  // 添加请求序号
        )
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

    // 等待所有请求完成
    const results = await Promise.allSettled(promises);
    const endTime = Date.now();

    // 统计成功/失败数
    const successCount = results.filter(
      r => r.status === "fulfilled" && r.value.success,
    ).length;
    const failCount = results.length - successCount;

    // 记录测试结果
    addLog("received", {
      message: "并发测试完成",
      totalRequests: 5,
      successCount,
      failCount,
      duration: `${endTime - startTime}ms`,
      results: results.map(r =>
        r.status === "fulfilled" ? r.value : { error: r.reason },
      ),
    });

    // 根据结果显示不同级别的提示
    if (successCount === 5) {
      message.success(`并发测试成功！5个请求全部正确响应，耗时${endTime - startTime}ms`);
    } else if (successCount > 0) {
      message.warning(`并发测试部分成功：${successCount}个成功，${failCount}个失败`);
    } else {
      message.error("并发测试失败：所有请求都失败了");
    }
  } catch (e) {
    console.error("并发测试失败:", e);
    message.error("并发测试失败: " + e.message);
    addLog("received", { message: "并发测试异常", error: e.message });
  } finally {
    isConcurrentTesting.value = false;
  }
};
```

---

## 5. 消息日志管理

### 5.1 预留钩子

```javascript
// 行 227: 空函数，预留扩展点
const onConnected = () => {};                // G = () => {}
```

### 5.2 添加日志

```javascript
// 行 228-235: 添加消息日志，最多保留100条
const addLog = (type, data) => {             // h = (e, s) => ...
  log.value.unshift({
    type,                                    // "sent" | "received"
    data,
    timestamp: new Date().toISOString(),
  });
  // 限制最多100条
  if (log.value.length > 100) {
    log.value = log.value.slice(0, 100);
  }
};
```

### 5.3 清空日志

```javascript
// 行 236-238: 清空消息日志
const clearLog = () => {                     // H = () => ...
  log.value = [];
};
```

---

## 6. 生命周期与状态轮询

### 6.1 定时轮询连接状态

```javascript
// 行 239-248: 每秒轮询一次连接状态
let statusTimer = null;                      // L = null

onMounted(() => {                            // te(() => ...)
  statusTimer = setInterval(() => {
    if (selectedTokenId.value) {
      updateConnectionStatus();              // D()
    }
  }, 1000);                                 // 每秒刷新
});

onUnmounted(() => {                          // se(() => ...)
  if (statusTimer) clearInterval(statusTimer);
});
```

---

## 7. 模板结构概览

### 7.1 UI布局

```
WebSocketTester
├── n-card (标题: "WebSocket连接测试")
│   └── n-space (direction: vertical)
│       ├── n-card (标题: "连接状态")
│       │   └── n-space (align: center)
│       │       ├── 状态标签 (n-tag, 根据状态显示颜色)
│       │       ├── 连接按钮 (未连接时显示, 含loading状态)
│       │       └── 断开按钮 (已连接时显示)
│       ├── n-form-item (label: "选择角色")
│       │   └── n-select (token选项, onChange触发状态更新)
│       ├── n-card (标题: "连接详情", 仅在有连接信息时显示)
│       │   └── n-descriptions (column: 2, bordered)
│       │       ├── 角色ID
│       │       ├── 状态 (n-tag)
│       │       ├── WebSocket URL (n-text code)
│       │       ├── 连接时间
│       │       ├── 最后错误 (条件显示)
│       │       └── 重连次数 (条件显示, >0时显示)
│       ├── n-card (标题: "游戏命令测试", 仅在已连接时显示)
│       │   └── n-space (direction: vertical)
│       │       ├── n-form-item (label: "选择命令")
│       │       │   └── n-select (预设命令列表)
│       │       ├── n-form-item (label: "命令参数 (JSON)", 仅在选中命令时显示)
│       │       │   └── n-input (textarea)
│       │       └── n-space
│       │           ├── 发送按钮 (primary, 含loading)
│       │           ├── 发送并等待响应按钮 (success, 含loading)
│       │           └── 测试并发请求按钮 (warning, 含loading)
│       └── n-card (标题: "消息日志")
│           ├── header-extra: 清空日志按钮
│           └── 日志列表
│               └── 每条日志
│                   ├── 消息头 (类型标签 + 时间)
│                   │   ├── n-tag (发送=info / 接收=success)
│                   │   └── n-text (时间, depth:3)
│                   └── 消息内容 (pre + JSON.stringify)
└── 空状态 ("暂无消息日志")
```

---

## 8. 关键依赖

### 新增API

```javascript
// tokenStore 新增方法:
// createWebSocketConnection(tokenId, token, wsUrl) — 创建WebSocket连接
// closeWebSocketConnection(tokenId) — 关闭WebSocket连接
// sendMessage(tokenId, cmd, params) — 发送命令（fire-and-forget）
// sendMessageWithPromise(tokenId, cmd, params) — 发送命令并等待响应（Promise模式）
// getWebSocketStatus(tokenId) — 获取连接状态
// wsConnections — 连接信息映射（含status/connectedAt/wsUrl/lastError/reconnectAttempt）
```

### 与MessageTester的区别

| 特性 | MessageTester | WebSocketTester |
|------|---------------|-----------------|
| 连接方式 | `selectToken()` | `createWebSocketConnection()` |
| 发送方式 | `sendGameMessage()` | `sendMessage()` / `sendMessageWithPromise()` |
| 消息监听 | `watch(wsConnections)` | 手动轮询 |
| BON解码 | ✅ 支持 | ❌ 不支持 |
| BIN文件 | ✅ 支持 | ❌ 不支持 |
| 并发测试 | ❌ 不支持 | ✅ 支持 |
| Promise模式 | ❌ 不支持 | ✅ 支持 |
| 历史上限 | 50条 | 100条 |
| 数据格式化 | 智能BON解码+3种Tab | 简单JSON.stringify |
