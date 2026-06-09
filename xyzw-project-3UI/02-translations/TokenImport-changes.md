# TokenImport 模块 APK528 增量翻译

> 源文件: `01-reference/formatted-js/bin-CC8h7f6I.js`, `wxqrcode-C3dNzXLv.js`, `url-CDPFGLtc.js`, `manual-D5fO84-H.js`, `singlebin-g6-JdQQP.js`
> 对应基线: `00-baseline/src/views/TokenImport/`

---

## 1. 概览

APK528 的 TokenImport 模块相比基线有**重大增强**：

| 文件 | 基线 | APK528 | 变化程度 |
|------|------|--------|----------|
| bin.vue | 简单上传 + 角色列表 | 重写: ServerRoleList + IndexedDB + 下载功能 | 🔴 重大 |
| wxqrcode.vue | 不存在 | 全新: 微信扫码登录 + 代理 + 加密 | 🆕 全新 |
| url.vue | 基础 URL 获取 | 表单验证 + axios + 错误处理 | 🟡 中等 |
| manual.vue | 基础手动输入 | 表单验证 + NPopover 提示 | 🟢 轻微 |
| singlebin.vue | 不存在 | 全新: 简化单BIN上传 | 🆕 全新 |

---

## 2. bin.vue — 核心变更

### 2.1 新增: ServerRoleList 组件集成

```js
// 从上传的 bin 文件解析服务器角色列表
// 使用 GameDataParser 协议缓冲区解析器
const binData = new Uint8Array(e);  // e = ArrayBuffer
const serverListJson = await parseServerList(binData.buffer);
const serverList = JSON.parse(serverListJson);
// 返回 { serverId: power } 格式，按战力降序排列
y.value = Object.values(serverList).sort((a, b) => b.power - a.power);
```

### 2.2 新增: Bin 数据解析

```js
// 使用 GameDataParser 解析 bin 文件的完整数据
const parser = GameDataParser.parse(binBuffer);
let data = parser.getData();
// 如果 getData() 返回空，尝试使用 _raw 字段
if (!data && parser._raw) {
  data = { ...parser._raw };
}
```

### 2.3 新增: storeArrayBuffer 存储到 IndexedDB

```js
// 将 bin 的原始 buffer 数据存储到 IndexedDB
// 用于后续需要重新读取 bin 数据的场景
const { storeArrayBuffer } = useTokenStore();
await storeArrayBuffer(id, arrayBuffer);
```

### 2.4 新增: 角色命名模板

```js
// 支持变量替换的角色命名
const template = nameTemplate || "{name}-{index}-{id}";
const name = template
  .replace(/{name}/g, () => roleName)
  .replace(/{index}/g, () => String(roleIndex))
  .replace(/{id}/g, () => String(roleId))
  .replace(/{server}/g, () => String(serverId) + "服");
```

### 2.5 新增: 下载 Bin 文件

```js
// 从解析的 bin 数据重新生成并下载 bin 文件
const downloadBin = (name, data) => {
  const blob = new Blob([new Uint8Array(data)], { type: "application/octet-stream" });
  const url = URL.createObjectURL(blob);
  const a = document.createElement("a");
  a.href = url;
  a.download = name;
  document.body.appendChild(a);
  a.click();
  document.body.removeChild(a);
  URL.revokeObjectURL(url);
};
```

### 2.6 新增: 并发上传队列

```js
// 使用 UploadQueue 控制并发上传（并发数=1，间隔=1秒）
const uploadQueue = new UploadQueue({ concurrency: 1, interval: 1000 });

// 上传文件时加入队列
const handleUpload = (file) => uploadQueue.add(async () => {
  const reader = new FileReader();
  reader.onload = async (e) => {
    // 解析 bin 文件
    const serverList = await parseServerList(e.target.result);
    const binData = GameDataParser.parse(e.target.result);
    // ...
  };
  reader.readAsArrayBuffer(file);
}, false);
```

### 2.7 服务器 ID 转换逻辑

```js
// 将服务器 ID 转换为区服编号
let serverId = Number(serverId);
let index = 0;
if (serverId >= 2000000) {
  index = 2;
  serverId -= 2000000;
} else if (serverId >= 1000000) {
  index = 1;
  serverId -= 1000000;
}
const displayedServer = serverId - 27;
// 文件名: bin-{displayedServer}服-{index}-{roleId}-{name}.bin
```

### 2.8 Token 更新逻辑

```js
// 如果同名 token 已存在，更新而非拒绝
const existing = gameTokens.find(t => t.id === newToken.id);
if (existing) {
  updateToken(existing.id, { ...newToken });
} else {
  addToken({ ...newToken });
}
```

---

## 3. wxqrcode.vue — 全新功能 🆕

### 3.1 微信扫码登录流程

整体流程：
```
获取二维码 → 显示二维码 → 轮询扫码状态(1s) → 扫码成功 → 登录API → 解析bin → ServerRoleList → 添加Token
```

### 3.2 环境检测

```js
// 检测是否在微信 WebView 中
const isInWeChatWebView = (() => {
  const ua = navigator.userAgent;
  return /Android/.test(ua) && /wv|WebView/.test(ua);
})();

// 检测是否在原生 App 中（Cordova/Capacitor）
const isInNativeApp = (() => {
  try {
    return window.cordova || window.Capacitor;
  } catch {
    return false;
  }
})();
```

### 3.3 代理 URL 系统

```js
// 代理基地址
const PROXY_BASE = "https://f9b333f0.xyzw-web-helper-ena.pages.dev";

// URL 重写规则
const proxyRules = [
  (url) => url.includes("open.weixin.qq.com")
    ? `${PROXY_BASE}/api/weixin${new URL(url).pathname}${new URL(url).search}`
    : url.includes("long.open.weixin.qq.com")
      ? `${PROXY_BASE}/api/weixin-long${new URL(url).pathname}${new URL(url).search}`
      : url.includes("comb-platform.hortorgames.com")
        ? `${PROXY_BASE}/api/hortor${new URL(url).pathname}${new URL(url).search}`
        : url,
];
```

### 3.4 二维码获取

```js
// 获取微信登录二维码
const fetchQRCode = async () => {
  let url;
  if (isInNativeApp) {
    // 原生 App 直接请求微信
    url = "https://open.weixin.qq.com/connect/app/qrconnect?...";
  } else if (isInWeChatWebView) {
    // 微信 WebView 通过代理
    url = proxyRules[0]("https://open.weixin.qq.com/connect/app/qrconnect?...");
  } else {
    // 浏览器使用本地代理
    url = "/api/weixin/connect/app/qrconnect?...";
  }

  // 获取 HTML 响应，解析二维码图片
  const html = await fetch(url, { headers: weChatHeaders });
  const doc = new DOMParser().parseFromString(html, "text/html");
  const qrImg = doc.querySelector("img.auth_qrcode")?.src;

  if (!qrImg) {
    // 备用正则匹配
    const match = html.match(/https:\/\/[^"']*qrcode[^"']*/i);
    if (match) qrImg = match[0];
  }

  return qrImg;
};
```

### 3.5 扫码状态轮询

```js
// 120 秒超时，1 秒间隔轮询
const QR_TIMEOUT = 120000;

const startPolling = () => {
  startTime = Date.now();
  timer = setInterval(async () => {
    const elapsed = Date.now() - startTime;

    if (elapsed > QR_TIMEOUT) {
      setStatus("二维码已超时，请重新获取", "error");
      clearInterval(timer);
      return;
    }

    // 请求二维码状态
    const url = `https://long.open.weixin.qq.com/connect/l/qrconnect?uuid=${qrUuid}&f=url&_=${Date.now()}`;
    const response = await fetch(url);

    if (response.includes("window.wx_errcode=405")) {
      // 扫码成功
      const code = response.match(/wx_redirecturl='[^']*code=([a-zA-Z0-9]+)/)[1];
      const nickname = response.match(/window\.wx_nickname\s*=\s*['"]([^'"]+)['"]/)?.[1];
      clearInterval(timer);
      await handleLogin(code, nickname);
    } else if (response.includes("window.wx_errcode=408")) {
      // 二维码过期
      setStatus("二维码已过期，请重新生成", "error");
      clearInterval(timer);
    }
  }, 1000);
};
```

### 3.6 登录加密

```js
// 自定义加密算法（多层置换/XOR）
// cipherTable: 2464字符的置换表
const cipherTable = "BYLWeIPgSMOI2VsgfNGDHSilLpVgxgzIjqMiW0bJqX2HafZDOWZOcJyLTMSn66O6...";

// 加密过程:
// 1. 原始 JSON → base64(encodeURIComponent(JSON))
// 2. 多层置换 (O function, 6层)
// 3. 采样 (ne function, 3间隔)
// 4. XOR 加密 (oe function, 1位移)
const encrypt = (text) => {
  const base64 = btoa(unescape(encodeURIComponent(text)));
  const permuted = O(cipherTable, 6);  // 6层置换
  const sampled = ne(permuted, 3);      // 每3取1
  return oe(base64, sampled, 1);        // XOR加密
};
```

### 3.7 登录 API 调用

```js
// 向游戏服务器发送登录请求
const login = async (code) => {
  const body = JSON.stringify({
    gameId: "xyzwapp",
    code: code,
    gameTp: "app",
    sysInfo: '{"system":"Android","model":"22081212C","brand":"Redmi"}',
    channel: "android",
    appFrom: "com.tencent.mm",
    noLogin: "2",
    distinctId: "DID-a38175b7-14ce-4b36-aa89-3e092ea03ea6",
    state: "hortor",
    packageName: "com.hortor.games.xyzw",
    tp: "app-we",
    signPrint: "E6:F7:FE:A9:EC:8E:24:D0:4F:2A:32:50:28:78:E1:C5:5E:70:81:13",
  });

  const encrypted = encrypt(body);

  const url = `https://comb-platform.hortorgames.com/comb-login-server/api/v1/login?gameId=xyzwapp&timestamp=${Date.now()}&version=android-4.2.1-cn-release&cryptVersion=1.1.0&...`;

  const response = await fetch(url, {
    method: "POST",
    headers: { "Content-Type": "text/plain; charset=utf-8" },
    body: encrypted
  });

  const data = await response.json();
  const combUser = data.data.combUser;
  // 使用游戏加密模块生成 bin:  require("13") 模块
  const bin = window.__require("13").encMsg(
    { platform: "hortor", platformExt: "mix", info: combUser, serverId: null, scene: 0 },
    { decrypt: lz4XorDecode, encrypt: lz4XorEncode }
  );
  return new Uint8Array(bin);
};
```

### 3.8 解密函数（调试用）

```js
const decrypt = (encrypted) => {
  const cipherTable = encrypt.toString().match(/const cipherTable = "([^"]+)"/)[1];
  const base64 = atob(encrypted);
  const permuted = O(cipherTable, 6);
  const sampled = ne(permuted, 3);
  const decoded = oe(base64, sampled, 1);
  return decodeURIComponent(escape(atob(decoded)));
};
```

---

## 4. url.vue — 中等变更

### 4.1 表单验证规则

```js
const urlRules = {
  name: [
    { required: true, message: "请输入角色名称", trigger: "blur" },
    { min: 1, max: 50, message: "名称长度应在1到50个字符之间", trigger: "blur" },
  ],
  url: [
    { required: true, message: "请输入Token获取地址", trigger: "blur" },
    { type: "url", message: "请输入有效的URL地址", trigger: "blur" },
  ],
};
```

### 4.2 使用 axios 替代 fetch

```js
// 基线使用原生 fetch，APK528 使用 axios
const response = await axios.get(urlForm.url);
if (response.status === 200 && response.data && response.data.token) {
  // ...
}
```

### 4.3 新增字段

```js
const token = {
  name: urlForm.name,
  token: response.data.token,
  server: urlForm.server || "未知",
  wsUrl: urlForm.wsUrl || "",
  id: Date.now().toString(),        // 使用时间戳作为 ID
  sourceUrl: urlForm.url,            // 新增: 记录来源 URL
  importMethod: "url",               // 新增: 标记导入方式
};
```

### 4.4 表单验证后提交

```js
const handleSubmit = async () => {
  if (urlFormRef.value) {
    try {
      await urlFormRef.value.validate();
    } catch {
      message.error("请修正表单中的错误后再提交");
      return;
    }
    // 提交逻辑...
  }
};
```

---

## 5. manual.vue — 轻微变更

### 5.1 NPopover 提示

```js
// Token 输入框增加 NPopover 格式提示
// 提示内容: 输入格式为：{"roleToken":"****","sessId":***,"connId":***,"isRestore":***}
```

### 5.2 表单验证

```js
const manualRules = {
  name: [
    { required: true, message: "请输入角色名称", trigger: "blur" },
    { min: 1, max: 50, message: "名称长度应在1到50个字符之间", trigger: "blur" },
  ],
  base64Token: [
    { required: true, message: "请输入Token字符串", trigger: "blur" },
    { min: 20, message: "Token字符串长度应至少20个字符", trigger: "blur" },
  ],
};
```

---

## 6. singlebin.vue — 全新功能 🆕

### 6.1 简化 BIN 上传（无 ServerRoleList）

```js
// 与 bin.vue 的区别：
// 1. 没有 ServerRoleList（不需要选择角色）
// 2. 直接从文件名解析角色信息
// 3. 添加后直接完成，无需角色选择步骤
```

### 6.2 文件名解析

```js
// 解析文件名格式: bin-{server}服-{index}-{roleId}-{roleName}.bin
const parseFileName = (filename) => {
  const match = filename.match(/^bin-(.*?)服-([0-2])-([0-9]{6,12})-(.*)\.bin$/);
  if (match) {
    return {
      server: match[1],
      roleIndex: match[2],
      roleId: match[3],
      roleName: match[4],
    };
  }
  return { server: "", roleIndex: "", roleId: "", roleName: "" };
};
```

### 6.3 直接添加 Token

```js
// 与 bin.vue 不同，singlebin 不需要 ServerRoleList 步骤
// 文件上传后自动解析并直接加入待添加列表
const handleFile = (file) => uploadQueue.add(async () => {
  const reader = new FileReader();
  reader.onload = async (e) => {
    const buffer = e.target.result;
    const id = hash(buffer);          // 计算 hash 作为 ID
    const token = await readToken(buffer);  // 读取 token
    const info = parseFileName(file.name);

    // 检查重复
    if (pendingList.value.some(r => r.id === id)) {
      message.error("上传列表中已存在同名角色!");
      return;
    }

    pendingList.value.push({
      id, token,
      name: info.roleName || file.name.split(".")[0] || "",
      server: info.server + info.roleIndex || "",
      wsUrl: form.wsUrl || "",
      importMethod: "bin",
    });
  };
  reader.readAsArrayBuffer(file);
}, false);
```

---

## 7. 关键依赖

### 共享模块

```js
// index-CwMhWr3d.js 导出:
// P: UploadQueue 类 — 并发上传队列
// U: GameUpload 组件 — 文件上传UI

// index-Dne5XMpP.js 导出:
// L: ServerRoleList 组件 — 服务器角色选择列表
// a: ServerRoleListItem 组件 — 角色列表项

// CloudUpload-CqW5D9SP.js 导出:
// C: CloudUpload 图标

// ServerRoleList-K5eSJYby.js 导出:
// _: ServerRoleList 组件 (wxqrcode 版本专用)
```

### 工具函数

```js
// index-BUwMeHKm.js 中的关键工具:
// aL: GameDataParser — 协议缓冲区解析器 (encode/decode/parse)
// aW: hash — 数据哈希
// H: readToken — 从 buffer 读取 token
// aX: parseServerList — 从 bin 解析服务器列表
```

---

## 8. 实现优先级

| 功能 | 优先级 | 说明 |
|------|--------|------|
| url.vue 表单验证 | P0 | 简单，提升用户体验 |
| manual.vue 表单验证 | P0 | 简单，提升用户体验 |
| bin.vue ServerRoleList | P1 | 核心功能，需要解析器 |
| bin.vue storeArrayBuffer | P1 | 依赖 IndexedDB |
| bin.vue 命名模板 | P1 | 独立功能，易实现 |
| bin.vue 下载功能 | P2 | 独立功能 |
| wxqrcode.vue 完整流程 | P2 | 复杂度高，依赖代理服务 |
| singlebin.vue | P2 | 简化版 bin 上传 |

---

## 近期修复与变更（2026-06-06）

### BIN导入名字显示修复
- 问题：BIN多角色获取上传文件后，角色名字无法正确显示
- 原因：服务器返回的角色数据中，部分角色使用`nickname`字段而非`name`
- 修复：ServerRoleList.vue和bin.vue中，将`name`获取逻辑改为`name || nickname || fallback`
  - ServerRoleList.vue：搜索筛选、表格渲染、卡片标题均添加nickname回退
  - bin.vue：addSelectedRole中`roleInfo.name || roleInfo.nickname || 角色_${roleId}`
  - bin.vue：handleDownload中文件名构造`roleInfo.name || roleInfo.nickname`

### singlebin server字段格式修复
- 问题：server字段拼接为`roleMeta.server + "" + roleMeta.roleIndex`，结果如"10"而非"1服"
- 修复：改为`roleMeta.server ? roleMeta.server + "服" : ""`

### BIN数据缺失错误提示
- 问题：刷新Token时如果IndexedDB中找不到BIN数据，静默跳过
- 修复：添加明确错误提示"无法在本地存储中找到Token的BIN数据，请重新导入"

### TokenImport/index.vue computed导入缺失
- 问题：使用了computed但未导入
- 修复：添加computed到import语句

### startTaskManagement路由修复
- 问题：跳转到/admin/dashboard（控制台）
- APK行为：跳转到/admin/game-features（游戏功能）
- 修复：改为跳转到/admin/game-features