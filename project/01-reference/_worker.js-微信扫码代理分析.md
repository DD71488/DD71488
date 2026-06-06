# `_worker.js` 微信扫码代理分析

## 结论：确认 `_worker.js` 是微信扫码功能的代理层

**是的，`_worker.js` 确实是用于微信扫码的代理。** 它是一个 Cloudflare Worker 脚本，部署在 Cloudflare Pages 上，作为生产环境下的反向代理层，用于转发微信扫码登录相关的 API 请求。

---

## 一、证据链

### 1. `_worker.js` 的代理配置

文件位置：`e:\TRAE 使用\apk-extracted\assets\public\_worker.js`

该文件定义了三个代理规则：

| 代理前缀 | 目标地址 | 用途 |
|---|---|---|
| `/api/weixin-long` | `https://long.open.weixin.qq.com` | 微信长连接（扫码状态轮询） |
| `/api/weixin` | `https://open.weixin.qq.com` | 微信开放平台（二维码获取） |
| `/api/hortor` | `https://comb-platform.hortorgames.com` | Hortor 游戏登录接口 |

关键特征：
- 所有代理规则都**模拟了微信客户端（MicroMessenger）的 User-Agent**
- 设置了 `Referer: https://open.weixin.qq.com/`，这是微信 OAuth 扫码流程的必要条件
- 添加了 CORS 头（`Access-Control-Allow-Origin: *`），解决跨域问题

### 2. `wxqrcode.vue` 的请求路径

文件位置：`e:\TRAE 使用\xyzw-project\04-dev\src\views\TokenImport\wxqrcode.vue`

该组件中的请求路径与 `_worker.js` 的代理规则完全匹配：

| 请求路径 | 对应代理 | 功能 |
|---|---|---|
| `/api/weixin/connect/app/qrconnect?...` | `/api/weixin` | 获取微信扫码二维码 |
| `/api/weixin/connect/l/qrconnect?uuid=...` | `/api/weixin` | 轮询扫码状态（检测是否扫码成功） |
| `/api/hortor/comb-login-server/api/v1/login` | `/api/hortor` | 扫码成功后完成登录，获取加密 Token |

### 3. 04-dev 的本地开发代理

文件位置：`e:\TRAE 使用\xyzw-project\04-dev\vite.config.js`

在开发环境中，Vite 配置了与 `_worker.js` 完全一致的三个代理规则，header 设置也完全相同。开发时由 Vite dev server 代理，生产部署时由 `_worker.js`（Cloudflare Worker）代理。

---

## 二、微信扫码完整流程

```
用户点击"获取二维码"
    │
    ▼
POST /api/weixin/connect/app/qrconnect
  (代理 → https://open.weixin.qq.com)
    │
    ▼
返回二维码图片 + UUID
    │
    ▼
轮询 /api/weixin/connect/l/qrconnect?uuid=XXX
  (代理 → https://open.weixin.qq.com)
    │
    ├── 返回 408 → 二维码已过期，重新生成
    ├── 返回 405 → 扫码成功，提取 code
    │       │
    │       ▼
    │   POST /api/hortor/comb-login-server/api/v1/login
    │     (代理 → https://comb-platform.hortorgames.com)
    │       │
    │       ▼
    │   返回 combUser 加密数据 → 生成 bin 文件 → 导入 Token
    │
    └── 超时 → 二维码过期，重新生成
```

---

## 三、`_worker.js` 与 `vite.config.js` 的对应关系

| 维度 | `_worker.js`（生产环境） | `vite.config.js`（开发环境） |
|---|---|---|
| 运行环境 | Cloudflare Pages / Workers | Vite Dev Server |
| 代理方式 | `fetch()` 转发请求 | `http-proxy` 中间件 |
| 部署方式 | 构建时复制到 `dist/_worker.js` | 内置于 Vite 配置 |
| 代理规则 | 3 条（weixin, weixin-long, hortor） | 3 条（完全一致） |
| Header 模拟 | 完全一致 | 完全一致 |

构建时通过 `vite.config.js` 中的 `copy-worker` 插件将 `worker.js` 复制到 `dist/_worker.js`，部署到 Cloudflare Pages 后生效。

---

## 四、为什么需要代理？

1. **跨域限制**：微信开放平台 API 不允许浏览器直接跨域请求，需要通过代理转发
2. **UA 检测**：微信 OAuth 接口会检测 `User-Agent`，必须包含 `MicroMessenger` 标识才能正常响应
3. **Referer 校验**：微信接口要求 `Referer` 为 `https://open.weixin.qq.com/`
4. **统一入口**：将三个不同域名的 API（`open.weixin.qq.com`、`long.open.weixin.qq.com`、`comb-platform.hortorgames.com`）统一到同一域名下，避免跨域和 Cookie 问题