# Changelog 模块 minified→源码 变量名映射表

> 目标文件: `/workspace/TRAE 使用/GLM仅修复修正/01-reference/formatted-js/Changelog-rtBh_2zR.js`
> 生成时间: 2026-06-03

---

## 1. 导入映射 (import aliases)

### 1.1 来自 `./index-BUwMeHKm.js` 的 Vue/框架 API

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `l` | `createElementBlock` | Vue API | L2 | Vue 渲染函数 |
| `o` | `openBlock` | Vue API | L3 | Vue 渲染函数 |
| `e` | `createBaseVNode` | Vue API | L4 | Vue 渲染函数 |
| `C` | `normalizeClass` | Vue API | L5 | Vue 类名规范化 |
| `c` | `toDisplayString` | Vue API | L6 | Vue 显示字符串 |
| `y` | `createCommentVNode` | Vue API | L7 | Vue 注释节点 |
| `$` | `createTextVNode` | Vue API | L8 | Vue 文本节点 |
| `k` | `Fragment` | Vue API | L9 | Vue 片段 |
| `x` | `renderList` | Vue API | L10 | Vue 列表渲染 |
| `w` | `defineStore` | Pinia API | L11 | Pinia Store 定义函数 |
| `T` | `ref` | Vue API | L12 | Vue 响应式引用 |
| `p` | `computed` | Vue API | L13 | Vue 计算属性 |
| `D` | `onMounted` | Vue API | L14 | Vue 生命周期钩子 |
| `F` | `createVNode` | Vue API | L15 | Vue 渲染函数 |
| `j` | `withCtx` | Vue API | L16 | Vue 渲染上下文 |
| `O` | `TransitionGroup` | Vue API | L17 | Vue 过渡组组件 |
| `L` | `createBlock` | Vue API | L18 | Vue 渲染函数 |

### 1.2 来自 `./_plugin-vue_export-helper-DlAUqK2U.js`

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `V` | `_export_sfc` | 工具函数 | L20 | SFC 组件导出辅助 |

---

## 2. ChangelogCard 子组件映射

> 组件定义在 L35 (`__name: "ChangelogCard"`)

### 2.1 模板静态节点

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `M` | class "changelog-card" | 常量 | L21 | 卡片容器 class |
| `R` | class "changelog-header" | 常量 | L22 | 头部 class |
| `W` | class "changelog-meta" | 常量 | L23 | 元信息 class |
| `E` | class "release-date" | 常量 | L24 | 发布日期 class |
| `z` | class "changelog-content" | 常量 | L25 | 内容区 class |
| `A` | class "changelog-title" | 常量 | L26 | 标题 class |
| `J` | class "change-section" | 常量 | L27 | 变更区段 class (features) |
| `U` | class "change-list" | 常量 | L28 | 变更列表 class (features) |
| `q` | class "change-section" | 常量 | L29 | 变更区段 class (improvements) |
| `G` | class "change-list" | 常量 | L30 | 变更列表 class (improvements) |
| `H` | class "change-section" | 常量 | L31 | 变更区段 class (fixes) |
| `K` | class "change-list" | 常量 | L32 | 变更列表 class (fixes) |
| `P` | class "change-section breaking" | 常量 | L33 | 变更区段 class (breaking) |
| `Q` | class "change-list" | 常量 | L34 | 变更列表 class (breaking) |

### 2.2 ChangelogCard 组件内方法

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `h` | `formatRelativeDate` | 函数 | L45-61 | 格式化相对日期 (今天/昨天/N天前/N周前/完整日期) |
| `b` | `getTypeLabel` | 函数 | L63-69 | 获取版本类型标签 (major→主要版本, minor→次要版本, patch→补丁版本, hotfix→热修复) |

### 2.3 ChangelogCard 导出

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `X` | `_sfc_main` (ChangelogCard) | 组件 | L35-207 | ChangelogCard 组件定义 |
| `Y` | `ChangelogCard` | 组件 | L208 | 导出的 ChangelogCard 组件 (带 scopedId) |

---

## 3. useChangelogStore (Pinia Store) 映射

> Store 定义在 L209，使用 `defineStore("changelog", () => {...})`

### 3.1 Store 响应式状态

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `t` | `changelogs` | ref | L210-315 | 更新日志列表 (含6条预置记录) |

### 3.2 Store 计算属性

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `h` | `latestVersion` | computed | L316 | 最新版本 (changelogs[0]) |
| `b` | `getRecentChangelogs` | computed | L317-320 | 获取最近N条更新日志 |
| `d` | `getChangelogsByType` | computed | L322 | 按类型筛选更新日志 |
| `r` | `statistics` | computed | L323-329 | 统计信息 (total/major/minor/patch/hotfix 数量) |

### 3.3 Store 方法

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `u` | `addChangelog` | 函数 | L330-332 | 添加更新日志 |
| `i` | `updateChangelog` | 函数 | L333-336 | 更新更新日志 |
| `m` | `deleteChangelog` | 函数 | L337-340 | 删除更新日志 |
| `g` | `saveToLocalStorage` | 函数 | L341-347 | 保存到 localStorage |
| `s` | `loadFromLocalStorage` | 函数 | L348-355 | 从 localStorage 加载 |
| `a` | `getVersionDiff` | 函数 | L356-362 | 获取两个版本之间的更新日志 |
| `I` | `hasNewVersion` | 函数 | L363 | 检查是否有新版本 |
| `N` | `getUnreadChangelogs` | 函数 | L364-373 | 获取未读更新日志 |
| `B` | `markAsRead` | 函数 | L374-379 | 标记版本为已读 |

### 3.4 Store 导出

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `Z` | `useChangelogStore` | Store | L209 | Pinia Store 定义 |
| - | `changelogs` | 导出 | L384 | 更新日志列表 |
| - | `latestVersion` | 导出 | L385 | 最新版本 |
| - | `getRecentChangelogs` | 导出 | L386 | 获取最近日志 |
| - | `getChangelogsByType` | 导出 | L387 | 按类型筛选 |
| - | `statistics` | 导出 | L388 | 统计信息 |
| - | `addChangelog` | 导出 | L389 | 添加日志 |
| - | `updateChangelog` | 导出 | L390 | 更新日志 |
| - | `deleteChangelog` | 导出 | L391 | 删除日志 |
| - | `saveToLocalStorage` | 导出 | L392 | 保存到本地 |
| - | `loadFromLocalStorage` | 导出 | L393 | 从本地加载 |
| - | `getVersionDiff` | 导出 | L394 | 获取版本差异 |
| - | `hasNewVersion` | 导出 | L395 | 是否有新版本 |
| - | `getUnreadChangelogs` | 导出 | L396 | 获取未读日志 |
| - | `markAsRead` | 导出 | L397 | 标记已读 |

---

## 4. Changelog 主组件映射

> 组件定义在 L425 (`__name: "Changelog"`)

### 4.1 模板静态节点

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `ee` | class "changelog-page" | 常量 | L401 | 页面容器 class |
| `te` | class "changelog-container" | 常量 | L402 | 内容容器 class |
| `se` | class "page-header" | 常量 | L403 | 页头 class |
| `ne` | class "filter-section" | 常量 | L404 | 筛选区 class |
| `ae` | class "filter-group" | 常量 | L405 | 筛选组 class |
| `oe` | class "filter-buttons" | 常量 | L406 | 筛选按钮组 class |
| `le` | onClick attribute | 常量 | L407 | 按钮点击属性 |
| `re` | class "stats-grid" | 常量 | L408 | 统计网格 class |
| `ie` | class "stat-card" | 常量 | L409 | 统计卡片 class |
| `ce` | class "stat-content" | 常量 | L410 | 统计内容 class |
| `de` | class "stat-value" | 常量 | L411 | 统计值 class |
| `ue` | class "stat-card" | 常量 | L412 | 统计卡片 class (features) |
| `ge` | class "stat-content" | 常量 | L413 | 统计内容 class |
| `ve` | class "stat-value" | 常量 | L414 | 统计值 class |
| `he` | class "stat-card" | 常量 | L415 | 统计卡片 class (fixes) |
| `fe` | class "stat-content" | 常量 | L416 | 统计内容 class |
| `me` | class "stat-value" | 常量 | L417 | 统计值 class |
| `be` | class "stat-card" | 常量 | L418 | 统计卡片 class (improvements) |
| `ye` | class "stat-content" | 常量 | L419 | 统计内容 class |
| `ke` | class "stat-value" | 常量 | L420 | 统计值 class |
| `xe` | class "changelog-list" | 常量 | L421 | 日志列表 class |
| `pe` | class "empty-state" | 常量 | L422 | 空状态 class |
| `_e` | class "subscribe-section" | 常量 | L423 | 订阅区 class |
| `$e` | class "subscribe-card" | 常量 | L424 | 订阅卡片 class |

### 4.2 组件内响应式变量

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `h` | `changelogStore` (useChangelogStore) | Store | L428 | Changelog Store 实例 |
| `b` | `activeFilter` | ref | L429 | 当前筛选类型 (初始 "all") |
| `d` | `isSubscribed` | ref | L430 | 是否已订阅 (初始 false) |

### 4.3 组件内常量

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `r` | `filterOptions` | 常量 | L431-437 | 筛选选项列表 [{value, label}] |

### 4.4 组件内计算属性

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `u` | `filteredChangelogs` | computed | L438-441 | 筛选后的更新日志列表 |
| `i` | `pageStatistics` | computed | L442-459 | 页面统计信息 (totalVersions/totalFeatures/totalFixes/totalImprovements) |

### 4.5 组件内方法

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `m` | `toggleSubscribe` | 函数 | L460-467 | 切换订阅状态 |

### 4.6 导出

| minified名 | 源码名 | 类型 | 位置 | 说明 |
|---|---|---|---|---|
| `Se` | `_sfc_main` (Changelog) | 组件 | L425-652 | Changelog 主组件定义 |
| `Ie` | `Changelog` | 组件 | L653 | 导出的默认组件 (带 scopedId) |
