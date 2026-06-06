# Login 模块 minified→源码 变量名映射表

> 源文件: `/workspace/TRAE 使用/GLM仅修复修正/01-reference/formatted-js/Login-C0xhDybQ.js`
> 生成日期: 2026-06-03
> 映射方法: 中文字符串锚点匹配 + 代码结构对比

---

## 一、导入映射

### Vue / 框架核心

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `z` | `useMessage` | import | 行2 `s as z` | Naive UI 消息提示 |
| `F` | `ref` | import | 行3 `r as F` | Vue ref 函数 |
| `$` | `reactive` | import | 行4 `z as $` | Vue reactive 函数 |
| `B` | `onMounted` | import | 行5 `o as B` | Vue onMounted 生命周期 |
| `N` | `useRouter` | import | 行6 `f as N` | Vue Router useRouter |
| `x` | `createElementBlock` | import | 行7 `c as x` | Vue 模板编译 |
| `s` | `createElementVNode` | import | 行8 `a as s` | Vue 创建元素 VNode |
| `Q` | `createStaticVNode` | import | 行9 `l as Q` | Vue 静态节点 |
| `o` | `createVNode` (组件) | import | 行10 `b as o` | Vue 创建组件 VNode |
| `t` | `withCtx` | import | 行11 `w as t` | Vue 上下文 |
| `i` | `resolveComponent` | import | 行18 `i as d` | Vue 解析组件 |
| `l` | `unref` | import | 行13 `u as l` | Vue unref |
| `V` | `Fragment` | import | 行14 `F as V` | Vue Fragment |
| `D` | `renderList` | import | 行15 `g as D` | Vue 列表渲染 |
| `_` | `openBlock` | import | 行16 `h as _` | Vue 模板编译 |
| `U` | `withKeys` | import | 行17 `D as U` | Vue 键盘事件修饰符 |
| `d` | `createTextVNode` | import | 行19 `e as d` | Vue 文本节点 |
| `W` | `resolveDynamicComponent` | import | 行20 `j as W` | Vue 动态组件 |
| `X` | `resolveDirective` | import | 行21 `t as X` | Vue 解析指令 |
| `C` | `toDisplayString` | import | 行22 `t as C` | Vue 显示字符串 |

### Store / Composable

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `Z` | `useAuthStore` | import | 行24 `u as Z` | 认证 Store，来自 `auth-BzVLibGZ.js` |

### 资源 / 辅助

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `Y` | `xiaoyugan` (Logo路径) | import | 行23 `_ as Y` | 品牌Logo图片，来自 `xiaoyugan-Dwisk7G8.js` |
| `A` | `_plugin-vue_export-helper` | import | 行25 `_ as A` | Vue SFC 导出辅助函数 |

### 图标组件

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `m` | `PersonCircle` | import | 行26 `P as m` | 人物圆圈图标（用户名前缀 + 社交登录图标） |
| `K` | `Cube` | import | 行27 `C as K` | 方块图标（任务自动化特性） |
| `P` | `Ribbon` | import | 行28 `R as P` | 缎带图标（数据统计特性） |
| `j` | `Settings` | import | 行29 `S as j` | 设置图标（个性化配置特性） |

---

## 二、Login 组件映射 (组件名 `ne`)

> 源码 `<script setup>` 中的变量 → minified setup(re) 中的局部变量

### Store 实例

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `u` | `router` | const | 行45 `N()` | `useRouter()` 返回值 |
| `f` | `message` | const | 行46 `z()` | `useMessage()` 返回值 |
| `v` | `authStore` | const | 行47 `Z()` | `useAuthStore()` 返回值 |

### 响应式数据

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `g` | `loginFormRef` | ref | 行48 `F(null)` | 登录表单 ref，`ref_key: "loginFormRef"` |
| `r` | `loginForm` | reactive | 行49 `$({username:"", password:"", rememberMe:!1})` | 登录表单数据对象 |

### 常量数据

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `h` | `loginRules` | const | 行50-66 | 表单验证规则（用户名必填/密码必填+最少6位） |
| `L` | `features` | const | 行67-92 | 功能展示列表（4项：多角色管理/任务自动化/数据统计/个性化配置） |

### 方法

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `b` | `handleLogin` | async function | 行93-111 | 登录提交：验证表单 → `v.login()` → 跳转/报错 |
| `w` | `handleSocialLogin` | function | 行112-114 | 社交登录：显示"QQ/微信登录功能开发中..." |

### 生命周期

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `B(() => {...})` | `onMounted` | lifecycle | 行116-118 | 已认证时自动跳转 `/admin/dashboard` |

### 渲染函数中的组件引用

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `p` (render) | `n-icon` | component | 行120 `i("n-icon")` | Naive UI 图标容器 |
| `k` (render) | `n-input` | component | 行121 `i("n-input")` | Naive UI 输入框 |
| `y` (render) | `n-form-item` | component | 行122 `i("n-form-item")` | Naive UI 表单项 |
| `q` (render) | `Lock` | component | 行123 `i("Lock")` | 锁图标（密码前缀） |
| `M` (render) | `n-checkbox` | component | 行124 `i("n-checkbox")` | Naive UI 复选框 |
| `c` (render) | `n-button` | component | 行125 `i("n-button")` | Naive UI 按钮 |
| `R` (render) | `n-form` | component | 行126 `i("n-form")` | Naive UI 表单 |
| `S` (render) | `n-divider` | component | 行127 `i("n-divider")` | Naive UI 分隔线 |

### 模板静态节点

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `E` | `.login-page` | static | 行31 | 页面根容器 div |
| `I` | `.login-container` | static | 行32 | 内容容器 div |
| `T` | `.login-card.glass` | static | 行33 | 登录卡片容器（玻璃质感） |
| `G` | `.card-body` | static | 行34 | 卡片主体区域 |
| `H` | `.form-options` | static | 行35 | 记住我+忘记密码行 |
| `J` | `.social-login` | static | 行36 | 社交登录按钮区 |
| `O` | `.register-prompt` | static | 行37 | 注册引导区 |
| `ee` | `.features-showcase` | static | 行38 | 功能展示区 |
| `se` | `.features-list` | static | 行39 | 功能列表区 |
| `oe` | `.feature-icon` | static | 行40 | 功能图标容器 |
| `te` | `.feature-content` | static | 行41 | 功能内容容器 |

### 静态提升节点 (Hoisted)

| 缓存变量 | 内容 | 位置 | 说明 |
|---|---|---|---|
| `e[15]` | 卡片头部HTML（品牌Logo+标题+欢迎语） | 行133-139 | `Q(...)` 创建静态节点，含 `data-v-f2fda67e` scoped属性 |
| `e[16]` | 展示头部HTML（"为什么选择XYZW？"+副标题） | 行347-356 | `s("div", {class:"showcase-header"}, [...])` |
| `e[17]` | 背景装饰HTML（3个decoration-circle） | 行376-386 | `s("div", {class:"background-decoration"}, [...])` |
| `e[7]` | "记住我"文本 | 行227 | `d(" 记住我 ", -1)` |
| `e[8]` | "忘记密码？"文本 | 行245 | `d(" 忘记密码？ ", -1)` |
| `e[9]` | "登录"文本 | 行263 | `d(" 登录 ", -1)` |
| `e[10]` | "其他登录方式"分隔线文本 | 行278-286 | `s("span", {class:"divider-text"}, "其他登录方式")` |
| `e[11]` | "QQ登录"文本 | 行303 | `d(" QQ登录 ", -1)` |
| `e[12]` | "微信登录"文本 | 行320 | `d(" 微信登录 ", -1)` |
| `e[13]` | "立即注册"文本 | 行339 | `d(" 立即注册 ", -1)` |
| `e[14]` | "还没有账户？"文本 | 行327 | `s("span", null, "还没有账户？")` |

### 导出

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `ne` | `Login` (组件对象) | 变量 | 行42-392 | Login 组件定义对象 |
| `ve` | `Login` (导出) | 变量 | 行393 | `A(ne, [["__scopeId", "data-v-f2fda67e"]])`，带 scoped style 的导出 |

---

## 三、Auth Store 方法调用映射

| minified调用 | 源码对应 | 说明 |
|---|---|---|
| `v.login({username, password, rememberMe})` | `authStore.login({username, password, rememberMe})` | 发起登录请求 |
| `v.isAuthenticated` | `authStore.isAuthenticated` | 是否已认证 |
| `v.isLoading` | `authStore.isLoading` | 登录加载状态 |

---

## 四、路由导航映射

| minified调用 | 源码对应 | 说明 |
|---|---|---|
| `u.push("/admin/dashboard")` | `router.push("/admin/dashboard")` | 登录成功/已认证跳转 |
| `u.push("/forgot-password")` | `router.push("/forgot-password")` | 忘记密码页面 |
| `u.push("/register")` | `router.push("/register")` | 注册页面 |
| `u.currentRoute.value.query.redirect` | `router.currentRoute.value.query.redirect` | 获取重定向地址 |

---

## 五、表单验证规则映射

| 字段 | 规则 | minified位置 | 说明 |
|---|---|---|---|
| `username` | `required: true, message: "请输入用户名或邮箱", trigger: ["input", "blur"]` | 行51-56 | 用户名必填 |
| `password[0]` | `required: true, message: "请输入密码", trigger: ["input", "blur"]` | 行58-59 | 密码必填 |
| `password[1]` | `min: 6, message: "密码长度不能少于6位", trigger: ["input", "blur"]` | 行60-64 | 密码最少6位 |

---

## 六、功能特性映射

| id | 图标组件 | 标题 | 描述 | minified位置 |
|---|---|---|---|---|
| 1 | `m` (PersonCircle) | 多角色管理 | 统一管理多个游戏角色，随时切换查看 | 行68-73 |
| 2 | `K` (Cube) | 任务自动化 | 智能执行日常任务，解放双手节省时间 | 行74-79 |
| 3 | `P` (Ribbon) | 数据统计 | 详细的进度统计，让游戏数据一目了然 | 行80-85 |
| 4 | `j` (Settings) | 个性化配置 | 灵活的设置选项，打造专属管理方案 | 行86-91 |

---

## 备注

1. **映射方法**: 通过中文字符串锚点（"请输入用户名或邮箱"、"登录成功"、"QQ登录"等）在 minified 代码中定位对应代码段，结合 Vue SFC 编译模式（变量声明顺序、函数调用关系）进行交叉匹配。

2. **Vue编译模式**: SFC 组件编译后，`<script setup>` 中的变量按声明顺序排列。`ref()` → `F()`, `reactive()` → `$()`, `onMounted()` → `B()` 等。

3. **静态提升**: 模板中不含动态绑定的 HTML 片段被提升为静态节点（`e[15]`~`e[17]`），仅在首次渲染时创建，后续复用。

4. **scoped CSS**: 组件通过 `__scopeId: "data-v-f2fda67e"` 实现样式隔离，所有模板元素均带有此属性。
