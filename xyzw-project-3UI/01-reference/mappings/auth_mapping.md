# Auth 模块 minified→源码 变量名映射表

> 目标文件: `/workspace/TRAE 使用/GLM仅修复修正/01-reference/formatted-js/auth-BzVLibGZ.js`
> 生成时间: 2026-06-03

---

## 1. 导入映射 (import aliases)

### 1.1 来自 `./index-BUwMeHKm.js` 的 Vue/Pinia API

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `h` | `defineStore` | Pinia API | L1 | Pinia Store 定义函数（导入别名 `aF`） |
| `c` | `ref` | Vue API | L1 | Vue 响应式引用（导入别名 `r`） |
| `u` | `computed` | Vue API | L1 | Vue 计算属性（导入别名 `p`） |

### 1.2 来自 `./localTokenManager-DrgF481l.js` 的业务模块

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `k` | `useLocalTokenManager` | Hook | L2 | 本地令牌管理器 Hook（导入别名 `u`） |

---

## 2. Store 级变量映射

### 2.1 Store 定义

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `p` | `useAuthStore` | Pinia Store | L3-110 | auth Store 定义（defineStore setup 语法） |

### 2.2 响应式状态

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `s` | `user` | ref | L4 | 当前用户信息（null 表示未登录） |
| `t` | `token` | ref | L5 | 认证令牌（从 localStorage 恢复） |
| `o` | `isLoading` | ref | L6 | 加载状态标志 |

### 2.3 依赖实例

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `n` | `tokenManager` | 实例 | L7 | useLocalTokenManager() 返回的令牌管理器实例 |

### 2.4 计算属性

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `i` | `isAuthenticated` | computed | L8 | 是否已认证（token 和 user 都存在） |
| `m` | `userInfo` | computed | L9 | 用户信息（user 的计算属性别名） |

---

## 3. Store 方法映射

### 3.1 登录方法

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `g` | `login` | 异步函数 | L10-41 | 本地登录，生成用户对象和令牌 |
| `e` (in login) | `credentials` | 参数 | L10 | 登录凭据 { username, email? } |
| `r` (in login) | `localUser` | 变量 | L13-19 | 构造的本地用户对象 |
| `l` (in login) | `localToken` | 变量 | L20-24 | 生成的本地令牌字符串 |
| `r` (in login catch) | `error` | 参数 | L33 | 捕获的异常对象 |

### 3.2 注册方法

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `f` | `register` | 异步函数 | L42-66 | 本地注册，存入 registeredUsers |
| `e` (in register) | `userData` | 参数 | L42 | 注册数据 { username, email?, ... } |
| `r` (in register) | `registeredUsers` | 变量 | L45 | 从 localStorage 读取的已注册用户列表 |
| `v` (in register) | `u` (迭代变量) | 参数 | L46 | some() 回调中的用户项 |
| `S` (in register) | `newUser` | 变量 | L48-52 | 构造的新用户对象 |
| `r` (in register catch) | `error` | 参数 | L58 | 捕获的异常对象 |

### 3.3 登出方法

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `a` | `logout` | 函数 | L67-75 | 登出，清除所有认证和游戏数据 |

### 3.4 获取用户信息

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| - | `fetchUserInfo` | 异步函数 | L85-99 | 从 localStorage 获取用户信息 |
| `e` (in fetchUserInfo) | `storedUser` | 变量 | L88 | localStorage 中的 user 字符串 |
| `r` (in fetchUserInfo catch) | `error` | 参数 | L92 | 捕获的异常对象 |
| `e` (in fetchUserInfo outer catch) | `error` | 参数 | L96 | 捕获的异常对象 |

### 3.5 初始化认证

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| - | `initAuth` | 异步函数 | L100-109 | 页面加载时恢复登录状态 |
| `e` (in initAuth) | `storedUser` | 变量 | L101 | localStorage 中的 user 字符串 |
| `r` (in initAuth catch) | `error` | 参数 | L105 | 捕获的异常对象 |

---

## 4. Store 导出映射

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `p` | `useAuthStore` | 导出 | L111 | auth Store 定义函数 |

### 4.1 导出别名

| minified导出名 | 源码导出名 | 位置 | 说明 |
|---|---|---|---|
| `u` | `useAuthStore` | L111 | `export { p as u }` |

---

## 5. Store 返回值（公开接口）映射

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `s` | `user` | ref | L77 | 当前用户信息 |
| `t` | `token` | ref | L78 | 认证令牌 |
| `o` | `isLoading` | ref | L79 | 加载状态 |
| `i` | `isAuthenticated` | computed | L80 | 是否已认证 |
| `m` | `userInfo` | computed | L81 | 用户信息 |
| `g` | `login` | 异步函数 | L82 | 登录方法 |
| `f` | `register` | 异步函数 | L83 | 注册方法 |
| `a` | `logout` | 函数 | L84 | 登出方法 |
| - | `fetchUserInfo` | 异步函数 | L85-99 | 获取用户信息 |
| - | `initAuth` | 异步函数 | L100-109 | 初始化认证 |

---

## 6. localTokenManager 依赖方法映射

| 源码名 | 类型 | 调用位置 | 说明 |
|---|---|---|---|
| `setUserToken` | 方法 | L30 (login) | 设置用户令牌 |
| `clearUserToken` | 方法 | L73 (logout) | 清除用户令牌 |
| `clearAllGameTokens` | 方法 | L74 (logout) | 清除所有游戏令牌 |
| `initTokenManager` | 方法 | L104 (initAuth) | 初始化令牌管理器 |

---

## 7. localStorage 键名映射

| 键名 | 读写位置 | 说明 |
|---|---|---|
| `token` | L5 读取, L28 写入, L70 删除 | 当前用户的本地令牌 |
| `user` | L88 读取, L29 写入, L71 删除 | 当前用户信息 JSON |
| `registeredUsers` | L45 读取, L55 写入 | 已注册用户列表 JSON |
| `gameRoles` | L72 删除 | 游戏角色数据（登出时清除） |

---

## 8. 用户对象结构映射

### 8.1 本地用户对象 (login 生成)

| 字段 | 值 | 位置 | 说明 |
|---|---|---|---|
| `id` | `"local_user_" + Date.now()` | L14 | 本地用户 ID |
| `username` | credentials.username | L15 | 用户名 |
| `email` | credentials.email 或 `${username}@local.game` | L16 | 邮箱（默认本地邮箱） |
| `avatar` | `"/icons/xiaoyugan.png"` | L17 | 默认头像 |
| `createdAt` | `new Date().toISOString()` | L18 | 创建时间 |

### 8.2 注册用户对象 (register 生成)

| 字段 | 值 | 位置 | 说明 |
|---|---|---|---|
| `...userData` | 展开注册数据 | L49 | 保留原始字段 |
| `id` | `"user_" + Date.now()` | L50 | 注册用户 ID |
| `createdAt` | `new Date().toISOString()` | L51 | 创建时间 |
