# Auth 模块增量翻译

> 源文件: `auth-BzVLibGZ.js`

---

## 1. 概览

Auth 模块是本地认证 Pinia Store，提供纯本地化的登录/注册/登出功能，无需后端服务器。

| 功能 | 说明 |
|------|------|
| 本地登录 | 生成本地用户对象和令牌，存入 localStorage |
| 本地注册 | 将用户信息存入 localStorage 的 registeredUsers 列表 |
| 登出 | 清除用户、令牌及所有游戏相关存储 |
| Token 验证 | 通过 computed 判断是否已认证 |
| 用户信息获取 | 从 localStorage 恢复用户信息 |
| 认证初始化 | 页面加载时恢复登录状态 |

---

## 2. Store 定义与状态

```js
import { defineStore, ref, computed } from "./index-BUwMeHKm.js";
import { useLocalTokenManager } from "./localTokenManager-DrgF481l.js";

// 定义 auth Pinia Store（setup 语法）
const useAuthStore = defineStore("auth", () => {
  // 当前用户信息（null 表示未登录）
  const user = ref(null);

  // 认证令牌（从 localStorage 恢复，或为 null）
  const token = ref(localStorage.getItem("token") || null);

  // 加载状态标志
  const isLoading = ref(false);

  // 本地令牌管理器实例
  const tokenManager = useLocalTokenManager();

  // 是否已认证：token 和 user 都存在时为 true
  const isAuthenticated = computed(() => !!token.value && !!user.value);

  // 用户信息（user 的计算属性别名）
  const userInfo = computed(() => user.value);
```

---

## 3. 登录方法

```js
  /**
   * 本地登录
   * 生成一个本地用户对象和令牌，存入 localStorage
   * @param {Object} credentials - 登录凭据 { username, email? }
   * @returns {Object} { success: boolean, message?: string }
   */
  const login = async (credentials) => {
    try {
      isLoading.value = true;

      // 构造本地用户对象
      const localUser = {
        id: "local_user_" + Date.now(),
        username: credentials.username,
        email: credentials.email || `${credentials.username}@local.game`,
        avatar: "/icons/xiaoyugan.png",
        createdAt: new Date().toISOString(),
      };

      // 生成本地令牌：时间戳 + 随机字符串
      const localToken =
        "local_token_" +
        Date.now() +
        "_" +
        Math.random().toString(36).substr(2, 9);

      // 保存到响应式状态和 localStorage
      token.value = localToken;
      user.value = localUser;
      localStorage.setItem("token", token.value);
      localStorage.setItem("user", JSON.stringify(user.value));

      // 同步到令牌管理器
      tokenManager.setUserToken(localToken);

      return { success: true };
    } catch (error) {
      console.error("登录错误:", error);
      return { success: false, message: "本地认证失败" };
    } finally {
      isLoading.value = false;
    }
  };
```

---

## 4. 注册方法

```js
  /**
   * 本地注册
   * 将用户信息存入 localStorage 的 registeredUsers 列表
   * @param {Object} userData - 注册数据 { username, email?, ... }
   * @returns {Object} { success: boolean, message: string }
   */
  const register = async (userData) => {
    try {
      isLoading.value = true;

      // 从 localStorage 读取已注册用户列表
      const registeredUsers = JSON.parse(
        localStorage.getItem("registeredUsers") || "[]"
      );

      // 检查用户名是否已存在
      if (registeredUsers.some((u) => u.username === userData.username)) {
        return { success: false, message: "用户名已存在" };
      }

      // 构造新用户对象（保留原始字段，补充 id 和创建时间）
      const newUser = {
        ...userData,
        id: "user_" + Date.now(),
        createdAt: new Date().toISOString(),
      };

      // 添加到列表并保存
      registeredUsers.push(newUser);
      localStorage.setItem("registeredUsers", JSON.stringify(registeredUsers));

      return { success: true, message: "注册成功，请登录" };
    } catch (error) {
      console.error("注册错误:", error);
      return { success: false, message: "本地注册失败" };
    } finally {
      isLoading.value = false;
    }
  };
```

---

## 5. 登出方法

```js
  /**
   * 登出
   * 清除用户信息、令牌及所有游戏相关存储
   */
  const logout = () => {
    // 清除响应式状态
    user.value = null;
    token.value = null;

    // 清除 localStorage 中的认证和游戏数据
    localStorage.removeItem("token");
    localStorage.removeItem("user");
    localStorage.removeItem("gameRoles");

    // 清除令牌管理器中的数据
    tokenManager.clearUserToken();
    tokenManager.clearAllGameTokens();
  };
```

---

## 6. 获取用户信息

```js
  /**
   * 从 localStorage 获取用户信息
   * 如果 token 不存在或解析失败，执行登出
   * @returns {boolean} 是否成功获取
   */
  fetchUserInfo: async () => {
    try {
      if (!token.value) return false;

      const storedUser = localStorage.getItem("user");
      if (storedUser) {
        try {
          user.value = JSON.parse(storedUser);
          return true;
        } catch (error) {
          console.error("解析用户信息失败:", error);
          logout();
          return false;
        }
      } else {
        // localStorage 中无用户数据，执行登出
        logout();
        return false;
      }
    } catch (error) {
      console.error("获取用户信息失败:", error);
      logout();
      return false;
    }
  };
```

---

## 7. 初始化认证

```js
  /**
   * 初始化认证状态
   * 页面加载时调用，从 localStorage 恢复登录状态
   */
  initAuth: async () => {
    const storedUser = localStorage.getItem("user");
    if (token.value && storedUser) {
      try {
        user.value = JSON.parse(storedUser);
        tokenManager.initTokenManager();
      } catch (error) {
        console.error("初始化认证失败:", error);
        logout();
      }
    }
  };
```

---

## 8. Store 导出

```js
  // 返回 Store 的公开接口
  return {
    user,            // 当前用户信息
    token,           // 认证令牌
    isLoading,       // 加载状态
    isAuthenticated, // 是否已认证
    userInfo,        // 用户信息（computed）
    login,           // 登录方法
    register,        // 注册方法
    logout,          // 登出方法
    fetchUserInfo,   // 获取用户信息
    initAuth,        // 初始化认证
  };
});

// 导出 Store 定义函数
export { useAuthStore };
```

---

## 9. 关键依赖

### localTokenManager 模块

```js
// localTokenManager-DrgF481l.js 提供的方法:
// setUserToken(token)      — 设置用户令牌
// clearUserToken()         — 清除用户令牌
// clearAllGameTokens()     — 清除所有游戏令牌
// initTokenManager()       — 初始化令牌管理器
```

### localStorage 键名

| 键名 | 类型 | 说明 |
|------|------|------|
| `token` | string | 当前用户的本地令牌 |
| `user` | JSON string | 当前用户信息对象 |
| `registeredUsers` | JSON string[] | 已注册用户列表 |
| `gameRoles` | JSON | 游戏角色数据（登出时清除） |

---

## 10. 数据流

```
注册流程:
  register(userData) → 检查用户名 → 写入 registeredUsers → 返回结果

登录流程:
  login(credentials) → 构造本地用户+令牌 → 写入 localStorage + tokenManager → 返回结果

初始化流程:
  initAuth() → 读取 token + user → 恢复状态 + initTokenManager()

登出流程:
  logout() → 清除状态 → 清除 localStorage → 清除 tokenManager
```
