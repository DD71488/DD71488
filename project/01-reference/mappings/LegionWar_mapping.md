# LegionWar 变量名映射

> 源文件: LegionWar-CKHcokIB.js
> 生成时间: 2026-06-03

## 全局映射

### 导入映射 (import aliases)

| minified | 源码名 | 说明 |
|----------|--------|------|
| `Te` | `LegionWarGraph` (from legionWar) | 盐场图论算法实例，`Te.getInstance()` |
| `Se` | `parseBattlefieldData` (from legionWar) | 解析盐场战场数据，`Se(canvasRef, isOccupiedMode)` |
| `Be` | `getNeutralColor` (from legionWar) | 获取中立颜色，`Be(9)` |
| `We` | `formatPower` (from legionWar) | 格式化战力 |
| `ge` | `formatDateTime` (from DateTimeUtils) | 日期时间格式化 |
| `_e` | `XyzwWebSocketClient` (from DateTimeUtils) | WebSocket 客户端类 |
| `Me` | `useTokenStore` | Pinia Token Store |
| `Pe` | `useMessage` | Naive UI 消息提示 |
| `W` | `ref` | Vue 响应式引用 |
| `U` | `computed` | Vue 计算属性 |
| `He` | `onMounted` | Vue 生命周期钩子 |
| `$e` | `onUnmounted` | Vue 生命周期钩子 |
| `ze` | `createElementBlock` | Vue 渲染函数 |
| `f` | `createBaseVNode` | Vue 渲染函数 |
| `O` | `createVNode` | Vue 渲染函数 |
| `Z` | `createTextVNode` | Vue 文本节点 |
| `ee` | `withCtx` | Vue 渲染上下文 |
| `pe` | `resolveComponent` | Vue 组件解析 |
| `ve` | `toDisplayString` | Vue 显示字符串 |
| `De` | `openBlock` | Vue 渲染函数 |
| `Re` | `normalizeClass` | Vue 类名规范化 |
| `Ae` | `unref` | Vue 解包 ref |
| `je` | `_export_sfc` | SFC 组件导出辅助 |

### 模块级常量

| minified | 源码名 | 说明 |
|----------|--------|------|
| `P` | `HEX_SIZE` | 六边形大小常量，值 13.25 |
| `he` | `HEX_GAP` | 六边形间距常量，值 2.75 |
| `me` | `HEX_WIDTH` | 六边形宽度，`2 * P = 26.5` |
| `te` | `HEX_HEIGHT` | 六边形高度，`Math.sqrt(3) * P ≈ 22.95` |

### 静态模板节点

| minified | 源码名 | 说明 |
|----------|--------|------|
| `Ee` | `class: "legion-war-container"` | 页面根容器 |
| `Oe` | `class: "legion-war-map"` | 盐场地图区 |
| `Ne` | `class: "map-title"` | 地图标题 |
| `Fe` | `class: "map-container"` | 地图Canvas容器 |
| `Ue` | `class: "legion-war-operation"` | 操作面板区 |
| `Ve` | `class: "legion-war-operation-container"` | 操作面板容器 |
| `Xe` | `class: "legion-war-operation-item"` | 操作项(占领布局) |
| `Ge` | `class: "legion-war-operation-item"` | 操作项(战队战况) |
| `Ye` | `class: "legion-war-operation-item"` | 操作项(拉取数据) |
| `qe` | `class: "legion-war-operation-item"` | 操作项(发送免费复活) |

## 组件内映射

### LegionWar 主组件 (`Ke` / `__name: "LegionWar"`)

| minified | 源码名 | 作用域 | 说明 |
|----------|--------|--------|------|
| `Ke` | `LegionWar` (组件对象) | 组件 | `__name: "LegionWar"`，盐场地图主组件 |
| `no` | `LegionWar` (SFC编译结果) | 组件 | `je(Ke, [["__scopeId", "data-v-1892cc19"]])`，默认导出 |
| `b` | `tokenStore` (useTokenStore) | LegionWar | Pinia Token Store 实例 |
| `A` | `message` (useMessage) | LegionWar | Naive UI 消息实例 |
| `w` | `warSocket` | LegionWar | 盐场 WebSocket 连接实例 (XyzwWebSocketClient) |
| `N` | `battlefieldId` | LegionWar | `ref(null)` 战场ID |
| `j` | `isEntered` | LegionWar | `ref(false)` 是否已进入战场 |
| `oe` | `currentTime` | LegionWar | `ref(formatDateTime("yyyy-MM-dd HH:mm:ss"))` 当前时间 |
| `V` | `connectionStatus` | LegionWar | `computed` 连接状态 (connected/disconnected) |
| `be` | `statusClass` | LegionWar | `computed` 状态CSS类名 |
| `H` | `isOccupiedMode` | LegionWar | `ref(false)` 占领布局模式开关 |
| `X` | `isPersonalMode` | LegionWar | `ref(false)` 个人战况模式开关 |
| `G` | `canvasRef` | LegionWar | `ref(null)` Canvas DOM 引用，`ref_key: "legionWarMapDom"` |
| `i` | `ctx` | LegionWar | Canvas 2D 上下文 |
| `S` | `devicePixelRatio` | LegionWar | `window.devicePixelRatio \|\| 1` 设备像素比 |
| `F` | `resizeHandler` | LegionWar | 窗口resize回调函数 |
| `a` | `hexGrid` | LegionWar | `Array(41x41)` 六边形网格数据 |
| `I` | `maxCoords` | LegionWar | `[0, 0]` 最大坐标边界 |
| `C` | `battlefieldData` | LegionWar | `ref(null)` 战场数据 |
| `le` | `rawData` | LegionWar | `ref(null)` 原始WebSocket数据 |

### 绘制函数映射

| minified | 源码名 | 作用域 | 说明 |
|----------|--------|--------|------|
| `ye` | `drawHexagon` | LegionWar | 绘制单个六边形 |
| `Y` | `renderMap` | LegionWar | 渲染地图主函数 (clear + draw + table) |
| `se` | `drawMap` | LegionWar | 绘制地图核心逻辑 (图论路径+六边形+文字) |
| `Ie` | `drawBorderLine` | LegionWar | 绘制边界线 |
| `Ce` | `drawDataTable` | LegionWar | 绘制数据表格 (俱乐部/个人) |
| `ke` | `drawTable` | LegionWar | 通用Canvas表格绘制函数 |
| `xe` | `drawTooltip` | LegionWar | 绘制点击提示框 (坐标/血量/类型/分数/所属) |

### 操作函数映射

| minified | 源码名 | 作用域 | 说明 |
|----------|--------|--------|------|
| `ne` | `handleModeSwitch` | LegionWar | 布局/模式切换回调 |
| `we` | `sendReviveInfo` | LegionWar | 发送各战队免费复活信息到频道 |
| `Le` | `connectBattlefield` | LegionWar | 建立WebSocket连接并进入战场 |
| `re` | `enterBattlefield` | LegionWar | 进入盐场战场，创建XyzwWebSocketClient |
| `ae` | `refreshBattlefieldInfo` | LegionWar | 拉取战场数据 (war_getbattlefieldinfo) |
| `ie` | `initCanvas` | LegionWar | 初始化Canvas尺寸和上下文 |

### WebSocket 事件处理

| minified | 源码名 | 作用域 | 说明 |
|----------|--------|--------|------|
| `w.onConnect` | onConnect | LegionWar | 连接成功后发送 `war_enterbattlefield` |
| `w.setMessageListener` | onMessage | LegionWar | 监听 `war_getbattlefieldinfo` 更新地图 |
| `w.onDisconnect` | onDisconnect | LegionWar | 断开连接处理 |
| `w.onError` | onError | LegionWar | 错误处理 |

### API 命令映射

| 命令字符串 | 用途 | 说明 |
|-----------|------|------|
| `legion_getbattlefield` | 获取盐场战场信息 | 初始连接时调用 |
| `war_enterbattlefield` | 进入盐场战场 | WebSocket连接成功后调用 |
| `war_getbattlefieldinfo` | 获取战场实时信息 | 拉取数据/刷新时调用 |
