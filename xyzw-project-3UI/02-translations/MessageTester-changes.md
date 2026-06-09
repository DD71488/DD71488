# MessageTester 核心新增/修改函数翻译

> 源文件: `MessageTester-CO511llf.js` (1673行)
> 翻译时间: 2026-06-03
> 翻译方法: minified变量名 → 可读名 + 中文注释

---

## 1. 组件概览

**组件名**: `MessageTester` (minified: `st`)
**行号范围**: ~65-1670 (setup函数)
**修改类型**: [重大增强] 消息加解密测试工具，新增BON解码、BIN文件上传、多种消息测试、消息历史管理

### 1.1 导入映射

```javascript
// 行 1-29: 导入解构
const __vite__mapDeps = (i, m = __vite__mapDeps, d = m.f || (m.f = [
  "assets/index-BUwMeHKm.js", "assets/index-DlxoWD7I.css"
])) => i.map((i) => d[i]);

import {
  x as useTokenStore,       // ge — Pinia token store
  s as useMessage,          // be — Naive UI 消息提示
  r as ref,                 // B — Vue ref
  p as computed,            // M — Vue computed
  G as selectedTokenId,     // f — 当前选中的token ID（来自store）
  y as watch,               // we — Vue watch
  c as createElementBlock,  // V — Vue编译辅助
  b as createBlock,         // l — Vue编译辅助
  w as withCtx,             // o — Vue withCtx
  d as resolveComponent,    // m — Vue resolveComponent
  h as createVNode,         // A — Vue createVNode
  a as createBaseVNode,     // n — Vue createBaseVNode
  A as createTextVNode,     // S — Vue createTextVNode
  aK as isRef,              // Ae — Vue isRef
  u as unref,               // L — Vue unref
  e as createBlock,         // J — Vue createBlock（条件渲染）
  i as createTextVNode,     // c — Vue createTextVNode
  t as toDisplayString,     // v — Vue toDisplayString
  F as Fragment,            // ke — Vue Fragment
  g as renderList,          // He — Vue renderList
  E as normalizeClass,      // Ce — Vue normalizeClass
  an as defineAsyncComponent, // E — Vue defineAsyncComponent
} from "./index-BUwMeHKm.js";
import { _ as _exportHelper } from "./_plugin-vue_export-helper-DlAUqK2U.js";
import { A as AlertCircleOutline } from "./AlertCircleOutline-DSz5dGmY.js";
```

### 1.2 setup 核心状态

```javascript
// 行 67-73: 响应式状态声明
const tokenStore = useTokenStore();         // _ = ge()
const message = useMessage();               // u = be()
const customCmd = ref("");                  // k = B("") — 自定义消息命令
const customBody = ref("{}");               // x = B("{}") — 自定义消息体JSON
const history = ref([]);                    // g = B([]) — 消息历史记录
ref(0);                                     // 未使用的计数器
const lastMessage = ref(null);              // N = B(null) — 上一条接收到的消息（用于去重）
```

---

## 2. 工具函数

### 2.1 提取消息元数据

```javascript
// 行 74-85: 从消息数据中提取 seq/ack/resp/time 元数据
const extractMeta = (data) => {             // Z = (e) => ...
  if (!data || typeof data !== "object") return {};

  const raw = data._raw || data;            // t = e._raw || e — 优先使用_raw字段
  const meta = {};                          // s = {}

  // 逐一提取协议元数据字段
  if (typeof raw.seq === "number") meta.seq = raw.seq;
  if (typeof raw.ack === "number") meta.ack = raw.ack;
  if (typeof raw.resp === "number") meta.resp = raw.resp;
  if (typeof raw.time === "number") meta.time = raw.time;

  return meta;
};
```

### 2.2 计算属性：Token选项列表

```javascript
// 行 86: 将 gameTokens 映射为下拉选项
const tokenOptions = computed(() =>          // G = M(() => ...)
  tokenStore.gameTokens.map(token => ({
    label: token.name,
    value: token.id,
  }))
);
```

### 2.3 计算属性：WebSocket连接状态

```javascript
// 行 87-111: 连接状态相关计算属性

// 当前选中token的WebSocket连接状态
const wsStatus = computed(() =>              // z = M(() => ...)
  selectedTokenId.value
    ? tokenStore.getWebSocketStatus(selectedTokenId.value)
    : "disconnected"
);

// 状态对应的标签类型（用于n-tag组件）
const statusTagType = computed(() => {       // W = M(() => ...)
  switch (wsStatus.value) {
    case "connected":   return "success";
    case "connecting":  return "warning";
    case "error":       return "error";
    default:            return "default";
  }
});

// 状态对应的中文显示文本
const statusText = computed(() => {          // F = M(() => ...)
  switch (wsStatus.value) {
    case "connected":   return "🟢 已连接";
    case "connecting":  return "🟡 连接中";
    case "error":       return "🔴 连接错误";
    default:            return "⚪ 未连接";
  }
});

// 是否已连接（用于控制按钮可用状态）
const isConnected = computed(() =>           // b = M(() => ...)
  selectedTokenId.value && wsStatus.value === "connected"
);
```

---

## 3. WebSocket连接管理

### 3.1 连接WebSocket

```javascript
// 行 113-132: 建立WebSocket连接
const connectWebSocket = () => {             // P = () => ...
  if (!selectedTokenId.value) {
    message.error("请先选择一个token");
    return;
  }

  const token = tokenStore.gameTokens.find(t => t.id === selectedTokenId.value);
  if (token) {
    console.log("🔧 MessageTester: 开始连接WebSocket", {
      tokenId: selectedTokenId.value,
      tokenName: token.name,
      hasToken: !!token.token,
    });
    try {
      tokenStore.selectToken(selectedTokenId.value);
      message.success("正在建立WebSocket连接...");
    } catch (e) {
      console.error("❌ MessageTester: WebSocket连接失败", e);
      message.error("WebSocket连接失败: " + e.message);
    }
  } else {
    message.error("找不到选中的token");
  }
};
```

---

## 4. BON解码与BIN文件处理

### 4.1 BIN文件上传解码

```javascript
// 行 133-168: 上传BIN文件并解码
const handleBinFileUpload = async (event) => {  // K = async (e) => ...
  // 动态导入 g_utils（BON解码器、消息解析器）
  const { g_utils } = await defineAsyncComponent(async () => {
    const { g_utils } = await import("./index-BUwMeHKm.js").then(m => m.b4);
    return { g_utils };
  }, __vite__mapDeps([0, 1]));

  const file = event.target.files[0];
  if (!file) return;

  const reader = new FileReader();
  reader.readAsArrayBuffer(file);

  reader.onload = (e) => {
    const buffer = event.target.result;      // 注意: 原代码用了event而非e，可能是bug
    const uint8 = new Uint8Array(buffer);

    // 先用BON解码器解码（副作用：初始化解码状态）
    g_utils.bon.decode(uint8);

    // 再解析完整消息结构
    const parsed = g_utils.parse(uint8);     // w = t.parse(C)
    const body = g_utils.bon.decode(parsed.body);  // y = t.bon.decode(w.body)

    console.log(parsed, body);

    // 将解码结果添加到消息历史
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

  reader.onerror = () => {
    message.error("读取文件失败，请重试");
  };
};
```

### 4.2 BON解码测试

```javascript
// 行 169-224: 测试BON解码器是否正常工作
const testBONDecoding = async () => {        // Q = async () => ...
  try {
    // 动态导入 g_utils
    const { g_utils } = await defineAsyncComponent(async () => {
      const { g_utils } = await import("./index-BUwMeHKm.js").then(m => m.b4);
      return { g_utils };
    }, __vite__mapDeps([0, 1]));

    // 测试数据: 编码后的二进制数据
    const testData = new Uint8Array([8, 2, 5, 4, 114, 111, 108, 101]);

    console.log("🧪 BON解码测试开始");
    console.log("🔍 g_utils可用性检查:", {
      hasGUtils: !!g_utils,
      hasBon: !!(g_utils && g_utils.bon),
      hasBonDecode: !!(g_utils && g_utils.bon && g_utils.bon.decode),
    });

    if (g_utils && g_utils.bon && g_utils.bon.decode) {
      console.log("📥 测试数据:", testData);
      const result = g_utils.bon.decode(testData);

      console.log("✅ BON解码成功:", result);
      message.success(`BON解码器工作正常: ${JSON.stringify(result)}`);

      addToHistory("test", {
        testType: "BON解码测试",
        input: Array.from(testData),
        output: result,
        status: "success",
      }, "bon_decode_test");
    } else {
      console.error("❌ BON解码器不可用");
      message.error("BON解码器不可用");

      addToHistory("test", {
        testType: "BON解码测试",
        error: "BON解码器不可用",
        status: "error",
      }, "bon_decode_test");
    }
  } catch (e) {
    console.error("❌ BON解码测试失败:", e);
    message.error("BON解码测试失败: " + e.message);

    addToHistory("test", {
      testType: "BON解码测试",
      error: e.message,
      status: "error",
    }, "bon_decode_test");
  }
};
```

---

## 5. 消息历史管理

### 5.1 添加消息到历史

```javascript
// 行 225-241: 添加消息到历史记录，最多保留50条
const addToHistory = (type, data, cmd = null, meta = {}) => {  // H = (e, t, s, a) => ...
  // 过滤掉系统消息: _sys/ack 和 heartbeat（test类型不过滤）
  if (type !== "test" && (cmd === "_sys/ack" || cmd === "heartbeat")) {
    return null;
  }

  // 合并元数据
  const mergedMeta = { ...extractMeta(data), ...meta };  // r = { ...Z(t), ...a }

  const entry = {                           // i = { ... }
    type,                                    // "sent" | "received" | "test"
    timestamp: new Date().toISOString(),
    cmd,
    data,
    meta: mergedMeta,
  };

  // 新消息插入头部，限制最多50条
  history.value.unshift(entry);
  if (history.value.length > 50) {
    history.value = history.value.slice(0, 50);
  }

  return entry;
};
```

---

## 6. 预设消息发送

### 6.1 发送心跳

```javascript
// 行 242-247: 发送心跳消息
const sendHeartbeat = () => {               // X = () => ...
  if (!isConnected.value) return;
  tokenStore.sendHeartbeat(selectedTokenId.value)
    ? message.success("心跳消息已发送")
    : message.error("心跳消息发送失败");
};
```

### 6.2 获取角色信息

```javascript
// 行 248-254: 发送角色信息请求
const sendGetRoleInfo = () => {             // Y = () => ...
  if (!isConnected.value) return;
  tokenStore.sendGetRoleInfo(selectedTokenId.value)
    ? (addToHistory("sent", { cmd: "role_getroleinfo" }, "role_getroleinfo"),
       message.success("角色信息请求已发送"))
    : message.error("角色信息请求发送失败");
};
```

### 6.3 获取数据版本

```javascript
// 行 255-265: 发送数据版本请求
const sendGetDataBundleVer = () => {        // ee = () => ...
  if (!isConnected.value) return;
  tokenStore.sendGameMessage(selectedTokenId.value, "system_getdatabundlever", { isAudit: false })
    ? (addToHistory("sent", { cmd: "system_getdatabundlever" }, "system_getdatabundlever"),
       message.success("数据版本请求已发送"))
    : message.error("数据版本请求发送失败");
};
```

### 6.4 签到

```javascript
// 行 266-272: 发送签到请求
const sendSignin = () => {                  // te = () => ...
  if (!isConnected.value) return;
  tokenStore.sendGameMessage(selectedTokenId.value, "system_signinreward", {})
    ? (addToHistory("sent", { cmd: "system_signinreward" }, "system_signinreward"),
       message.success("签到请求已发送"))
    : message.error("签到请求发送失败");
};
```

---

## 7. 自定义消息发送

### 7.1 发送自定义消息（带onSent回调）

```javascript
// 行 273-299: 发送自定义消息，支持 onSent 回调获取 seq/ack/time
const sendCustomMessage = () => {           // se = () => ...
  if (!isConnected.value || !customCmd.value) return;
  try {
    const body = JSON.parse(customBody.value || "{}");
    let historyEntry = null;                // t = null
    const meta = {};                        // s = {}

    tokenStore.sendGameMessage(selectedTokenId.value, customCmd.value, body, {
      onSent: (sentMeta = {}) => {          // r = {}
        // 捕获发送时的 seq/ack/time 元数据
        const newMeta = {};                 // i = {}
        if (typeof sentMeta.seq === "number") newMeta.seq = sentMeta.seq;
        if (typeof sentMeta.ack === "number") newMeta.ack = sentMeta.ack;
        if (typeof sentMeta.time === "number") newMeta.time = sentMeta.time;

        if (historyEntry) {
          // 历史记录已创建，直接更新meta
          historyEntry.meta = { ...historyEntry.meta, ...newMeta };
        } else if (Object.keys(newMeta).length > 0) {
          // 历史记录尚未创建，暂存到meta对象
          Object.assign(meta, newMeta);
        }
      },
    })
      ? (
        historyEntry = addToHistory("sent", { cmd: customCmd.value, body }, customCmd.value, meta) || null,
        message.success(`自定义消息 ${customCmd.value} 已发送`),
        // 发送成功后清空输入
        customCmd.value = "",
        customBody.value = "{}"
      )
      : message.error("自定义消息发送失败");
  } catch (e) {
    message.error("消息体JSON格式错误: " + e.message);
  }
};
```

---

## 8. 消息显示辅助函数

### 8.1 时间格式化

```javascript
// 行 300: 格式化时间戳为本地时间字符串
const formatTime = (timestamp) =>           // $ = (e) => ...
  new Date(timestamp).toLocaleTimeString();
```

### 8.2 提取SEQ/ACK

```javascript
// 行 301-321: 从消息中提取SEQ和ACK值

const getSeq = (entry) => {                 // j = (e) => ...
  if (!entry) return;
  // 优先从meta中获取
  if (entry.meta?.seq !== undefined) return entry.meta.seq;
  // 回退到原始数据中获取
  const raw = entry.data?._raw || entry.data;
  return typeof raw?.seq === "number" ? raw.seq : undefined;
};

const getAck = (entry) => {                 // T = (e) => ...
  if (!entry) return;
  if (entry.meta?.ack !== undefined) return entry.meta.ack;
  const raw = entry.data?._raw || entry.data;
  return typeof raw?.ack === "number" ? raw.ack : undefined;
};

// 判断消息是否有SEQ/ACK信息
const hasSeqAck = (entry) =>                // ne = (e) => ...
  getSeq(entry) !== undefined || getAck(entry) !== undefined;
```

### 8.3 命令标签类型

```javascript
// 行 322-333: 根据命令字符串推断标签类型（用于n-tag颜色）
const getCmdTagType = (cmd) => {            // oe = (e) => ...
  if (!cmd) return "default";
  if (cmd.includes("error") || cmd.includes("fail")) return "error";
  if (cmd.includes("resp") || cmd.includes("response")) return "success";
  if (cmd.includes("get") || cmd.includes("info")) return "info";
  if (cmd.includes("send") || cmd.includes("start")) return "primary";
  return "default";
};
```

### 8.4 数据大小计算

```javascript
// 行 334-346: 计算消息数据的字节大小
const getDataSize = (data) => {             // U = (e) => ...
  try {
    const json = JSON.stringify(data);
    const bytes = new TextEncoder().encode(json).length;
    if (bytes < 1024) return `${bytes}B`;
    if (bytes < 1024 * 1024) return `${(bytes / 1024).toFixed(1)}KB`;
    return `${(bytes / 1024 / 1024).toFixed(1)}MB`;
  } catch {
    return "未知大小";
  }
};
```

### 8.5 消息预览文本

```javascript
// 行 347-363: 生成消息预览文本（截断到150字符）
const getPreviewText = (data) => {          // re = (e) => ...
  if (!data) return "空数据";
  try {
    let displayData = data;

    // 优先使用已解码的body
    if (data._raw?.decodedBody || data.decodedBody) {
      displayData = data._raw?.decodedBody || data.decodedBody;
    }
    // 其次使用rawData
    else if (data._raw?.rawData || data.rawData) {
      displayData = data._raw?.rawData || data.rawData;
    }

    const json = JSON.stringify(displayData);
    return json.length > 150 ? json.substring(0, 150) + "..." : json;
  } catch {
    return "数据解析失败";
  }
};
```

---

## 9. 消息历史操作

### 9.1 清空历史

```javascript
// 行 364-366: 清空消息历史
const clearHistory = () => {                // le = () => ...
  history.value = [];
  lastMessage.value = null;
  message.success("消息历史已清空");
};
```

### 9.2 导出历史

```javascript
// 行 367-388: 导出消息历史为JSON文件
const exportHistory = () => {               // ae = () => ...
  try {
    const exportData = {
      exportTime: new Date().toISOString(),
      tokenId: selectedTokenId.value,
      messages: history.value,
    };

    const json = JSON.stringify(exportData, null, 2);
    const blob = new Blob([json], { type: "application/json" });
    const url = URL.createObjectURL(blob);

    // 创建下载链接并触发下载
    const link = document.createElement("a");
    link.href = url;
    link.download = `message-history-${new Date().toISOString().slice(0, 19).replace(/:/g, "-")}.json`;
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
    URL.revokeObjectURL(url);

    message.success("消息历史已导出");
  } catch (e) {
    message.error("导出失败: " + e.message);
  }
};
```

---

## 10. 剪贴板操作

### 10.1 复制到剪贴板

```javascript
// 行 389-402: 复制文本到剪贴板（含降级方案）
const copyToClipboard = async (text) => {   // O = async (e) => ...
  try {
    await navigator.clipboard.writeText(text);
    message.success("已复制到剪贴板");
  } catch {
    // 降级方案: 使用textarea + execCommand
    const textarea = document.createElement("textarea");
    textarea.value = text;
    document.body.appendChild(textarea);
    textarea.select();
    document.execCommand("copy");
    document.body.removeChild(textarea);
    message.success("已复制到剪贴板");
  }
};
```

### 10.2 各种复制操作

```javascript
// 行 403-419: 不同格式的复制操作

// 复制消息摘要文本
const copyMessage = (entry) => {            // ie = (e) => ...
  const text = `[${entry.type.toUpperCase()}] ${formatTime(entry.timestamp)} - ${entry.cmd || "无命令"}\n${JSON.stringify(entry.data, null, 2)}`;
  copyToClipboard(text);
};

// 复制原始JSON数据
const copyRawJson = (data) => {             // de = (e) => ...
  copyToClipboard(JSON.stringify(data, null, 2));
};

// 复制格式化JSON数据（含BON解码）
const copyFormattedJson = (data) => {       // ce = (e) => ...
  copyToClipboard(formatJson(data));
};

// 复制原始JSON（带缩进）
const copyRawJsonIndented = (data) => {     // ue = (e) => ...
  copyToClipboard(JSON.stringify(data, null, 2));
};

// 复制紧凑JSON（无缩进）
const copyCompactJson = (data) => {         // fe = (e) => ...
  copyToClipboard(JSON.stringify(data));
};
```

---

## 11. 数据格式化与检测

### 11.1 二进制数据检测

```javascript
// 行 420-439: 检测数据是否为二进制格式

// 描述二进制数据的格式类型
const describeBinaryFormat = (data) => {    // q = (e) => ...
  if (!data) return "null";
  if (Array.isArray(data)) return `[Array: ${data.length} items]`;
  if (data instanceof Uint8Array) return `[Uint8Array: ${data.length} bytes]`;
  if (typeof data === "object" && data.constructor === Object) {
    const keys = Object.keys(data);
    // 如果所有key都是数字字符串，说明是类数组对象
    if (keys.every(key => !isNaN(parseInt(key)))) {
      return `[NumericObject: ${keys.length} entries]`;
    }
  }
  return "[Unknown format]";
};

// 判断数据是否为二进制格式（需要BON解码）
const isBinaryData = (data) => {            // I = (e) => ...
  if (!data) return false;
  if (Array.isArray(data) || data instanceof Uint8Array) return true;
  if (typeof data === "object" && data.constructor === Object) {
    const keys = Object.keys(data);
    return keys.length > 0 && keys.every(key => !isNaN(parseInt(key)));
  }
  return false;
};
```

### 11.2 智能JSON格式化（含BON解码）

```javascript
// 行 440-495: 智能格式化JSON，自动处理BON解码数据
const formatJson = (data, maxDepth = 10, currentDepth = 0) => {  // R = (e, t, s) => ...
  try {
    if (!data) return "null";
    if (currentDepth > maxDepth) return "[超出最大深度限制]";

    let displayData = data;
    const raw = data._raw || data;

    // 情况1: 数据有decodedBody（已BON解码的body）
    if (raw.decodedBody || data.decodedBody) {
      const decodedBody = raw.decodedBody || data.decodedBody;
      const originalBody = raw.body || data.body;

      if (data._raw) {
        displayData = {
          ...data,
          _raw: {
            ...data._raw,
            body: decodedBody,              // 替换为解码后的body
            _originalBody: describeBinaryFormat(originalBody),  // 标记原始body格式
            _note: "body已自动BON解码",
          },
        };
      } else {
        displayData = {
          ...data,
          body: decodedBody,
          _originalBody: describeBinaryFormat(originalBody),
          _note: "body已自动BON解码",
        };
      }
    }
    // 情况2: 数据有rawData（原始数据）
    else if (raw.rawData || data.rawData) {
      const rawData = raw.rawData || data.rawData;

      if (data._raw) {
        displayData = {
          ...data,
          _raw: {
            ...data._raw,
            body: rawData,
            _note: "body已使用rawData解码",
          },
        };
      } else {
        displayData = { ...data, body: rawData, _note: "body已使用rawData解码" };
      }
    }
    // 情况3: body是二进制数据但未解码
    else if ((raw.body && isBinaryData(raw.body)) || (data.body && isBinaryData(data.body))) {
      displayData = { ...data, _note: "body为原始数据，可能需要BON解码" };
    }

    // 序列化，处理循环引用
    const seen = new WeakSet();
    return JSON.stringify(displayData, (key, value) => {
      if (typeof value === "object" && value !== null) {
        if (seen.has(value)) return "[循环引用]";
        seen.add(value);
      }
      return value;
    }, 2);
  } catch (e) {
    return `[JSON序列化错误: ${e.message}]`;
  }
};
```

---

## 12. WebSocket消息监听

### 12.1 watch监听wsConnections

```javascript
// 行 497-514: 监听WebSocket连接变化，自动记录接收到的消息
watch(
  () => tokenStore.wsConnections,           // () => _.wsConnections
  (connections) => {
    if (!selectedTokenId.value || !connections[selectedTokenId.value]) return;

    const connection = connections[selectedTokenId.value];
    if (connection.lastMessage) {
      const msg = connection.lastMessage;    // s = t.lastMessage

      // 去重: 跳过已处理的同一条消息
      if (lastMessage.value && lastMessage.value.timestamp === msg.timestamp) return;

      const data = msg.data || msg;          // a = s.data || s
      const cmd = data.cmd || msg.cmd;       // r = a.cmd || s.cmd

      // 过滤系统消息，记录到历史
      if (cmd && cmd !== "_sys/ack" && cmd !== "heartbeat") {
        addToHistory("received", data, cmd);
        lastMessage.value = msg;
      }
    }
  },
  { deep: true },                           // 深度监听
);
```

---

## 13. 模板结构概览

### 13.1 UI布局

```
MessageTester
├── n-card (标题: "消息加解密测试")
│   ├── Token选择 (n-select)
│   ├── 连接状态 (n-tag + 连接按钮 + BON测试按钮)
│   ├── n-divider ("bin文件消息测试")
│   │   └── 文件上传 (input[type=file], accept=.bin)
│   ├── n-divider ("预设消息测试")
│   │   ├── 💗 发送心跳
│   │   ├── 👤 获取角色信息
│   │   ├── 📦 获取数据版本
│   │   └── 📅 签到
│   ├── n-divider ("自定义消息")
│   │   ├── 命令输入 (n-input)
│   │   ├── 消息体JSON (n-input textarea)
│   │   └── 🚀 发送自定义消息
│   ├── n-divider ("消息历史")
│   │   ├── 清空按钮 (🗑️)
│   │   └── 导出按钮 (📄)
│   └── 消息历史列表
│       └── 每条消息
│           ├── 类型标签 (📤发送/🧪测试/📨接收) + 时间
│           ├── SEQ/ACK标签 (如有)
│           ├── 复制按钮 (复制消息/复制JSON)
│           ├── 命令标签
│           ├── 消息预览 (截断150字符)
│           └── 详细数据 (n-collapse)
│               └── n-tabs
│                   ├── 格式化显示 (含BON解码)
│                   ├── 原始数据
│                   └── 紧凑显示
└── 空状态 ("暂无消息历史")
```

---

## 14. 关键依赖

### 新增API

```javascript
// tokenStore 新增方法:
// selectToken(tokenId) — 选择token并建立连接
// sendHeartbeat(tokenId) — 发送心跳
// sendGetRoleInfo(tokenId) — 获取角色信息
// sendGameMessage(tokenId, cmd, body, options) — 发送游戏消息
//   options.onSent — 回调：消息发送时获取 seq/ack/time
// getWebSocketStatus(tokenId) — 获取连接状态
// wsConnections — 连接信息映射（含lastMessage）

// g_utils (动态导入):
// g_utils.bon.decode(uint8Array) — BON格式解码
// g_utils.parse(uint8Array) — 消息结构解析
```
