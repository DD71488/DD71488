# BatchDailyTasks 新增函数翻译

> 源文件: `01-reference/formatted-js/BatchDailyTasks-CDlX_GQ6.js`
> 映射表: `01-reference/mappings/BatchDailyTasks_mapping.md`
> 注释表: `01-reference/annotations/BatchDailyTasks_annotations.md`
> 翻译时间: 2026-05-31

---

## 1. isTauri / isCapacitor — 平台检测函数

**行号范围**: L750-751
**minified 名**: `isTauri` / `isCapacitor`

### 翻译后代码

```javascript
// 检测是否为 Tauri 桌面环境（通过检查 window.__TAURI_INTERNALS__ 是否存在）
const isTauri = () => typeof window !== "undefined" && "__TAURI_INTERNALS__" in window;

// 检测是否为 Capacitor 移动环境（通过检查 window.Capacitor 是否存在）
const isCapacitor = () => typeof window !== "undefined" && "Capacitor" in window;
```

### 功能说明

两个平台检测辅助函数，用于判断当前运行环境是 Tauri 桌面端还是 Capacitor 移动端。`CrossPlatformStorage` 内部调用这两个函数来决定存储策略（当前版本统一使用 localStorage，但预留了 Tauri/Capacitor 原生存储的扩展点）。

---

## 2. CrossPlatformStorage 类

**行号范围**: L752-794
**minified 名**: `CrossPlatformStorage`
**单例实例**: `storage`（L795）

### 翻译后代码

```javascript
/**
 * 跨平台存储管理器
 * 支持 Tauri 桌面端、Capacitor 移动端和浏览器环境
 * 统一封装 localStorage 操作，提供异步 API
 * 当前版本所有平台均使用 localStorage，但预留了平台检测钩子
 */
class CrossPlatformStorage {

  // 异步设置存储项，自动将非字符串值序列化为 JSON
  async set(key, value) {
    try {
      const serialized = typeof value === "string" ? value : JSON.stringify(value);
      // 触发平台检测（为未来 Tauri/Capacitor 原生存储预留扩展点）
      isTauri() || isCapacitor();
      localStorage.setItem(key, serialized);
      return true;
    } catch (error) {
      console.error(`[Storage] Failed to set ${key}:`, error);
      return false;
    }
  }

  // 异步获取存储项，自动反序列化 JSON；解析失败时返回原始字符串
  async get(key, defaultValue = null) {
    try {
      let raw;
      isTauri() || isCapacitor();
      raw = localStorage.getItem(key);
      if (raw == null) return defaultValue;
      try {
        return JSON.parse(raw);
      } catch {
        return raw;
      }
    } catch (error) {
      console.error(`[Storage] Failed to get ${key}:`, error);
      return defaultValue;
    }
  }

  // 异步删除指定存储项
  async remove(key) {
    try {
      isTauri() || isCapacitor();
      localStorage.removeItem(key);
      return true;
    } catch (error) {
      console.error(`[Storage] Failed to remove ${key}:`, error);
      return false;
    }
  }

  // 异步清空所有存储数据
  async clear() {
    try {
      localStorage.clear();
      return true;
    } catch (error) {
      console.error("[Storage] Failed to clear:", error);
      return false;
    }
  }

  // 获取当前运行环境类型："tauri" | "capacitor" | "browser"
  getEnvironment() {
    return isTauri() ? "tauri" : isCapacitor() ? "capacitor" : "browser";
  }
}

// CrossPlatformStorage 单例实例，全局共享
const storage = new CrossPlatformStorage();
```

### 功能说明

跨平台存储管理器，为 TokenCard 状态持久化提供统一的异步存储 API。核心设计：

- **异步 API**：所有方法均为 `async`，为未来切换到 Tauri/Capacitor 原生文件存储预留接口
- **自动序列化**：`set()` 自动 `JSON.stringify`，`get()` 自动 `JSON.parse`
- **平台检测钩子**：每个方法内部调用 `isTauri() || isCapacitor()`，当前仅做检测不执行操作，但为后续扩展预留了分支点
- **错误容错**：所有操作均 try-catch 包裹，失败时返回 `false`/默认值而非抛出异常
- **单例模式**：通过 `const storage = new CrossPlatformStorage()` 创建全局唯一实例

---

## 3. getStorageKey — 生成存储键名

**行号范围**: L1130
**minified 名**: `z`

### 翻译后代码

```javascript
// 生成存储键名，格式: "tokencard_{tokenId}_{suffix}"
// 例如: "tokencard_abc123_status"
const getStorageKey = (suffix) => `${STORAGE_KEY_PREFIX}${props.token.id}_${suffix}`;
```

### 功能说明

为 TokenCard 的持久化数据生成唯一存储键。`STORAGE_KEY_PREFIX` 为 `"tokencard_"`，结合 Token ID 和后缀确保不同卡片的存储数据互不干扰。

---

## 4. saveCardStatus — 保存卡片状态

**行号范围**: L1131-1153
**minified 名**: `Y`

### 翻译后代码

```javascript
// 将当前卡片的所有状态保存到 CrossPlatformStorage
const saveCardStatus = async () => {
  try {
    const statusData = {
      saltJar: saltJar.value,                     // 盐罐状态
      hangUp: hangUp.value,                       // 挂机状态
      dailyTask: dailyTask.value,                 // 每日任务进度
      monthlyTask: monthlyTask.value,             // 月度任务进度
      legacyStatus: legacyStatus.value,           // 功法残卷状态
      starChallengeTotalStars: starChallengeTotalStars.value, // 星级挑战总星数
      arenaRank: arenaRank.value,                 // 竞技场排名
      studyStatus: studyStatus.value,             // 答题状态
      towerData: towerData.value,                 // 爬塔数据
      weirdTowerData: weirdTowerData.value,       // 怪异塔数据
      towerInfo: towerInfo.value,                 // 宝库信息
      carStatus: carStatus.value,                 // 车辆状态
      savedAt: new Date().toISOString(),          // 保存时间戳
    };
    const storageKey = getStorageKey("status");
    await storage.set(storageKey, statusData);
  } catch (error) {
    console.warn("[保存状态] Failed to save card status:", error);
  }
};
```

### 功能说明

将 TokenCard 的全部运行时状态快照保存到 `CrossPlatformStorage`，用于页面刷新或重连后恢复。保存的数据包括盐罐、挂机、每日/月度任务、功法残卷、星级挑战、竞技场排名、答题、爬塔、怪异塔、宝库、车辆等 12 项状态，以及 `savedAt` 时间戳用于后续的周重置检测。

---

## 5. restoreCardStatus — 恢复卡片状态

**行号范围**: L1154-1211
**minified 名**: `Z`

### 翻译后代码

```javascript
// 从 CrossPlatformStorage 恢复卡片状态
const restoreCardStatus = async () => {
  try {
    const storageKey = getStorageKey("status");
    console.log(`[恢复状态] Token: ${props.token.id}, 尝试读取: ${storageKey}`);
    const savedData = await storage.get(storageKey, null);
    if (!savedData) {
      console.log("[恢复状态] 没有找到保存的数据");
      return;
    }
    console.log("[恢复状态] 读取到数据:", savedData);
    const savedDate = new Date(savedData.savedAt);

    // 检查是否需要周重置（跨周则丢弃旧数据）
    if (isWeekResetNeeded(savedDate, new Date())) {
      console.log("[恢复状态] 检测到周重置，清空卡片状态");
      return;
    }

    // 恢复盐罐状态
    if (savedData.saltJar) {
      saltJar.value = { ...saltJar.value, ...savedData.saltJar };
    }

    // 恢复挂机状态，校验异常时间值（超过 72000 秒即 20 小时视为异常）
    if (savedData.hangUp) {
      const hangUpData = savedData.hangUp;
      if (hangUpData.hangUpTime !== undefined && hangUpData.hangUpTime > 72000) {
        console.warn(`[恢复状态] hangUpTime 异常: ${hangUpData.hangUpTime}，重置为 0`);
        hangUpData.hangUpTime = 0;
      }
      if (hangUpData.elapsedTime !== undefined && hangUpData.elapsedTime > 72000) {
        console.warn(`[恢复状态] elapsedTime 异常: ${hangUpData.elapsedTime}，重置为 0`);
        hangUpData.elapsedTime = 0;
      }
      hangUp.value = { ...hangUp.value, ...hangUpData };
    }

    // 恢复其他简单状态
    if (savedData.dailyTask) dailyTask.value = { ...dailyTask.value, ...savedData.dailyTask };
    if (savedData.monthlyTask) monthlyTask.value = { ...monthlyTask.value, ...savedData.monthlyTask };
    if (savedData.legacyStatus) legacyStatus.value = { ...legacyStatus.value, ...savedData.legacyStatus };
    if (savedData.starChallengeTotalStars !== undefined) starChallengeTotalStars.value = savedData.starChallengeTotalStars;
    if (savedData.arenaRank !== undefined) arenaRank.value = savedData.arenaRank;
    if (savedData.studyStatus) studyStatus.value = { ...studyStatus.value, ...savedData.studyStatus };

    // 恢复爬塔数据（排除 isExpanded 属性，保持 UI 展开状态不变）
    if (savedData.towerData) {
      const { isExpanded, ...towerRest } = savedData.towerData;
      towerData.value = { ...towerData.value, ...towerRest };
    }

    // 恢复怪异塔数据（排除 isExpanded）
    if (savedData.weirdTowerData) {
      const { isExpanded, ...weirdTowerRest } = savedData.weirdTowerData;
      weirdTowerData.value = { ...weirdTowerData.value, ...weirdTowerRest };
    }

    if (savedData.towerInfo) towerInfo.value = { ...towerInfo.value, ...savedData.towerInfo };
    if (savedData.carStatus) carStatus.value = { ...carStatus.value, ...savedData.carStatus };

    const env = storage.getEnvironment();
    console.log(`[${env}] 卡片状态恢复成功`);
  } catch (error) {
    console.warn("[恢复状态] Failed to restore card status:", error);
  }
};
```

### 功能说明

从 `CrossPlatformStorage` 读取之前保存的卡片状态并恢复到响应式变量中。关键逻辑：

1. **周重置检测**：调用 `isWeekResetNeeded()` 判断保存时间与当前时间是否跨周，跨周则丢弃旧数据
2. **异常值校验**：挂机时间 `hangUpTime` 和 `elapsedTime` 超过 72000 秒（20 小时）视为异常数据，重置为 0
3. **UI 状态隔离**：`towerData` 和 `weirdTowerData` 的 `isExpanded` 属性不恢复，避免影响用户当前的 UI 展开状态
4. **合并策略**：使用展开运算符 `{ ...current, ...saved }` 合并，保存的数据覆盖当前默认值

---

## 6. isWeekResetNeeded — 检查是否需要周重置

**行号范围**: L1212-1237
**minified 名**: `re`

### 翻译后代码

```javascript
/**
 * 检查是否需要周重置
 * 判断逻辑：
 * 1. 当前时间必须处于"周重置窗口期"（周日 23:00 ~ 周一 23:00）
 * 2. 保存时间所在周的周一 < 当前时间所在周的周一（即跨了一周）
 * 两个条件同时满足才返回 true
 */
const isWeekResetNeeded = (savedDate, currentDate) => {
  const currentDay = currentDate.getDay();    // 0=周日, 1=周一, ...
  const currentHour = currentDate.getHours();

  // 周重置窗口期：周日 23:00 ~ 周一 23:00
  const isInResetWindow =
    (currentDay === 0 && currentHour >= 23) ||  // 周日 23:00 之后
    (currentDay === 1 && currentHour < 23);      // 周一 23:00 之前

  if (!isInResetWindow) return false;

  // 计算保存时间所在周的周一 00:00:00
  const savedDay = savedDate.getDay();
  const savedMondayOffset = savedDay === 0 ? 6 : savedDay - 1;
  const savedMonday = new Date(savedDate);
  savedMonday.setDate(savedDate.getDate() - savedMondayOffset);
  savedMonday.setHours(0, 0, 0, 0);

  // 计算当前时间所在周的周一 00:00:00
  const currentMondayOffset = currentDay === 0 ? 6 : currentDay - 1;
  const currentMonday = new Date(currentDate);
  currentMonday.setDate(currentDate.getDate() - currentMondayOffset);
  currentMonday.setHours(0, 0, 0, 0);

  // 当前周一 > 保存周一，说明跨了一周，需要重置
  const needsReset = currentMonday.getTime() > savedMonday.getTime();

  console.log(`[周重置检查] 保存时间: ${savedDate.toLocaleString()}, 当前时间: ${currentDate.toLocaleString()}`);
  console.log(`[周重置检查] 保存周周一: ${savedMonday.toLocaleString()}, 当前周周一: ${currentMonday.toLocaleString()}`);
  console.log(`[周重置检查] 是否在重置窗口期: ${isInResetWindow}, 是否需要重置: ${needsReset}`);

  return needsReset;
};
```

### 功能说明

判断保存的卡片状态是否因跨周而需要重置。游戏每周重置时间在周日 23:00 ~ 周一 23:00 之间，因此：

- **窗口期限制**：只在重置窗口期内才检查，避免非重置时段误判
- **周一比较法**：计算保存时间和当前时间各自所在周的周一日期，如果当前周一更晚则说明跨周了
- **用途**：`restoreCardStatus()` 调用此函数，跨周时丢弃旧数据，防止上周的进度数据污染本周

---

## 7. startStarChallenge — 十殿星级挑战

**行号范围**: L1635-1849
**minified 名**: `le`

### 翻译后代码

```javascript
/**
 * 十殿星级挑战 — 一键挑战
 * 自动遍历 1~8 关，使用预设阵容发起挑战
 * 每关最多挑战 5 次，已满 3 星则跳过
 * 对每关发起两次 nmext_startboss 请求（双倍机会），取第一个成功结果
 */
const startStarChallenge = async () => {
  if (!isConnected.value) {
    message.warning("请先连接账号");
    return;
  }
  if (isStarChallengeRunning.value) {
    message.warning("星级挑战进行中,请稍候...");
    return;
  }

  try {
    isStarChallengeRunning.value = true;
    const tokenId = props.token.id;
    const tokenStore = useTokenStore();

    addLog({ message: "开始 十殿星级挑战，一键挑战", type: "info" });
    message.info("星级挑战开始");

    const roleInfo = tokenStore.gameData.roleInfo;
    const roleId = roleInfo?.role?.roleId;

    // ---- 阶段1: 并行获取初始化数据 ----
    const initPromises = [
      // 获取十殿星级信息
      tokenStore.sendMessageWithPromise(tokenId, "nmext_getinfo", {}, 5000).catch(() => {}),
    ];
    if (roleId) {
      initPromises.push(
        // 获取梦魇角色信息
        tokenStore.sendMessageWithPromise(tokenId, "nightmare_getroleinfo", { roleId }, 5000).catch(() => {}),
        // 获取宝库队伍信息
        tokenStore.sendMessageWithPromise(tokenId, "matchteam_getroleteaminfo", { roleID: roleId }, 5000).catch(() => {}),
      );
    }
    await Promise.all(initPromises);
    await new Promise((resolve) => setTimeout(resolve, 500)); // 等待数据同步

    // ---- 阶段2: 解析当前星级信息 ----
    const nmextInfo = tokenStore.gameData?.nmextInfo || {};
    const starBossCompleteMap = nmextInfo.starBossCompleteMap || {};  // 各关星级完成情况
    const starFightCntMap = nmextInfo.starFightCntMap || {};          // 各关已挑战次数

    // 计算每关已获得的星数
    const completedStars = {};
    for (const [level, stars] of Object.entries(starBossCompleteMap)) {
      completedStars[level] = Object.values(stars).filter(Boolean).length;
    }

    // ---- 阶段3: 逐关挑战（1~8关） ----
    for (let level = 1; level <= 8; level++) {
      if (!isConnected.value) {
        addLog({ message: "连接已断开,挑战终止", type: "error" });
        break;
      }

      // 次数已满（5次），跳过
      if ((starFightCntMap[String(level)] || starFightCntMap[level] || 0) >= 5) {
        addLog({ message: `关卡 ${level} 次数已满,跳过`, type: "info" });
        continue;
      }

      // 已达3星，跳过
      if ((completedStars[level] || 0) >= 3) {
        addLog({ message: `关卡 ${level} 已达3星,跳过`, type: "info" });
        continue;
      }

      addLog({ message: `== 关卡 ${level} 挑战开始（预设阵容） ==`, type: "info" });

      // ---- 3a: 获取该关卡的预设阵容 ----
      // 预设阵容类型 = 100 + 关卡号（如关卡1 → 类型101）
      const presetTeamType = 100 + level;
      const presetTeamResult = await tokenStore
        .sendMessageWithPromise(tokenId, "presetteam_typegetinfo", { types: [presetTeamType] }, 5000)
        .catch(() => null);
      await new Promise((resolve) => setTimeout(resolve, 300));

      let battleTeam = {};
      let lordWeaponId = 0;

      if (presetTeamResult) {
        const presetTeamMap =
          presetTeamResult.presetTeamMap ||
          presetTeamResult.body?.presetTeamMap ||
          presetTeamResult;
        const teamData = presetTeamMap[String(presetTeamType)] || presetTeamMap[presetTeamType];

        // 提取主公武器 ID
        if (teamData?.weapon?.weaponId !== undefined) {
          lordWeaponId = teamData.weapon.weaponId;
        }

        // 构建战斗阵容
        if (teamData?.teamInfo) {
          const teamInfo = teamData.teamInfo;
          battleTeam = {};
          for (const [position, heroData] of Object.entries(teamInfo)) {
            if (heroData && heroData.heroId) {
              battleTeam[position] = {
                heroId: heroData.heroId,
                level: heroData.level || 1,
                star: heroData.star || 1,
                skill: heroData.skill || 0,
                equip: heroData.equip || {},
                pet: heroData.pet || null,
                holyBeast: heroData.holyBeast || null,
                artifact: heroData.artifact || null,
              };
            }
          }
        }
      }

      // 阵容为空则无法挑战，终止后续关卡
      if (Object.keys(battleTeam).length === 0) {
        addLog({ message: `第${level}关挑战失败,请游戏内检查阵容后重试。`, type: "error" });
        break;
      }

      // ---- 3b: 计算队伍战力 ----
      await tokenStore
        .sendMessageWithPromise(tokenId, "hero_calcpowerbyteam", { battleTeam, lordWeaponId }, 5000)
        .catch(() => {});
      await new Promise((resolve) => setTimeout(resolve, 300));

      // ---- 3c: 发起两次挑战请求（双倍机会） ----
      const fightResults = await Promise.all([
        tokenStore
          .sendMessageWithPromise(tokenId, "nmext_startboss", {
            bossId: level,
            battleTeam,
            lordWeaponId,
            presetTeamType: 0,
          }, 8000)
          .catch((err) => ({ __error: true, message: err.message })),
        tokenStore
          .sendMessageWithPromise(tokenId, "nmext_startboss", {
            bossId: level,
            battleTeam,
            lordWeaponId,
            presetTeamType: 0,
          }, 8000)
          .catch((err) => ({ __error: true, message: err.message })),
      ]);
      await new Promise((resolve) => setTimeout(resolve, 300));

      // ---- 3d: 取第一个成功的结果 ----
      const successResult = fightResults.find((r) => r && !r.__error) || null;
      if (!successResult) {
        addLog({ message: `关卡 ${level} 无法挑战,请先通过十殿8之后再运行`, type: "warning" });
        break;
      }

      const body = successResult.body || successResult;
      const result = body.result || body;

      // 检查是否胜利
      if (!(result.isWin ?? result.iswin ?? result.win)) {
        addLog({ message: `第${level}关挑战失败,请游戏内检查阵容后重试。`, type: "error" });
        break;
      }

      // ---- 3e: 解析获得的星数 ----
      const resultStarMap =
        result.starBossCompleteMap ||
        body.starBossCompleteMap ||
        successResult.roleNMExt?.starBossCompleteMap ||
        body.roleNMExt?.starBossCompleteMap;

      const levelStars = resultStarMap ? resultStarMap[String(level)] || resultStarMap[level] : null;

      // 计算星数：找到所有为 true 的星级键，取最大值 +1
      const starCount = levelStars
        ? (() => {
            const trueEntries = Object.entries(levelStars)
              .filter(([, v]) => v === true)
              .map(([k]) => parseInt(k, 10))
              .filter((k) => !isNaN(k));
            return trueEntries.length > 0 ? Math.max(...trueEntries) + 1 : 0;
          })()
        : 0;

      if (starCount >= 1) {
        addLog({ message: `关卡 ${level} 挑战成功,获得 ${starCount} 星`, type: "success" });
        completedStars[level] = starCount;
      } else {
        addLog({ message: `第${level}关挑战失败,请游戏内检查阵容后重试。`, type: "error" });
        break;
      }

      // 第8关完成时提示
      if (level === 8) {
        addLog({ message: "星级挑战，一键挑战完成。", type: "success" });
        message.success("星级挑战完成");
      }

      await new Promise((resolve) => setTimeout(resolve, 500));
    }

    // 挑战结束后重新加载星级数据
    await loadStarChallengeData();
  } catch (error) {
    console.error("星级挑战失败:", error);
    addLog({ message: `星级挑战异常: ${error.message}`, type: "error" });
    message.error("挑战过程异常");
  } finally {
    isStarChallengeRunning.value = false;
  }
};
```

### 功能说明

十殿星级挑战的一键挑战功能，核心流程：

1. **前置检查**：确认已连接且无正在进行的挑战
2. **数据初始化**：并行请求 `nmext_getinfo`、`nightmare_getroleinfo`、`matchteam_getroleteaminfo` 获取当前星级和阵容信息
3. **逐关挑战**（1~8关）：
   - 跳过已满 3 星或次数已满（5次）的关卡
   - 通过 `presetteam_typegetinfo`（类型=100+关卡号）获取预设阵容
   - 调用 `hero_calcpowerbyteam` 计算队伍战力
   - 并发两次 `nmext_startboss` 请求（双倍挑战机会），取第一个成功结果
   - 解析战斗结果中的 `starBossCompleteMap` 计算获得的星数
4. **失败即停**：任何一关失败则终止后续关卡挑战
5. **收尾**：挑战完成后调用 `loadStarChallengeData()` 刷新星级数据

---

## 8. loadStarChallengeData — 加载星级挑战数据

**行号范围**: L2193-2274
**minified 名**: `He`

### 翻译后代码

```javascript
/**
 * 加载星级挑战数据
 * 优先从服务器获取，失败时从 localStorage 缓存读取
 * 缓存数据会校验是否属于本周，非本周数据重置为 0
 */
const loadStarChallengeData = async () => {
  try {
    console.log("[StarChallenge] 开始加载星级数据...");

    if (isConnected.value) {
      try {
        // ---- 优先从服务器获取 ----
        console.log("[StarChallenge] 主动请求 nmext_getinfo...");
        const response = await tokenStore.sendMessageWithPromise(
          props.token.id,
          "nmext_getinfo",
          {},
          5000,
        );
        console.log("[StarChallenge] nmext_getinfo 响应:", response);

        // 解析 nmextInfo（兼容多种响应格式）
        const nmextInfo =
          response?.roleNMExt ||
          response?.body?.roleNMExt ||
          response;
        console.log("[StarChallenge] 解析后的 nmextInfo:", nmextInfo);

        if (nmextInfo) {
          console.log("[StarChallenge] 获取到 nmextInfo 数据");
          const starBossCompleteMap = nmextInfo.starBossCompleteMap || {};
          let totalStars = 0;

          // 遍历每关的星级完成情况，累加星数
          for (const [level, stars] of Object.entries(starBossCompleteMap)) {
            if (stars && typeof stars === "object") {
              const levelStars = Object.values(stars).filter(Boolean).length;
              console.log(`[StarChallenge] 关卡 ${level} 星数:`, levelStars, stars);
              totalStars += levelStars;
            }
          }

          console.log("[StarChallenge] 总星数:", totalStars);
          if (starChallengeTotalStars.value !== totalStars) {
            starChallengeTotalStars.value = totalStars;
            console.log("[StarChallenge] 星数已更新:", totalStars);
          } else {
            console.log("[StarChallenge] 星数未变化，跳过更新");
          }
          return;
        }
      } catch (error) {
        console.warn("[StarChallenge] 获取星级挑战信息失败:", error);
      }
    }

    // ---- 降级: 从 localStorage 缓存读取 ----
    console.log("[StarChallenge] 未连接或请求失败，尝试从 localStorage 读取");
    const cachedData = localStorage.getItem("batch_star_challenge_data");
    if (!cachedData) {
      console.log("[StarChallenge] localStorage 中无数据");
      starChallengeTotalStars.value = 0;
      return;
    }

    const parsedCache = JSON.parse(cachedData);
    const tokenData = parsedCache[props.token.id];
    if (!tokenData) {
      console.log("[StarChallenge] localStorage 中无此 token 数据");
      starChallengeTotalStars.value = 0;
      return;
    }

    // 计算本周周一 00:00:00 的时间戳
    const thisMonday = (() => {
      const now = new Date();
      const dayOfWeek = now.getDay();
      const mondayOffset = dayOfWeek === 0 ? 6 : dayOfWeek - 1;
      const monday = new Date(now);
      monday.setDate(now.getDate() - mondayOffset);
      monday.setHours(0, 0, 0, 0);
      return monday.getTime();
    })();

    // 校验缓存数据是否属于本周
    if ((tokenData.weekStart || 0) === thisMonday) {
      console.log("[StarChallenge] 从 localStorage 读取总星数:", tokenData.totalStars);
      starChallengeTotalStars.value = tokenData.totalStars || 0;
    } else {
      console.log("[StarChallenge] 非本周数据，重置为0");
      starChallengeTotalStars.value = 0;
    }
  } catch (error) {
    console.error("[StarChallenge] 加载星级挑战数据失败:", error);
    starChallengeTotalStars.value = 0;
  }
};
```

### 功能说明

加载星级挑战的总星数，采用两级降级策略：

1. **服务器获取**（优先）：已连接时通过 `nmext_getinfo` 命令获取实时数据，解析 `starBossCompleteMap` 计算总星数
2. **本地缓存**（降级）：未连接或请求失败时，从 `localStorage` 的 `batch_star_challenge_data` 键读取缓存数据，并通过 `weekStart` 时间戳校验是否属于本周，非本周数据重置为 0

---

## 9. fetchCarStatus — 获取赛车状态

**行号范围**: L1884-1903
**minified 名**: `be`

### 翻译后代码

```javascript
/**
 * 获取赛车状态
 * 仅在周一至周三执行（赛车活动开放日）
 * 其他时间跳过请求
 */
const fetchCarStatus = async () => {
  const dayOfWeek = new Date().getDay();  // 0=周日, 1=周一, ..., 6=周六
  if (!(dayOfWeek >= 1 && dayOfWeek <= 3)) {
    console.log("[CarStatus] 今天不是周一到周三,跳过获取赛车状态");
    return;
  }
  try {
    carStatus.value.isLoading = true;
    await tokenStore.sendGameMessage(
      props.token.id,
      "car_getrolecar",
      {},
      { usePromise: true, timeout: 10000 },
    );
  } catch (error) {
    console.error("获取赛车状态失败:", error);
  } finally {
    carStatus.value.isLoading = false;
  }
};
```

### 功能说明

获取赛车状态数据。由于赛车活动仅在周一至周三开放，函数会先检查当前星期，非开放日直接跳过。通过 `car_getrolecar` 命令获取赛车信息，结果会自动更新到 `tokenStore.gameData` 中。

---

## 10. fetchArenaRank — 获取竞技场排名

**行号范围**: L1904-1942
**minified 名**: `_e`

### 翻译后代码

```javascript
/**
 * 获取竞技场排名
 * 请求前100名排名列表，在其中查找自己的排名
 */
const fetchArenaRank = async () => {
  try {
    const tokenId = props.token.id;
    const tokenStore = useTokenStore();

    // 请求竞技场排名列表（前100名）
    const rankResponse = await tokenStore.sendMessageWithPromise(
      tokenId,
      "arena_getarearank",
      { rankType: 0, minRank: 1, maxRank: 100 },
      5000,
    );

    // 获取当前角色的 roleId
    const roleId = (tokenStore.gameData?.roleInfo?.role || {}).roleId;

    // 在排名列表中查找自己的角色（兼容多种响应字段名）
    const myRankEntry = (
      rankResponse?.rankList ||
      rankResponse?.roleList ||
      rankResponse?.list ||
      []
    ).find((entry) => {
      return entry.roleId === roleId || entry.info?.roleId === roleId;
    });

    if (myRankEntry) {
      arenaRank.value = myRankEntry.rank || myRankEntry.info?.rank || 0;
      console.log("[ArenaRank] 获取到竞技场排名:", arenaRank.value);
    } else {
      arenaRank.value = 0;
      console.log("[ArenaRank] 未在前100名中找到自己");
    }
  } catch (error) {
    console.warn("[ArenaRank] 获取竞技场排名失败:", error.message);
    arenaRank.value = 0;
  }
};
```

### 功能说明

获取当前角色在竞技场中的排名。通过 `arena_getarearank` 命令请求前 100 名排名列表，然后在列表中根据 `roleId` 匹配自己的角色。兼容多种响应格式（`rankList`/`roleList`/`list`），未在前 100 名中找到则排名设为 0。

---

## 11. startArenaFight — 竞技场单卡战斗

**行号范围**: L1943-2079
**minified 名**: `Oe`

### 翻译后代码

```javascript
/**
 * 竞技场单卡战斗
 * 自动执行最多3次竞技场挑战
 * 流程: 开始竞技场 → 获取battleVersion → 获取目标 → 选择最弱目标 → 发起战斗
 */
const startArenaFight = async () => {
  if (!isConnected.value) {
    message.warning("请先连接账号");
    return;
  }
  if (isArenaFighting.value) {
    message.warning("竞技场战斗中,请稍候...");
    return;
  }

  try {
    isArenaFighting.value = true;
    const tokenId = props.token.id;
    const tokenStore = useTokenStore();

    // 获取咸神门票（物品ID 1007）数量，最多挑战3次
    const ticketCount =
      tokenStore.gameData?.roleInfo?.role?.items?.[1007]?.quantity || 0;
    const fightCount = Math.min(3, ticketCount);

    if (fightCount === 0) {
      message.warning("咸神门票不足,无法挑战");
      isArenaFighting.value = false;
      return;
    }

    addLog({ message: `开始竞技场挑战 (${fightCount}/3次)`, type: "info" });

    for (let i = 0; i < fightCount && isConnected.value; i++) {
      addLog({ message: `第 ${i + 1}/${fightCount} 次战斗`, type: "info" });

      // ---- 步骤1: 开始竞技场（获取竞技场信息） ----
      const startResult = await tokenStore.sendMessageWithPromise(
        tokenId, "arena_startarea", {}, 5000,
      );
      console.log("[竞技场] arena_startarea 返回:", startResult);

      // ---- 步骤2: 获取 battleVersion ----
      try {
        const levelResult = await tokenStore.sendMessageWithPromise(
          tokenId, "fight_startlevel", {}, 5000,
        );
        console.log("[竞技场] fight_startlevel 返回:", levelResult);
        if (levelResult?.battleVersion) {
          tokenStore.setBattleVersion(levelResult.battleVersion);
          console.log("[竞技场] 设置 battleVersion:", levelResult.battleVersion);
        } else {
          console.warn("[竞技场] fight_startlevel 未返回 battleVersion");
        }
      } catch (err) {
        console.error("[竞技场] 获取 battleVersion 失败:", err.message);
      }

      console.log("[竞技场] 当前 gameData.battleVersion:", tokenStore.gameData?.battleVersion);
      await new Promise((resolve) => setTimeout(resolve, 500));

      // ---- 步骤3: 获取竞技场目标列表 ----
      const targetResult = await tokenStore.sendMessageWithPromise(
        tokenId, "arena_getareatarget", {}, 5000,
      );
      if (!targetResult) {
        addLog({ message: "获取竞技场目标失败", type: "error" });
        break;
      }

      const targetList =
        targetResult?.rankList ||
        targetResult?.roleList ||
        targetResult?.targets ||
        [];
      if (targetList.length === 0) {
        addLog({ message: "无可用的竞技场目标", type: "warning" });
        break;
      }

      // ---- 步骤4: 选择最优目标（最弱的对手） ----
      const selectedTarget = pickArenaTargetId(targetResult, { rank: 0, power: 0 });
      if (!selectedTarget || !selectedTarget.targetId) {
        addLog({ message: "未找到可用的竞技场目标", type: "error" });
        break;
      }

      const targetId = selectedTarget.targetId;
      const targetName = selectedTarget.targetName || "未知";
      const targetPower = selectedTarget.targetPower || 0;

      console.log("[竞技场] 目标数据:", {
        targetResult: selectedTarget,
        targetId,
        targetName,
        targetPower,
      });

      if (!targetId) {
        addLog({ message: "目标 ID 为空，无法战斗", type: "error" });
        break;
      }

      addLog({ message: `竞技场比赛 ${i + 1}/${fightCount}`, type: "info" });
      console.log("[竞技场] 准备战斗, targetId:", targetId);

      // ---- 步骤5: 发起战斗 ----
      try {
        const fightResult = await tokenStore.sendMessageWithPromise(
          tokenId, "fight_startareaarena", { targetId },
        );
        console.log("[竞技场] 战斗结果:", fightResult);
      } catch (err) {
        console.error("[竞技场] 战斗失败详情:", {
          error: err,
          message: err.message,
          targetId,
          targets: targetResult,
        });
      }

      // 战斗间隔（最后一次不需要等待）
      if (i < fightCount - 1) {
        await new Promise((resolve) => setTimeout(resolve, 1000));
      }
    }

    addLog({ message: "竞技场比赛已完成", type: "success" });
    message.success("竞技场挑战完成");

    // 战斗结束后刷新排名
    await fetchArenaRank();
  } catch (error) {
    console.error("竞技场挑战失败:", error);
    addLog({ message: `竞技场挑战失败: ${error.message}`, type: "error" });
    message.error(`竞技场挑战失败: ${error.message}`);
  } finally {
    isArenaFighting.value = false;
  }
};
```

### 功能说明

竞技场单卡自动战斗功能，每次最多挑战 3 次（受咸神门票数量限制）。完整流程：

1. **门票检查**：读取物品 ID 1007（咸神门票）的数量，决定挑战次数
2. **每轮战斗流程**：
   - `arena_startarea`：开始竞技场，获取竞技场信息
   - `fight_startlevel`：获取 `battleVersion`（战斗版本号，影响战斗计算）
   - `arena_getareatarget`：获取可挑战的目标列表
   - `pickArenaTargetId`：从目标中选择最弱的对手
   - `fight_startareaarena`：发起战斗
3. **收尾**：战斗结束后调用 `fetchArenaRank()` 刷新排名

---

## 12. claimLegacy — 领取功法残卷

**行号范围**: L2134-2192
**minified 名**: `De`

### 翻译后代码

```javascript
/**
 * 领取功法残卷
 * 调用 legacy_claimhangup 命令领取挂机积累的功法残卷
 * 处理多种服务器错误码，给出友好的中文提示
 */
const claimLegacy = async () => {
  if (!isConnected.value && !isConnecting.value) {
    message.warning("请先连接Token");
    return;
  }

  try {
    addLog({
      time: new Date().toLocaleTimeString(),
      message: "开始领取功法残卷...",
      type: "info",
    });

    // 调用 legacy_claimhangup 命令领取功法残卷
    const result = await tokenStore.sendMessageWithPromise(
      props.token.id,
      "legacy_claimhangup",
      {},
      10000,
    );

    // 领取成功，更新功法状态
    if (result.reward && result.reward.length > 0) {
      const claimedAmount = result.reward[0].value;
      legacyStatus.value.quantity += claimedAmount;
      legacyStatus.value.lastClaimTime = new Date().toLocaleTimeString();
      legacyStatus.value.isAvailable = false;
      addLog({
        time: new Date().toLocaleTimeString(),
        message: `成功领取功法残卷${claimedAmount}，当前共有${legacyStatus.value.quantity}个`,
        type: "success",
      });
    }

    // 刷新游戏数据，3秒后清空日志
    tokenStore.refreshGameData(props.token.id);
    setTimeout(() => {
      clearLogs();
    }, 3000);
  } catch (error) {
    const errorMsg = error.message || "";

    // 错误码 12400160 / 200020: 未达到关卡，无法领取
    if (
      errorMsg.includes("12400160") ||
      errorMsg.includes("服务器错误: 12400160") ||
      errorMsg.includes("200020") ||
      errorMsg.includes("服务器错误: 200020")
    ) {
      addLog({
        time: new Date().toLocaleTimeString(),
        message: "未达到关卡无法领取",
        type: "info",
      });
    }
    // 错误码 12400000 / 800040: 残卷为0或领取过于频繁
    else if (
      errorMsg.includes("12400000") ||
      errorMsg.includes("挂机奖励领取过于频繁") ||
      errorMsg.includes("800040") ||
      errorMsg.includes("服务器错误: 800040")
    ) {
      addLog({
        time: new Date().toLocaleTimeString(),
        message: "残卷为0无法领取",
        type: "info",
      });
    }
    // 其他未知错误
    else {
      addLog({
        time: new Date().toLocaleTimeString(),
        message: `领取功法残卷失败: ${errorMsg}`,
        type: "error",
      });
    }
  }
};
```

### 功能说明

领取功法残卷（挂机收益）。通过 `legacy_claimhangup` 命令领取，成功后更新 `legacyStatus` 中的数量、领取时间和可用状态。错误处理覆盖了常见的服务器错误码：

| 错误码 | 含义 | 处理方式 |
|--------|------|---------|
| `12400160` / `200020` | 未达到关卡，无法领取 | 提示"未达到关卡无法领取" |
| `12400000` / `800040` | 残卷为0或领取过于频繁 | 提示"残卷为0无法领取" |
| 其他 | 未知错误 | 提示具体错误信息 |

---

## 变量名映射速查表

以下为本文件中使用的 minified → 可读名映射（仅列出新增函数中出现的变量）：

### TokenCard 组件内响应式变量

| minified | 可读名 | 说明 |
|----------|--------|------|
| `Q` | `saltJar` | 盐罐状态 |
| `I` | `hangUp` | 挂机状态 |
| `j` | `dailyTask` | 每日任务进度 |
| `ie` | `monthlyTask` | 月度任务进度 |
| `g` | `legacyStatus` | 功法残卷状态 |
| `n` | `starChallengeTotalStars` | 星级挑战总星数 |
| `S` | `isStarChallengeRunning` | 星级挑战运行中 |
| `v` | `arenaRank` | 竞技场排名 |
| `C` | `isArenaFighting` | 竞技场战斗中 |
| `V` | `towerData` | 爬塔数据 |
| `$` | `weirdTowerData` | 怪异塔数据 |
| `T` | `towerInfo` | 宝库信息 |
| `p` | `carStatus` | 车辆状态 |
| `M` | `studyStatus` | 答题状态 |

### TokenCard 组件内方法

| minified | 可读名 | 说明 |
|----------|--------|------|
| `z` | `getStorageKey` | 生成存储键名 |
| `Y` | `saveCardStatus` | 保存卡片状态 |
| `Z` | `restoreCardStatus` | 恢复卡片状态 |
| `re` | `isWeekResetNeeded` | 检查是否需要周重置 |
| `le` | `startStarChallenge` | 十殿星级挑战 |
| `He` | `loadStarChallengeData` | 加载星级挑战数据 |
| `be` | `fetchCarStatus` | 获取赛车状态 |
| `_e` | `fetchArenaRank` | 获取竞技场排名 |
| `Oe` | `startArenaFight` | 竞技场战斗 |
| `De` | `claimLegacy` | 领取功法残卷 |
| `R` | `addLog` | 添加日志 |
| `E` | `clearLogs` | 清空日志 |

### 组件 Props / Store

| minified | 可读名 | 说明 |
|----------|--------|------|
| `o` | `props` | TokenCard 组件 props |
| `r` | `tokenStore` | useTokenStore() 实例 |
| `i` | `message` | Naive UI 消息实例 |
| `A` | `isConnected` | WebSocket 是否已连接 |
| `K` | `isConnecting` | WebSocket 是否正在连接 |
