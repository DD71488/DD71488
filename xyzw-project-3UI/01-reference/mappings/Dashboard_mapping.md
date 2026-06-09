# Dashboard 模块 minified→源码 变量名映射表

> 源码文件: Dashboard.vue
> 目标文件: `/workspace/TRAE 使用/GLM仅修复修正/01-reference/formatted-js/Dashboard-ZPAq4rZQ.js`

---

## 一、导入映射

### Vue / 框架核心

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `C` | `defineComponent` | import | 行1 `k as C` | Vue defineComponent |
| `n` | `openBlock` | import | 行3 `h as n` | Vue 模板编译 |
| `i` | `createElementBlock` | import | 行2 `c as i` | Vue 模板编译 |
| `e` | `createElementVNode` | import | 行4 `a as e` | Vue 创建元素虚拟节点 |
| `y` | `computed` | import | 行8 `p as y` | Vue computed 计算属性 |
| `T` | `ref` | import | 行9 `r as T` | Vue ref 响应式引用 |
| `D` | `onMounted` | import | 行10 `o as D` | Vue onMounted 生命周期 |
| `c` | `toDisplayString` | import | 行12 `t as c` | Vue 显示字符串 |
| `k` | `unref` | import | 行13 `u as k` | Vue unref 解包引用 |
| `p` | `createVNode` | import | 行14 `b as p` | Vue 创建组件 VNode |
| `_` | `withCtx` | import | 行15 `w as _` | Vue 上下文 |
| `B` | `resolveComponent` | import | 行16 `d as B` | Vue 解析组件 |
| `$` | `Fragment` | import | 行17 `F as $` | Vue Fragment |
| `z` | `renderList` | import | 行18 `g as z` | Vue 列表渲染 |
| `h` | `createTextVNode` | import | 行19 `i as h` | Vue 文本节点 |
| `A` | `resolveDynamicComponent` | import | 行20 `e as A` | Vue 动态组件 |
| `M` | `markRaw` | import | 行21 `j as M` | Vue markRaw 标记原始对象 |
| `N` | `_exportHelper` | import | 行23 | Vue SFC 导出辅助 |

### Store / Composable

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `S` | `useRouter` | import | 行11 `f as S` | Vue Router 路由实例 |
| `v` | `useMessage` | import | 行5 `s as v` | Naive UI 消息提示 |
| `x` | `useTokenStore` | import | 行6 `x` | Token 管理 Store |

### 图标组件

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `V` | `CubeIcon` | import | 行24 `C as V` | Cube 图标（游戏功能），来自 `Cube-vacFy8Vs.js` |
| `q` | `AddIcon` | import | 行25 `A as q` | Add 图标（添加Token），来自 `Add-DAhPk3tV.js` |
| `F` | `CheckmarkCircleIcon` | import | 行26 `C as F` | CheckmarkCircle 图标（批量任务），来自 `CheckmarkCircle-CZVk2KyH.js` |
| `E` | `CloudIcon` | 变量 | 行42-47 | Cloud 图标（WebSocket测试），内联定义 |

---

## 二、Cloud 图标组件映射

> 内联定义的 SVG 图标组件

### 静态数据

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `L` | `svgAttrs` | const | 行27-31 | SVG 根元素属性 `{xmlns, xmlns:xlink, viewBox}` |
| `W` | `cloudPath` | const | 行32-40 | 云朵 path 元素，Ionicons Cloud 图标路径 |
| `j` | `cloudChildren` | const | 行41 | path 子节点数组 `[W]` |

### 组件定义

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `E` | `CloudIcon` | component | 行42-47 | `defineComponent({name:"Cloud", render()})` |

---

## 三、Dashboard 组件映射 (组件名 `Z`)

> 源码 `<script setup>` 中的变量 → minified setup(b) 中的局部变量

### Store 实例

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `t` | `router` | const | 行63 `S()` | `useRouter()` 返回值 |
| `d` | `message` | const | 行64 `v()` | `useMessage()` 返回值 |
| `r` | `tokenStore` | const | 行65 `x()` | `useTokenStore()` 返回值 |

### 响应式数据

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `f` | `currentDate` | computed | 行66-73 | 当前日期中文长格式，`toLocaleDateString("zh-CN", {year:"numeric", month:"long", day:"numeric", weekday:"long"})` |
| `g` | `quickActions` | ref | 行74-103 | 快速操作列表，4个操作项 `{id, icon, title, description, action}` |

### 方法

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `l` | `navigateToTokens` | function | 行104-111 | 导航到Token管理页，`t.push("/tokens")`，含错误捕获 |
| `w` | `handleQuickAction` | function | 行112-133 | 快速操作路由分发，switch(action) 跳转不同页面 |

### quickActions 数据结构

| id | icon | title | description | action | 路由 |
|---|---|---|---|---|---|
| 1 | `V` (Cube) | "游戏功能" | "访问所有游戏功能模块" | `"game-features"` | `/admin/game-features` |
| 2 | `q` (Add) | "添加Token" | "快速添加新的游戏Token" | `"add-token"` | `/tokens` |
| 3 | `F` (CheckmarkCircle) | "批量任务" | "批量执行任务" | `"batch-daily-tasks"` | `/admin/batch-daily-tasks` |
| 4 | `E` (Cloud) | "WebSocket测试" | "测试WebSocket连接和游戏命令" | `"websocket-test"` | `/websocket-test` |

### handleQuickAction 路由映射

| action 值 | 路由路径 | 说明 |
|---|---|---|
| `"game-features"` | `/admin/game-features` | 游戏功能页 |
| `"add-token"` | 调用 `navigateToTokens()` → `/tokens` | Token管理页 |
| `"execute-tasks"` | `/admin/game-features` | 执行任务（当前未使用，与game-features同路径） |
| `"websocket-test"` | `/websocket-test` | WebSocket测试页 |
| `"open-settings"` | `/admin/profile` | 设置页（当前未使用） |
| `"batch-daily-tasks"` | `/admin/batch-daily-tasks` | 批量每日任务页 |

### 生命周期

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `D(async () => {...})` | `onMounted(async () => {...})` | lifecycle | 行135-141 | 检查 `r.hasTokens`，无Token时重定向 `/tokens`；否则调用 `r.initTokenStore()` |

### 模板静态节点

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `H` | `.dashboard-page` | static | 行48 | 页面根容器 div |
| `I` | `.dashboard-main` | static | 行49 | 主内容区 main |
| `Q` | `.main-container` | static | 行50 | 内容容器 div |
| `R` | `.welcome-section` | static | 行51 | 欢迎区域 section |
| `G` | `.welcome-content` | static | 行52 | 欢迎内容 div |
| `J` | `.welcome-text` | static | 行53 | 欢迎文字区 div |
| `K` | `.welcome-actions` | static | 行54 | 欢迎操作按钮区 div |
| `O` | `.quick-actions-section` | static | 行55 | 快速操作区域 section |
| `P` | `.actions-grid` | static | 行56 | 操作卡片网格 div |
| `U` | `["onClick"]` | const | 行57 | 动态绑定属性列表 |
| `X` | `.action-icon` | static | 行58 | 操作图标容器 div |
| `Y` | `.action-content` | static | 行59 | 操作内容容器 div |

### 渲染函数中的组件引用

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `u` (render) | `NButton` | component | 行144 `B("n-button")` | Naive UI Button 按钮 |

### 导出

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `Z` | `Dashboard` (组件对象) | 变量 | 行60-249 | Dashboard 组件定义对象 |
| `ce` | `Dashboard` (导出) | 变量 | 行250 | `N(Z, [["__scopeId", "data-v-01286b0c"]])`，带 scoped style 的导出 |
