# 04-dev 全部操作记录（代码 + 参考资料）

> 日期：2026-06-06
> 目标：将 04-dev 对齐 APK528，包括界面显示、功能模块、交互逻辑、业务逻辑

---

## 一、APK528 vs 04-dev 对比验证

### 1.1 对比范围

| 模块 | 对比结果 |
|------|---------|
| 路由/导航 | 6个桌面导航项、8个抽屉菜单项一致 |
| Dashboard | 结构、内容、路由100%一致 |
| Profile | 5大区域、所有表单、Token管理功能100%一致 |
| GameRoles | ~98%一致（仅默认头像实现不同） |
| TokenImport | 5种导入方式一致 |
| gameCommands | APK 47个命令在04-dev中都有，04-dev额外增加90+个命令（超集） |
| GameFeatures | **存在差异**（见1.2） |
| DailyTasks/BatchDailyTasks | 结构一致 |

### 1.2 发现并修复的差异

| # | 差异 | APK | 04-dev修复前 | 04-dev修复后 |
|---|------|-----|-------------|-------------|
| 1 | `/changelog` 路由 | 有 | 缺失 | ✅ 已添加 |
| 2 | `system_mysharecallback` type | type=3 | type=2 | ✅ 改为type=3 |
| 3 | `startTaskManagement` 跳转 | `/admin/game-features` | `/admin/dashboard` | ✅ 改为game-features |
| 4 | BIN数据缺失提示 | 明确错误提示 | 静默跳过 | ✅ 添加错误提示 |
| 5 | GameFeatures daily tab | TeamFormation→DailyTaskStatus→TowerStatus→**WeirdTowerStatus**→BottleHelperCard→HangUpStatusCard | 顺序不同，缺WeirdTowerStatus，多SignInCard | ✅ 对齐APK |
| 6 | GameFeatures club tab | ClubInfo + ClubCarKing | 多了FightPvp/CarScoreInfo/ClubWeirdTowerInfo | ✅ 对齐APK |
| 7 | GameFeatures 子Tab类型 | segment | card | ✅ 改为rounded |
| 8 | Token存储架构 | 纯IndexedDB | localStorage + IndexedDB双存 | ✅ 统一到IndexedDB |
| 9 | WebSocket心跳间隔 | 2000ms | 5000ms | ✅ 改为2000ms |
| 10 | WebSocket重连上限 | maxReconnectAttempts=5 | 无上限 | ✅ 添加上限5 |

---

## 二、代码修改详情

### 2.1 路由修复

**文件**：`src/router/index.js`

**修改1：添加 /changelog 路由**
```js
{
  path: '/changelog',
  name: 'Changelog',
  component: () => import('@/views/Changelog.vue'),
  meta: {
    title: '更新日志',
    requiresToken: false
  }
},
```

**修改2：导入 initTokenStore，beforeEach 改为 async**
```js
import { useTokenStore, initTokenStore } from '@/stores/tokenStore'

// 导航守卫
let _storeInitialized = false;
router.beforeEach(async (to, from, next) => {
  if (!_storeInitialized) {
    _storeInitialized = true;
    await initTokenStore();
  }
  // ...
})
```

---

### 2.2 WebSocket 修复

**文件**：`src/utils/xyzwWebSocket.js`

**修改1：心跳间隔 5000ms → 2000ms**
```js
// 修改前
constructor({ url, utils, heartbeatMs = 5000 }) {
// 修改后
constructor({ url, utils, heartbeatMs = 2000 }) {
```

**修改2：添加重连上限**
```js
// 构造函数中新增
this.reconnectAttempts = 0;
this.maxReconnectAttempts = 5;

// reconnect() 方法中新增
if (this.reconnectAttempts >= this.maxReconnectAttempts) {
  wsLogger.warn(`已达到最大重连次数(${this.maxReconnectAttempts})，停止重连`);
  return;
}
this.reconnectAttempts++;

// socket.onopen 中重置
this.reconnectAttempts = 0;
```

**修改3：system_mysharecallback type 参数**
```js
// 修改前
.register("system_mysharecallback", { isSkipShareCard: true, type: 2 })
// 修改后
.register("system_mysharecallback", { isSkipShareCard: true, type: 3 })
```

---

### 2.3 GameFeatures 修复

**文件**：`src/views/GameFeatures.vue`

**修改1：daily tab 组件对齐 APK**
```html
<!-- 修改前 -->
<TeamFormation v-show="activeSection === 'daily'" />
<HangUpStatusCard v-show="activeSection === 'daily'" />
<TowerStatus v-show="activeSection === 'daily' && canChallengeBoss" />
<DailyTaskStatus v-show="activeSection === 'daily'" />
<BottleHelperCard v-show="activeSection === 'daily'" />
<SignInCard v-show="activeSection === 'daily'" />

<!-- 修改后（对齐APK） -->
<TeamFormation v-show="activeSection === 'daily'" />
<DailyTaskStatus v-show="activeSection === 'daily'" />
<TowerStatus v-show="activeSection === 'daily' && canChallengeBoss" />
<WeirdTowerStatus v-show="activeSection === 'daily'" />
<BottleHelperCard v-show="activeSection === 'daily'" />
<HangUpStatusCard v-show="activeSection === 'daily'" />
```

**修改2：club tab 组件对齐 APK**
```html
<!-- 修改前 -->
<ClubInfo v-if="activeSection === 'club'" />
<FightPvp v-if="activeSection === 'club'" />
<ClubCarKing v-if="activeSection === 'club'" />
<CarScoreInfo v-if="activeSection === 'club'" :inline="true" />
<ClubWeirdTowerInfo v-if="activeSection === 'club'" :inline="true" />

<!-- 修改后（对齐APK） -->
<ClubInfo v-if="activeSection === 'club'" />
<ClubCarKing v-if="activeSection === 'club'" />
```

**修改3：子Tab类型 card → rounded**
```html
<!-- 修改前 -->
<a-tabs type="card" ...>
<!-- 修改后（对齐APK的segment样式） -->
<a-tabs type="rounded" ...>
```

**修改4：import 调整**
- 新增：`import WeirdTowerStatus from "@/components/Tower/WeirdTowerStatus.vue"`
- 移除：`import SignInCard from "@/components/Club/Signin.vue"`
- 移除：`import CarScoreInfo from "@/components/Club/CarScoreInfo.vue"`
- 移除：`import ClubWeirdTowerInfo from "@/components/Club/ClubWeirdTowerInfo.vue"`

---

### 2.4 TokenImport 修复

**文件**：`src/views/TokenImport/index.vue`

**修改1：startTaskManagement 路由**
```js
// 修改前
router.push("/admin/dashboard");
// 修改后（对齐APK）
router.push("/admin/game-features");
```

**修改2：BIN数据缺失错误提示**
```js
// 修改前
message.success("Token刷新成功");
}
// 修改后
message.success("Token刷新成功");
} else {
  message.error(`无法在本地存储中找到Token "${token.name}" 的BIN数据，请重新导入`);
}
```

---

### 2.5 Token 存储架构迁移（核心改动）

#### 2.5.1 tokenDb.js 扩展

**文件**：`src/utils/tokenDb.js`

| 改动 | 说明 |
|------|------|
| DB_VERSION 1→2 | 新增 tokenList object store |
| 新增 STORE_TOKEN_LIST | keyPath: "id"，存储 tokenStore 的数组格式数据 |
| 新增 getAllTokenList() | 获取所有 token 列表 |
| 新增 putTokenItem() | 写入单个 token |
| 新增 deleteTokenItem() | 删除单个 token |
| 新增 clearTokenList() | 清空 token 列表 |
| 新增 getAllTokenGroups() | 获取分组列表（KV store） |
| 新增 putTokenGroups() | 写入分组列表（KV store） |
| 扩展 migrateFromLocalStorageIfNeeded() | 支持数组格式迁移、selectedTokenId 迁移、tokenGroups 迁移 |

#### 2.5.2 tokenStore.ts 改造

**文件**：`src/stores/tokenStore.ts`

| 改动 | 修改前 | 修改后 |
|------|--------|--------|
| gameTokens | `useLocalStorage<TokenData[]>("gameTokens", [])` | `ref<TokenData[]>([])` + IndexedDB |
| selectedTokenId | `useLocalStorage("selectedTokenId", "")` | `ref<string>("")` + IndexedDB |
| selectedRoleInfo | `useLocalStorage<any>("selectedRoleInfo", null)` | `ref<any>(null)` |
| activeConnections | `useLocalStorage("activeConnections", {})` | `ref<Record<string, any>>({})` + localStorage.setItem（跨标签页通信） |
| tokenGroups | `useLocalStorage<TokenGroup[]>("tokenGroups", [])` | `ref<TokenGroup[]>([])` + IndexedDB |
| useLocalStorage 导入 | 有 | 移除 |
| tokenDb 导入 | 无 | 新增8个函数导入 |
| initTokenStore() | 无 | 新增异步初始化函数 |
| persistTokenItem() | 无 | 新增 fire-and-forget 持久化函数 |
| persistTokenDelete() | 无 | 新增 |
| persistTokenGroups() | 无 | 新增 |
| persistSelectedTokenId() | 无 | 新增 |

**持久化调用点**：

| 方法 | 新增的持久化调用 |
|------|----------------|
| addToken | `persistTokenItem(newToken)` |
| updateToken | `persistTokenItem(gameTokens.value[index])` |
| removeToken | `persistTokenDelete(tokenId)` + `persistSelectedTokenId()` |
| selectToken | `persistSelectedTokenId()` |
| importTokens | `clearTokenList()` + 批量 `persistTokenItem()` |
| clearAllTokens | `clearTokenList()` |
| createTokenGroup | `persistTokenGroups()` |
| deleteTokenGroup | `persistTokenGroups()` |
| updateTokenGroup | `persistTokenGroups()` |
| addTokenToGroup | `persistTokenGroups()` |
| removeTokenFromGroup | `persistTokenGroups()` |
| updateCrossTabConnectionState | `localStorage.setItem()` 替代 `useLocalStorage()` |

---

### 2.6 wxqrcode.vue 回退

**文件**：`src/views/TokenImport/wxqrcode.vue`

曾添加 DOMParser URL 协议白名单校验（https + weixin.qq.com），后按用户要求回退，与 APK 保持一致（APK 无此校验）。

---

## 三、02-translations 参考资料操作

### 3.1 新增翻译文件（3个）

#### ServerRoleList-changes.md
- **路径**：`02-translations/ServerRoleList-changes.md`
- **对应APK文件**：`01-reference/apk-raw/ServerRoleList-K5eSJYby.js`
- **对应04-dev文件**：`04-dev/src/components/ServerRoleList.vue`
- **覆盖内容**：
  - 组件概述：服务器角色选择组件
  - APK528实现：Props/Events、模板结构、6个核心逻辑函数（serverId解码、角色序号、搜索过滤、滚动定位、数据监听、表格列定义）
  - 04-dev实现：同结构描述，标注与APK的差异点
  - 关键差异：nickname回退逻辑、UI框架（Naive UI→Arco Design）、TypeScript支持、formatPower导入路径
  - 业务逻辑翻译：serverId编码规则、角色序号规则、搜索三字段匹配逻辑、add/download事件、自动滚动行为、双端响应式布局

#### localTokenManager-changes.md
- **路径**：`02-translations/localTokenManager-changes.md`
- **对应APK文件**：`01-reference/apk-raw/localTokenManager-DrgF481l.js`
- **对应04-dev文件**：`04-dev/src/stores/localTokenManager.js`
- **覆盖内容**：
  - Store概述：Token持久化管理
  - APK528实现：纯IndexedDB存储（kv + gameTokens双store）
  - 04-dev实现：同架构，IndexedDB操作抽取为独立tokenDb.js模块
  - 关键差异：04-dev的handleGameMessage增加switch-case骨架（预留4个消息处理分支，目前均为空实现）
  - 存储架构完全相同：均使用xyzw_token_db IndexedDB
  - 方法对照表、业务逻辑翻译

#### bonProtocol-changes.md
- **路径**：`02-translations/bonProtocol-changes.md`
- **对应APK文件**：`01-reference/apk-raw/index-BUwMeHKm.js`（BON编解码器部分）
- **对应04-dev文件**：`04-dev/src/utils/bonProtocol.js`
- **覆盖内容**：
  - 协议概述：BON二进制对象序列化协议，自描述格式，含字符串去重和变长整数编码
  - 数据类型映射：11种类型标签表（0-10, 99）
  - 编码流程：顶层入口分派、7-Bit变长整数编码规则、UTF-8字符串编码的预留-回写机制
  - 解码流程：顶层入口分派、7-Bit变长整数解码算法
  - API方法：bon.encode/decode、BonEncoder/BonDecoder类方法表、ProtoMsg/ProtoMsgLegion消息包装类
  - APK528 vs 04-dev差异：客户端版本号更新、消息体编码方式不同、ProtoMsg类新增、Int64类新增
  - 使用场景：WebSocket通信流程、Token/BIN文件解析、gameCommands消息构造

### 3.2 更新翻译文件（3个）

#### gameCommands-changes.md
- **路径**：`02-translations/gameCommands-changes.md`
- **更新内容**：
  - 保留原有§1-20详细代码示例和说明
  - 替换第21节（原46条命令索引→182条完整命令索引），按36个分类组织
  - 每条命令包含：方法名、cmd字符串、默认参数、用途说明（中文）、APK528是否有此命令（✅/❌）
  - 新增第22节：统计摘要表（APK528有46条命令，04-dev新增136条，合计182条）

#### TokenImport-changes.md
- **路径**：`02-translations/TokenImport-changes.md`
- **更新内容**：追加"近期修复与变更（2026-06-06）"章节，5项修复：
  1. BIN导入名字显示修复：nickname回退
  2. singlebin server字段格式修复
  3. BIN数据缺失错误提示
  4. computed导入缺失修复
  5. startTaskManagement路由修复

#### GameFeatures-changes.md
- **路径**：`02-translations/GameFeatures-changes.md`
- **更新内容**：追加"近期修复与变更（2026-06-06）"章节，6项修复：
  1. daily tab组件调整（对齐APK528）
  2. club tab组件调整（对齐APK528）
  3. 子Tab类型调整（card → rounded）
  4. 新增WeirdTowerStatus组件导入
  5. 移除SignInCard组件
  6. 移除CarScoreInfo和ClubWeirdTowerInfo

### 3.3 新增计划文件

#### UPDATE-PLAN.md
- **路径**：`02-translations/UPDATE-PLAN.md`
- **内容**：新增3个翻译文件 + 更新3个翻译文件的计划说明，不需要翻译的18个APK组件清单

---

## 四、安全审计

### 4.1 安全发现

| # | 严重度 | 问题 | APK是否相同 | 处理 |
|---|--------|------|------------|------|
| S-001 | High | DOMParser解析外部HTML | 相同 | 回退校验（与APK一致） |
| S-002 | Medium | URL导入缺乏校验 | 相同 | 记录，不改（与APK一致） |
| S-003 | Medium | Token存储在localStorage | 不同 | ✅ 已迁移到IndexedDB |
| S-004 | Medium | 认证Token在localStorage | 相同 | 记录 |
| S-005 | Medium | 本地脚本无SRI | 相同 | 记录 |
| S-006 | Low | cocos2d document.write | 相同 | 记录 |
| S-007 | Low | 路由守卫仅做UX | 相同 | 记录 |

**核心结论：04-dev 未引入新的安全风险**，所有7项安全发现在APK528中均存在相同模式。

### 4.2 APK一致性验证

| 模式 | 一致性 | 说明 |
|------|--------|------|
| 认证流程 | ✅ 一致 | |
| 微信扫码登录 | ✅ 一致 | |
| 代理URL处理 | ✅ 一致 | |
| 路由守卫 | ✅ 基本一致 | |
| URL Token导入 | ✅ 逻辑一致 | |
| Token存储架构 | ✅ 已修复 | 从localStorage迁移到IndexedDB |
| WebSocket客户端 | ✅ 已修复 | 心跳2000ms，重连上限5 |

---

## 五、React/Vue 最佳实践审查

### 5.1 CRITICAL 级别（未修复，记录为后续优化）

| # | 问题 | 文件 | 预估收益 |
|---|------|------|---------|
| P-001 | 20+组件静态导入，应懒加载 | GameFeatures.vue | 初始bundle减少40-60% |
| P-002 | 5个互斥子组件静态导入 | TokenImport/index.vue | 同上 |
| P-003 | 42.6KB首屏同步加载 | xyzwWebSocket.js | 延迟导入 |
| P-004 | responseToCommandMap每次消息重建 | xyzwWebSocket.js | 提升为模块级常量 |

### 5.2 MEDIUM 级别（未修复，记录为后续优化）

| # | 问题 | 文件 |
|---|------|------|
| P-005 | 双布局同时渲染 | ServerRoleList.vue |
| P-006 | 搜索无防抖 | ServerRoleList.vue |
| P-007 | refreshAllTokens串行执行 | TokenImport/index.vue |
| P-008 | serverId解码逻辑重复3处 | bin.vue/singlebin.vue/ServerRoleList.vue |
| P-009 | disconnect()不清理promises | xyzwWebSocket.js |
| P-010 | generatedRoutes展开两次 | router/index.js |

---

## 六、参考资料状态总览

### 6.1 未修改的参考资料（确认仍准确）

**01-reference/annotations/（6个文件）**

| 文件 | 状态 |
|------|------|
| overview.md | ✅ 准确 |
| BatchDailyTasks_annotations.md | ✅ 准确 |
| GameFeatures_annotations.md | ⚠️ 部分过时（daily/club tab布局已变更，未更新） |
| Profile_annotations.md | ✅ 准确 |
| dailyTaskRunner_annotations.md | ✅ 准确 |
| imageExport_annotations.md | ✅ 准确 |

**01-reference/mappings/（17个文件）**

| 文件 | 状态 |
|------|------|
| gameCommands_mapping.md | ⚠️ 严重过时（仅~50个命令，04-dev有182个） |
| 其余16个mapping文件 | ✅ 准确 |

**01-reference/apk-raw/ + formatted-js/ + css/**：✅ 全部准确（APK原始数据不变）

**01-reference/ 根目录报告文件**

| 文件 | 状态 |
|------|------|
| apk528-vs-04dev-diff.md | ⚠️ 已添加过时警告（2026-06-09） |
| APK528-verification-report.md | ✅ 合并报告（2026-06-09，合并自完整对比验证分析报告+3个验证报告） |
| reference-materials-verification.md | ✅ 合并报告（2026-06-09，合并自参考资料与APK528交叉对比+baseline-verification） |
| _worker.js-微信扫码代理分析.md | ✅ 准确 |
| ~~完整对比验证分析报告.md~~ | 已合并到 APK528-verification-report.md |
| ~~参考资料完整性检查.md~~ | 已删除（结论"无需补充"） |
| ~~baseline-verification.md~~ | 已合并到 reference-materials-verification.md |
| ~~独立验证报告.md~~ | 已删除（被完整报告覆盖） |

**02-translations/ 未修改的文件（19个）**：✅ 全部准确

**03-css-analysis/**：✅ 准确

### 6.2 仍需更新的参考资料

| 优先级 | 文件 | 需要的更新 | 工作量 | 状态 |
|--------|------|-----------|--------|------|
| P1 | `01-reference/mappings/gameCommands_mapping.md` | 补充130+新方法映射 | 大 | 待执行 |
| P2 | `01-reference/annotations/GameFeatures_annotations.md` | 更新daily/club tab布局差异 | 小 | 待执行 |
| P2 | `01-reference/apk528-vs-04dev-diff.md` | 标记已完成项（29命令+13映射+1错误码） | 中 | ✅ 已添加过时警告 |
| ~~P2~~ | ~~`01-reference/完整对比验证分析报告.md`~~ | ~~标记7.1/7.3/7.4节已完成~~ | — | 已合并到 APK528-verification-report.md |
| P3 | `01-reference/annotations/overview.md` | 更新04-dev状态对比表 | 小 | ✅ 已更新 |
| ~~P3~~ | ~~`01-reference/参考资料完整性检查.md`~~ | ~~更新gameCommands覆盖描述~~ | — | 已删除 |

---

## 七、修改文件清单

### 7.1 代码文件

| 文件 | 修改类型 | 说明 |
|------|---------|------|
| `src/router/index.js` | 修改 | 添加/changelog路由、initTokenStore异步初始化 |
| `src/utils/xyzwWebSocket.js` | 修改 | 心跳2000ms、重连上限5、type=3 |
| `src/utils/tokenDb.js` | 重写 | DB V2、tokenList store、新CRUD函数、迁移逻辑 |
| `src/stores/tokenStore.ts` | 修改 | useLocalStorage→ref+IndexedDB、持久化函数、initTokenStore |
| `src/views/GameFeatures.vue` | 修改 | daily/club tab对齐APK、子Tab rounded、import调整 |
| `src/views/TokenImport/index.vue` | 修改 | 路由修复、BIN缺失提示 |
| `src/views/TokenImport/wxqrcode.vue` | 修改→回退 | DOMParser校验添加后回退 |

### 7.2 参考资料文件

| 文件 | 修改类型 | 说明 |
|------|---------|------|
| `02-translations/ServerRoleList-changes.md` | 新增 | ServerRoleList翻译 |
| `02-translations/localTokenManager-changes.md` | 新增 | localTokenManager翻译 |
| `02-translations/bonProtocol-changes.md` | 新增 | BON协议翻译 |
| `02-translations/gameCommands-changes.md` | 更新 | 46→182条命令 |
| `02-translations/TokenImport-changes.md` | 更新 | 追加5项修复 |
| `02-translations/GameFeatures-changes.md` | 更新 | 追加6项修复 |
| `02-translations/UPDATE-PLAN.md` | 新增 | 更新计划 |
| `04-dev/SECURITY-AUDIT-REPORT.md` | 新增 | 安全审计报告 |

---

## 八、操作统计

| 操作类型 | 数量 |
|---------|------|
| 代码文件修改 | 7 |
| APK一致性差异修复 | 10 |
| 新增翻译文件 | 3 |
| 更新翻译文件 | 3 |
| 新增报告/计划文件 | 3 |
| 安全发现 | 7（04-dev未引入新风险） |
| 性能优化建议 | 10（4 CRITICAL + 6 MEDIUM，记录为后续优化） |
| 确认仍准确的参考文件 | 42 |
| 仍需更新的参考文件 | 6 |

---

## 九、构建验证

所有修改均通过 `npm run build` 验证，构建成功无错误。

**输出文件**：
- 04-dev 源码 ZIP：`/workspace/xyzw-project3IN1/xyzw-project/04-dev-source.zip`（11MB）
- 04-dev 构建产物 ZIP：`/workspace/xyzw-project3IN1/xyzw-project/04-dev-dist.zip`（11MB）
- 整个项目 ZIP：`/workspace/xyzw-project3IN1/xyzw-project-all.zip`（44MB）
