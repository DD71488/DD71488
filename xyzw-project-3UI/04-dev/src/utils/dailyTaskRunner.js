import { useTokenStore } from "@/stores/tokenStore";

// ============================================================
// 16. 游戏配置常量
// ============================================================

const RECRUIT_TYPE = { FREE: 3, PAID: 1 };

const BOX_TYPE = {
  DIAMOND: { id: 2005, name: "钻石宝箱" },
  WOODEN:  { id: 2001, name: "木质宝箱" },
  BRONZE:  { id: 1,    name: "青铜宝箱" },
};

const ARENA_CONFIG = { START_HOUR: 6, END_HOUR: 22, MAX_FIGHTS: 3 };

const CARD_TYPE = { WEEKLY: 4001, MONTHLY: 4002, PERMANENT: 4003 };

const GENIE_COUNT = 4;
const FREE_FISH_COUNT = 3;
const FREE_SWEEP_COUNT = 3;
const FREE_GOLD_COUNT = 3;
const ADD_TIME_COUNT = 4;
const DAILY_TASK_COUNT = 10;
const DUNGEON_OPEN_DAYS = [0, 1, 3, 4];

// ============================================================
// 1. ERROR_CODE_MAP — 错误码映射
// ============================================================

const ERROR_CODE_MAP = new Map([
  ["400190", "没有可领取的签到奖励"],
  ["2300190", "今日已完成签到"],
  ["1000020", "该奖励今日已领取"],
  ["12000116", "今日免费奖励已领取"],
  ["1400010", "没有购买该月卡,不能领取每日奖励"],
  ["3300050", "购买数量超出限制"],
  ["2600040", "未知错误"],
  ["200750", "临时错误"],
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

// ============================================================
// 2. CONTEXT_ERROR_MAP — 上下文错误映射
// ============================================================

const CONTEXT_ERROR_MAP = {
  dreamWorld: { 200160: "该账号未达到关卡无法解锁梦境" },
  arena:      { 200020: "推关关卡未达标无法解锁竞技场" },
  blackMarket:{ 1300040: "未解锁关卡，无法使用采购功能" },
  formation:  { 200020: "该账号阵容未解锁" },
  genie:      { 200020: "该账号灯神扫荡条件未满足" },
  hangUp:     { 200020: "加钟请求过于频繁，请稍后重试" },
};

// ============================================================
// 3. extractErrorCode — 提取错误码
// ============================================================

const extractErrorCode = (error) => {
  const message = (
    typeof error === "string" ? error : (error?.message) || ""
  ).match(/\d{6,7}/);
  return message ? message[0] : "";
};

// ============================================================
// 4. getErrorMessage — 获取友好错误消息
// ============================================================

const getErrorMessage = (error, context = "") => {
  const code = extractErrorCode(error);
  if (context && CONTEXT_ERROR_MAP[context]?.[code]) {
    return CONTEXT_ERROR_MAP[context][code];
  }
  if (ERROR_CODE_MAP.has(code)) {
    return ERROR_CODE_MAP.get(code);
  }
  return error?.message || "未知错误";
};

// ============================================================
// 5. isKnownError — 判断已知业务错误
// ============================================================

const isKnownError = (error) => ERROR_CODE_MAP.has(extractErrorCode(error));

// ============================================================
// 6. isConnectionError — 判断连接错误
// ============================================================

const isConnectionError = (error) => {
  const message = error?.message || "";
  return message.includes("连接") || message.includes("WebSocket");
};

// ============================================================
// 7. delay / randomDelay — 延时函数
// ============================================================

const delay = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

const randomDelay = (minMs, maxMs) => delay(minMs + Math.random() * (maxMs - minMs));

// ============================================================
// 8. isTodayAvailable — 判断时间戳是否为今天
// ============================================================

const isTodayAvailable = (timestamp) => {
  if (!timestamp) return true;
  const today = new Date().toDateString();
  const targetDate = new Date(timestamp * 1000).toDateString();
  return today !== targetDate;
};

// ============================================================
// 9. getTodayBossId — 获取今日BOSS ID
// ============================================================

const getTodayBossId = () =>
  [9904, 9905, 9901, 9902, 9903, 9904, 9905][new Date().getDay()];

// ============================================================
// 10. isDungeonOpenDay — 判断梦境开放日
// ============================================================

const isDungeonOpenDay = () => DUNGEON_OPEN_DAYS.includes(new Date().getDay());

// ============================================================
// 11. getNestedValue — 深层属性访问器
// ============================================================

const getNestedValue = (obj, path, defaultValue = null) =>
  path.split(".").reduce(
    (current, key) => (current && current[key] !== undefined ? current[key] : defaultValue),
    obj
  );

// ============================================================
// 12. extractTargetList — 提取目标列表
// ============================================================

const extractTargetList = (data) =>
  data
    ? Array.isArray(data)
      ? data
      : data.rankList || data.roleList || data.targets || data.targetList || data.list || []
    : [];

// ============================================================
// 13. normalizeTarget — 标准化目标对象
// ============================================================

const normalizeTarget = (target) => ({
  targetId:   target.roleId || target.id || target.targetId || getNestedValue(target, "info.roleId"),
  targetName: target.name || getNestedValue(target, "info.name", "未知"),
  targetRank: target.rank || getNestedValue(target, "info.rank", 0),
  targetPower: target.power || getNestedValue(target, "info.power", 0),
});

// ============================================================
// 14. compareByPower — 按战力排序比较函数
// ============================================================

const compareByPower = (a, b) => {
  const powerA = a.power || getNestedValue(a, "info.power", 0);
  const powerB = b.power || getNestedValue(b, "info.power", 0);
  return powerA - powerB;
};

// ============================================================
// 15. pickBestTarget — 选择最优目标
// ============================================================

const pickBestTarget = (data, options = {}) => {
  if (!data) return null;

  const targetList = extractTargetList(data);

  if (targetList.length === 0 && (data.roleId || data.id || data.targetId)) {
    return normalizeTarget(data);
  }
  if (targetList.length === 0) return null;

  const minRank = options.rank || 0;
  let filtered = targetList.filter((target) => {
    const rank = target.rank || getNestedValue(target, "info.rank", 0);
    return !(minRank > 0 && rank < minRank);
  });
  if (filtered.length === 0) filtered = targetList;

  const sorted = [...filtered].sort(compareByPower);
  return normalizeTarget(sorted[0]);
};

// ============================================================
// 17. defaultSettings — 默认设置
// ============================================================

const defaultSettings = {
  arenaFormation: 1,
  bossFormation: 1,
  bossTimes: 2,
  claimBottle: true,
  payRecruit: true,
  openBox: true,
  arenaEnable: true,
  claimHangUp: true,
  claimEmail: true,
  blackMarketPurchase: true,
  blackMarketStandalonePurchase: false,
};

// ============================================================
// 18. DailyTaskRunner 类
// ============================================================

export class DailyTaskRunner {
  constructor(tokenStore, delaySettings = null) {
    this.tokenStore = tokenStore;
    this.delaySettings = {
      commandDelay: 500,
      taskDelay: 500,
      ...delaySettings,
    };
    this.callbacks = {};
    this.settings = {};
    this.tokenId = "";
    this.originalFormation = null;
  }

  // ============================================================
  // 日志方法
  // ============================================================

  log(message, type = "info") {
    if (this.callbacks?.onLog) {
      this.callbacks.onLog({
        time: new Date().toLocaleTimeString(),
        message,
        type,
      });
    }
  }

  // 19. 日志快捷方法
  success(message) {
    this.log(message, "success");
  }

  warn(message) {
    this.log(message, "warning");
  }

  error(message) {
    this.log(message, "error");
  }

  info(message) {
    this.log(message, "info");
  }

  // ============================================================
  // 20. loadSettings — 加载设置
  // ============================================================

  loadSettings(roleId) {
    try {
      const stored = localStorage.getItem(`daily-settings:${roleId}`);
      return stored ? { ...defaultSettings, ...JSON.parse(stored) } : { ...defaultSettings };
    } catch (error) {
      console.error("设置加载失败:", error);
      return { ...defaultSettings };
    }
  }

  // ============================================================
  // 21. isConnected — 检查连接状态
  // ============================================================

  isConnected() {
    return this.tokenStore.wsConnections?.[this.tokenId]?.status === "connected";
  }

  // ============================================================
  // 22. ensureConnection — 确保连接可用
  // ============================================================

  async ensureConnection(retryCount = 0) {
    if (this.isConnected()) return true;

    if (retryCount >= 3) {
      this.error("连接失败次数已达上限 (3次)");
      this.tokenStore.closeWebSocketConnection(this.tokenId);
      return false;
    }

    this.warn(`连接异常，尝试刷新Token (${retryCount + 1}/3)`);

    try {
      if (await this.tokenStore.attemptTokenRefresh(this.tokenId, true)) {
        await delay(2000);
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

  // ============================================================
  // 23. sendCommand — 发送游戏命令
  // ============================================================

  async sendCommand(cmd, params = {}, options = {}) {
    const {
      description = "",
      timeout = 3000,
      context = "",
      silentErrors = false,
      retryCount = 0,
    } = options;

    const MAX_RETRIES = 3;

    try {
      if (!(await this.ensureConnection(retryCount))) {
        throw new Error("连接异常");
      }

      const result = await this.tokenStore.sendMessageWithPromise(
        this.tokenId,
        cmd,
        params,
        timeout,
      );

      await delay(this.delaySettings.commandDelay);

      if (description) {
        this.success(`${description} - 成功`);
      }
      return result;

    } catch (error) {
      if (isConnectionError(error) && retryCount < MAX_RETRIES) {
        this.warn(`[连接错误] ${description}，重试 (${retryCount + 1}/${MAX_RETRIES})`);
        await delay(1000);
        return this.sendCommand(cmd, params, { ...options, retryCount: retryCount + 1 });
      }

      if (silentErrors && isKnownError(error)) {
        const message = getErrorMessage(error, context);
        this.info(message);
        return { success: true, silent: true };
      }

      if (description) {
        const message = getErrorMessage(error, context);
        if (!isKnownError(error)) {
          this.error(`${description} - 失败: ${message}`);
        }
      }
      throw error;
    }
  }

  // ============================================================
  // 24. sendCommandSafe — 静默错误版 sendCommand
  // ============================================================

  async sendCommandSafe(cmd, params = {}, options = {}) {
    return this.sendCommand(cmd, params, { ...options, silentErrors: true });
  }

  // ============================================================
  // 25. getCurrentFormation — 获取当前阵容
  // ============================================================

  async getCurrentFormation() {
    try {
      const result = await this.sendCommand(
        "presetteam_getinfo",
        {},
        { description: "获取阵容信息" },
      );
      return getNestedValue(result, "presetTeamInfo.useTeamId");
    } catch {
      return null;
    }
  }

  // ============================================================
  // 26. switchFormation — 切换阵容
  // ============================================================

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

  // ============================================================
  // 27. switchFormationIfNeeded — 条件切换阵容
  // ============================================================

  async switchFormationIfNeeded(targetFormation, formationName = "") {
    const currentFormation = await this.getCurrentFormation();
    if (currentFormation === targetFormation) {
      this.info(`当前已是${formationName}${targetFormation}，无需切换`);
      return false;
    }
    this.info(`切换阵容: ${currentFormation} → ${targetFormation}`);
    return this.switchFormation(targetFormation);
  }

  // ============================================================
  // 28. restoreFormation — 恢复原始阵容
  // ============================================================

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
      if (extractErrorCode(error) === "200020") {
        this.info(`阵容${this.originalFormation}已是当前阵容`);
      } else {
        this.error(`恢复阵容失败: ${error.message}`);
      }
    }
  }

  // ============================================================
  // 29. tryOpenBox — 尝试开箱
  // ============================================================

  async tryOpenBox(itemId, boxName) {
    try {
      const result = await this.tokenStore.sendMessageWithPromise(
        this.tokenId,
        "item_openbox",
        { itemId, number: 10 },
        3000,
      );
      await delay(this.delaySettings.commandDelay);
      this.success(`开启${boxName}10个 - 成功`);
      return true;
    } catch (error) {
      return false;
    }
  }

  // ============================================================
  // 30. buildBasicTasks — 基础任务构建
  // ============================================================

  buildBasicTasks(completedTasks, statistics, statisticsTime) {
    const tasks = [];

    const isTaskCompleted = (taskId) => completedTasks[taskId] === -1;

    const isTodayAvailableByTime = (key) => isTodayAvailable(statisticsTime[key]);

    if (!isTaskCompleted(2)) {
      tasks.push(() =>
        this.sendCommand(
          "system_mysharecallback",
          { isSkipShareCard: true, type: 3 },
          { description: "分享游戏" },
        ),
      );
    }

    if (!isTaskCompleted(3)) {
      tasks.push(() =>
        this.sendCommand("friend_batch", {}, { description: "赠送好友金币" }),
      );
    }

    if (!isTaskCompleted(4)) {
      tasks.push(() =>
        this.sendCommandSafe(
          "hero_recruit",
          { recruitType: RECRUIT_TYPE.FREE, recruitNumber: 1 },
          { description: "免费招募" },
        ),
      );
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

    if (!isTaskCompleted(5) && this.settings.claimHangUp) {
      tasks.push(async () => {
        try {
          const hangUpStatus = await this.getHangUpStatus({
            checkAddTime: true,
            thresholdSeconds: 3600,
            maxHangUpTime: 36000,
          });
          const MIN_HANGUP_SECONDS = 32400;

          if (!(hangUpStatus.hasData && hangUpStatus.elapsedTime >= MIN_HANGUP_SECONDS)) {
            const elapsed = hangUpStatus.elapsedTime || 0;
            this.info(
              `挂机时间${this.formatTime(elapsed)}，未达到${this.formatTime(MIN_HANGUP_SECONDS)}，跳过领取`,
            );
            await this.sendCommand("role_getroleinfo", {}, { timeout: 10000 });
            return;
          }

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

          if (hangUpStatus.needAddTime) {
            this.info(`${hangUpStatus.addTimeMessage}，开始加钟...`);
            for (let i = 0; i < ADD_TIME_COUNT; i++) {
              await this.sendCommandSafe(
                "system_mysharecallback",
                { isSkipShareCard: true, type: 3 },
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
              { isSkipShareCard: true, type: 3 },
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

    if (!isTaskCompleted(7) && this.settings.openBox) {
      tasks.push(async () => {
        (await this.tryOpenBox(BOX_TYPE.DIAMOND.id, BOX_TYPE.DIAMOND.name)) ||
          (await this.tryOpenBox(BOX_TYPE.WOODEN.id, BOX_TYPE.WOODEN.name));
      });
    }

    return tasks;
  }

  // ============================================================
  // 31. buildSaltBottleTasks — 盐罐任务构建
  // ============================================================

  buildSaltBottleTasks(completedTasks) {
    const tasks = [];
    const isTaskCompleted = (taskId) => completedTasks[taskId] === -1;

    tasks.push(
      () => this.sendCommand("bottlehelper_stop", {}, { description: "停止盐罐计时" }),
      () => this.sendCommand("bottlehelper_start", {}, { description: "开始盐罐计时" }),
    );

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

  // ============================================================
  // 32. buildArenaTask — 竞技场任务构建
  // ============================================================

  buildArenaTask() {
    if (!this.settings.arenaEnable) return [];

    return [
      async () => {
        const currentHour = new Date().getHours();

        if (currentHour < ARENA_CONFIG.START_HOUR || currentHour > ARENA_CONFIG.END_HOUR) {
          this.warn(`竞技场未开放 (${ARENA_CONFIG.START_HOUR}:00-${ARENA_CONFIG.END_HOUR}:00)`);
          return;
        }

        this.info("开始竞技场战斗流程");

        const formationSwitched = await this.switchFormationIfNeeded(
          this.settings.arenaFormation,
        );
        if (formationSwitched) await delay(5000);

        try {
          try {
            await this.sendCommand(
              "arena_startarea", {},
              { description: "开始竞技场", timeout: 10000, context: "arena" },
            );
          } catch (error) {
            if (extractErrorCode(error) === "200020") {
              this.warn("关卡未达标，无法开启竞技场");
              return;
            }
            throw error;
          }

          for (let fightIndex = 1; fightIndex <= ARENA_CONFIG.MAX_FIGHTS; fightIndex++) {
            await this.executeArenaFight(fightIndex);
            if (fightIndex < ARENA_CONFIG.MAX_FIGHTS) await delay(1000);
          }

          this.success("竞技场战斗流程完成");
        } finally {
          if (formationSwitched) await this.restoreFormation();
        }
      },
    ];
  }

  // ============================================================
  // 33. executeArenaFight — 执行竞技场战斗
  // ============================================================

  async executeArenaFight(fightIndex) {
    this.info(`竞技场战斗 ${fightIndex}/${ARENA_CONFIG.MAX_FIGHTS}`);

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

    if (!targetData || (extractTargetList(targetData).length === 0 &&
        !targetData.roleId && !targetData.id && !targetData.targetId)) {
      this.warn(`战斗${fightIndex} - 无可用目标`);
      return;
    }

    const roleInfo = getNestedValue(this.tokenStore, "gameData.roleInfo.role", {});

    const bestTarget = pickBestTarget(targetData, roleInfo);
    if (!bestTarget?.targetId) {
      this.warn(`战斗${fightIndex} - 未找到合适目标`);
      return;
    }

    this.info(`目标: ${bestTarget.targetName} (排名:${bestTarget.targetRank})`);

    for (let retry = 0; retry <= 1; retry++) {
      try {
        if (retry > 0) {
          this.warn(`战斗${fightIndex} - 重试中...`);
          await delay(15000);
        }
        await this.sendCommand(
          "fight_startareaarena",
          { targetId: bestTarget.targetId },
          { description: `竞技场战斗${fightIndex}`, timeout: 10000 },
        );
        return;
      } catch (error) {
        if (extractErrorCode(error) !== "200750" || retry >= 1) {
          this.error(`战斗失败: ${error.message}`);
          return;
        }
      }
    }
  }

  // ============================================================
  // 34. buildBossTasks — BOSS任务构建
  // ============================================================

  buildBossTasks(statistics, statisticsTime) {
    const tasks = [];

    let alreadyLegionBoss = statistics["legion:boss"] ?? 0;
    if (isTodayAvailable(statisticsTime["legion:boss"])) {
      alreadyLegionBoss = 0;
    }
    const remainingLegionBoss = Math.max(this.settings.bossTimes - alreadyLegionBoss, 0);

    if (remainingLegionBoss > 0) {
      let formationSwitched = false;

      tasks.push(async () => {
        formationSwitched = await this.switchFormationIfNeeded(
          this.settings.bossFormation,
          "BOSS阵容",
        );
      });

      for (let i = 0; i < remainingLegionBoss; i++) {
        tasks.push(() =>
          this.sendCommandSafe(
            "fight_startlegionboss", {},
            { description: `军团BOSS ${i + 1}/${remainingLegionBoss}` },
          ),
        );
      }

      tasks.push(async () => {
        if (formationSwitched) await this.restoreFormation();
      });
    }

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

  // ============================================================
  // 35. buildFixedRewardTasks — 固定奖励任务构建
  // ============================================================

  buildFixedRewardTasks() {
    const tasks = [];

    tasks.push(() =>
      this.sendCommandSafe("legion_signin", {}, { description: "俱乐部" }),
    );

    const rewardList = [
      { name: "福利签到",   cmd: "system_signinreward" },
      { name: "每日礼包",   cmd: "discount_claimreward" },
      { name: "每日免费奖励", cmd: "collection_claimfreereward" },
      { name: "免费礼包",   cmd: "card_claimreward" },
      { name: "周卡礼包",   cmd: "card_claimreward", params: { cardId: CARD_TYPE.WEEKLY } },
      { name: "月卡礼包",   cmd: "card_claimreward", params: { cardId: CARD_TYPE.MONTHLY } },
      { name: "永久卡礼包", cmd: "card_claimreward", params: { cardId: CARD_TYPE.PERMANENT } },
    ];

    if (this.settings.claimEmail) {
      rewardList.push({ name: "邮件奖励", cmd: "mail_claimallattachment" });
    }

    rewardList.forEach(({ name, cmd, params = {}, context }) => {
      tasks.push(() => this.sendCommand(cmd, params, { description: name, context }));
    });

    tasks.push(
      () => this.sendCommand("collection_goodslist", {}, { description: "珍宝阁列表" }),
      () => this.sendCommand("collection_claimfreereward", {}, { description: "珍宝阁免费礼包" }),
    );

    return tasks;
  }

  // ============================================================
  // 36. buildActivityTasks — 活动任务构建
  // ============================================================

  buildActivityTasks(statistics, statisticsTime) {
    const tasks = [];

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

  // ============================================================
  // 37. buildBlackMarketTask — 黑市购买任务构建
  // ============================================================

  buildBlackMarketTask() {
    if (!this.settings.blackMarketPurchase) return [];

    return [
      async () => {
        try {
          const result = await this.sendCommand(
            "store_purchase",
            { goodsId: 1 },
            { context: "blackMarket" },
          );

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
          this.warn("黑市采购失败，尝试兜底...");
          try {
            await this.sendCommand(
              "store_buy",
              { goodsId: BOX_TYPE.BRONZE.id },
              { description: "青铜宝箱(兜底)", timeout: 30000 },
            );
            this.success("兜底购买成功");
          } catch (fallbackError) {
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

  // ============================================================
  // 38. buildDreamWorldTask — 咸王梦境任务构建
  // ============================================================

  buildDreamWorldTask() {
    if (!isDungeonOpenDay()) return [];

    return [
      () =>
        this.sendCommand(
          "dungeon_selecthero",
          { battleTeam: { 0: 107 } },
          { description: "咸王梦境", context: "dreamWorld" },
        ),
    ];
  }

  // ============================================================
  // 39. buildDeepSeaLampTask — 深海灯神任务构建
  // ============================================================

  buildDeepSeaLampTask(statisticsTime) {
    if (new Date().getDay() !== 1 || !isTodayAvailable(statisticsTime["genie:daily:free:5"])) {
      return [];
    }

    return [
      () =>
        this.sendCommand(
          "genie_sweep",
          { genieId: 5, sweepCnt: 1 },
          { description: "深海灯神" },
        ),
    ];
  }

  // ============================================================
  // 40. buildRewardTasks — 任务奖励构建
  // ============================================================

  buildRewardTasks() {
    const tasks = [];

    for (let taskId = 1; taskId <= DAILY_TASK_COUNT; taskId++) {
      tasks.push(() =>
        this.sendCommand(
          "task_claimdailypoint",
          { taskId },
          { description: `任务奖励${taskId}` },
        ),
      );
    }

    tasks.push(
      async () => {
        await this.sendCommand("task_claimdailyreward", {}, { description: "日常奖励" });
        await randomDelay(2000, 3000);
      },
      async () => {
        await this.sendCommand("task_claimweekreward", {}, { description: "周常奖励" });
        await randomDelay(2000, 3000);
      },
      () =>
        this.sendCommand(
          "activity_recyclewarorderrewardclaim",
          { actId: 1 },
          { description: "通行证奖励" },
        ),
    );

    return tasks;
  }

  // ============================================================
  // 41. fetchRoleData — 获取角色数据
  // ============================================================

  async fetchRoleData() {
    try {
      const response = await this.tokenStore.sendGetRoleInfo(this.tokenId);
      this.success("角色信息获取成功");
      if (!response?.role) throw new Error("角色数据不存在");
      return response.role;
    } catch (error) {
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

  // ============================================================
  // 42. getHangUpStatus — 获取挂机状态详情
  // ============================================================

  async getHangUpStatus(options = {}) {
    const {
      checkAddTime = false,
      thresholdSeconds = 3600,
      maxHangUpTime = 36000,
    } = options;

    try {
      const roleData = await this.fetchRoleData();
      const hangUp = roleData?.hangUp;

      if (!hangUp) {
        return {
          hasData: false,
          message: "无挂机数据",
          needAddTime: false,
          addTimeMessage: "",
        };
      }

      const now = Date.now() / 1000;
      const lastTime = hangUp.lastTime || 0;
      const hangUpTime = hangUp.hangUpTime || 0;
      const elapsed = now - lastTime;
      const isActive = elapsed <= hangUpTime;
      const remainingTime = isActive ? Math.floor(hangUpTime - elapsed) : 0;
      const elapsedTime = Math.floor(isActive ? elapsed : hangUpTime);
      const progress = hangUpTime > 0
        ? Math.min(100, Math.floor((elapsedTime / hangUpTime) * 100))
        : 0;

      let needAddTime = false;
      let addTimeMessage = "";

      if (checkAddTime) {
        if (isActive) {
          if (remainingTime < 7200) {
            needAddTime = true;
            addTimeMessage = `剩余时间不足2小时(${this.formatTime(remainingTime)})，建议加钟`;
          } else if (hangUpTime < maxHangUpTime && remainingTime < 14400) {
            needAddTime = true;
            addTimeMessage = `挂机时间${this.formatTime(hangUpTime)}，剩余${this.formatTime(remainingTime)}，可以加钟`;
          } else {
            needAddTime = false;
            addTimeMessage = hangUpTime >= maxHangUpTime
              ? `挂机时间已达${this.formatTime(maxHangUpTime)}，剩余${this.formatTime(remainingTime)}，无需加钟`
              : `挂机时间${this.formatTime(hangUpTime)}，剩余${this.formatTime(remainingTime)}，充足，无需加钟`;
          }
        } else {
          needAddTime = true;
          addTimeMessage = "挂机已完成，立即加钟";
        }
      }

      const status = {
        hasData: true,
        isActive,
        lastTime,
        hangUpTime,
        elapsedTime,
        remainingTime,
        progress,
        needAddTime,
        addTimeMessage,
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

  // ============================================================
  // 43. formatTime — 格式化时间
  // ============================================================

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

  // ============================================================
  // 44. checkActivity — 检查活跃度
  // ============================================================

  checkActivity(roleData) {
    const dailyPoint = roleData.dailyTask?.dailyPoint ?? 0;
    const MAX_ACTIVITY = 100;

    this.info(`活跃度: ${dailyPoint}/${MAX_ACTIVITY}`);

    if (dailyPoint >= MAX_ACTIVITY) {
      this.success(`活跃度已满 (${dailyPoint}/${MAX_ACTIVITY})，无需执行任务`);
      this.callbacks?.onProgress?.(100);
      return true;
    }

    return false;
  }

  // ============================================================
  // 45. run — 主运行方法
  // ============================================================

  async run(tokenId, callbacks = {}, customSettings = null) {
    this.tokenId = tokenId;
    this.callbacks = callbacks;
    this.settings = customSettings || this.loadSettings(tokenId) || { ...defaultSettings };

    this.info("检查连接状态...");
    if (!(await this.ensureConnection())) {
      throw (this.error("连接失败，无法执行任务"), new Error("连接异常"));
    }

    this.info("获取角色信息...");
    const roleData = await this.fetchRoleData();

    if (this.checkActivity(roleData)) {
      this.callbacks?.onProgress?.(100);
      return;
    }

    this.info("开始执行每日任务");
    this.originalFormation = await this.getCurrentFormation();
    if (this.originalFormation) {
      this.info(`当前阵容: ${this.originalFormation}`);
    }

    const completedTasks = roleData.dailyTask?.complete ?? {};
    const statistics = roleData.statistics ?? {};
    const statisticsTime = roleData.statisticsTime ?? {};

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

    const totalTasks = taskList.length;
    this.info(`共 ${totalTasks} 个任务待执行`);

    for (let index = 0; index < taskList.length; index++) {
      try {
        await taskList[index]();
        this.callbacks?.onProgress?.(Math.floor(((index + 1) / totalTasks) * 100));
        await delay(this.delaySettings.taskDelay);
      } catch {}
    }

    this.callbacks?.onProgress?.(100);
    this.success("所有任务执行完成");
  }
}