# DailyTasks 模块 APK528 增量翻译

> 源文件: `DailyTasks-ObamfrKF.js`
> 对应基线: `00-baseline/src/views/DailyTasks.vue`

---

## 1. 概览

APK528 的 DailyTasks 模块相比基线有**重大重写**：

| 功能 | 基线 | APK528 | 变化 |
|------|------|--------|------|
| 任务卡片组件 | 基础模板 | 独立 DailyTaskCard 组件 + 设置弹窗 | 🔴 重大 |
| 任务数据源 | 动态/API | 硬编码模板 + localStorage 持久化 | 🔴 改架构 |
| 角色选择 | 简单选择 | 带统计的角色选择器 | 🟡 增强 |
| 任务筛选 | 基础 | 4种筛选 + 搜索 | 🟡 增强 |
| 批量操作 | 无 | 执行/标记/重置 | 🆕 新增 |
| WebSocket | 无 | 连接重试 + presetTeam 数据 | 🆕 新增 |

---

## 2. DailyTaskCard 组件

### 2.1 组件结构

```js
// DailyTaskCard 是一个独立的 Vue 组件
// Props: { task: Object, required: true }
// Emits: ['update:task', 'execute', 'toggle-status']

// 任务对象结构:
{
  id: "task_${roleId}_daily_signin",
  title: "每日签到",
  subtitle: "登录游戏获取签到奖励",
  icon: "/icons/ta.png",
  completed: false,
  canExecute: true,
  progress: { current: 0, total: 1 },
  reward: "金币 x100, 经验 x50",
  nextReset: "2024-01-02T00:00:00.000Z",  // ISO 字符串
  settings: {
    autoExecute: false,
    delay: 0,
    notification: true,
  },
  details: [
    { id: 1, name: "打开游戏客户端", completed: false },
    { id: 2, name: "点击签到按钮", completed: false },
  ],
  logs: [
    { id: 1, timestamp: 1234567890, type: "success", message: "已执行" },
  ],
}
```

### 2.2 任务设置弹窗

```js
// 每个任务卡片有独立的设置弹窗
// 设置项:
//   - autoExecute: 是否自动执行
//   - delay: 执行延迟（秒，0-300）
//   - notification: 完成时是否通知

// 设置变更时触发 update:task 事件
const updateSetting = (key, value) => {
  settings.value[key] = value;
  emit("update:task", { ...props.task, settings: { ...settings.value } });
};
```

### 2.3 任务执行按钮

```js
// 按钮文字根据状态动态变化
const getButtonText = () => {
  if (isExecuting.value) return "执行中...";
  if (props.task.canExecute) return "立即执行";
  return "不可执行";
};

const executeTask = async () => {
  if (isExecuting.value || !props.task.canExecute) return;
  try {
    isExecuting.value = true;
    await emit("execute", props.task.id);
    if (settings.value.notification) {
      message.success(`任务 "${props.task.title}" 执行成功`);
    }
  } catch (e) {
    message.error(`任务执行失败: ${e.message}`);
  } finally {
    isExecuting.value = false;
  }
};
```

### 2.4 设置同步

```js
// 监听外部 task.settings 变化，同步到本地
watch(
  () => props.task.settings,
  (newSettings) => {
    if (newSettings) {
      settings.value = { ...settings.value, ...newSettings };
    }
  },
  { immediate: true },
);
```

---

## 3. DailyTasks 页面

### 3.1 任务模板（硬编码）

```js
// APK528 使用硬编码的任务模板，而非动态获取
const generateTasks = (roleId) => [
  {
    id: `task_${roleId}_daily_signin`,
    title: "每日签到",
    subtitle: "登录游戏获取签到奖励",
    completed: false,
    canExecute: true,
    progress: { current: 0, total: 1 },
    reward: "金币 x100, 经验 x50",
    settings: { autoExecute: false, delay: 0, notification: true },
    details: [
      { id: 1, name: "打开游戏客户端", completed: false },
      { id: 2, name: "点击签到按钮", completed: false },
    ],
    nextReset: new Date(Date.now() + 24 * 60 * 60 * 1000).toISOString(),
    logs: [],
  },
  {
    id: `task_${roleId}_black_market_purchase`,
    title: "黑市购买",
    subtitle: "在黑市购买1次物品，如未购买到则兜底购买青铜宝箱",
    completed: false,
    canExecute: true,
    progress: { current: 0, total: 1 },
    reward: "随机物品或青铜宝箱",
    settings: { autoExecute: true, delay: 0, notification: true },
    details: [
      { id: 1, name: "尝试黑市购买1次物品", completed: false },
      { id: 2, name: "检查购买结果", completed: false },
      { id: 3, name: "如未购买到物品，购买青铜宝箱（兜底）", completed: false },
    ],
    nextReset: new Date(Date.now() + 24 * 60 * 60 * 1000).toISOString(),
    logs: [],
  },
  {
    id: `task_${roleId}_daily_quest`,
    title: "完成日常任务",
    subtitle: "完成5个日常任务获得奖励",
    completed: false,
    canExecute: true,
    progress: { current: 2, total: 5 },
    reward: "金币 x500, 装备碎片 x10",
    settings: { autoExecute: true, delay: 5, notification: true },
    details: [
      { id: 1, name: "击败10只怪物", completed: true },
      { id: 2, name: "收集20个材料", completed: true },
      { id: 3, name: "完成一次副本", completed: false },
      { id: 4, name: "参与公会活动", completed: false },
      { id: 5, name: "强化装备", completed: false },
    ],
    nextReset: new Date(Date.now() + 24 * 60 * 60 * 1000).toISOString(),
    logs: [
      { id: 1, timestamp: Date.now() - 30 * 60 * 1000, type: "success", message: "已完成击败怪物任务" },
      { id: 2, timestamp: Date.now() - 60 * 60 * 1000, type: "success", message: "已完成材料收集任务" },
    ],
  },
  {
    id: `task_${roleId}_guild_contribution`,
    title: "公会贡献",
    subtitle: "为公会贡献资源获得贡献点",
    completed: true,
    canExecute: false,
    progress: { current: 1, total: 1 },
    reward: "公会贡献点 x100",
    settings: { autoExecute: true, delay: 0, notification: true },
    details: [{ id: 1, name: "捐献金币", completed: true }],
    nextReset: new Date(Date.now() + 24 * 60 * 60 * 1000).toISOString(),
    logs: [
      { id: 1, timestamp: Date.now() - 2 * 60 * 60 * 1000, type: "success", message: "已完成公会贡献" },
    ],
  },
];
```

### 3.2 任务筛选

```js
// 四种筛选模式 + 搜索
const filterOptions = [
  { label: "全部", value: "all" },
  { label: "待完成", value: "pending" },
  { label: "已完成", value: "completed" },
  { label: "自动执行", value: "auto" },
];

const filteredTasks = computed(() => {
  let tasks = allTasks.value;

  switch (currentFilter.value) {
    case "pending":
      tasks = tasks.filter(t => !t.completed);
      break;
    case "completed":
      tasks = tasks.filter(t => t.completed);
      break;
    case "auto":
      tasks = tasks.filter(t => t.settings?.autoExecute);
      break;
  }

  // 搜索过滤
  if (searchQuery.value) {
    const query = searchQuery.value.toLowerCase();
    tasks = tasks.filter(t =>
      t.title.toLowerCase().includes(query) ||
      t.subtitle?.toLowerCase().includes(query)
    );
  }

  return tasks;
});
```

### 3.3 任务统计

```js
// 计算任务统计信息
const taskStats = computed(() => {
  const total = allTasks.value.length;
  const completed = allTasks.value.filter(t => t.completed).length;
  const percentage = total > 0 ? Math.round((completed / total) * 100) : 0;
  return { total, completed, percentage };
});
```

### 3.4 localStorage 持久化

```js
// 刷新任务数据
const refreshTasks = async () => {
  if (!selectedRoleId.value) {
    message.warning("请先选择游戏角色");
    return;
  }
  try {
    const tasks = generateTasks(selectedRoleId.value);
    allTasks.value = tasks;
    localStorage.setItem(`dailyTasks_${selectedRoleId.value}`, JSON.stringify(tasks));
    message.success("任务数据刷新成功");
  } catch (e) {
    message.error("本地数据生成失败");
  }
};

// 任务执行后保存
const updateTaskStorage = () => {
  localStorage.setItem(
    `dailyTasks_${selectedRoleId.value}`,
    JSON.stringify(allTasks.value),
  );
};
```

### 3.5 批量操作

```js
const bulkActionOptions = [
  { label: "执行所有待完成任务", key: "execute-all-pending" },
  { label: "标记所有为已完成", key: "mark-all-completed" },
  { label: "重置所有任务状态", key: "reset-all-tasks" },
];

const handleBulkAction = (key) => {
  switch (key) {
    case "execute-all-pending":
      // 执行所有待完成的任务
      allTasks.value.forEach(t => {
        if (!t.completed) executeTask(t.id);
      });
      break;
    case "mark-all-completed":
      allTasks.value.forEach(t => {
        t.completed = true;
        t.completedAt = new Date().toISOString();
      });
      updateTaskStorage();
      break;
    case "reset-all-tasks":
      allTasks.value.forEach(t => {
        t.completed = false;
        t.completedAt = null;
        t.logs = [];
      });
      updateTaskStorage();
      break;
  }
};
```

### 3.6 WebSocket 连接重试

```js
// 发送消息前确保 WebSocket 已连接，支持重试
const connectWithRetry = async (tokenId, maxRetries = 3, retryDelay = 2000) => {
  for (let attempt = 1; attempt <= maxRetries; attempt++) {
    try {
      if (tokenStore.getWebSocketStatus(tokenId) !== "connected") {
        const token = tokenStore.gameTokens.find(t => t.id === tokenId);
        if (token && token.token) {
          tokenStore.createWebSocketConnection(tokenId, token.token, token.wsUrl);
          await new Promise(resolve => setTimeout(resolve, retryDelay));

          if (tokenStore.getWebSocketStatus(tokenId) !== "connected") {
            if (attempt < maxRetries) continue;
            throw new Error("WebSocket连接超时");
          }
        } else {
          throw new Error("未找到有效的Token数据或WebSocket URL");
        }
      }
      return true;
    } catch (e) {
      if (attempt >= maxRetries) throw e;
      await new Promise(resolve => setTimeout(resolve, retryDelay));
    }
  }
};
```

### 3.7 预设阵容数据获取

```js
// 获取预设阵容数据（presetteam_getinfo）
const fetchPresetTeam = async (tokenId) => {
  await connectWithRetry(tokenId);

  const response = await tokenStore.sendMessageWithPromise(
    tokenId,
    "presetteam_getinfo",
    {},
    8000,  // 8秒超时
  );

  if (response) {
    tokenStore.$patch((state) => {
      state.gameData = { ...(state.gameData ?? {}), presetTeam: response };
    });
    message.success("阵容数据已更新");
    return response;
  }
};
```

### 3.8 任务执行（带 WebSocket 连接）

```js
const executeTask = async (taskId) => {
  if (!selectedRoleId.value) {
    message.error("请先选择游戏角色");
    return;
  }
  try {
    // 确保 WebSocket 已连接
    if (tokenStore.getWebSocketStatus(selectedRoleId.value) !== "connected") {
      const token = tokenStore.getGameToken(selectedRoleId.value);
      if (token) {
        tokenStore.createWebSocketConnection(selectedRoleId.value, token.token, token.wsUrl);
        await new Promise(resolve => setTimeout(resolve, 1000));
      } else {
        throw new Error("未找到游戏token，请重新添加角色");
      }
    }

    const taskIndex = allTasks.value.findIndex(t => t.id === taskId);
    if (taskIndex !== -1) {
      allTasks.value[taskIndex] = {
        ...allTasks.value[taskIndex],
        completed: true,
        completedAt: new Date().toISOString(),
      };

      // 添加执行日志
      if (!allTasks.value[taskIndex].logs) {
        allTasks.value[taskIndex].logs = [];
      }
      allTasks.value[taskIndex].logs.push({
        id: Date.now(),
        timestamp: Date.now(),
        type: "success",
        message: `任务 "${allTasks.value[taskIndex].title}" 执行成功`,
      });

      updateTaskStorage();
      message.success("任务执行成功");
    }
  } catch (e) {
    message.error(`任务执行失败: ${e.message}`);
  }
};
```

---

## 4. 关键对比

| 特性 | 基线 | APK528 |
|------|------|--------|
| 任务模板 | 空/动态 | 4个硬编码模板 |
| 数据持久化 | 无 | localStorage |
| 任务设置 | 无 | 自动执行/延迟/通知 |
| 筛选方式 | 基础 | 4种筛选 + 搜索 |
| WebSocket | 无 | 连接重试机制 |
| 批量操作 | 无 | 3种批量操作 |
| 任务详情 | 无 | 步骤列表 + 执行日志 |
| 进度显示 | 无 | current/total + 百分比 |

---

## 5. 实现优先级

| 功能 | 优先级 | 说明 |
|------|--------|------|
| 任务模板扩展 | P0 | 添加更多任务类型 |
| WebSocket 连接重试 | P0 | 提升可靠性 |
| 任务设置弹窗 | P1 | 用户体验提升 |
| localStorage 持久化 | P1 | 数据不丢失 |
| 批量操作 | P1 | 效率提升 |
| 任务详情/日志 | P2 | 信息展示 |
| 筛选 + 搜索 | P2 | 已有基础 |