# DefaultLayout 默认布局翻译

> 源文件: `DefaultLayout-Tp6s9igZ.js` (473行)
> 翻译时间: 2026-06-03
> 翻译方法: minified变量名 → 可读名 + 中文注释

---

## 1. 内联SVG图标组件

### 1.1 ChatbubbleEllipsesSharp — 聊天气泡图标

**组件名**: `ChatbubbleEllipsesSharp`
**行号范围**: 29-49
**功能描述**: 聊天气泡图标，用于"消息测试"导航项

```javascript
// 行 29-49
const R = { xmlns: "...", viewBox: "0 0 512 512" },
  j = createElement("path", { d: "M475.22 206.52c-10.34-48.65...", fill: "currentColor" }, null, -1),
  q = [j];

const ChatbubbleEllipsesSharp = defineComponent({ // M = c({...})
  name: "ChatbubbleEllipsesSharp",
  render: function (ctx, cache) {
    return (openBlock(), createElementBlock("svg", R, q));
  },
});
```

### 1.2 Layers — 图层图标

**组件名**: `Layers`
**行号范围**: 50-88
**功能描述**: 图层/堆叠图标，用于"批量日常"导航项

```javascript
// 行 50-88
const F = { xmlns: "...", viewBox: "0 0 512 512" },
  G = createElement("path", { d: "M256 256c-13.47...", fill: "currentColor" }, null, -1),  // 顶层
  Q = createElement("path", { d: "M441.36 226.81...", fill: "currentColor" }, null, -1),   // 中层
  ss = createElement("path", { d: "M441.36 330.8...", fill: "currentColor" }, null, -1),   // 底层
  ts = [G, Q, ss];

const Layers = defineComponent({                 // L = c({...})
  name: "Layers",
  render: function (ctx, cache) {
    return (openBlock(), createElementBlock("svg", F, ts));
  },
});
```

### 1.3 LockOpen — 开锁图标

**组件名**: `LockOpen`
**行号范围**: 89-109
**功能描述**: 开锁图标，用于"实时盐场"导航项（需要权限判断）

```javascript
// 行 89-109
const ns = { xmlns: "...", viewBox: "0 0 512 512" },
  es = createElement("path", { d: "M368 192H192v-80a64...", fill: "currentColor" }, null, -1),
  ls = [es];

const LockOpen = defineComponent({               // z = c({...})
  name: "LockOpen",
  render: function (ctx, cache) {
    return (openBlock(), createElementBlock("svg", ns, ls));
  },
});
```

---

## 2. DefaultLayout 默认布局组件

**组件名**: `DefaultLayout`
**行号范围**: 110-472
**功能描述**: 系统主布局，包含顶部导航栏、移动端抽屉菜单、主内容区（router-view）

### 2.1 模板静态结构定义

```javascript
// 行 110-119
const as = { class: "default-layout" },          // 布局容器
  os = { class: "dashboard-nav" },               // 导航栏
  is = { class: "nav-container" },               // 导航容器
  rs = { class: "nav-brand" },                   // 品牌区
  us = { class: "nav-menu" },                    // 导航菜单
  ds = { class: "nav-user" },                    // 用户区
  ms = { class: "user-info" },                   // 用户信息
  vs = { class: "username" },                    // 用户名
  fs = { class: "drawer-menu" },                 // 抽屉菜单
  ps = { class: "main" };                        // 主内容区
```

### 2.2 setup — 核心状态与操作

```javascript
// 行 120-146
setup(props) {
  const tokenManager = useTokenManager(),         // H() — Token管理Store
    router = useRouter(),                         // U() — 路由实例
    message = useMessage(),                       // P() — 消息提示
    dialog = useDialog(),                         // W() — 对话框
    drawerOpen = ref(false),                      // I(!1) — 抽屉菜单开关

    // 用户下拉菜单选项
    userDropdownOptions = [{ label: "清除所有Token并退出", key: "logout" }],

    // 用户下拉菜单操作
    handleUserAction = async (key) => {           // D = async (_) => ...
      switch (key) {
        case "logout":
          dialog.warning({
            title: "确认清除所有Token",
            content: "此操作将清除所有Token数据并断开所有连接，此操作不可恢复！是否继续？",
            positiveText: "确定清除",
            negativeText: "取消",
            onPositiveClick: async () => {        // 确认清除回调
              await tokenManager.clearAllTokens(); // 清除所有Token
              message.success("已清除所有Token");
              router.push("/tokens");             // 跳转到Token管理页
            },
          });
          break;
      }
    };
```

### 2.3 渲染逻辑概览

```javascript
// 行 147-469 — render函数
// 页面结构：
//
// div.default-layout
//   nav.dashboard-nav
//     div.nav-container
//       div.nav-brand
//         img.brand-logo（XYZW Logo）
//         div.brand-toggle（点击打开抽屉）
//           n-icon > Menu图标
//           span.brand-text "XYZW 控制台"
//
//       div.nav-menu（桌面端导航）
//         router-link[/admin/dashboard] "首页"（Home图标）
//         router-link[/admin/game-features] "游戏功能"（Cube图标）
//         router-link[/tokens] "Token管理"（PersonCircle图标）
//         router-link[/admin/batch-daily-tasks] "批量日常"（Layers图标）
//         router-link[/admin/message-test] "消息测试"（Chatbubble图标）
//         [条件] router-link[/admin/legion-war] "实时盐场"（LockOpen图标）
//           — 仅当 isLegionWarEnabled() 为true时显示
//
//       div.nav-user
//         ThemeToggle（主题切换组件）
//         n-dropdown[options=logout]
//           div.user-info
//             n-avatar[src=用户头像, fallback=/icons/xiaoyugan.png]
//             span.username（用户名 或 "未选择Token"）
//             n-icon > ChevronDown图标
//
//   n-drawer[placement=left, width=260px]（移动端抽屉）
//     div.drawer-menu
//       router-link[/admin/dashboard] "首页"
//       router-link[/admin/game-features] "游戏功能"
//       router-link[/tokens] "Token管理"
//       router-link[/admin/daily-tasks] "任务管理"
//       router-link[/admin/batch-daily-tasks] "批量日常"
//       router-link[/admin/message-test] "消息测试"
//       [条件] router-link[/admin/legion-war] "实时盐场"
//       router-link[/admin/profile] "个人设置"
//
//   div.main
//     router-view（主内容区）
```

### 功能说明

DefaultLayout 是系统主布局组件，提供统一的导航和内容框架：

- **顶部导航栏**: 品牌Logo + "XYZW 控制台" + 6个导航项 + 主题切换 + 用户下拉
- **6个导航项**: 首页/游戏功能/Token管理/批量日常/消息测试/实时盐场（条件显示）
- **实时盐场权限**: 通过 `isLegionWarEnabled()` 判断是否显示，桌面端和抽屉端均受控
- **用户下拉菜单**: 显示用户头像+名称，下拉选项"清除所有Token并退出"（带确认对话框）
- **主题切换**: 内嵌 ThemeToggle 组件
- **移动端适配**: 品牌区点击打开左侧抽屉菜单，抽屉包含7个导航项
- **Token清除**: 清除所有Token后跳转到 /tokens 页面
- **头像容错**: 用户头像加载失败时使用 /icons/xiaoyugan.png 作为fallback
- **未选择Token**: 用户名显示"未选择Token"提示

---

## 附录: 导航项与图标映射

| 导航项 | 路由 | 图标组件 | 桌面端 | 抽屉端 |
|--------|------|----------|--------|--------|
| 首页 | /admin/dashboard | Home (b) | ✓ | ✓ |
| 游戏功能 | /admin/game-features | Cube ($) | ✓ | ✓ |
| Token管理 | /tokens | PersonCircle (y) | ✓ | ✓ |
| 批量日常 | /admin/batch-daily-tasks | Layers (L) | ✓ | ✓ |
| 消息测试 | /admin/message-test | Chatbubble (M) | ✓ | ✓ |
| 实时盐场 | /admin/legion-war | LockOpen (z) | 条件 | 条件 |
| 任务管理 | /admin/daily-tasks | Settings (T) | ✗ | ✓ |
| 个人设置 | /admin/profile | Settings (T) | ✗ | ✓ |
