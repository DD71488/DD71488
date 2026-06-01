# Profile 模块核心变更翻译

> 源文件: `/workspace/xyzw-project/01-reference/formatted-js/Profile-CnTTXBgA.js`
> 参考标注: `Profile_annotations.md` / `Profile_mapping.md`

---

## 一、[新增] TokenManager 内联组件

> 行号范围: 2117-2898
> 组件名: `kn`（定义）/ `wn`（导出）
> 源码中 `<TokenManager />` 为独立组件引用，目标中内联定义完整 TokenManager 组件

### 1.1 组件入口与 Store 初始化

**行号**: 2117-2124

```javascript
// TokenManager 组件定义
const TokenManager = {
  __name: "TokenManager",
  setup(props) {
    const message = useMessage();           // t = rt()
    const dialog = useDialog();             // n = lt()
    const localTokenManager = useLocalTokenManager(); // o = wt()
    const gameRoles = useGameRoles();       // s = jt()
    const loading = ref(false);             // a = ge(!1)
```

**功能说明**: TokenManager 组件从外部引用变为内联定义。setup 函数中初始化了消息提示、对话框、Token管理Store和游戏角色Store，以及加载状态标志。

---

### 1.2 maskToken — Token 脱敏显示

**行号**: 2125-2129

```javascript
const maskToken = (token) => {       // f = (u) =>
  if (!token) return "";
  const len = token.length;          // r = u.length
  return len <= 8
    ? token
    : token.substring(0, 8) + "***" + token.substring(len - 8);
};
```

**功能说明**: 对 Token 进行脱敏处理。长度不超过8时原样返回，否则保留前8位和后8位，中间用 `***` 替代。用于界面展示时保护敏感信息。

---

### 1.3 formatDate — 日期格式化

**行号**: 2130

```javascript
const formatDate = (dateStr) => new Date(dateStr).toLocaleString("zh-CN");  // h = (u) =>
```

**功能说明**: 将 ISO 日期字符串转换为中文本地化格式显示。

---

### 1.4 getWebSocketStatus — 获取 WebSocket 状态

**行号**: 2131

```javascript
const getWebSocketStatus = (roleKey) => localTokenManager.getWebSocketStatus(roleKey);  // j = (u) =>
```

**功能说明**: 代理调用 Store 方法，获取指定角色的 WebSocket 连接状态。

---

### 1.5 getStatusType — 状态→标签类型映射

**行号**: 2132-2143

```javascript
const getStatusType = (status) => {  // x = (u) =>
  switch (status) {
    case "connected":  return "success";   // 已连接 → 绿色成功标签
    case "error":      return "error";     // 连接错误 → 红色错误标签
    case "connecting": return "warning";   // 连接中 → 黄色警告标签
    default:           return "default";   // 未连接 → 默认灰色标签
  }
};
```

**功能说明**: 将 WebSocket 连接状态映射为 Naive UI Tag 组件的 type 属性，用于界面颜色区分。

---

### 1.6 getStatusText — 状态→中文文本

**行号**: 2144-2155

```javascript
const getStatusText = (status) => {  // N = (u) =>
  switch (status) {
    case "connected":  return "已连接";
    case "error":      return "连接错误";
    case "connecting": return "连接中";
    default:           return "未连接";
  }
};
```

**功能说明**: 将 WebSocket 连接状态转换为用户可读的中文文本。

---

### 1.7 getStatusIcon — 状态→图标组件

**行号**: 2156-2167

```javascript
const getStatusIcon = (status) => {  // X = (u) =>
  switch (status) {
    case "connected":  return Wifi;          // oo — WiFi 实心图标
    case "error":      return AlertCircle;   // Ht — 警告圆圈图标
    case "connecting": return Time;          // $t — 时间图标
    default:           return WifiOutline;   // uo — WiFi 空心图标
  }
};
```

**功能说明**: 将 WebSocket 连接状态映射为对应的图标组件，用于连接状态按钮的图标展示。

---

### 1.8 getImportMethodLabel — 导入方式→中文

**行号**: 2168-2179

```javascript
const getImportMethodLabel = (method) => {  // _ = (u) =>
  switch (method) {
    case "url":      return "URL导入";
    case "bin":      return "Bin导入";
    case "wxQrcode": return "微信二维码";
    default:         return "手动导入";
  }
};
```

**功能说明**: 将 Token 导入方式的英文标识转换为中文标签，用于角色元信息区域展示。

---

### 1.9 addToken — 添加 Token 提示

**行号**: 2180-2182

```javascript
const addToken = () => {  // O = () =>
  message.info("请使用页面顶部的Token导入功能添加新Token");
};
```

**功能说明**: 点击"添加Token"按钮时弹出提示，引导用户使用顶部的导入功能。

---

### 1.10 getTokenMenuOptions — 生成 Token 操作菜单

**行号**: 2183-2217

```javascript
const getTokenMenuOptions = (tokenData) => {  // q = (u) =>
  const options = [
    {
      label: "编辑",
      key: "edit",
      icon: () => h(NIcon, null, { default: () => h(Edit) }),        // He
    },
    {
      label: "复制Token",
      key: "copy",
      icon: () => h(NIcon, null, { default: () => h(CopyOutline) }), // Zt
    },
  ];

  // 如果是 URL 导入且有源地址，在顶部插入"从URL刷新"选项
  // 否则插入普通"刷新Token"选项
  if (tokenData.importMethod === "url" && tokenData.sourceUrl) {
    options.unshift({
      label: "从URL刷新",
      key: "refresh-url",
      icon: () => h(NIcon, null, { default: () => h(Sync) }),        // _t
    });
  } else {
    options.unshift({
      label: "刷新Token",
      key: "refresh",
      icon: () => h(NIcon, null, { default: () => h(Refresh) }),     // Be
    });
  }

  // 底部分隔线 + 删除选项
  options.push(
    { type: "divider" },
    {
      label: "删除",
      key: "delete",
      icon: () => h(NIcon, null, { default: () => h(Trash) }),       // Ct
    },
  );

  return options;
};
```

**功能说明**: 根据Token数据动态生成操作菜单。URL导入的Token会额外显示"从URL刷新"选项，其他Token显示普通"刷新Token"选项。菜单包含编辑、复制、刷新/从URL刷新、删除操作。

---

### 1.11 handleMenuSelect — 菜单选择处理

**行号**: 2219-2237

```javascript
const handleMenuSelect = (menuKey, roleKey, tokenData) => {  // W = (u, r, b) =>
  switch (menuKey) {
    case "edit":         editToken();                     // H()
    case "copy":         copyToken(tokenData.token);      // Y(b.token)
    case "refresh":      refreshGameToken(roleKey);        // S(r)
    case "refresh-url":  refreshFromUrl(roleKey, tokenData); // B(r, b)
    case "delete":       removeGameToken(roleKey);         // $(r)
  }
};
```

**功能说明**: 下拉菜单选项的事件分发器，根据用户选择的菜单项调用对应的操作函数。

---

### 1.12 refreshTokenManager — 刷新 Token 管理器

**行号**: 2238-2240

```javascript
const refreshTokenManager = () => {  // F = () =>
  localTokenManager.initTokenManager();
  message.success("Token数据已刷新");
};
```

**功能说明**: 重新初始化 Token 管理器并提示刷新成功。

---

### 1.13 clearUserToken — 清除用户 Token

**行号**: 2241-2251

```javascript
const clearUserToken = () => {  // m = () =>
  dialog.warning({
    title: "清除用户Token",
    content: "确定要清除用户认证Token吗？这将会退出登录。",
    positiveText: "确定",
    negativeText: "取消",
    onPositiveClick: () => {
      localTokenManager.clearUserToken();
      message.success("用户Token已清除");
    },
  });
};
```

**功能说明**: 弹出确认对话框，用户确认后清除认证Token（会导致退出登录）。

---

### 1.14 toggleWebSocket — 切换 WebSocket 连接

**行号**: 2252-2262

```javascript
const toggleWebSocket = (roleKey, tokenData) => {  // l = (u, r) =>
  if (getWebSocketStatus(roleKey) === "connected") {
    // 已连接 → 断开
    localTokenManager.closeWebSocketConnection(roleKey);
    message.info("WebSocket连接已断开");
  } else {
    // 未连接 → 建立
    try {
      localTokenManager.createWebSocketConnection(
        roleKey,
        tokenData.token,
        tokenData.wsUrl
      );
      message.success("正在建立WebSocket连接...");
    } catch {
      message.error("建立WebSocket连接失败");
    }
  }
};
```

**功能说明**: 切换指定角色的 WebSocket 连接状态。已连接则断开，未连接则尝试建立新连接。

---

### 1.15 refreshGameToken — 从源地址重新获取 Token

**行号**: 2263-2326

```javascript
const refreshGameToken = (roleKey) => {  // S = (u) =>
  const tokenData = localTokenManager.getGameToken(roleKey);
  if (!tokenData) {
    message.error("找不到对应的Token数据");
    return;
  }
  if (!tokenData.sourceUrl) {
    message.warning("该Token没有配置源地址，无法重新生成。请手动重新导入Token。");
    return;
  }

  dialog.info({
    title: "重新获取Token",
    content: "确定要从源地址重新获取此角色的Token吗？",
    positiveText: "确定",
    negativeText: "取消",
    onPositiveClick: async () => {
      try {
        const loadingMsg = message.loading("正在重新获取Token...", { duration: 0 });
        let response;

        const sourceUrl = tokenData.sourceUrl;
        // 判断是否为同源请求或本地开发地址
        if (
          sourceUrl.startsWith(window.location.origin) ||
          sourceUrl.startsWith("/") ||
          sourceUrl.startsWith("http://localhost") ||
          sourceUrl.startsWith("http://127.0.0.1")
        ) {
          // 同源/本地 → 直接请求
          response = await fetch(sourceUrl);
        } else {
          // 跨域 → 尝试 CORS 请求
          try {
            response = await fetch(sourceUrl, {
              method: "GET",
              headers: { Accept: "application/json" },
              mode: "cors",
            });
          } catch (corsError) {
            throw new Error(
              `跨域请求被阻止。请确保目标服务器支持CORS。错误详情: ${corsError.message}`
            );
          }
        }

        if (!response.ok) {
          throw new Error(`请求失败: ${response.status} ${response.statusText}`);
        }

        const data = await response.json();
        if (!data.token) throw new Error("返回数据中未找到token字段");

        // 更新 Token 数据（含多服务器字段）
        localTokenManager.updateGameToken(roleKey, {
          token: data.token,
          server: data.server || tokenData.server,   // 保留或更新服务器标识
          regeneratedAt: new Date().toISOString(),
          lastRefreshed: new Date().toISOString(),
        });

        // 如果 WebSocket 当前已连接，先断开再重连
        if (localTokenManager.getWebSocketStatus(roleKey) === "connected") {
          localTokenManager.closeWebSocketConnection(roleKey);
          setTimeout(() => {
            localTokenManager.createWebSocketConnection(
              roleKey,
              data.token,
              tokenData.wsUrl
            );
          }, 500);
        }

        loadingMsg.destroy();
        message.success("Token已成功重新获取");
      } catch (error) {
        console.error("重新获取Token失败:", error);
        message.error(error.message || "Token重新获取失败");
      }
    },
  });
};
```

**功能说明**: 从源地址重新获取 Token 的核心逻辑。包含：
- **CORS 处理**: 同源/本地地址直接请求，跨域地址尝试 CORS 模式请求，失败时给出明确错误提示
- **多服务器支持**: 更新 Token 时保留或更新 `server` 字段
- **WebSocket 重连**: Token 刷新后若当前已连接，自动断开并延迟 500ms 重连
- **加载状态**: 使用 loading 消息提示用户操作进行中

---

### 1.16 removeGameToken — 删除游戏 Token

**行号**: 2328-2339

```javascript
const removeGameToken = (roleKey) => {  // $ = (u) =>
  dialog.warning({
    title: "删除Token",
    content: "确定要删除此角色的游戏Token吗？这将断开相关的WebSocket连接。",
    positiveText: "确定删除",
    negativeText: "取消",
    onPositiveClick: () => {
      localTokenManager.removeGameToken(roleKey);
      message.success("Token已删除");
    },
  });
};
```

**功能说明**: 弹出确认对话框，确认后删除指定角色的游戏 Token 并断开相关 WebSocket 连接。

---

### 1.17 editToken — 编辑 Token（开发中）

**行号**: 2340-2342

```javascript
const editToken = (roleKey, tokenData) => {  // H = (u, r) =>
  message.info("编辑功能正在开发中");
};
```

**功能说明**: 编辑 Token 功能占位，当前仅显示开发中提示。

---

### 1.18 copyToken — 复制 Token 到剪贴板

**行号**: 2343-2356

```javascript
const copyToken = async (token) => {  // Y = async (u) =>
  try {
    // 优先使用 Clipboard API
    await navigator.clipboard.writeText(token);
    message.success("Token已复制到剪贴板");
  } catch {
    // 降级方案：创建临时 textarea 元素
    const textarea = document.createElement("textarea");
    textarea.value = token;
    document.body.appendChild(textarea);
    textarea.select();
    document.execCommand("copy");
    document.body.removeChild(textarea);
    message.success("Token已复制到剪贴板");
  }
};
```

**功能说明**: 复制 Token 到剪贴板。优先使用现代 `navigator.clipboard` API，失败时降级为 `document.execCommand("copy")` 方案，确保兼容性。

---

### 1.19 refreshFromUrl — 从 URL 刷新 Token（含代理）

**行号**: 2357-2397

```javascript
const refreshFromUrl = async (roleKey, tokenData) => {  // B = async (u, r) =>
  if (!tokenData.sourceUrl) {
    message.warning("该Token没有配置源URL");
    return;
  }

  dialog.info({
    title: "从URL刷新Token",
    content: `确定要从源URL重新获取Token吗？\n源地址：${tokenData.sourceUrl}`,
    positiveText: "确定",
    negativeText: "取消",
    onPositiveClick: async () => {
      try {
        const loadingMsg = message.loading("正在从URL获取新Token...", { duration: 0 });
        let response;

        // 同源/本地 → 直接请求
        if (
          tokenData.sourceUrl.startsWith(window.location.origin) ||
          tokenData.sourceUrl.startsWith("/") ||
          tokenData.sourceUrl.startsWith("http://localhost") ||
          tokenData.sourceUrl.startsWith("http://127.0.0.1")
        ) {
          response = await fetch(tokenData.sourceUrl);
        } else {
          // 跨域 → 使用后端代理 /api/proxy?url= 处理
          const proxyUrl = `/api/proxy?url=${encodeURIComponent(tokenData.sourceUrl)}`;
          response = await fetch(proxyUrl);
        }

        if (!response.ok) {
          throw new Error(`HTTP ${response.status}: ${response.statusText}`);
        }

        const data = await response.json();
        if (!data.token) throw new Error("返回数据中未找到token字段");

        localTokenManager.updateGameToken(roleKey, {
          token: data.token,
          lastUsed: new Date().toISOString(),
        });

        loadingMsg.destroy();
        message.success("Token刷新成功");
      } catch (error) {
        console.error("URL刷新Token失败:", error);
        message.error("刷新失败: " + error.message);
      }
    },
  });
};
```

**功能说明**: 与 `refreshGameToken` 类似，但专门用于菜单中的"从URL刷新"操作。关键区别：
- **跨域处理方式不同**: `refreshGameToken` 尝试 CORS 直连，失败报错；`refreshFromUrl` 使用后端代理 `/api/proxy?url=` 绕过跨域限制
- **更新字段更少**: 仅更新 `token` 和 `lastUsed`，不涉及 `server`/`regeneratedAt`/`lastRefreshed` 和 WebSocket 重连

---

### 1.20 exportTokens — 导出 Token 为 JSON 文件

**行号**: 2399-2412

```javascript
const exportTokens = () => {  // z = () =>
  try {
    const tokensData = localTokenManager.exportTokens();       // u = o.exportTokens()
    const jsonStr = JSON.stringify(tokensData, null, 2);      // r
    const blob = new Blob([jsonStr], { type: "application/json" }); // b
    const link = document.createElement("a");                  // w

    link.href = URL.createObjectURL(blob);
    link.download = `tokens_backup_${new Date().toISOString().split("T")[0]}.json`;
    link.click();

    message.success("Token数据已导出");
  } catch (error) {
    message.error("导出失败: " + error.message);
  }
};
```

**功能说明**: 将所有 Token 数据导出为 JSON 文件下载。文件名格式为 `tokens_backup_YYYY-MM-DD.json`，使用 Blob + 虚拟链接实现浏览器端下载。

---

### 1.21 importTokens — 从 JSON 文件导入 Token

**行号**: 2413-2427

```javascript
const importTokens = ({ file }) => {  // P = ({ file: u }) =>
  const reader = new FileReader();
  reader.onload = (event) => {
    try {
      const data = JSON.parse(event.target.result);  // w
      const result = localTokenManager.importTokens(data);  // C = o.importTokens(w)
      if (result.success) {
        message.success(result.message);
        gameRoles.fetchGameRoles();  // 导入成功后刷新游戏角色列表
      } else {
        message.error(result.message);
      }
    } catch {
      message.error("导入失败：文件格式错误");
    }
  };
  reader.readAsText(file.file);
};
```

**功能说明**: 从用户上传的 JSON 文件中读取并导入 Token 数据。导入成功后会自动刷新游戏角色列表，确保界面数据同步。

---

### 1.22 cleanExpired — 清理过期 Token

**行号**: 2428-2439

```javascript
const cleanExpired = () => {  // M = () =>
  dialog.info({
    title: "清理过期Token",
    content: "确定要清理超过24小时未使用的Token吗？",
    positiveText: "确定",
    negativeText: "取消",
    onPositiveClick: () => {
      const count = localTokenManager.cleanExpiredTokens();
      message.success(`已清理 ${count} 个过期Token`);
    },
  });
};
```

**功能说明**: 弹出确认对话框，确认后清理超过 24 小时未使用的过期 Token，并显示清理数量。

---

### 1.23 clearAllTokens — 清除所有游戏 Token

**行号**: 2440-2451

```javascript
const clearAllTokens = () => {  // K = () =>
  dialog.error({
    title: "清除所有Token",
    content: "确定要清除所有游戏Token吗？这将断开所有WebSocket连接。此操作不可恢复！",
    positiveText: "确定清除",
    negativeText: "取消",
    onPositiveClick: () => {
      localTokenManager.clearAllGameTokens();
      message.success("所有游戏Token已清除");
    },
  });
};
```

**功能说明**: 使用 `dialog.error`（红色警告样式）弹出确认框，确认后清除所有游戏 Token 并断开所有 WebSocket 连接。此操作不可恢复。

---

### 1.24 多服务器配置 — 渲染逻辑

**行号**: 2667-2681

```javascript
// 在游戏 Token 列表渲染中，角色名旁显示服务器标签
h("span", { class: "role-name" }, toDisplayString(tokenData.roleName), 1),
h(
  NTag,                           // C = G("n-tag")
  {
    size: "small",
    type: "default",
    class: "server-tag",          // 服务器标签样式
  },
  {
    default: withCtx(() => [
      createTextVNode(toDisplayString(tokenData.server), 1),  // 显示服务器标识
    ]),
  },
  1024,
),
```

**功能说明**: 在每个游戏角色 Token 卡片的标题行中，角色名旁边显示服务器标签（`server-tag`）。这是多服务器配置的展示层实现——每个 Token 记录包含 `server` 字段，标识该 Token 所属的游戏服务器。

---

### 1.25 批量操作 — bulkOptions / handleBulkAction

**行号**: 2844

```javascript
// 渲染区域（actions 插槽）
h(
  NDropdown,                                    // Q = G("n-dropdown")
  {
    options: props.bulkOptions,                 // 批量操作选项列表
    onSelect: props.handleBulkAction,           // 批量操作处理函数
  },
  {
    default: withCtx(() => [
      h(NButton, { type: "primary" }, {
        icon: withCtx(() => [h(NIcon, null, { default: () => h(Menu) })]),
        default: withCtx(() => [createTextVNode(" 批量操作 ", -1)]),
      }),
    ]),
  },
  8,
  ["options", "onSelect"],
)
```

**功能说明**: TokenManager 卡片底部的批量操作下拉菜单。`bulkOptions` 和 `handleBulkAction` 通过组件 props 传入，源码中无对应实现，为目标新增功能。配合"清理过期Token"和"清除所有Token"按钮一起使用。

---

## 二、[修改] Profile 组件核心函数

> 组件名: `En`（定义）/ `Hn`（导出）
> 行号范围: 2906-3458

### 2.1 kt() 初始化调用

**行号**: 2909

```javascript
setup(props) {
  kt();   // 从 index-BUwMeHKm.js 导入的 f as kt，源码中无对应
  // ...
}
```

**功能说明**: Profile setup 开头新增的初始化调用。`kt` 从主入口文件导入（`import { f as kt } from "./index-BUwMeHKm.js"`），可能是 `useI18n()` 或路由守卫初始化，源码中无对应。

---

### 2.2 passwordFormRef — ref_key 增加

**行号**: 2913

```javascript
const passwordFormRef = ref(null);  // s = ge(null)，编译后带 ref_key: "passwordFormRef"
```

**功能说明**: 密码表单 ref，与源码一致，但编译产物中增加了 `ref_key: "passwordFormRef"` 用于开发工具调试。

---

### 2.3 saveProfile — 保存个人信息

**行号**: 2937-2943

```javascript
const saveProfile = async () => {  // N = async () =>
  try {
    message.success("个人信息保存成功");
  } catch {
    message.error("保存失败，请稍后重试");
  }
};
```

**功能说明**: 保存个人信息。逻辑与开源版本基本一致，成功时提示"个人信息保存成功"。

---

### 2.4 changePassword — 修改密码（Arco Form 内置验证）

**行号**: 2944-2952

```javascript
const changePassword = async () => {  // X = async () =>
  if (passwordFormRef.value) {        // s.value — Arco Form 实例
    try {
      await passwordFormRef.value.validate();  // 调用 Arco Form 内置 validate()
      message.success("密码修改成功");
      // 清空密码表单所有字段
      Object.keys(passwordForm).forEach((key) => {
        passwordForm[key] = "";                // f[m] = ""
      });
    } catch {
      // 验证失败，Arco Form 自动显示错误信息
    }
  }
};
```

**功能说明**: **核心修改点**。开源版本使用自定义 `passwordRules` 验证规则对象，目标版本改为 Arco Design Form 内置验证机制：
- **开源版**: 定义 `passwordRules` reactive 对象，包含 `currentPassword.required`、`newPassword` 长度/复杂度规则、`confirmPassword` 一致性规则
- **目标版**: 移除 `passwordRules`，直接调用 `passwordFormRef.value.validate()`，由 Arco Form 的 Schema 验证体系自动处理
- 验证通过后清空密码表单所有字段

---

### 2.5 updateTheme — 更新主题（合并 savePreferences）

**行号**: 2954-2964

```javascript
const updateTheme = (theme) => {  // _ = (m) =>
  // 1. 更新响应式数据
  preferences.theme = theme;      // h.theme = m

  // 2. 持久化到 localStorage（原 savePreferences 功能合并到此）
  localStorage.setItem("theme", m);

  // 3. 应用主题到 DOM
  if (theme === "dark") {
    document.documentElement.setAttribute("data-theme", "dark");
  } else if (theme === "light") {
    document.documentElement.removeAttribute("data-theme");
  } else {
    // auto 模式：跟随系统偏好
    if (window.matchMedia && window.matchMedia("(prefers-color-scheme: dark)").matches) {
      document.documentElement.setAttribute("data-theme", "dark");
    } else {
      document.documentElement.removeAttribute("data-theme");
    }
  }
};
```

**功能说明**: **核心修改点**。开源版本中 `updateTheme` 只更新响应式数据，`savePreferences` 独立负责持久化到 localStorage。目标版本将两者合并：
- **开源版**: `updateTheme` → 更新 `preferences.theme`；`savePreferences` → `localStorage.setItem("userPreferences", JSON.stringify(preferences))`
- **目标版**: `updateTheme` 内直接 `localStorage.setItem("theme", theme)`，同时处理 DOM 主题切换
- 支持 `dark`/`light`/`auto` 三种模式，auto 模式通过 `matchMedia` 检测系统偏好

---

### 2.6 deleteAccount — 删除账户

**行号**: 2975-2986

```javascript
const deleteAccount = () => {  // F = () =>
  dialog.warning({
    title: "删除账户",
    content: "此操作将永久删除您的账户和所有数据，且无法恢复。确定要继续吗？",
    positiveText: "确定删除",
    negativeText: "取消",
    onPositiveClick: () => {
      message.error("账户删除功能暂未开放");
    },
  });
};
```

**功能说明**: 弹出警告确认对话框，确认后提示功能暂未开放。逻辑与开源版本基本一致。

---

### 2.7 onMounted — 组件挂载初始化

**行号**: 2988-2996

```javascript
onMounted(() => {  // Ve(() => {
  // 从 authStore 同步用户信息
  if (authStore.userInfo) {
    Object.assign(userInfo, authStore.userInfo);  // Object.assign(a, o.userInfo)
  }

  // 从 localStorage 恢复用户偏好
  const savedPrefs = localStorage.getItem("userPreferences");  // m
  if (savedPrefs) {
    try {
      Object.assign(preferences, JSON.parse(savedPrefs));  // Object.assign(h, JSON.parse(m))
    } catch (error) {
      console.error("解析用户偏好失败:", error);
    }
  }
});
```

**功能说明**: 组件挂载时从 Store 同步用户信息，并从 localStorage 恢复用户偏好设置。

---

## 三、[删除] 被替代的功能

| 源码函数 | 替代方式 | 说明 |
|---------|---------|------|
| `passwordRules` | Arco Form 内置 `validate()` | 自定义验证规则对象被 Arco Form Schema 验证体系替代 |
| `savePreferences` | 合并到 `updateTheme` 等字段更新函数 | 独立保存偏好函数被各字段更新逻辑内联 |
| `changeAvatar` | 已移除 | 头像更换功能在目标版本中不再提供 |
| `router` | 已移除 | `useRouter()` 未使用，编译时被 tree-shake |

---

## 四、关键架构变更总结

### 4.1 TokenManager 从外部引用变为内联定义

```
开源版:  Profile.vue → import TokenManager → <TokenManager />
目标版:  Profile-CnTTXBgA.js → 内联 kn(TokenManager) 组件定义 → wn(导出)
```

影响：TokenManager 的所有逻辑（约780行）直接嵌入 Profile 组件文件中，不再作为独立模块引用。

### 4.2 验证体系从自定义规则迁移到 Arco Form Schema

```
开源版:  passwordRules (reactive) → 模板 :rules="passwordRules"
目标版:  Arco Form Schema 验证类体系 → passwordFormRef.validate()
```

目标文件中内联了完整的 Arco Form 验证类层次：
- `ValidateBase` → `StringValidator` / `NumberValidator` / `ArrayValidator` / `ObjectValidator` / `BooleanValidator`
- `TypeValidator`（email/url/ip）、`CustomValidator`
- `Schema` 类作为验证入口

### 4.3 偏好持久化从集中式改为分散式

```
开源版:  updateTheme() + savePreferences() → 集中保存所有偏好
目标版:  updateTheme() 内直接 localStorage.setItem("theme", theme) → 各字段独立持久化
```

### 4.4 多服务器配置

每个游戏 Token 记录包含 `server` 字段，在界面中通过 `n-tag` 组件以 `server-tag` 样式展示。`refreshGameToken` 更新 Token 时保留或更新该字段。

### 4.5 跨域请求双策略

| 场景 | refreshGameToken | refreshFromUrl |
|------|-----------------|----------------|
| 同源/本地 | 直接 fetch | 直接 fetch |
| 跨域 | 尝试 CORS 直连，失败报错 | 使用 `/api/proxy?url=` 后端代理 |
