# DailyTaskRunner 新增与修改函数翻译

> 源文件: `01-reference/formatted-js/imageExport-BfNAYNiL.js`
> 映射表: `01-reference/mappings/imageExport_mapping.md`
> 注释表: `01-reference/annotations/dailyTaskRunner_annotations.md`
> 翻译时间: 2026-05-31

---

## 1. ERROR_CODE_MAP — 错误码映射

**行号范围**: L17-41
**minified 名**: `D`

### 翻译后代码

```javascript
// 错误码 → 中文消息映射表
// 将游戏服务端返回的6-7位数字错误码映射为用户友好的中文提示
const ERROR_CODE_MAP = new Map([
  ["400190", "没有可领取的签到奖励"],
  ["2300190", "今日已完成签到"],
  ["1000020", "该奖励今日已领取"],
  ["12000116", "今日免费奖励已领取"],
  ["1400010", "没有购买该月卡,不能领取每日奖励"],
  ["3300050", "购买数量超出限制"],
  ["2600040", "未知错误"],
  ["200750", "临时错误"],               // 竞技场临时错误，可重试
  ["700020", "任务条件未满足，无法领取"],
  ["200020", "请求过于频繁，请稍后重试"],
  ["1300050", "黑市采购次数异常"],
  ["1500020", "能量不足"],
  ["3500020", "暂无可领取奖励"],
  ["200160", "模块未开启无法领取"],
  ["700010", "任务未达成无法领取"],
  ["4100040", "推关未达标，无法解锁领取"],
  ["1100010", "已购买过青铜宝箱"],
  ["400010", "数量不足"],
  ["2000150", "无对应罐子，无法领取"],
  ["400030", "已领取，无需重复操作"],
  ["2300070", "未加入俱乐部"],
  ["2300250", "俱乐部BOSS次数已用完"],
  ["3300060", "灯神扫荡条件不满足"],
]);
```

### 功能说明

全局错误码映射表，使用 `Map` 结构存储。游戏服务端返回的错误对象中包含6-7位数字错误码，此表将其映射为用户可读的中文消息。供 `getErrorMessage()` 和 `isKnownError()` 查询使用。已知错误码的业务错误可被静默处理（不抛异常），避免中断任务流程。

---

## 2. CONTEXT_ERROR_MAP — 上下文错误映射

**行号范围**: L42-49
**minified 名**: `P`

### 翻译后代码

```javascript
// 按模块分类的上下文错误消息映射
// 同一错误码在不同模块中可能有不同含义，此表提供更精确的模块级错误描述
const CONTEXT_ERROR_MAP = {
  dreamWorld: { 200160: "该账号未达到关卡无法解锁梦境" },
  arena:      { 200020: "推关关卡未达标无法解锁竞技场" },
  blackMarket:{ 1300040: "未解锁关卡，无法使用采购功能" },
  formation:  { 200020: "该账号阵容未解锁" },
  genie:      { 200020: "该账号灯神扫荡条件未满足" },
  hangUp:     { 200020: "加钟请求过于频繁，请稍后重试" },
};
```

### 功能说明

按业务模块分类的错误消息映射。同一错误码（如 `200020`）在不同模块中含义不同：竞技场中代表"关卡未达标"，阵容中代表"阵容未解锁"，挂机中代表"请求过于频繁"。`getErrorMessage()` 会优先查询此表，若无匹配再回退到 `ERROR_CODE_MAP`。

---

## 3. extractErrorCode — 提取错误码

**行号范围**: L65-70
**minified 名**: `C`

### 翻译后代码

```javascript
// 从错误对象中提取6-7位数字错误码
// 支持字符串错误或含 message 属性的 Error 对象
const extractErrorCode = (error) => {
  const message = (
    typeof error === "string" ? error : (error?.message) || ""
  ).match(/\d{6,7}/);  // 匹配6位或7位连续数字
  return message ? message[0] : "";
};
```

### 功能说明

从错误对象中提取6-7位数字错误码。游戏服务端的错误消息格式通常为 `"错误码:描述"` 或纯数字码，此函数用正则 `/\d{6,7}/` 提取其中的数字部分。返回空字符串表示未找到有效错误码。

---

## 4. getErrorMessage — 获取友好错误消息

**行号范围**: L71-79
**minified 名**: `$`

### 翻译后代码

```javascript
// 获取友好的错误消息
// 优先查上下文映射（同一错误码在不同模块有不同含义），再查通用映射，最后回退到原始消息
const getErrorMessage = (error, context = "") => {
  const code = extractErrorCode(error);
  // 1. 优先：如果有上下文且上下文映射中有对应错误码，返回模块级消息
  if (context && CONTEXT_ERROR_MAP[context]?.[code]) {
    return CONTEXT_ERROR_MAP[context][code];
  }
  // 2. 其次：查通用错误码映射
  if (ERROR_CODE_MAP.has(code)) {
    return ERROR_CODE_MAP.get(code);
  }
  // 3. 回退：返回原始错误消息或"未知错误"
  return error?.message || "未知错误";
};
```

### 功能说明

三级错误消息查找：先按上下文模块查 `CONTEXT_ERROR_MAP`（精确匹配），再查通用 `ERROR_CODE_MAP`，最后回退到原始 `error.message`。`sendCommand()` 中通过 `context` 参数传入模块名（如 `"arena"`、`"hangUp"`），实现同一错误码在不同场景下的差异化提示。

---

## 5. isKnownError — 判断已知业务错误

**行号范围**: L80
**minified 名**: `N`

### 翻译后代码

```javascript
// 判断错误是否为已知业务错误（可静默处理）
// 已知错误码在 ERROR_CODE_MAP 中有记录，属于正常业务逻辑，不应中断任务
const isKnownError = (error) => ERROR_CODE_MAP.has(extractErrorCode(error));
```

### 功能说明

判断一个错误是否属于"已知业务错误"。已知错误（如"今日已签到"、"奖励已领取"）是正常业务状态，不应视为异常。`sendCommand()` 中 `silentErrors` 模式下，已知错误会被静默处理并返回 `{ success: true, silent: true }`，不中断任务流程。

---

## 6. isConnectionError — 判断连接错误

**行号范围**: L81-84
**minified 名**: `U`

### 翻译后代码

```javascript
// 判断是否为连接错误（含"连接"或"WebSocket"关键字）
// 连接错误需要触发重试机制，而非直接抛出异常
const isConnectionError = (error) => {
  const message = error?.message || "";
  return message.includes("连接") || message.includes("WebSocket");
};
```

### 功能说明

通过检查错误消息中是否包含"连接"或"WebSocket"关键字来判断是否为网络连接错误。`sendCommand()` 中对连接错误有特殊处理：自动重试最多3次，而非直接抛出异常。这是与业务错误（`isKnownError`）不同的错误处理路径。

---

## 7. delay / randomDelay — 延时函数

**行号范围**: L63-64
**minified 名**: `p` / `x`

### 翻译后代码

```javascript
// 延时函数：等待指定毫秒数
const delay = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

// 随机延时：在 [minMs, maxMs) 范围内随机等待
const randomDelay = (minMs, maxMs) => delay(minMs + Math.random() * (maxMs - minMs));
```

### 功能说明

Promise 化的延时工具函数。`delay` 用于命令间固定延时（如 `commandDelay`、`taskDelay`），`randomDelay` 用于需要随机间隔的场景（如领取日常/周常奖励之间的2-3秒随机等待），模拟人工操作节奏，避免被服务端检测为脚本行为。

---

## 8. isTodayAvailable — 判断时间戳是否为今天

**行号范围**: L85-90
**minified 名**: `v`

### 翻译后代码

```javascript
// 判断时间戳是否为今天（已重置）
// 返回 true 表示该时间戳不是今天 → 对应任务/统计"今天可用"（尚未完成）
// 返回 false 表示该时间戳是今天 → 对应任务/统计"今天不可用"（已完成）
const isTodayAvailable = (timestamp) => {
  if (!timestamp) return true;  // 无时间戳视为未完成
  const today = new Date().toDateString();
  const targetDate = new Date(timestamp * 1000).toDateString();
  return today !== targetDate;  // 不是同一天 = 今天可用
};
```

### 功能说明

通过比较日期字符串判断给定时间戳是否属于今天。游戏中的统计/任务完成时间以 Unix 秒级时间戳存储，如果时间戳不是今天，说明对应任务今天尚未完成，可以执行。此函数在 `buildBasicTasks`、`buildBossTasks`、`buildActivityTasks` 等方法中广泛使用。

---

## 9. getTodayBossId — 获取今日BOSS ID

**行号范围**: L91
**minified 名**: `Y`

### 翻译后代码

```javascript
// 获取今日BOSS ID（按星期几映射）
// 周日→9904, 周一→9905, 周二→9901, 周三→9902, 周四→9903, 周五→9904, 周六→9905
const getTodayBossId = () =>
  [9904, 9905, 9901, 9902, 9903, 9904, 9905][new Date().getDay()];
```

### 功能说明

按星期几返回对应的每日BOSS ID。`getDay()` 返回 0(周日)-6(周六)，直接索引数组获取对应BOSS ID。在 `buildBossTasks()` 中调用 `fight_startboss` 命令时传入此ID。

---

## 10. isDungeonOpenDay — 判断梦境开放日

**行号范围**: L92
**minified 名**: `j`

### 翻译后代码

```javascript
// 判断今天是否为咸王梦境开放日
// 开放日：周日(0)、周一(1)、周三(3)、周四(4)
const isDungeonOpenDay = () => DUNGEON_OPEN_DAYS.includes(new Date().getDay());
```

### 功能说明

检查今天是否为咸王梦境的开放日。`DUNGEON_OPEN_DAYS = [0, 1, 3, 4]` 对应周日、周一、周三、周四。`buildDreamWorldTask()` 中使用此函数判断是否添加梦境任务。

---

## 11. getNestedValue — 深层属性访问器

**行号范围**: L93-94
**minified 名**: `f`

### 翻译后代码

```javascript
// 深层属性访问器，安全地通过点分路径访问嵌套对象
// 例如: getNestedValue(obj, "info.roleId") 等价于 obj?.info?.roleId
// 第三个参数为默认值，访问失败时返回
const getNestedValue = (obj, path, defaultValue = null) =>
  path.split(".").reduce(
    (current, key) => (current && current[key] !== undefined ? current[key] : defaultValue),
    obj
  );
```

### 功能说明

安全的深层属性访问器。游戏返回的数据结构层级较深（如 `presetTeamInfo.useTeamId`、`info.roleId`），直接链式访问容易因中间属性为 `null`/`undefined` 而报错。此函数用 `reduce` 逐层安全访问，失败时返回默认值。在 `normalizeTarget`、`getCurrentFormation`、`executeArenaFight` 等多处使用。

---

## 12. extractTargetList — 提取目标列表

**行号范围**: L95-100
**minified 名**: `z`

### 翻译后代码

```javascript
// 从目标数据中提取列表，兼容多种字段名
// 游戏不同接口返回的目标列表字段名不一致：
//   arena_getareatarget → rankList
//   其他接口 → roleList / targets / targetList / list
// 也可能是直接的数组
const extractTargetList = (data) =>
  data
    ? Array.isArray(data)
      ? data
      : data.rankList || data.roleList || data.targets || data.targetList || data.list || []
    : [];
```

### 功能说明

从不同游戏接口返回的目标数据中提取目标列表。由于各接口字段名不统一（`rankList`、`roleList`、`targets`、`targetList`、`list`），此函数按优先级依次尝试，兼容所有格式。在 `pickBestTarget` 中使用。

---

## 13. normalizeTarget — 标准化目标对象

**行号范围**: L101-106
**minified 名**: `L`

### 翻译后代码

```javascript
// 标准化目标对象，统一不同接口返回的目标字段名
// 输入可能是 {roleId, name, rank, power} 或 {id, info:{roleId, name, rank, power}} 等格式
// 输出统一为 {targetId, targetName, targetRank, targetPower}
const normalizeTarget = (target) => ({
  targetId:   target.roleId || target.id || target.targetId || getNestedValue(target, "info.roleId"),
  targetName: target.name || getNestedValue(target, "info.name", "未知"),
  targetRank: target.rank || getNestedValue(target, "info.rank", 0),
  targetPower: target.power || getNestedValue(target, "info.power", 0),
});
```

### 功能说明

将不同格式的目标对象标准化为统一结构。游戏接口返回的目标数据格式多样：有的直接有 `roleId`，有的嵌套在 `info` 中，有的用 `id`。标准化后统一使用 `targetId`/`targetName`/`targetRank`/`targetPower`，方便后续处理。在 `pickBestTarget` 中使用。

---

## 14. compareByPower — 按战力排序比较函数

**行号范围**: L107-111
**minified 名**: `K`

### 翻译后代码

```javascript
// 按战力升序排序的比较函数（战力低的排前面 → 优先攻击弱目标）
const compareByPower = (a, b) => {
  const powerA = a.power || getNestedValue(a, "info.power", 0);
  const powerB = b.power || getNestedValue(b, "info.power", 0);
  return powerA - powerB;
};
```

### 功能说明

数组排序比较函数，按 `power`（战力）升序排列。在竞技场目标选择中，战力最低的目标排在最前面，优先攻击最弱对手以提高胜率。兼容 `power` 直接属性和 `info.power` 嵌套属性。

---

## 15. pickBestTarget — 选择最优目标

**行号范围**: L112-125
**minified 名**: `Z`

### 翻译后代码

```javascript
// 选择最优竞技场目标（战力最低且满足排名要求）
// data: 接口返回的目标数据
// options: { rank } 最低排名筛选条件
const pickBestTarget = (data, options = {}) => {
  if (!data) return null;

  const targetList = extractTargetList(data);

  // 如果列表为空但数据本身就是一个目标，直接标准化返回
  if (targetList.length === 0 && (data.roleId || data.id || data.targetId)) {
    return normalizeTarget(data);
  }
  if (targetList.length === 0) return null;

  // 按排名筛选：排除排名低于阈值的目标
  const minRank = options.rank || 0;
  let filtered = targetList.filter((target) => {
    const rank = target.rank || getNestedValue(target, "info.rank", 0);
    return !(minRank > 0 && rank < minRank);
  });
  // 如果全部被过滤掉，回退到完整列表
  if (filtered.length === 0) filtered = targetList;

  // 按战力升序排序，选择战力最低的目标
  const sorted = [...filtered].sort(compareByPower);
  return normalizeTarget(sorted[0]);
};
```

### 功能说明

竞技场目标选择的核心逻辑，替代开源版本中的 `pickArenaTargetId()`。三步流程：① `extractTargetList` 提取列表 → ② 按排名筛选（排除排名太低的高战力目标） → ③ `compareByPower` 按战力排序取最弱目标。如果筛选后无目标则回退到完整列表。在 `executeArenaFight()` 中使用。

---

## 16. 游戏配置常量

**行号范围**: L2-16
**minified 名**: `R` / `_` / `y` / `b` / `G` / `A` / `O` / `F` / `S` / `q` / `X`

### 翻译后代码

```javascript
// 招募类型：FREE=免费招募(3), PAID=付费招募(1)
const RECRUIT_TYPE = { FREE: 3, PAID: 1 };

// 宝箱类型配置
const BOX_TYPE = {
  DIAMOND: { id: 2005, name: "钻石宝箱" },
  WOODEN:  { id: 2001, name: "木质宝箱" },
  BRONZE:  { id: 1,    name: "青铜宝箱" },
};

// 竞技场配置：开放时间6:00-22:00，每日最多3次战斗
const ARENA_CONFIG = { START_HOUR: 6, END_HOUR: 22, MAX_FIGHTS: 3 };

// 卡片类型：周卡(4001)、月卡(4002)、永久卡(4003)
const CARD_TYPE = { WEEKLY: 4001, MONTHLY: 4002, PERMANENT: 4003 };

const GENIE_COUNT = 4;          // 灯神国家数量（魏蜀吴群）
const FREE_FISH_COUNT = 3;      // 免费钓鱼次数
const FREE_SWEEP_COUNT = 3;     // 免费扫荡卷次数
const FREE_GOLD_COUNT = 3;      // 免费点金次数
const ADD_TIME_COUNT = 4;       // 挂机加钟次数
const DAILY_TASK_COUNT = 10;    // 每日任务奖励数量
const DUNGEON_OPEN_DAYS = [0, 1, 3, 4];  // 咸王梦境开放日（周日/一/三/四）
```

### 功能说明

将开源版本中散落在各处的硬编码数字提取为命名常量，提高可读性和可维护性。这些常量在 `buildBasicTasks`、`buildArenaTask`、`buildActivityTasks`、`buildRewardTasks` 等 build 方法中使用。

---

## 17. defaultSettings — 默认设置

**行号范围**: L50-62
**minified 名**: `I`

### 翻译后代码

```javascript
// 默认任务设置（[修改] 新增 blackMarketStandalonePurchase 项）
const defaultSettings = {
  arenaFormation: 1,                // 竞技场阵容ID
  bossFormation: 1,                 // BOSS阵容ID
  bossTimes: 2,                     // 军团BOSS挑战次数
  claimBottle: true,                // 是否领取盐罐
  payRecruit: true,                 // 是否付费招募
  openBox: true,                    // 是否开箱
  arenaEnable: true,                // 是否启用竞技场
  claimHangUp: true,                // 是否领取挂机奖励
  claimEmail: true,                 // 是否领取邮件奖励
  blackMarketPurchase: true,        // 是否黑市购买
  blackMarketStandalonePurchase: false,  // [新增] 是否独立购买黑市（兜底青铜宝箱）
};
```

### 功能说明

默认任务配置对象。与开源版本相比新增了 `blackMarketStandalonePurchase`（默认 `false`），控制黑市购买失败后是否尝试兜底购买青铜宝箱。`loadSettings()` 中使用此对象作为默认值，与 localStorage 中存储的用户设置合并。

---

## 18. DailyTaskRunner.constructor — 构造函数

**行号范围**: L127-134
**minified 名**: `ne`
**变更类型**: [修改] 新增 settings/tokenId/callbacks 属性

### 翻译后代码

```javascript
class DailyTaskRunner {
  constructor(tokenStore, delaySettings = null) {
    this.tokenStore = tokenStore;           // Token存储管理器
    this.delaySettings = {                  // 延时设置，合并默认值
      commandDelay: 500,                    // 命令间延时（毫秒）
      taskDelay: 500,                       // 任务间延时（毫秒）
      ...delaySettings,
    };
    this.callbacks = {};                    // [新增] 回调函数集合（onLog, onProgress）
    this.settings = {};                     // [新增] 当前运行设置（由 loadSettings 加载）
    this.tokenId = "";                      // [新增] 当前 Token ID（由 run() 设置）
    this.originalFormation = null;          // 原始阵容ID（用于恢复）
  }
```

### 功能说明

构造函数新增三个实例属性：`callbacks` 存储日志和进度回调，`settings` 存储当前运行的任务配置，`tokenId` 存储当前操作的 Token 标识。开源版本中这些信息通过方法参数传递，重构后提升为实例属性，使各 build 方法无需重复传参。`originalFormation` 用于记录切换阵容前的原始阵容ID，任务完成后恢复。

---

## 19. 日志快捷方法 — success / warn / error / info

**行号范围**: L140-151
**变更类型**: [新增]

### 翻译后代码

```javascript
// 成功日志（绿色标记）
success(message) {
  this.log(message, "success");
}

// 警告日志（黄色标记）
warn(message) {
  this.log(message, "warning");
}

// 错误日志（红色标记）
error(message) {
  this.log(message, "error");
}

// 信息日志（蓝色标记）
info(message) {
  this.log(message, "info");
}
```

### 功能说明

`log()` 方法的语义化快捷方式，避免每次手动传入日志类型字符串。各 build 方法中大量使用 `this.success()`、`this.warn()` 等替代 `this.log(msg, "success")`，提高代码可读性。

---

## 20. loadSettings — 加载设置

**行号范围**: L152-159
**变更类型**: [修改] 新增 blackMarketStandalonePurchase 设置项

### 翻译后代码

```javascript
// 加载指定角色的任务设置，从 localStorage 读取并与默认设置合并
loadSettings(roleId) {
  try {
    const stored = localStorage.getItem(`daily-settings:${roleId}`);
    return stored ? { ...defaultSettings, ...JSON.parse(stored) } : { ...defaultSettings };
  } catch (error) {
    console.error("设置加载失败:", error);
    return { ...defaultSettings };  // 加载失败时使用默认设置
  }
}
```

### 功能说明

从 localStorage 读取角色专属的任务配置，与 `defaultSettings` 合并。存储键格式为 `daily-settings:{roleId}`。新增的 `blackMarketStandalonePurchase` 默认为 `false`，旧版存储数据中无此字段时自动使用默认值。

---

## 21. isConnected — 检查连接状态

**行号范围**: L160-170
**变更类型**: [新增]

### 翻译后代码

```javascript
// 检查当前 tokenId 对应的 WebSocket 连接是否处于 connected 状态
isConnected() {
  return this.tokenStore.wsConnections?.[this.tokenId]?.status === "connected";
}
```

### 功能说明

通过检查 `tokenStore.wsConnections` 中对应 Token 的连接状态来判断 WebSocket 是否可用。`sendCommand()` 在发送命令前会先调用 `ensureConnection()` 确保连接可用，而 `ensureConnection()` 内部依赖此方法判断连接状态。

---

## 22. ensureConnection — 确保连接可用

**行号范围**: L171-190
**变更类型**: [新增]

### 翻译后代码

```javascript
// 确保连接可用，最多重试3次
// 每次重试尝试刷新 Token 并等待2秒后检查连接状态
async ensureConnection(retryCount = 0) {
  if (this.isConnected()) return true;

  // 超过3次重试，关闭连接并返回失败
  if (retryCount >= 3) {
    this.error("连接失败次数已达上限 (3次)");
    this.tokenStore.closeWebSocketConnection(this.tokenId);
    return false;
  }

  this.warn(`连接异常，尝试刷新Token (${retryCount + 1}/3)`);

  try {
    // 尝试刷新 Token
    if (await this.tokenStore.attemptTokenRefresh(this.tokenId, true)) {
      await delay(2000);  // 等待2秒让连接建立
      if (this.isConnected()) {
        this.success("连接已恢复");
        return true;
      }
      this.warn("Token刷新成功但连接未建立");
    } else {
      this.error("Token刷新失败");
    }
    return false;
  } catch (error) {
    this.error(`刷新Token出错: ${error.message}`);
    return false;
  }
}
```

### 功能说明

自动重连机制：检测到连接断开时，最多尝试3次刷新 Token 恢复连接。每次刷新后等待2秒检查连接状态。超过3次重试则主动关闭连接并返回失败。`sendCommand()` 在每次发送前调用此方法，`fetchRoleData()` 在连接错误时也会调用。`run()` 入口处也会调用一次确保初始连接可用。

---

## 23. sendCommand — 发送游戏命令

**行号范围**: L191-230
**变更类型**: [修改] 参数结构重构，支持静默错误/上下文/重试

### 翻译后代码

```javascript
// 发送游戏命令（增强版 executeGameCommand）
// cmd: 命令字符串，如 "hero_recruit"
// params: 命令参数对象
// options: { description, timeout, context, silentErrors, retryCount }
async sendCommand(cmd, params = {}, options = {}) {
  const {
    description = "",        // 命令描述（用于日志）
    timeout = 3000,          // 超时时间（毫秒）
    context = "",            // 上下文模块名（用于 CONTEXT_ERROR_MAP 查询）
    silentErrors = false,    // 是否静默已知业务错误
    retryCount = 0,          // 当前重试次数
  } = options;

  const MAX_RETRIES = 3;

  try {
    // 发送前确保连接可用
    if (!(await this.ensureConnection(retryCount))) {
      throw new Error("连接异常");
    }

    const result = await this.tokenStore.sendMessageWithPromise(
      this.tokenId,
      cmd,
      params,
      timeout,
    );

    // 命令间延时
    await delay(this.delaySettings.commandDelay);

    if (description) {
      this.success(`${description} - 成功`);
    }
    return result;

  } catch (error) {
    // 路径1: 连接错误 → 自动重试（最多3次）
    if (isConnectionError(error) && retryCount < MAX_RETRIES) {
      this.warn(`[连接错误] ${description}，重试 (${retryCount + 1}/${MAX_RETRIES})`);
      await delay(1000);
      return this.sendCommand(cmd, params, { ...options, retryCount: retryCount + 1 });
    }

    // 路径2: 静默模式 + 已知业务错误 → 返回 { success: true, silent: true }
    if (silentErrors && isKnownError(error)) {
      const message = getErrorMessage(error, context);
      this.info(message);
      return { success: true, silent: true };
    }

    // 路径3: 非静默 → 记录错误日志并抛出异常
    if (description) {
      const message = getErrorMessage(error, context);
      if (!isKnownError(error)) {
        this.error(`${description} - 失败: ${message}`);
      }
    }
    throw error;
  }
}
```

### 功能说明

开源版本 `executeGameCommand(tokenId, cmd, params, description, timeout)` 的重构版。核心变化：

1. **参数结构重构**：从5个位置参数改为 `(cmd, params, options)` 三参数形式，`options` 为解构对象，新增 `context`、`silentErrors`、`retryCount`
2. **自动重连**：发送前调用 `ensureConnection()`，连接错误时自动重试最多3次
3. **静默错误模式**：`silentErrors=true` 时，已知业务错误（`isKnownError`）不抛异常，返回 `{ success: true, silent: true }`
4. **上下文错误映射**：通过 `context` 参数实现同一错误码在不同模块的差异化提示
5. **内部使用 `this.tokenId`**：不再需要外部传入 tokenId

---

## 24. sendCommandSafe — 静默错误版 sendCommand

**行号范围**: L231-233
**变更类型**: [新增]

### 翻译后代码

```javascript
// 静默错误版 sendCommand：已知业务错误不抛异常
// 适用于"可跳过"的任务，如领取盐罐、竞技场战斗等
async sendCommandSafe(cmd, params = {}, options = {}) {
  return this.sendCommand(cmd, params, { ...options, silentErrors: true });
}
```

### 功能说明

`sendCommand` 的便捷封装，自动设置 `silentErrors: true`。用于"可容忍失败"的任务场景：如盐罐奖励已领取、军团BOSS次数已用完等已知业务错误不应中断整体流程。在 `buildBasicTasks`、`buildSaltBottleTasks`、`buildBossTasks`、`buildActivityTasks` 等方法中广泛使用。

---

## 25. getCurrentFormation — 获取当前阵容

**行号范围**: L234-245
**变更类型**: [新增]

### 翻译后代码

```javascript
// 获取当前使用的阵容ID
// 调用 presetteam_getinfo 接口，从返回的 presetTeamInfo.useTeamId 中提取
async getCurrentFormation() {
  try {
    const result = await this.sendCommand(
      "presetteam_getinfo",
      {},
      { description: "获取阵容信息" },
    );
    return getNestedValue(result, "presetTeamInfo.useTeamId");
  } catch {
    return null;  // 获取失败返回 null
  }
}
```

### 功能说明

获取当前激活的阵容ID。在 `run()` 入口处记录原始阵容，在 `switchFormationIfNeeded()` 中判断是否需要切换，在 `restoreFormation()` 中恢复原始阵容。使用 `getNestedValue` 安全访问深层属性。

---

## 26. switchFormation — 切换阵容

**行号范围**: L246-260
**变更类型**: [新增]

### 翻译后代码

```javascript
// 切换到指定阵容
// teamId: 目标阵容ID
async switchFormation(teamId) {
  try {
    await this.sendCommand(
      "presetteam_saveteam",
      { teamId },
      { description: `切换到阵容${teamId}`, context: "formation" },
    );
    this.success(`已切换到阵容${teamId}`);
    return true;
  } catch (error) {
    this.warn(`切换阵容失败: ${getErrorMessage(error, "formation")}`);
    return false;
  }
}
```

### 功能说明

调用 `presetteam_saveteam` 接口切换阵容。传入 `context: "formation"` 以便在阵容未解锁时显示"该账号阵容未解锁"而非通用错误消息。失败时仅警告不抛异常，返回 `false`。

---

## 27. switchFormationIfNeeded — 条件切换阵容

**行号范围**: L261-266
**变更类型**: [修改] 参数简化，内部使用 this.tokenId

### 翻译后代码

```javascript
// 条件切换阵容：仅在当前阵容与目标不同时才切换
// targetFormation: 目标阵容ID
// formationName: 阵容名称（用于日志，如"BOSS阵容"）
async switchFormationIfNeeded(targetFormation, formationName = "") {
  const currentFormation = await this.getCurrentFormation();
  if (currentFormation === targetFormation) {
    this.info(`当前已是${formationName}${targetFormation}，无需切换`);
    return false;  // 未切换
  }
  this.info(`切换阵容: ${currentFormation} → ${targetFormation}`);
  return this.switchFormation(targetFormation);  // 返回是否切换成功
}
```

### 功能说明

开源版本 `switchToFormationIfNeeded(tokenId, targetFormation, formationName)` 的简化版：移除 `tokenId` 参数（使用 `this.tokenId`），内部调用 `getCurrentFormation()` + `switchFormation()`。返回布尔值表示是否实际执行了切换，用于 `finally` 块中判断是否需要恢复阵容。

---

## 28. restoreFormation — 恢复原始阵容

**行号范围**: L267-281
**变更类型**: [新增]

### 翻译后代码

```javascript
// 恢复任务开始前的原始阵容
async restoreFormation() {
  if (!this.originalFormation) return;
  try {
    await this.sendCommand(
      "presetteam_saveteam",
      { teamId: this.originalFormation },
      { description: "恢复原阵容", context: "formation", timeout: 10000 },
    );
    this.success(`已恢复阵容${this.originalFormation}`);
  } catch (error) {
    // 错误码 200020 表示阵容已是当前阵容，无需恢复
    if (extractErrorCode(error) === "200020") {
      this.info(`阵容${this.originalFormation}已是当前阵容`);
    } else {
      this.error(`恢复阵容失败: ${error.message}`);
    }
  }
}
```

### 功能说明

在竞技场/BOSS任务完成后恢复原始阵容。使用 `extractErrorCode` 检测 `200020`（阵容已是当前阵容）错误码，此情况为正常状态不报错。超时设置为10秒，比默认3秒更长，因为阵容保存可能需要更长时间。

---

## 29. tryOpenBox — 尝试开箱

**行号范围**: L282-298
**变更类型**: [新增]

### 翻译后代码

```javascript
// 尝试开启宝箱，含错误处理
// itemId: 宝箱道具ID
// boxName: 宝箱名称（用于日志）
async tryOpenBox(itemId, boxName) {
  try {
    const result = await this.tokenStore.sendMessageWithPromise(
      this.tokenId,
      "item_openbox",
      { itemId, number: 10 },  // 每次开10个
      3000,
    );
    await delay(this.delaySettings.commandDelay);
    this.success(`开启${boxName}10个 - 成功`);
    return true;
  } catch (error) {
    // 数量不足(400010)等错误静默处理
    return false;
  }
}
```

### 功能说明

尝试开启指定类型的宝箱，每次开10个。失败时（如数量不足）静默返回 `false`，不抛异常。注意此方法直接调用 `sendMessageWithPromise` 而非 `sendCommand`，绕过了错误映射和重试逻辑，因为开箱失败是常见预期行为。在 `buildBasicTasks` 中按钻石→木质优先级尝试。

---

## 30. buildBasicTasks — 基础任务构建

**行号范围**: L299-425
**变更类型**: [新增] 从 run() 中提取

### 翻译后代码

```javascript
// 构建基础任务列表（分享/招募/点金/挂机/开箱）
// completedTasks: 已完成任务映射 (roleData.dailyTask.complete)
// statistics: 统计数据 (roleData.statistics)
// statisticsTime: 统计时间 (roleData.statisticsTime)
buildBasicTasks(completedTasks, statistics, statisticsTime) {
  const tasks = [];

  // 辅助函数：判断任务是否未完成（值为-1表示未完成）
  const isTaskCompleted = (taskId) => completedTasks[taskId] === -1;

  // 辅助函数：判断统计项今天是否可用（时间戳不是今天=今天还没做）
  const isTodayAvailableByTime = (key) => isTodayAvailable(statisticsTime[key]);

  // 任务2: 分享游戏
  if (!isTaskCompleted(2)) {
    tasks.push(() =>
      this.sendCommand(
        "system_mysharecallback",
        { isSkipShareCard: true, type: 2 },
        { description: "分享游戏" },
      ),
    );
  }

  // 任务3: 赠送好友金币
  if (!isTaskCompleted(3)) {
    tasks.push(() =>
      this.sendCommand("friend_batch", {}, { description: "赠送好友金币" }),
    );
  }

  // 任务4: 招募（免费 + 可选付费）
  if (!isTaskCompleted(4)) {
    tasks.push(() =>
      this.sendCommandSafe(
        "hero_recruit",
        { recruitType: RECRUIT_TYPE.FREE, recruitNumber: 1 },
        { description: "免费招募" },
      ),
    );
    // 设置开启付费招募时才执行
    if (this.settings.payRecruit) {
      tasks.push(() =>
        this.sendCommand(
          "hero_recruit",
          { recruitType: RECRUIT_TYPE.PAID, recruitNumber: 1 },
          { description: "付费招募" },
        ),
      );
    }
  }

  // 任务6: 免费点金（3次）
  if (!isTaskCompleted(6) && isTodayAvailableByTime("buy:gold")) {
    for (let i = 0; i < FREE_GOLD_COUNT; i++) {
      tasks.push(() =>
        this.sendCommand(
          "system_buygold",
          { buyNum: 1 },
          { description: `免费点金 ${i + 1}/${FREE_GOLD_COUNT}` },
        ),
      );
    }
  }

  // 任务5: 领取挂机奖励 + 智能加钟
  if (!isTaskCompleted(5) && this.settings.claimHangUp) {
    tasks.push(async () => {
      try {
        // 获取挂机状态详情
        const hangUpStatus = await this.getHangUpStatus({
          checkAddTime: true,
          thresholdSeconds: 3600,    // 最少挂机1小时才领取
          maxHangUpTime: 36000,      // 最大挂机时长10小时
        });
        const MIN_HANGUP_SECONDS = 32400;  // 9小时 = 最小领取时长

        if (!(hangUpStatus.hasData && hangUpStatus.elapsedTime >= MIN_HANGUP_SECONDS)) {
          // 挂机时间不足，跳过领取
          const elapsed = hangUpStatus.elapsedTime || 0;
          this.info(
            `挂机时间${this.formatTime(elapsed)}，未达到${this.formatTime(MIN_HANGUP_SECONDS)}，跳过领取`,
          );
          await this.sendCommand("role_getroleinfo", {}, { timeout: 10000 });
          return;
        }

        // 挂机时间达标，开始领取
        this.info(
          `挂机时间${this.formatTime(hangUpStatus.elapsedTime)}，满足领取条件，开始领取...`,
        );
        await this.sendCommand(
          "system_mysharecallback", {},
          { description: "初始化挂机奖励", timeout: 5000 },
        );
        await this.sendCommand(
          "system_claimhangupreward", {},
          { description: "领取挂机奖励", timeout: 10000 },
        );

        // 智能加钟判断
        if (hangUpStatus.needAddTime) {
          this.info(`${hangUpStatus.addTimeMessage}，开始加钟...`);
          for (let i = 0; i < ADD_TIME_COUNT; i++) {
            await this.sendCommandSafe(
              "system_mysharecallback",
              { isSkipShareCard: true, type: 2 },
              {
                description: `挂机加钟 ${i + 1}/${ADD_TIME_COUNT}`,
                timeout: 40000,
                context: "hangUp",
              },
            );
          }
        } else {
          this.info(`${hangUpStatus.addTimeMessage}，跳过加钟`);
        }
      } catch (error) {
        // 获取挂机状态失败时，执行默认领取+加钟流程
        this.warn(`获取挂机状态失败，执行默认领取加钟流程: ${error.message}`);
        await this.sendCommand(
          "system_mysharecallback", {},
          { description: "初始化挂机奖励", timeout: 5000 },
        );
        await this.sendCommand(
          "system_claimhangupreward", {},
          { description: "领取挂机奖励", timeout: 10000 },
        );
        for (let i = 0; i < ADD_TIME_COUNT; i++) {
          await this.sendCommandSafe(
            "system_mysharecallback",
            { isSkipShareCard: true, type: 2 },
            {
              description: `挂机加钟 ${i + 1}/${ADD_TIME_COUNT}`,
              timeout: 40000,
              context: "hangUp",
            },
          );
        }
      }
    });
  }

  // 任务7: 开箱（钻石优先 → 木质兜底）
  if (!isTaskCompleted(7) && this.settings.openBox) {
    tasks.push(async () => {
      (await this.tryOpenBox(BOX_TYPE.DIAMOND.id, BOX_TYPE.DIAMOND.name)) ||
        (await this.tryOpenBox(BOX_TYPE.WOODEN.id, BOX_TYPE.WOODEN.name));
    });
  }

  return tasks;
}
```

### 功能说明

从 `run()` 中提取的基础任务构建方法，是最大的 build 方法。包含6类基础任务：

1. **分享游戏**（任务2）：`system_mysharecallback`
2. **赠送好友金币**（任务3）：`friend_batch`
3. **招募**（任务4）：免费招募（静默错误）+ 可选付费招募
4. **免费点金**（任务6）：3次 `system_buygold`，检查统计时间
5. **挂机奖励+加钟**（任务5）：智能判断挂机时长是否达标（≥9小时），根据 `getHangUpStatus` 决定是否加钟
6. **开箱**（任务7）：钻石宝箱优先，失败则尝试木质宝箱

挂机奖励部分是核心复杂逻辑：先检查挂机时长是否满足9小时最低要求，满足则领取并根据加钟建议决定是否执行4次加钟；获取挂机状态失败时回退到默认领取+加钟流程。

---

## 31. buildSaltBottleTasks — 盐罐任务构建

**行号范围**: L426-455
**变更类型**: [新增] 从 run() 中提取

### 翻译后代码

```javascript
// 构建盐罐任务列表（停止→开始→领取）
// completedTasks: 已完成任务映射
buildSaltBottleTasks(completedTasks) {
  const tasks = [];
  const isTaskCompleted = (taskId) => completedTasks[taskId] === -1;

  // 先停止再开始（重置盐罐计时）
  tasks.push(
    () => this.sendCommand("bottlehelper_stop", {}, { description: "停止盐罐计时" }),
    () => this.sendCommand("bottlehelper_start", {}, { description: "开始盐罐计时" }),
  );

  // 任务14: 领取盐罐奖励（静默错误，已领取不报错）
  if (!isTaskCompleted(14) && this.settings.claimBottle) {
    tasks.push(() =>
      this.sendCommandSafe(
        "bottlehelper_claim", {},
        { description: "领取盐罐奖励" },
      ),
    );
  }

  return tasks;
}
```

### 功能说明

盐罐任务三步流程：停止计时 → 重新开始计时 → 领取奖励。领取使用 `sendCommandSafe`，因为"无对应罐子"（2000150）等错误是正常的业务状态，不应中断流程。

---

## 32. buildArenaTask — 竞技场任务构建

**行号范围**: L456-494
**变更类型**: [新增] 从 run() 中提取

### 翻译后代码

```javascript
// 构建竞技场任务
// 检查开放时间(6:00-22:00)，切换阵容，执行3次战斗，恢复阵容
buildArenaTask() {
  if (!this.settings.arenaEnable) return [];

  return [
    async () => {
      const currentHour = new Date().getHours();

      // 检查竞技场是否在开放时间内
      if (currentHour < ARENA_CONFIG.START_HOUR || currentHour > ARENA_CONFIG.END_HOUR) {
        this.warn(`竞技场未开放 (${ARENA_CONFIG.START_HOUR}:00-${ARENA_CONFIG.END_HOUR}:00)`);
        return;
      }

      this.info("开始竞技场战斗流程");

      // 切换到竞技场阵容
      const formationSwitched = await this.switchFormationIfNeeded(
        this.settings.arenaFormation,
      );
      if (formationSwitched) await delay(5000);  // 切换后等待5秒

      try {
        // 开启竞技场
        try {
          await this.sendCommand(
            "arena_startarea", {},
            { description: "开始竞技场", timeout: 10000, context: "arena" },
          );
        } catch (error) {
          // 错误码 200020 = 关卡未达标，无法开启竞技场
          if (extractErrorCode(error) === "200020") {
            this.warn("关卡未达标，无法开启竞技场");
            return;
          }
          throw error;
        }

        // 执行3次竞技场战斗
        for (let fightIndex = 1; fightIndex <= ARENA_CONFIG.MAX_FIGHTS; fightIndex++) {
          await this.executeArenaFight(fightIndex);
          if (fightIndex < ARENA_CONFIG.MAX_FIGHTS) await delay(1000);
        }

        this.success("竞技场战斗流程完成");
      } finally {
        // 无论成功失败，恢复原始阵容
        if (formationSwitched) await this.restoreFormation();
      }
    },
  ];
}
```

### 功能说明

竞技场任务构建，包含完整流程：时间检查 → 阵容切换 → 开启竞技场 → 3次战斗 → 恢复阵容。关键点：

1. **时间检查**：6:00-22:00 外不执行
2. **阵容管理**：使用 `switchFormationIfNeeded` + `finally` 中的 `restoreFormation` 确保阵容恢复
3. **错误码 200020 特殊处理**：竞技场未解锁时不报错，直接跳过
4. **战斗间隔1秒**：避免请求过快

---

## 33. executeArenaFight — 执行竞技场战斗

**行号范围**: L495-534
**变更类型**: [新增] 从 run() 中提取

### 翻译后代码

```javascript
// 执行单次竞技场战斗
// fightIndex: 当前战斗序号(1-3)
async executeArenaFight(fightIndex) {
  this.info(`竞技场战斗 ${fightIndex}/${ARENA_CONFIG.MAX_FIGHTS}`);

  // 获取竞技场目标列表
  let targetData;
  try {
    targetData = await this.sendCommand(
      "arena_getareatarget", {},
      { description: `获取目标${fightIndex}` },
    );
  } catch (error) {
    this.error(`获取目标失败: ${error.message}`);
    return;
  }

  // 检查是否有可用目标
  if (!targetData || (extractTargetList(targetData).length === 0 &&
      !targetData.roleId && !targetData.id && !targetData.targetId)) {
    this.warn(`战斗${fightIndex} - 无可用目标`);
    return;
  }

  // 获取角色阵容信息用于排名筛选
  const roleInfo = getNestedValue(this.tokenStore, "gameData.roleInfo.role", {});

  // 选择最优目标（战力最低且满足排名要求）
  const bestTarget = pickBestTarget(targetData, roleInfo);
  if (!bestTarget?.targetId) {
    this.warn(`战斗${fightIndex} - 未找到合适目标`);
    return;
  }

  this.info(`目标: ${bestTarget.targetName} (排名:${bestTarget.targetRank})`);

  // 发起战斗，最多重试1次（处理临时错误 200750）
  for (let retry = 0; retry <= 1; retry++) {
    try {
      if (retry > 0) {
        this.warn(`战斗${fightIndex} - 重试中...`);
        await delay(15000);  // 重试前等待15秒
      }
      await this.sendCommand(
        "fight_startareaarena",
        { targetId: bestTarget.targetId },
        { description: `竞技场战斗${fightIndex}`, timeout: 10000 },
      );
      return;  // 战斗成功
    } catch (error) {
      // 错误码 200750 = 临时错误，可重试
      if (extractErrorCode(error) !== "200750" || retry >= 1) {
        this.error(`战斗失败: ${error.message}`);
        return;
      }
    }
  }
}
```

### 功能说明

单次竞技场战斗的完整流程：获取目标 → 选择最优目标 → 发起战斗。核心改进：

1. **智能目标选择**：使用 `pickBestTarget` 按战力排序选择最弱目标，替代开源版本的简单取第一个
2. **临时错误重试**：错误码 `200750`（临时错误）自动重试1次，等待15秒
3. **多格式兼容**：通过 `extractTargetList` 兼容不同接口返回的目标数据格式

---

## 34. buildBossTasks — BOSS任务构建

**行号范围**: L535-576
**变更类型**: [新增] 从 run() 中提取

### 翻译后代码

```javascript
// 构建BOSS任务（军团BOSS + 每日BOSS）
// statistics: 统计数据 (roleData.statistics)
// statisticsTime: 统计时间 (roleData.statisticsTime)
buildBossTasks(statistics, statisticsTime) {
  const tasks = [];

  // === 军团BOSS ===
  let alreadyLegionBoss = statistics["legion:boss"] ?? 0;
  // 如果统计时间是今天（今天已打过），保留次数；否则重置为0
  if (isTodayAvailable(statisticsTime["legion:boss"])) {
    alreadyLegionBoss = 0;
  }
  const remainingLegionBoss = Math.max(this.settings.bossTimes - alreadyLegionBoss, 0);

  if (remainingLegionBoss > 0) {
    let formationSwitched = false;

    // 切换到BOSS阵容
    tasks.push(async () => {
      formationSwitched = await this.switchFormationIfNeeded(
        this.settings.bossFormation,
        "BOSS阵容",
      );
    });

    // 执行军团BOSS战斗（静默错误，次数已用完不报错）
    for (let i = 0; i < remainingLegionBoss; i++) {
      tasks.push(() =>
        this.sendCommandSafe(
          "fight_startlegionboss", {},
          { description: `军团BOSS ${i + 1}/${remainingLegionBoss}` },
        ),
      );
    }

    // 恢复阵容
    tasks.push(async () => {
      if (formationSwitched) await this.restoreFormation();
    });
  }

  // === 每日BOSS ===
  // [修改] 从固定3次改为条件判断（i < 1，即只打1次）
  let dailyBossCount = statistics.boss ?? 0;
  if (isTodayAvailable(statisticsTime.boss)) {
    dailyBossCount = 0;
  }

  if (dailyBossCount < 1) {
    tasks.push(() =>
      this.switchFormationIfNeeded(this.settings.bossFormation, "BOSS阵容"),
    );
    tasks.push(() =>
      this.sendCommand(
        "fight_startboss",
        { bossId: getTodayBossId() },
        { description: "每日BOSS" },
      ),
    );
  }

  return tasks;
}
```

### 功能说明

BOSS任务分为两部分：

1. **军团BOSS**：根据设置中的 `bossTimes` 和已完成次数计算剩余次数，使用 `sendCommandSafe` 静默处理"次数已用完"错误。包含阵容切换和恢复。
2. **每日BOSS**：**[修改]** 开源版本固定打3次（`for(i=0;i<3;i++)`），目标版本改为条件判断 `dailyBossCount < 1`，即只打1次。使用 `getTodayBossId()` 获取当日BOSS ID。

两个BOSS任务都使用 `isTodayAvailable` 检查统计时间，确保跨天重置。

---

## 35. buildFixedRewardTasks — 固定奖励任务构建

**行号范围**: L577-625
**变更类型**: [新增] 从 run() 中提取

### 翻译后代码

```javascript
// 构建固定奖励任务列表（签到/礼包/珍宝阁等）
buildFixedRewardTasks() {
  const tasks = [];

  // 俱乐部签到（静默错误，未加入俱乐部不报错）
  tasks.push(() =>
    this.sendCommandSafe("legion_signin", {}, { description: "俱乐部" }),
  );

  // 固定奖励列表
  const rewardList = [
    { name: "福利签到",   cmd: "system_signinreward" },
    { name: "每日礼包",   cmd: "discount_claimreward" },
    { name: "每日免费奖励", cmd: "collection_claimfreereward" },
    { name: "免费礼包",   cmd: "card_claimreward" },
    { name: "周卡礼包",   cmd: "card_claimreward", params: { cardId: CARD_TYPE.WEEKLY } },
    { name: "月卡礼包",   cmd: "card_claimreward", params: { cardId: CARD_TYPE.MONTHLY } },
    { name: "永久卡礼包", cmd: "card_claimreward", params: { cardId: CARD_TYPE.PERMANENT } },
  ];

  // 邮件奖励（可选，由设置控制）
  if (this.settings.claimEmail) {
    rewardList.push({ name: "邮件奖励", cmd: "mail_claimallattachment" });
  }

  // 批量添加奖励领取任务
  rewardList.forEach(({ name, cmd, params = {}, context }) => {
    tasks.push(() => this.sendCommand(cmd, params, { description: name, context }));
  });

  // 珍宝阁：先获取列表再领取免费礼包
  tasks.push(
    () => this.sendCommand("collection_goodslist", {}, { description: "珍宝阁列表" }),
    () => this.sendCommand("collection_claimfreereward", {}, { description: "珍宝阁免费礼包" }),
  );

  return tasks;
}
```

### 功能说明

固定奖励任务构建，包含7类必领奖励 + 可选邮件奖励 + 珍宝阁。使用数据驱动方式（`rewardList` 数组）替代重复的 `if/push` 代码，卡片类型通过 `CARD_TYPE` 常量区分（周卡/月卡/永久卡）。俱乐部签到使用 `sendCommandSafe`，因为"未加入俱乐部"（2300070）是正常状态。

---

## 36. buildActivityTasks — 活动任务构建

**行号范围**: L626-658
**变更类型**: [新增] 从 run() 中提取

### 翻译后代码

```javascript
// 构建活动任务列表（钓鱼/灯神扫荡/扫荡卷）
// statistics: 统计数据
// statisticsTime: 统计时间
buildActivityTasks(statistics, statisticsTime) {
  const tasks = [];

  // 免费钓鱼（3次），检查统计时间是否为今天
  if (isTodayAvailable(statisticsTime["artifact:normal:lottery:time"])) {
    for (let i = 0; i < FREE_FISH_COUNT; i++) {
      tasks.push(() =>
        this.sendCommand(
          "artifact_lottery",
          { lotteryNumber: 1, newFree: true, type: 1 },
          { description: `免费钓鱼 ${i + 1}/${FREE_FISH_COUNT}` },
        ),
      );
    }
  }

  // 灯神扫荡（4个国家：魏蜀吴群），检查每个国家的免费次数统计时间
  const genieNames = ["魏国", "蜀国", "吴国", "群雄"];
  for (let genieId = 1; genieId <= GENIE_COUNT; genieId++) {
    if (isTodayAvailable(statisticsTime[`genie:daily:free:${genieId}`])) {
      const name = genieNames[genieId - 1];
      tasks.push(() =>
        this.sendCommandSafe(
          "genie_sweep",
          { genieId },
          { description: `${name}灯神扫荡`, timeout: 5000, context: "genie" },
        ),
      );
    }
  }

  // 免费扫荡卷（3次）
  for (let i = 0; i < FREE_SWEEP_COUNT; i++) {
    tasks.push(() =>
      this.sendCommand(
        "genie_buysweep", {},
        { description: `免费扫荡卷 ${i + 1}/${FREE_SWEEP_COUNT}` },
      ),
    );
  }

  return tasks;
}
```

### 功能说明

活动任务构建，包含3类：

1. **免费钓鱼**：3次 `artifact_lottery`，检查统计时间 `artifact:normal:lottery:time`
2. **灯神扫荡**：4个国家分别检查统计时间，使用 `sendCommandSafe` 静默处理"扫荡条件不满足"
3. **免费扫荡卷**：3次 `genie_buysweep`，无条件执行

每个国家的灯神扫荡独立检查统计时间，确保跨天重置。

---

## 37. buildBlackMarketTask — 黑市购买任务构建

**行号范围**: L659-701
**变更类型**: [新增] 从 run() 中提取

### 翻译后代码

```javascript
// 构建黑市购买任务
// 先尝试购买 goodsId=1，失败则兜底购买青铜宝箱
buildBlackMarketTask() {
  if (!this.settings.blackMarketPurchase) return [];

  return [
    async () => {
      try {
        // 尝试黑市购买
        const result = await this.sendCommand(
          "store_purchase",
          { goodsId: 1 },
          { context: "blackMarket" },
        );

        // 检查购买结果：任何列表有数据或返回码为0都视为成功
        if (
          result &&
          (result.buyList?.length ||
            result.goodsList?.length ||
            result.items?.length ||
            result.reward?.length ||
            result.rewards?.length ||
            result.code === 0 ||
            result.ret === 0)
        ) {
          this.success("黑市购买成功");
          return;
        }
        throw new Error("未购买到物品");
      } catch {
        // 主购买失败，尝试兜底购买青铜宝箱
        this.warn("黑市采购失败，尝试兜底...");
        try {
          await this.sendCommand(
            "store_buy",
            { goodsId: BOX_TYPE.BRONZE.id },
            { description: "青铜宝箱(兜底)", timeout: 30000 },
          );
          this.success("兜底购买成功");
        } catch (fallbackError) {
          // 错误码 1100010 = 已购买过青铜宝箱，属于正常状态
          if (extractErrorCode(fallbackError) === "1100010") {
            this.info("青铜宝箱已购买过");
          } else {
            this.error(`兜底购买失败: ${fallbackError.message}`);
          }
        }
      }
    },
  ];
}
```

### 功能说明

黑市购买任务，采用"主购买→兜底"策略：

1. **主购买**：`store_purchase` 购买 `goodsId=1`，检查返回结果中是否有任何列表数据或成功码
2. **兜底购买**：主购买失败时，尝试 `store_buy` 购买青铜宝箱（`BOX_TYPE.BRONZE.id`），超时30秒
3. **错误处理**：`1100010`（已购买过青铜宝箱）视为正常状态，仅记录信息

---

## 38. buildDreamWorldTask — 咸王梦境任务构建

**行号范围**: L703-714
**变更类型**: [新增] 从 run() 中提取

### 翻译后代码

```javascript
// 构建咸王梦境任务
// 仅在开放日（周日/一/三/四）执行
buildDreamWorldTask() {
  if (!isDungeonOpenDay()) return [];

  return [
    () =>
      this.sendCommand(
        "dungeon_selecthero",
        { battleTeam: { 0: 107 } },  // 使用吕布(ID:107)作为梦境战斗武将
        { description: "咸王梦境", context: "dreamWorld" },
      ),
  ];
}
```

### 功能说明

咸王梦境任务，仅在开放日执行。使用 `isDungeonOpenDay()` 判断今天是否为开放日。传入 `context: "dreamWorld"` 以便在"模块未开启"时显示"该账号未达到关卡无法解锁梦境"的精确提示。固定使用吕布（ID:107）作为战斗武将。

---

## 39. buildDeepSeaLampTask — 深海灯神任务构建

**行号范围**: L715-726
**变更类型**: [新增] 从 run() 中提取

### 翻译后代码

```javascript
// 构建深海灯神任务
// 仅在周一且深海灯神免费次数未使用时执行
// statisticsTime: 统计时间数据
buildDeepSeaLampTask(statisticsTime) {
  // 非周一 或 深海灯神免费次数今天已用 → 跳过
  if (new Date().getDay() !== 1 || !isTodayAvailable(statisticsTime["genie:daily:free:5"])) {
    return [];
  }

  return [
    () =>
      this.sendCommand(
        "genie_sweep",
        { genieId: 5, sweepCnt: 1 },  // genieId=5 为深海灯神
        { description: "深海灯神" },
      ),
  ];
}
```

### 功能说明

深海灯神（灯神第5个国家）任务，仅在周一且免费次数未使用时执行。`genieId: 5` 对应深海灯神，与 `buildActivityTasks` 中的4个常规灯神（genieId 1-4）分开处理，因为深海灯神有特殊的开放时间限制（仅周一）。

---

## 40. buildRewardTasks — 任务奖励构建

**行号范围**: L727-764
**变更类型**: [新增] 从 run() 中提取

### 翻译后代码

```javascript
// 构建任务奖励领取列表（日常/周常/通行证）
buildRewardTasks() {
  const tasks = [];

  // 领取10个每日任务奖励点数
  for (let taskId = 1; taskId <= DAILY_TASK_COUNT; taskId++) {
    tasks.push(() =>
      this.sendCommand(
        "task_claimdailypoint",
        { taskId },
        { description: `任务奖励${taskId}` },
      ),
    );
  }

  // 日常奖励 + 随机延时2-3秒
  tasks.push(
    async () => {
      await this.sendCommand("task_claimdailyreward", {}, { description: "日常奖励" });
      await randomDelay(2000, 3000);
    },
    // 周常奖励 + 随机延时2-3秒
    async () => {
      await this.sendCommand("task_claimweekreward", {}, { description: "周常奖励" });
      await randomDelay(2000, 3000);
    },
    // 通行证奖励
    () =>
      this.sendCommand(
        "activity_recyclewarorderrewardclaim",
        { actId: 1 },
        { description: "通行证奖励" },
      ),
  );

  return tasks;
}
```

### 功能说明

任务奖励领取，放在所有任务最后执行（确保任务完成后再领奖）：

1. **每日任务点数**：10个任务逐个领取 `task_claimdailypoint`
2. **日常/周常奖励**：领取后加2-3秒随机延时，模拟人工操作
3. **通行证奖励**：`activity_recyclewarorderrewardclaim`

---

## 41. fetchRoleData — 获取角色数据

**行号范围**: L765-785
**变更类型**: [新增] 从 run() 中提取

### 翻译后代码

```javascript
// 获取角色数据，含连接重试逻辑
// 如果遇到连接错误，自动刷新Token后重试一次
async fetchRoleData() {
  try {
    const response = await this.tokenStore.sendGetRoleInfo(this.tokenId);
    this.success("角色信息获取成功");
    if (!response?.role) throw new Error("角色数据不存在");
    return response.role;
  } catch (error) {
    // 连接错误：尝试刷新Token后重试
    if (isConnectionError(error)) {
      this.warn("获取角色信息失败，尝试刷新Token");
      if (!(await this.ensureConnection(1))) throw error;

      const retryResponse = await this.tokenStore.sendGetRoleInfo(this.tokenId);
      this.success("角色信息获取成功");
      if (!retryResponse?.role) throw new Error("角色数据不存在");
      return retryResponse.role;
    }
    throw error;
  }
}
```

### 功能说明

获取角色数据，内置连接重试逻辑。与 `sendCommand` 的重试机制不同，此方法直接调用 `sendGetRoleInfo`（非 WebSocket 命令），因此需要独立的重试处理。连接错误时先调用 `ensureConnection(1)`（跳过首次检查直接重试），成功后再次获取角色数据。在 `run()` 和 `getHangUpStatus()` 中使用。

---

## 42. getHangUpStatus — 获取挂机状态详情

**行号范围**: L786-857
**变更类型**: [新增]

### 翻译后代码

```javascript
// 获取挂机状态详情（加钟/时长/进度）
// options: { checkAddTime, thresholdSeconds, maxHangUpTime }
async getHangUpStatus(options = {}) {
  const {
    checkAddTime = false,       // 是否检查加钟建议
    thresholdSeconds = 3600,    // 最小挂机时长阈值（秒）
    maxHangUpTime = 36000,      // 最大挂机时长（秒，默认10小时）
  } = options;

  try {
    const roleData = await this.fetchRoleData();
    const hangUp = roleData?.hangUp;

    // 无挂机数据
    if (!hangUp) {
      return {
        hasData: false,
        message: "无挂机数据",
        needAddTime: false,
        addTimeMessage: "",
      };
    }

    const now = Date.now() / 1000;               // 当前时间戳（秒）
    const lastTime = hangUp.lastTime || 0;        // 上次领取时间
    const hangUpTime = hangUp.hangUpTime || 0;    // 挂机总时长
    const elapsed = now - lastTime;               // 距上次领取经过的时间
    const isActive = elapsed <= hangUpTime;        // 挂机是否仍在进行中
    const remainingTime = isActive ? Math.floor(hangUpTime - elapsed) : 0;
    const elapsedTime = Math.floor(isActive ? elapsed : hangUpTime);  // 已挂机时长
    const progress = hangUpTime > 0
      ? Math.min(100, Math.floor((elapsedTime / hangUpTime) * 100))
      : 0;

    // 加钟建议判断
    let needAddTime = false;
    let addTimeMessage = "";

    if (checkAddTime) {
      if (isActive) {
        if (remainingTime < 7200) {
          // 剩余不足2小时 → 建议加钟
          needAddTime = true;
          addTimeMessage = `剩余时间不足2小时(${this.formatTime(remainingTime)})，建议加钟`;
        } else if (hangUpTime < maxHangUpTime && remainingTime < 14400) {
          // 挂机时长未达上限且剩余不足4小时 → 可以加钟
          needAddTime = true;
          addTimeMessage = `挂机时间${this.formatTime(hangUpTime)}，剩余${this.formatTime(remainingTime)}，可以加钟`;
        } else {
          // 无需加钟
          needAddTime = false;
          addTimeMessage = hangUpTime >= maxHangUpTime
            ? `挂机时间已达${this.formatTime(maxHangUpTime)}，剩余${this.formatTime(remainingTime)}，无需加钟`
            : `挂机时间${this.formatTime(hangUpTime)}，剩余${this.formatTime(remainingTime)}，充足，无需加钟`;
        }
      } else {
        // 挂机已完成 → 立即加钟
        needAddTime = true;
        addTimeMessage = "挂机已完成，立即加钟";
      }
    }

    const status = {
      hasData: true,
      isActive,              // 挂机是否进行中
      lastTime,              // 上次领取时间戳
      hangUpTime,            // 挂机总时长（秒）
      elapsedTime,           // 已挂机时长（秒）
      remainingTime,         // 剩余时间（秒）
      progress,              // 进度百分比
      needAddTime,           // 是否需要加钟
      addTimeMessage,        // 加钟提示消息
      message: isActive
        ? `挂机中：${this.formatTime(elapsedTime)}/${this.formatTime(hangUpTime)}`
        : "挂机已完成",
    };

    this.info(checkAddTime
      ? `挂机状态: ${status.message} | ${addTimeMessage}`
      : `挂机状态: ${status.message}`,
    );

    return status;

  } catch (error) {
    this.error(`获取挂机状态失败: ${error.message}`);
    return {
      hasData: false,
      message: `获取失败: ${error.message}`,
      needAddTime: false,
      addTimeMessage: "",
    };
  }
}
```

### 功能说明

挂机状态智能分析，是新增的核心功能之一。计算挂机进度、剩余时间，并根据以下规则给出加钟建议：

| 条件 | 建议 |
|------|------|
| 挂机进行中 + 剩余不足2小时 | 建议加钟 |
| 挂机进行中 + 时长未达上限 + 剩余不足4小时 | 可以加钟 |
| 挂机进行中 + 时长已达上限 | 无需加钟 |
| 挂机进行中 + 剩余充足 | 无需加钟 |
| 挂机已完成 | 立即加钟 |

在 `buildBasicTasks` 的挂机奖励领取逻辑中使用，决定是否在领取奖励后执行4次加钟操作。

---

## 43. formatTime — 格式化时间

**行号范围**: L858-870
**变更类型**: [新增]

### 翻译后代码

```javascript
// 将秒数格式化为中文时间字符串
// 例如: 5415 → "1小时30分钟15秒"
formatTime(seconds) {
  if (!seconds || seconds <= 0) return "0秒";

  const hours = Math.floor(seconds / 3600);
  const minutes = Math.floor((seconds % 3600) / 60);
  const secs = Math.floor(seconds % 60);
  const parts = [];

  if (hours > 0) parts.push(`${hours}小时`);
  if (minutes > 0) parts.push(`${minutes}分钟`);
  if (secs > 0 || parts.length === 0) parts.push(`${secs}秒`);

  return parts.join("");
}
```

### 功能说明

将秒数转为中文时间格式，在 `getHangUpStatus` 和 `buildBasicTasks` 的挂机相关日志中使用，使挂机时长信息更直观。零值返回"0秒"。

---

## 44. checkActivity — 检查活跃度

**行号范围**: L871-885
**变更类型**: [新增]

### 翻译后代码

```javascript
// 检查活跃度是否已满
// 如果活跃度已满（≥100），则无需执行任务，直接标记完成
checkActivity(roleData) {
  const dailyPoint = roleData.dailyTask?.dailyPoint ?? 0;
  const MAX_ACTIVITY = 100;

  this.info(`活跃度: ${dailyPoint}/${MAX_ACTIVITY}`);

  if (dailyPoint >= MAX_ACTIVITY) {
    this.success(`活跃度已满 (${dailyPoint}/${MAX_ACTIVITY})，无需执行任务`);
    this.callbacks?.onProgress?.(100);  // 直接标记进度100%
    return true;  // 活跃度已满
  }

  return false;  // 活跃度未满，需继续执行任务
}
```

### 功能说明

在 `run()` 中获取角色数据后首先检查活跃度。如果活跃度已满100，直接跳过所有任务执行，进度标记为100%。这是一个优化：避免在所有日常任务已完成的情况下仍然逐个发送命令。

---

## 45. DailyTaskRunner.run — 主运行方法

**行号范围**: L886-936
**变更类型**: [修改] 从单一方法拆分为多个 build* 方法调用

### 翻译后代码

```javascript
// 主运行方法：编排所有每日任务的执行流程
// tokenId: 当前操作的 Token ID
// callbacks: 回调函数集合 { onLog, onProgress }
// customSettings: 自定义任务设置（覆盖默认设置）
async run(tokenId, callbacks = {}, customSettings = null) {
  // 1. 初始化实例属性
  this.tokenId = tokenId;
  this.callbacks = callbacks;
  this.settings = customSettings || this.loadSettings(tokenId) || { ...defaultSettings };

  // 2. 确保连接可用
  this.info("检查连接状态...");
  if (!(await this.ensureConnection())) {
    throw (this.error("连接失败，无法执行任务"), new Error("连接异常"));
  }

  // 3. 获取角色数据
  this.info("获取角色信息...");
  const roleData = await this.fetchRoleData();

  // 4. 检查活跃度是否已满
  if (this.checkActivity(roleData)) {
    this.callbacks?.onProgress?.(100);
    return;  // 活跃度已满，无需执行任务
  }

  // 5. 记录当前阵容（用于任务完成后恢复）
  this.info("开始执行每日任务");
  this.originalFormation = await this.getCurrentFormation();
  if (this.originalFormation) {
    this.info(`当前阵容: ${this.originalFormation}`);
  }

  // 6. 提取角色数据中的任务状态
  const completedTasks = roleData.dailyTask?.complete ?? {};  // 已完成任务映射
  const statistics = roleData.statistics ?? {};               // 统计数据
  const statisticsTime = roleData.statisticsTime ?? {};       // 统计时间

  // 7. 通过 build* 方法构建任务列表，flatMap 展平为一维数组
  const taskList = [
    () => this.buildBasicTasks(completedTasks, statistics, statisticsTime),
    () => this.buildSaltBottleTasks(completedTasks),
    () => this.buildArenaTask(),
    () => this.buildBossTasks(statistics, statisticsTime),
    () => this.buildFixedRewardTasks(),
    () => this.buildActivityTasks(statistics, statisticsTime),
    () => this.buildBlackMarketTask(),
    () => this.buildDreamWorldTask(),
    () => this.buildDeepSeaLampTask(statisticsTime),
    () => (this.originalFormation ? [() => this.restoreFormation()] : []),
    () => this.buildRewardTasks(),
  ].flatMap((builder) => builder());

  // 8. 顺序执行所有任务
  const totalTasks = taskList.length;
  this.info(`共 ${totalTasks} 个任务待执行`);

  for (let index = 0; index < taskList.length; index++) {
    try {
      await taskList[index]();
      // 更新进度回调
      this.callbacks?.onProgress?.(Math.floor(((index + 1) / totalTasks) * 100));
      await delay(this.delaySettings.taskDelay);  // 任务间延时
    } catch {}  // 单个任务失败不中断整体流程
  }

  // 9. 完成
  this.callbacks?.onProgress?.(100);
  this.success("所有任务执行完成");
}
```

### 功能说明

主运行方法的核心重构：从开源版本的单一方法（所有逻辑内联）拆分为11个 `build*` 方法调用，通过 `flatMap` 展平为一维任务数组后顺序执行。

**执行流程**：
1. 初始化 → 2. 连接检查 → 3. 获取角色数据 → 4. 活跃度检查 → 5. 记录阵容 → 6. 构建任务列表 → 7. 顺序执行 → 8. 完成

**关键改进**：
- **活跃度检查**：新增 `checkActivity()`，活跃度满则跳过所有任务
- **阵容恢复**：在任务列表中插入 `restoreFormation()`，确保任务完成后恢复原始阵容
- **奖励放最后**：`buildRewardTasks()` 放在最后，确保所有任务完成后再领奖
- **容错**：单个任务 `catch {}` 不中断整体流程
- **进度回调**：每完成一个任务更新进度百分比
