# ServerRoleList 组件变更翻译

## 1. 组件概述

ServerRoleList 是一个服务器角色列表组件，用于展示用户在多个区服下的角色信息。支持搜索过滤、双端自适应布局（移动端卡片 / 桌面端表格），并提供"添加"和"下载"操作按钮。典型使用场景为军团战等需要选择角色的功能模块。

---

## 2. APK528 实现

### Props / Events

| 属性 | 类型 | 默认值 |
|------|------|--------|
| `data` | `{}`（无类型约束） | — |
| `title` | `String` | `"服务器角色列表"` |
| `serverColumnTitle` | `String` | `"区服"` |
| `maxHeight` | `String` | `""` |

| 事件 | 参数 |
|------|------|
| `add` | 角色行对象 |
| `download` | 角色行对象 |

### Template 结构

```
div[ref=listRootRef]
  └─ NCard（条件渲染：data && data.length > 0）
       ├─ 搜索栏：NInput（v-model:value, clearable, size=small, prefix=NIcon+SearchIcon）
       ├─ 移动端卡片列表（class=server-role-list--mobile）
       │    └─ v-for 遍历 filteredData
       │         ├─ 角色名：l.name || "未命名"
       │         ├─ 元信息：区服号 + "服" | "序号" + 角色序号 | "战力" + formatPower
       │         └─ 操作按钮：NButton(primary, "添加") + NButton(info, "下载")
       └─ 桌面端表格（class=server-role-list--desktop）
            └─ NDataTable（columns, data=filteredData, pagination={pageSize:5}, scroll-x=600）
```

### 关键逻辑

#### serverId 解码（`h` 函数 → getServerIdDisplay）

```js
function h(e) {
  let t = Number(e.serverId);
  if (t >= 2_000_000) t -= 2_000_000;  // 跨服2
  else if (t >= 1_000_000) t -= 1_000_000;  // 跨服1
  return t - 27;  // 偏移量27
}
```

#### 角色序号（`C` 函数 → getRoleIndexDisplay）

```js
function C(e) {
  const t = Number(e.serverId);
  if (t >= 2_000_000) return 2;  // 跨服2 → 序号2
  if (t >= 1_000_000) return 1;  // 跨服1 → 序号1
  return 0;  // 本服 → 序号0
}
```

#### 搜索过滤（`S` computed → filteredData）

```js
const S = computed(() => {
  const keyword = (y.value || "").trim();  // y = serverSearchKeyword
  if (!keyword) return a.data;  // a = props
  const lower = keyword.toLowerCase();
  return a.data.filter(l => {
    const serverNum = String(h(l));          // 解码后的区服号
    const name = (l.name || "").toLowerCase(); // ⚠️ 仅用 name
    const roleId = String(l.roleId || "");
    return serverNum.includes(keyword)   // 区服号匹配（原始关键词）
        || name.includes(lower)          // 角色名匹配（小写）
        || roleId.includes(keyword);     // 角色ID匹配（原始关键词）
  });
});
```

#### 滚动到可视区域（`B` 函数 → scrollListIntoView）

1. 优先查找最近的 `modal-body` / `modal-content` 滚动容器
2. 若无，向上遍历父元素，找到第一个可滚动容器（overflowY 为 auto/scroll/overlay 且内容溢出）
3. 兜底调用 `scrollIntoView({ behavior: "smooth", block: "start" })`

#### 数据变化监听（watch）

```js
watch(() => a.data.length, (newLen, oldLen) => {
  if (newLen > 0 && (oldLen === 0 || oldLen === undefined)) {
    nextTick(() => {
      requestAnimationFrame(() => {
        const el = x.value;  // x = listRootRef
        if (el) B(el);       // 滚动到可视区域
      });
    });
  }
});
```

当数据从空变为有数据时，自动将列表滚动到可视区域顶部。

#### 表格列定义（`z` computed → columns）

| 列标题 | key | 说明 |
|--------|-----|------|
| 区服（props.serverColumnTitle） | serverId | render 调用 getServerIdDisplay |
| 角色序号 | roleIndex | render 调用 getRoleIndexDisplay |
| 角色ID | roleId | 直接显示 |
| 角色名称 | name | 直接显示 |
| 战力 | power | render 调用 formatPower，支持 sorter |
| 操作 | actions | render 渲染"添加"+"下载"按钮 |

### 数据流

```
props.data → filteredData（搜索过滤）→ 移动端卡片列表 / 桌面端表格
用户点击按钮 → emit("add", row) / emit("download", row)
```

---

## 3. 04-dev 实现

### Props / Events

| 属性 | 类型 | 默认值 |
|------|------|--------|
| `data` | `any[]` | — |
| `title` | `string?` | `"服务器角色列表"` |
| `serverColumnTitle` | `string?` | `"区服"` |
| `maxHeight` | `string?` | `""` |

| 事件 | 参数 |
|------|------|
| `add` | `row: any` |
| `download` | `row: any` |

**与 APK 差异**：Props 增加了 TypeScript 类型注解，`data` 从 `{}` 变为 `any[]`。

### Template 结构

```
div[ref=listRootRef]
  └─ a-card（条件渲染：data && data.length > 0）
       ├─ 搜索栏：a-input（v-model, clearable, size=small, prefix=IconSearch）
       ├─ 移动端卡片列表（class=server-role-list--mobile）
       │    └─ v-for 遍历 filteredData
       │         ├─ 角色名：row.name || row.nickname || "未命名"  ⚠️ 新增 nickname 回退
       │         ├─ 元信息：区服号 + "服" | "序号" + 角色序号 | "战力" + formatPower
       │         └─ 操作按钮：a-button(primary, "添加") + a-button(info, "下载")
       └─ 桌面端表格（class=server-role-list--desktop）
            └─ a-table（columns, data=filteredData, pagination={pageSize:5}, scroll-x=600）
```

### 关键逻辑

与 APK528 逻辑基本一致，以下仅列出差异点：

#### 搜索过滤（filteredData computed）

```ts
const filteredData = computed(() => {
  const keyword = (serverSearchKeyword.value || "").trim();
  if (!keyword) return props.data;
  const lower = keyword.toLowerCase();
  return props.data.filter((row: any) => {
    const serverNum = String(getServerIdDisplay(row));
    const name = (row.name || row.nickname || "").toLowerCase(); // ⚠️ 新增 nickname 回退
    const roleId = String(row.roleId || "");
    return serverNum.includes(keyword) || name.includes(lower) || roleId.includes(keyword);
  });
});
```

#### 表格操作列

使用 Arco Design 的 `Button` 组件通过 `h()` 渲染函数创建，而非模板中的 `a-button`。

### 数据流

与 APK528 一致。

---

## 4. 关键差异

### 4.1 nickname 回退逻辑

| 场景 | APK528 | 04-dev |
|------|--------|--------|
| 卡片标题显示 | `l.name \|\| "未命名"` | `row.name \|\| row.nickname \|\| "未命名"` |
| 搜索过滤 | `(l.name \|\| "").toLowerCase()` | `(row.name \|\| row.nickname \|\| "").toLowerCase()` |

**影响**：04-dev 版本在 `name` 为空时会回退到 `nickname` 字段，使搜索和显示覆盖更多数据场景。APK528 仅使用 `name`，当 `name` 为空时直接显示"未命名"且无法通过角色昵称搜索。

### 4.2 UI 框架差异

| 组件 | APK528（Naive UI） | 04-dev（Arco Design） |
|------|--------------------|-----------------------|
| 卡片容器 | `NCard`（`<o(Y)>`） | `a-card` |
| 搜索输入 | `NInput`（`<o(M)>`） | `a-input` |
| 搜索图标 | `NIcon` + SearchIcon（`<o(A)>`） | `IconSearch` |
| 按钮 | `NButton`（`<o(v)>`） | `a-button` / `Button`（h 函数） |
| 数据表格 | `NDataTable`（`<o(Q)>`） | `a-table` |

### 4.3 TypeScript 支持

- APK528：纯 JavaScript，Props 使用 `{}` 无类型约束
- 04-dev：完整 TypeScript，Props 使用 `defineProps<{...}>()` 泛型语法，Emits 使用 `defineEmits<{...}>()` 泛型语法

### 4.4 formatPower 导入

- APK528：`import{f as w}from"./legionWar-5YonzZw2.js"` → 使用 `w(power)` 调用
- 04-dev：`import{formatPower}from"@/utils/legionWar"` → 使用 `formatPower(power)` 调用

功能一致，仅模块路径和命名不同。

### 4.5 其他一致项

以下逻辑在两个版本中完全一致，无差异：

- serverId 解码算法（偏移量 27，跨服1/2 判断）
- 角色序号判断逻辑
- 搜索过滤核心算法（区服号 + 名称 + 角色ID 三字段匹配）
- scrollListIntoView 滚动逻辑（modal 优先 → 父级遍历 → scrollIntoView 兜底）
- watch data.length 变化后自动滚动
- 表格列定义（列标题、key、render、sorter）
- 分页配置（pageSize: 5）
- CSS 双端响应式布局（768px 断点，移动端卡片 / 桌面端表格）
- 卡片样式类名（server-role-card__main / __title / __meta / __actions）

---

## 5. 业务逻辑翻译

### 5.1 serverId 解码规则

原始 serverId 是一个编码后的数字，解码规则如下：

1. **跨服2**：serverId ≥ 2,000,000 → 先减去 2,000,000，再减去 27，得到实际区服号
2. **跨服1**：serverId ≥ 1,000,000 → 先减去 1,000,000，再减去 27，得到实际区服号
3. **本服**：serverId < 1,000,000 → 直接减去 27，得到实际区服号

**示例**：serverId = 1000028 → 跨服1，实际区服 = 1000028 - 1000000 - 27 = 1服

### 5.2 角色序号规则

根据 serverId 编码判断角色所在服务器类型：

- serverId ≥ 2,000,000 → 序号 2（跨服2角色）
- serverId ≥ 1,000,000 → 序号 1（跨服1角色）
- serverId < 1,000,000 → 序号 0（本服角色）

### 5.3 搜索过滤逻辑

用户在搜索框输入关键词后，对列表进行三字段模糊匹配过滤：

1. **区服号匹配**：将解码后的区服号转为字符串，检查是否包含原始关键词（区分大小写）
2. **角色名称匹配**：将角色名称（APK: name；04-dev: name 或 nickname）转为小写，检查是否包含小写化后的关键词
3. **角色ID匹配**：将 roleId 转为字符串，检查是否包含原始关键词（区分大小写）

任一字段匹配即保留该行。搜索框为空时返回全部数据。

### 5.4 角色选择事件

- **添加（add）**：点击"添加"按钮，将对应角色行对象通过 `emit("add", row)` 传递给父组件
- **下载（download）**：点击"下载"按钮，将对应角色行对象通过 `emit("download", row)` 传递给父组件

两个事件的处理逻辑完全由父组件决定，本组件仅负责触发。

### 5.5 自动滚动行为

当角色列表数据从空（length === 0 或 undefined）变为有数据（length > 0）时：

1. 等待 Vue DOM 更新（nextTick）
2. 等待浏览器渲染完成（requestAnimationFrame）
3. 查找合适的滚动容器并将列表根元素滚动到可视区域顶部

滚动容器查找优先级：模态框滚动容器 → 祖先级可滚动容器 → 浏览器原生 scrollIntoView。

### 5.6 双端布局

- **移动端（< 768px）**：卡片列表，每个角色一张卡片，纵向排列，最大高度 50vh 可滚动
- **桌面端（≥ 768px）**：数据表格，支持分页（每页5条）和战力排序，可配置最大高度
