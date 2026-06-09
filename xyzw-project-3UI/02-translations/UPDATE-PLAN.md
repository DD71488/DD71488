# 02-translations 补充与更新计划

> 日期：2026-06-06
> 状态：执行中

## 一、新增翻译（3个）

### 1.1 ServerRoleList-changes.md
- **对应APK文件**：`ServerRoleList-K5eSJYby.js`
- **对应04-dev文件**：`src/components/ServerRoleList.vue`
- **覆盖内容**：
  - 搜索筛选逻辑（name/nickname/serverId/roleId）
  - 双布局模式（列表/卡片）
  - 角色添加/下载事件
  - nickname回退逻辑（`name || nickname || "未命名"`）
  - 排序逻辑（power降序）

### 1.2 localTokenManager-changes.md
- **对应APK文件**：`localTokenManager-DrgF481l.js`
- **对应04-dev文件**：`src/stores/localTokenManager.js`
- **覆盖内容**：
  - APK：纯IndexedDB存储（kv + gameTokens stores）
  - 04-dev：localStorage存token + IndexedDB存ArrayBuffer
  - 04-dev独有：分组管理、连接锁、跨标签页协调、连接监控、自动刷新
  - WebSocket管理差异（WsAgent vs XyzwWebSocketClient）

### 1.3 bonProtocol-changes.md
- **对应APK文件**：`index-BUwMeHKm.js`（BON编解码器部分）
- **对应04-dev文件**：`src/utils/bonProtocol.js`
- **覆盖内容**：
  - BON协议编解码流程
  - 数据类型映射（int/long/string/map/list等）
  - encode/decode方法签名
  - getData()返回值结构

## 二、更新翻译（3个）

### 2.1 gameCommands-changes.md
- **当前状态**：仅46个命令翻译
- **04-dev实际**：183个命令方法
- **更新内容**：补充137+个新增命令的翻译，按分类组织

### 2.2 TokenImport-changes.md
- **当前状态**：缺少BIN名解析修复和nickname回退
- **更新内容**：
  - initName函数正则解析逻辑
  - nickname回退（`name || nickname || "未命名"`）
  - BIN数据缺失错误提示
  - singlebin server字段格式修复

### 2.3 GameFeatures-changes.md
- **当前状态**：Tab结构未反映最新变更
- **更新内容**：
  - daily tab：WeirdTowerStatus新增、SignInCard移除、组件顺序调整
  - club tab：仅保留ClubInfo+ClubCarKing
  - 子Tab类型：card→rounded
  - fightPvp独立Tab

## 三、不需要翻译的APK组件（18个）

| 类型 | 组件 | 理由 |
|------|------|------|
| 图标 | Cube, Search, Refresh, Add, AlertCircleOutline, CheckmarkCircle, ChevronDown, CloudUpload, EllipsisHorizontal, PersonCircle, Ribbon, Time | 纯SVG图标，无业务逻辑 |
| 工具 | DateTimeUtils, ThemeToggle, NotFound, render-function, _plugin-vue_export-helper, get-value-by-path, grid-col | 简单工具/纯展示组件 |

## 四、执行顺序

1. 新增3个翻译文件
2. 更新3个现有翻译文件
