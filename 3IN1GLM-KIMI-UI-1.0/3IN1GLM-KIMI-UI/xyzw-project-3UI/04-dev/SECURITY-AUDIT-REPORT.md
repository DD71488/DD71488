# 04-dev 安全审计与 APK 一致性验证报告

> 日期：2026-06-06
> 框架：Vue 3.5 + Vite 5 + Pinia + Arco Design
> 审计依据：Vercel React Best Practices + Vue.js Security Spec + OWASP Frontend Security

---

## 一、执行摘要

| 指标 | 数值 |
|------|------|
| 安全发现总数 | 7 项 |
| Critical | 0 |
| High | 1 |
| Medium | 4 |
| Low | 2 |
| APK 一致性问题 | 2 项（高优先级） |

**核心结论：04-dev 未引入新的安全风险**，所有 7 项安全发现在 APK528 中均存在相同模式。但存在 **2 项与 APK 不一致的关键架构差异**，需要修复以对齐 APK。

---

## 二、安全发现

### S-001: DOMParser 解析外部 HTML 响应（High）

| 字段 | 内容 |
|------|------|
| Rule ID | VUE-XSS-003 |
| Location | `src/views/TokenImport/wxqrcode.vue` 第 313 行 |
| Evidence | `new DOMParser().parseFromString(html, "text/html")` |
| Impact | 微信 API 代理响应被 DOMParser 解析后提取 URL，若代理被劫持可注入恶意 URL |
| APK 对比 | APK528 有相同问题 |
| Fix | 对提取的 URL 做协议白名单校验（仅允许 `https://`） |

### S-002: URL 导入功能缺乏充分校验（Medium）

| 字段 | 内容 |
|------|------|
| Rule ID | JS-URL-001 |
| Location | `src/views/TokenImport/url.vue` 第 134 行 |
| Evidence | `axios.get(urlForm.url)` 无协议/域名限制 |
| Impact | 用户可输入任意 URL，应用发起 GET 请求，存在 SSRF 风险 |
| APK 对比 | APK528 有相同问题 |
| Fix | 校验 URL 协议必须为 `https:` 或 `http:` |

### S-003: 游戏会话 Token 存储在 localStorage（Medium）

| 字段 | 内容 |
|------|------|
| Rule ID | JS-STORAGE-001 |
| Location | `src/stores/tokenStore.ts` 第 70-82 行 |
| Evidence | `useLocalStorage<TokenData[]>("gameTokens", [])` |
| Impact | XSS 可窃取 localStorage 中的游戏 Token |
| APK 对比 | APK528 使用纯 IndexedDB 存储，**04-dev 与 APK 不一致** |
| Fix | 统一到 APK 的 IndexedDB 方案 |

### S-004: 用户认证 Token 存储在 localStorage（Medium）

| 字段 | 内容 |
|------|------|
| Rule ID | VUE-AUTH-001 |
| Location | `src/stores/auth.js` 第 8、41-42 行 |
| Evidence | `localStorage.setItem("token", token.value)` |
| Impact | 认证 Token 可被 XSS 窃取；明文密码存储在 registeredUsers |
| APK 对比 | APK528 有相同模式 |
| Fix | 如果未来接入真实后端，改用 httpOnly cookie |

### S-005: 本地脚本加载无 SRI（Medium）

| 字段 | 内容 |
|------|------|
| Rule ID | VUE-SRI-001 |
| Location | `index.html` 第 51-53 行 |
| Evidence | cocos2d-js-min.js 含 document.write 和动态脚本注入 |
| Impact | 供应链攻击风险（本地文件风险较低） |
| APK 对比 | APK528 有相同问题 |
| Fix | 生产部署时确保构建产物使用 SRI hash |

### S-006: cocos2d-js-min.js 中的 document.write（Low）

| 字段 | 内容 |
|------|------|
| Rule ID | VUE-XSS-005 |
| Location | `src/xyzw/cocos2d-js-min.js` 第 3652 行 |
| Evidence | `document.write("BlockLen checksum mismatch\n")` |
| Impact | 硬编码字符串，无 XSS 风险 |
| APK 对比 | APK528 有相同代码 |
| Fix | 替换为 `console.error()` |

### S-007: 路由守卫仅做 UX 引导（Low）

| 字段 | 内容 |
|------|------|
| Rule ID | VUE-ROUTER-001 |
| Location | `src/router/index.js` 第 166-190 行 |
| Evidence | `if (to.meta.requiresToken && !tokenStore.hasTokens)` |
| Impact | 纯前端应用，无服务端授权需求 |
| APK 对比 | APK528 有相同模式 |
| Fix | 未来增加权限分级时需增强 |

---

## 三、APK 一致性验证

### A-001: Token 存储架构不一致（高优先级）

| 维度 | APK528 | 04-dev |
|------|--------|--------|
| 存储引擎 | 纯 IndexedDB | **两套并存**：localStorage + IndexedDB |
| 数据结构 | Map<roleId, tokenData> | Array<TokenData>（localStorage）+ Map（IndexedDB） |
| 主流程使用 | localTokenManager | tokenStore.ts（localStorage） |

**问题**：04-dev 存在两套并行的 Token 存储，可能导致数据不同步。APK 只有一套（IndexedDB）。

**建议**：统一到 APK 的 IndexedDB 方案，但当前功能已正常运行，改动风险大，建议作为后续重构目标。

### A-002: WebSocket 客户端不一致（高优先级）

| 维度 | APK528 | 04-dev |
|------|--------|--------|
| WS 客户端 | WsAgent | XyzwWebSocketClient |
| 心跳间隔 | 2000ms | 5000ms |
| 自动重连 | maxReconnectAttempts=5 | 无上限 |

**问题**：04-dev 主流程使用 `XyzwWebSocketClient`，与 APK 的 `WsAgent` 不同。心跳间隔差异可能导致连接超时行为不同。

**建议**：将 `XyzwWebSocketClient` 的心跳间隔改为 2000ms，增加自动重连上限，与 APK 对齐。

---

## 四、React/Vue 最佳实践审查（性能相关）

### P-001: GameFeatures.vue 20+ 组件静态导入（CRITICAL）

- 30+ 组件全部静态导入，应改为 `defineAsyncComponent` 懒加载
- 预估初始 bundle 可减少 40-60%

### P-002: TokenImport/index.vue 5个互斥子组件静态导入（CRITICAL）

- manual/url/bin/singlebin/wxqrcode 互斥显示，应懒加载

### P-003: xyzwWebSocket.js 42.6KB 首屏同步加载（CRITICAL）

- 被 tokenStore 同步导入，应延迟加载

### P-004: responseToCommandMap 每次消息重建（CRITICAL）

- ~140行对象字面量定义在方法内部，应提升为模块级常量

### P-005: ServerRoleList.vue 双布局同时渲染（MEDIUM）

- 移动端+桌面端两套 DOM 同时存在，应改 `v-if`

### P-006: 搜索无防抖（MEDIUM）

- ServerRoleList.vue 搜索每次按键都重算

### P-007: refreshAllTokens 串行执行（MEDIUM）

- 应使用 Promise.allSettled 并行化

### P-008: serverId 解码逻辑重复3处（MEDIUM）

- bin.vue/singlebin.vue/ServerRoleList.vue 中重复，应提取共享函数

### P-009: disconnect() 不清理 promises 和 sendQueue（MEDIUM）

- 可能导致内存泄漏

### P-010: router/index.js generatedRoutes 展开两次（MEDIUM）

- 可能导致路由冲突

---

## 五、优先修复建议

### 立即修复（安全 + APK 一致性）

1. **A-002**: 将 XyzwWebSocketClient 心跳改为 2000ms，增加重连上限
2. **S-001**: wxqrcode.vue DOMParser 提取的 URL 做协议白名单校验

### 后续重构（性能优化）

3. **P-001~P-004**: 组件懒加载 + xyzwWebSocket 延迟导入
4. **A-001**: Token 存储统一到 IndexedDB（改动大，需充分测试）

### 可选优化

5. **P-005~P-010**: 双布局 v-if、搜索防抖、并行刷新等
