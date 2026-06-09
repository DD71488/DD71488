# Changelog 更新日志翻译

> 源文件: `Changelog-rtBh_2zR.js` (654行)
> 翻译时间: 2026-06-03
> 翻译方法: minified变量名 → 可读名 + 中文注释

---

## 1. ChangelogCard 更新日志卡片组件

**组件名**: `ChangelogCard`
**行号范围**: 21-208
**功能描述**: 单条更新日志的展示卡片，包含版本号、日期、类型标签、新功能/改进/修复/重大变更列表

### 1.1 模板静态结构定义

```javascript
// 行 21-34
const M = { class: "changelog-card" },           // 卡片容器
  R = { class: "changelog-header" },             // 头部（版本号+日期）
  W = { class: "changelog-meta" },               // 元信息区
  E = { class: "release-date" },                 // 发布日期
  z = { class: "changelog-content" },            // 内容区
  A = { key: 0, class: "changelog-title" },      // 标题（可选）
  J = { key: 1, class: "change-section" },       // 新功能区
  U = { class: "change-list" },                  // 功能列表
  q = { key: 2, class: "change-section" },       // 改进优化区
  G = { class: "change-list" },                  // 改进列表
  H = { key: 3, class: "change-section" },       // 修复问题区
  K = { class: "change-list" },                  // 修复列表
  P = { key: 4, class: "change-section breaking" }, // 重大变更区
  Q = { class: "change-list" };                  // 重大变更列表
```

### 1.2 Props定义

```javascript
// 行 37-43
props: {
  entry: {                                       // 日志条目对象
    type: Object,
    required: true,
    validator: (entry) => entry.version && entry.date && entry.type,  // 必须含version/date/type
  },
},
```

### 1.3 formatRelativeDate — 相对日期格式化

```javascript
// 行 45-62
const formatRelativeDate = (dateStr) => {        // h = (d) => ...
  const date = new Date(dateStr);
  const diffMs = new Date() - date;
  const diffDays = Math.floor(diffMs / (1000 * 60 * 60 * 24));

  return diffDays === 0 ? "今天"
       : diffDays === 1 ? "昨天"
       : diffDays < 7  ? `${diffDays}天前`
       : diffDays < 30 ? `${Math.floor(diffDays / 7)}周前`
       : date.toLocaleDateString("zh-CN", {       // 超过30天显示完整日期
           year: "numeric",
           month: "long",
           day: "numeric",
         });
};
```

### 1.4 getTypeLabel — 版本类型标签

```javascript
// 行 63-69
const getTypeLabel = (type) =>                   // b = (d) => ...
  ({
    major: "主要版本",
    minor: "次要版本",
    patch: "补丁版本",
    hotfix: "热修复",
  })[type] || type;                              // 未知类型直接返回原值
```

### 1.5 渲染逻辑

```javascript
// 行 70-205 — render函数
// 卡片结构：
// div.changelog-card
//   div.changelog-header
//     div.version-badge[badge-{type}]（版本号，如 v1.3.0）
//     div.changelog-meta
//       span.release-date（相对日期，如"2天前"）
//       span.type-tag[tag-{type}]（类型标签，如"次要版本"）
//
//   div.changelog-content
//     [有title时] div.changelog-title（标题文字）
//     [有features时] div.change-section > h4 "✨ 新功能" + ul > li列表
//     [有improvements时] div.change-section > h4 "⬆️ 改进优化" + ul > li列表
//     [有fixes时] div.change-section > h4 "🐛 修复问题" + ul > li列表
//     [有breaking时] div.change-section.breaking > h4 "⚠️ 重大变更" + ul > li列表
```

---

## 2. useChangelogStore — 更新日志Pinia Store

**Store名**: `changelog`
**行号范围**: 209-400
**功能描述**: 管理更新日志数据，包含CRUD操作、本地存储持久化、版本对比、未读标记

### 2.1 初始数据

```javascript
// 行 209-315
const useChangelogStore = defineStore("changelog", () => {
  const changelogs = ref([                        // t = T([...]) — 日志列表
    {
      version: "v1.3.0",
      date: "2025-01-15",
      type: "minor",
      title: "俱乐部盐场战绩与身份牌功能上线",
      features: [
        "新增俱乐部盐场战绩查询功能，支持内联和弹窗两种展示模式",
        "新增身份牌组件，展示玩家个人信息和游戏数据",
        "新增游戏状态页面的日常/俱乐部/活动分区切换",
        "新增战绩数据导出功能，支持Excel格式",
        "新增月度任务进度跟踪功能",
      ],
      improvements: [
        "优化俱乐部信息数据聚合逻辑，兼容多版本服务端",
        "优化响应式布局以适配新的界面结构",
        "改进Token持久化存储，使用IndexedDB替代localStorage",
        "优化游戏状态页面的数据加载性能",
      ],
      fixes: [
        "修复俱乐部战绩数据加载失败的问题",
        "修复身份牌在某些情况下显示异常的bug",
        "修复月度任务进度计算错误的问题",
      ],
    },
    {
      version: "v1.2.1",
      date: "2025-01-08",
      type: "patch",
      title: "WebSocket连接优化",
      improvements: [
        "改进WebSocket重连机制，提高连接稳定性",
        "优化消息队列管理，防止消息丢失",
        "增强心跳检测机制，及时发现连接异常",
      ],
      fixes: [
        "修复WebSocket连接在网络波动时断开的问题",
        "修复消息发送失败后未正确重试的bug",
        "修复心跳超时后未触发重连的问题",
      ],
    },
    {
      version: "v1.2.0",
      date: "2025-01-01",
      type: "minor",
      title: "Token管理系统重构",
      features: [
        "全新的Token管理界面，支持多账号管理",
        "新增Token导入功能，支持Base64格式解析",
        "新增Token状态监控，实时显示连接状态",
        "新增Token分组功能，方便管理多个账号",
      ],
      improvements: [
        "优化Token解析算法，支持更多格式",
        "改进Token存储机制，使用加密存储",
        "优化Token切换速度，提升用户体验",
        "改进路由守卫逻辑，基于Token状态进行访问控制",
      ],
      breaking: [
        "旧的用户认证系统已废弃，全面迁移到Token管理系统",
        "需要重新导入所有游戏账号Token",
      ],
    },
    {
      version: "v1.1.5",
      date: "2024-12-20",
      type: "hotfix",
      title: "紧急修复BON协议解析问题",
      fixes: [
        "修复BON协议解析中的严重bug，导致部分消息无法正确解析",
        "修复加密消息解密失败的问题",
        "修复消息序列号错误导致的通信异常",
      ],
    },
    {
      version: "v1.1.0",
      date: "2024-12-15",
      type: "minor",
      title: "日常任务系统上线",
      features: [
        "新增日常任务管理页面",
        "新增任务进度跟踪功能",
        "新增任务自动完成功能",
        "新增任务奖励领取提醒",
      ],
      improvements: [
        "优化任务数据加载速度",
        "改进任务状态更新机制",
        "优化任务列表渲染性能",
      ],
    },
    {
      version: "v1.0.0",
      date: "2024-12-01",
      type: "major",
      title: "系统正式发布",
      features: [
        "基础Token管理功能",
        "WebSocket连接管理",
        "BON协议实现",
        "游戏角色管理",
        "基础UI框架",
        "响应式设计支持",
      ],
    },
  ]);
```

### 2.2 计算属性

```javascript
// 行 316-329
const latestVersion = computed(() =>              // h = p(() => ...)
  changelogs.value.length > 0 ? changelogs.value[0] : null
);

const getRecentChangelogs = computed(() =>        // b = p(() => ...)
  (count = 3) => changelogs.value.slice(0, count)  // 获取最近N条日志
);

const getChangelogsByType = computed(() =>        // d = p(() => ...)
  (type) => changelogs.value.filter(entry => entry.type === type)  // 按类型筛选
);

const statistics = computed(() => ({              // r = p(() => ...)
  totalVersions: changelogs.value.length,
  majorVersions: changelogs.value.filter(e => e.type === "major").length,
  minorVersions: changelogs.value.filter(e => e.type === "minor").length,
  patchVersions: changelogs.value.filter(e => e.type === "patch").length,
  hotfixVersions: changelogs.value.filter(e => e.type === "hotfix").length,
}));
```

### 2.3 CRUD操作

```javascript
// 行 330-346
const addChangelog = (entry) => {                // u = (n) => ...
  changelogs.value.unshift(entry);               // 在列表头部插入
  saveToLocalStorage();
};

const updateChangelog = (version, updates) => {  // i = (n, v) => ...
  const index = changelogs.value.findIndex(e => e.version === version);
  if (index !== -1) {
    changelogs.value[index] = { ...changelogs.value[index], ...updates };
    saveToLocalStorage();
  }
};

const deleteChangelog = (version) => {           // m = (n) => ...
  const index = changelogs.value.findIndex(e => e.version === version);
  if (index !== -1) {
    changelogs.value.splice(index, 1);
    saveToLocalStorage();
  }
};
```

### 2.4 本地存储持久化

```javascript
// 行 341-355
const saveToLocalStorage = () => {               // g = () => ...
  try {
    localStorage.setItem("changelogs", JSON.stringify(changelogs.value));
  } catch (err) {
    console.error("保存更新日志到本地存储失败:", err);
  }
};

const loadFromLocalStorage = () => {             // s = () => ...
  try {
    const data = localStorage.getItem("changelogs");
    if (data) changelogs.value = JSON.parse(data);
  } catch (err) {
    console.error("从本地存储加载更新日志失败:", err);
  }
};
```

### 2.5 版本对比与未读标记

```javascript
// 行 356-380
const getVersionDiff = (fromVersion, toVersion) => { // a = (n, v) => ...
  const fromIndex = changelogs.value.findIndex(e => e.version === fromVersion);
  const toIndex = changelogs.value.findIndex(e => e.version === toVersion);
  if (fromIndex === -1 || toIndex === -1) return [];
  return changelogs.value.slice(Math.min(fromIndex, toIndex), Math.max(fromIndex, toIndex) + 1);
};

const hasNewVersion = (currentVersion) => {      // I = (n) => ...
  if (!latestVersion.value) return false;
  return latestVersion.value.version !== currentVersion;
};

const getUnreadChangelogs = () => {              // N = () => ...
  try {
    const lastReadVersion = localStorage.getItem("last_read_changelog_version");
    if (!lastReadVersion) return changelogs.value;  // 从未读过，返回全部
    const index = changelogs.value.findIndex(e => e.version === lastReadVersion);
    return index === -1 ? changelogs.value : changelogs.value.slice(0, index);
  } catch (err) {
    console.error("获取未读更新日志失败:", err);
    return [];
  }
};

const markAsRead = (version) => {                // B = (n) => ...
  try {
    localStorage.setItem("last_read_changelog_version", version);
  } catch (err) {
    console.error("标记更新日志为已读失败:", err);
  }
};
```

---

## 3. Changelog 更新日志页面

**组件名**: `Changelog`
**行号范围**: 401-653
**功能描述**: 更新日志列表页面，包含版本类型筛选、统计卡片、日志列表、订阅通知

### 3.1 setup — 核心状态

```javascript
// 行 427-467
setup(props) {
  const store = useChangelogStore(),              // Z() — 更新日志Store
    filterType = ref("all"),                      // T("all") — 当前筛选类型
    subscribed = ref(false),                      // T(!1) — 是否已订阅

    // 筛选选项
    filterOptions = [                             // [...]
      { value: "all", label: "全部" },
      { value: "major", label: "主要版本" },
      { value: "minor", label: "次要版本" },
      { value: "patch", label: "补丁" },
      { value: "hotfix", label: "热修复" },
    ],

    // 筛选后的日志列表
    filteredChangelogs = computed(() =>           // p(() => ...)
      filterType.value === "all"
        ? store.changelogs
        : store.changelogs.filter(entry => entry.type === filterType.value)
    ),

    // 统计数据
    pageStats = computed(() => ({                 // p(() => ...)
      totalVersions: store.changelogs.length,
      totalFeatures: store.changelogs.reduce((sum, entry) =>
        sum + (entry.features?.length || 0), 0),
      totalFixes: store.changelogs.reduce((sum, entry) =>
        sum + (entry.fixes?.length || 0), 0),
      totalImprovements: store.changelogs.reduce((sum, entry) =>
        sum + (entry.improvements?.length || 0), 0),
    })),

    // 切换订阅状态
    toggleSubscribe = () => {                     // m = () => ...
      subscribed.value = !subscribed.value;
      if (subscribed.value) {
        localStorage.setItem("changelog_subscribed", "true");
        alert("已成功订阅更新通知！");
      } else {
        localStorage.removeItem("changelog_subscribed");
        alert("已取消订阅");
      }
    };
```

### 3.2 onMounted — 恢复订阅状态

```javascript
// 行 469-471
onMounted(() => {                                 // D(() => ...)
  subscribed.value = localStorage.getItem("changelog_subscribed") === "true";
});
```

### 3.3 渲染逻辑概览

```javascript
// 行 472-652 — render函数
// 页面结构：
// div.changelog-page
//   div.changelog-container
//     div.page-header
//       h1.page-title "📜 更新日志"
//       p.page-description "查看系统的最新更新和改进内容"
//       div.filter-section
//         label "版本类型："
//         div.filter-buttons
//           遍历 filterOptions 渲染筛选按钮（active高亮当前选中）
//
//     div.stats-grid（4个统计卡片）
//       🚀 总版本数
//       ✨ 新功能数
//       🐛 修复问题数
//       ⬆️ 优化改进数
//
//     div.changelog-list
//       TransitionGroup[name=changelog-fade]
//         遍历 filteredChangelogs 渲染 ChangelogCard 组件
//       [无数据时] div.empty-state
//         📭 "暂无该类型的更新日志"
//         button "重置筛选"
//
//     div.subscribe-section
//       div.subscribe-card
//         🔔 div.subscribe-icon
//         div.subscribe-content
//           h3 "订阅更新通知"
//           p "第一时间获取系统更新信息"
//         button.subscribe-btn（"已订阅"/"立即订阅"）
```

### 功能说明

Changelog 模块包含3个部分：

**ChangelogCard 组件**:
- **版本徽章**: 根据 type（major/minor/patch/hotfix）显示不同样式
- **相对日期**: 今天/昨天/X天前/X周前/完整日期
- **4种变更类型**: ✨新功能 / ⬆️改进优化 / 🐛修复问题 / ⚠️重大变更
- **类型标签**: 主要版本/次要版本/补丁版本/热修复

**useChangelogStore**:
- **6条初始日志**: v1.0.0 ~ v1.3.0，涵盖系统发布到俱乐部战绩功能
- **CRUD操作**: 新增/更新/删除日志条目
- **本地持久化**: localStorage 存储 changelogs 数据
- **版本对比**: getVersionDiff 获取两个版本之间的所有日志
- **未读标记**: 基于 last_read_changelog_version 判断未读日志
- **统计信息**: 按类型统计版本数量

**Changelog 页面**:
- **5种筛选**: 全部/主要版本/次要版本/补丁/热修复
- **4项统计**: 总版本数/新功能数/修复问题数/优化改进数
- **空状态**: 筛选无结果时显示"暂无该类型的更新日志" + 重置按钮
- **订阅通知**: 切换订阅状态，持久化到 localStorage
- **过渡动画**: TransitionGroup 实现列表淡入淡出
