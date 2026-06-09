/**
 * 批量日常任务常量配置
 */

// 宝箱类型选项
export const boxTypeOptions = [
  { label: "木质宝箱", value: 2001 },
  { label: "青铜宝箱", value: 2002 },
  { label: "黄金宝箱", value: 2003 },
  { label: "铂金宝箱", value: 2004 },
];

// 鱼竿类型选项
export const fishTypeOptions = [
  { label: "普通鱼竿", value: 1 },
  { label: "黄金鱼竿", value: 2 },
];

// 阵容选项
export const formationOptions = [1, 2, 3, 4, 5, 6].map((v) => ({
  label: `阵容${v}`,
  value: v,
}));

// BOSS次数选项
export const bossTimesOptions = [0, 1, 2, 3, 4].map((v) => ({
  label: `${v}次`,
  value: v,
}));

// 可用的定时任务列表
export const availableTasks = [
  { label: "日常任务", value: "startBatch" },
  { label: "领取挂机", value: "claimHangUpRewards" },
  { label: "一键加钟", value: "batchAddHangUpTime" },
  { label: "重置罐子", value: "resetBottles" },
  { label: "一键领取罐子", value: "batchlingguanzi" },
  { label: "一键爬塔", value: "climbTower" },
  { label: "一键爬怪异塔", value: "climbWeirdTower" },
  { label: "一键答题", value: "batchStudy" },
  { label: "智能发车", value: "batchSmartSendCar" },
  { label: "一键收车", value: "batchClaimCars" },
  { label: "批量开箱", value: "batchOpenBox" },
  { label: "按积分开箱", value: "batchOpenBoxByPoints" },
  { label: "领取宝箱积分", value: "batchClaimBoxPointReward" },
  { label: "批量钓鱼", value: "batchFish" },
  { label: "批量招募", value: "batchRecruit" },
  { label: "一键宝库前3层", value: "batchbaoku13" },
  { label: "一键宝库4,5层", value: "batchbaoku45" },
  { label: "一键梦境", value: "batchmengjing" },
  { label: "一键俱乐部签到", value: "batchclubsign" },
  { label: "一键竞技场战斗3次", value: "batcharenafight" },
  { label: "一键钓鱼补齐", value: "batchTopUpFish" },
  { label: "一键竞技场补齐", value: "batchTopUpArena" },
  { label: "一键领取怪异塔免费道具", value: "batchClaimFreeEnergy" },
  { label: "一键换皮闯关", value: "skinChallenge" },
  { label: "一键购买四圣碎片", value: "legion_storebuygoods" },
  { label: "一键黑市采购", value: "store_purchase" },
  { label: "免费领取珍宝阁", value: "collection_claimfreereward" },
  { label: "批量领取功法残卷", value: "batchLegacyClaim" },
  { label: "批量赠送功法残卷", value: "batchLegacyGiftSendEnhanced" },
  { label: "一键使用怪异塔道具", value: "batchUseItems" },
  { label: "一键怪异塔合成", value: "batchMergeItems" },
  { label: "一键领取蟠桃园任务", value: "batchClaimPeachTasks" },
  { label: "一键扫荡灯神", value: "batchGenieSweep" },
  { label: "一键购买梦境商品", value: "batchBuyDreamItems" },
];

// 车辆研究消耗表
export const CarresearchItem = [
  20, 21, 22, 23, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 47, 50, 53, 56,
  59, 62, 65, 68, 71, 74, 78, 82, 86, 90, 94, 99, 104, 109, 114, 119, 126, 133,
  140, 147, 154, 163, 172, 181, 190, 199, 210, 221, 232, 243, 369, 393, 422,
  457, 498, 548, 607, 678, 763, 865, 1011,
];

// 月度任务目标
export const FISH_TARGET = 320;
export const ARENA_TARGET = 240;

// 任务表列配置
export const taskColumns = [
  { title: "任务名称", key: "name", width: 150 },
  { title: "运行类型", key: "runType", width: 100 },
  {
    title: "运行时间",
    key: "runTime",
    width: 150,
    render: (row) => {
      return row.runType === "daily" ? row.runTime : row.cronExpression;
    },
  },
  {
    title: "选中账号",
    key: "selectedTokens",
    width: 150,
    render: (row) => `${row.selectedTokens.length} 个`,
  },
  {
    title: "选中任务",
    key: "selectedTasks",
    width: 150,
    render: (row) => `${row.selectedTasks.length} 个`,
  },
  {
    title: "状态",
    key: "enabled",
    width: 80,
    render: (row) => (row.enabled ? "启用" : "禁用"),
  },
  { title: "操作", key: "actions", width: 150 },
];

// 默认设置
export const defaultSettings = {
  arenaFormation: 1,
  towerFormation: 1,
  bossFormation: 1,
  bossTimes: 2,
  claimBottle: true,
  payRecruit: true,
  openBox: true,
  arenaEnable: true,
  claimHangUp: true,
  claimEmail: true,
  blackMarketPurchase: true,
};

// 默认批量设置
export const defaultBatchSettings = {
  boxCount: 100,
  fishCount: 100,
  recruitCount: 100,
  defaultBoxType: 2001,
  defaultFishType: 1,
  receiverId: "",
  password: "",
  useGoldRefreshFallback: false,
  tokenListColumns: 2,
  commandDelay: 500,
  taskDelay: 500,
  maxActive: 2,
  carMinColor: 4,
  connectionTimeout: 10000,
  reconnectDelay: 1000,
  maxLogEntries: 1000,
  // 智能发车阈值设置
  smartDepartureGoldThreshold: 0,
  smartDepartureRecruitThreshold: 0,
  smartDepartureJadeThreshold: 0,
  smartDepartureTicketThreshold: 0,
};

// 默认模板
export const defaultTemplate = {
  arenaFormation: 1,
  towerFormation: 1,
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

// 默认任务表单
export const defaultTaskForm = {
  name: "",
  runType: "daily",
  runTime: undefined,
  cronExpression: "",
  selectedTokens: [],
  selectedTasks: [],
  enabled: true,
  offlineTimeEnabled: false,
  offlineTimeRanges: [],
};

// 默认助手设置
export const defaultHelperSettings = {
  boxType: 2001,
  fishType: 1,
  count: 100,
};

// 错误码映射表（APK528原始23条 + 1条业务逻辑中使用的200400）
export const errorCodeMap = {
  400190: "没有可领取的签到奖励",
  2300190: "今日已完成签到",
  1000020: "该奖励今日已领取",
  12000116: "今日免费奖励已领取",
  1400010: "没有购买该月卡,不能领取每日奖励",
  3300050: "购买数量超出限制",
  2600040: "未知错误",
  200750: "临时错误",
  700020: "任务条件未满足，无法领取",
  200020: "请求过于频繁，请稍后重试",
  1300050: "黑市采购次数异常",
  1500020: "能量不足",
  3500020: "暂无可领取奖励",
  200160: "模块未开启无法领取",
  700010: "任务未达成无法领取",
  4100040: "推关未达标，无法解锁领取",
  1100010: "已购买过青铜宝箱",
  400010: "数量不足",
  2000150: "无对应罐子，无法领取",
  400030: "已领取，无需重复操作",
  2300070: "未加入俱乐部",
  2300250: "俱乐部BOSS次数已用完",
  3300060: "灯神扫荡条件不满足",
  200400: "操作太快，请稍后再试",
};

// 错误码上下文覆盖（同一错误码在不同模块有不同含义）
export const featureErrorOverrides = {
  dreamWorld: { 200160: "该账号未达到关卡无法解锁梦境" },
  arena: { 200020: "推关关卡未达标无法解锁竞技场" },
  blackMarket: { 1300040: "未解锁关卡，无法使用采购功能" },
  formation: { 200020: "该账号阵容未解锁" },
  genie: { 200020: "该账号灯神扫荡条件不满足" },
  hangUp: { 200020: "加钟请求过于频繁，请稍后重试" },
};

// 翻译错误码（先查功能覆盖，再查通用表）
export function translateErrorCode(error, feature = "") {
  const code = extractErrorCode(error);
  if (!code) return String(error);
  if (feature && featureErrorOverrides[feature]?.[code]) {
    return featureErrorOverrides[feature][code];
  }
  return errorCodeMap[code] || `错误码: ${code}`;
}

// 从错误对象中提取6-7位数字错误码
export function extractErrorCode(error) {
  if (typeof error === "number") return error;
  const str = String(error?.message || error);
  const match = str.match(/(\d{6,7})/);
  return match ? parseInt(match[1]) : null;
}

// 判断是否为连接类错误
export function isConnectionError(error) {
  const str = String(error?.message || error);
  return str.includes("连接") || str.includes("WebSocket");
}

// 宝箱ID映射（APK528硬编码）
export const BOX_TYPE = {
  DIAMOND: { id: 2005, name: "钻石宝箱" },
  WOODEN: { id: 2001, name: "木质宝箱" },
  BRONZE: { id: 1, name: "青铜宝箱" },
};

// 招募类型
export const RECRUIT_TYPE = { FREE: 3, PAID: 1 };

// 竞技场配置
export const ARENA_CONFIG = { START_HOUR: 6, END_HOUR: 22, MAX_FIGHTS: 3 };

// 卡类型
export const CARD_TYPE = { WEEKLY: 4001, MONTHLY: 4002, PERMANENT: 4003 };

// 副本开放日（0=周日, 1=周一, 3=周三, 4=周四）
export const DUNGEON_OPEN_DAYS = [0, 1, 3, 4];

// 星期-英雄ID映射（周日~周六）
export const DAY_BOSS_MAP = [9904, 9905, 9901, 9902, 9903, 9904, 9905];

// 星级抽奖配置
export const STAR_DRAW_CONFIG = [
  { itemId: 36997, name: "一星级抽奖", maxDraws: 5 },
  { itemId: 36998, name: "二星级抽奖", maxDraws: 4 },
  { itemId: 36999, name: "三星级抽奖", maxDraws: 3 },
];

// 赛车改装配置
export const CAR_RESEARCH_CONFIG = [
  { researchId: 1, maxLevel: 36, name: "改装1" },
  { researchId: 2, maxLevel: 34, name: "改装2" },
  { researchId: 3, maxLevel: 2, name: "改装3" },
];

// 军团商店商品配置（商品ID: 购买数量）
export const LEGION_STORE_ITEMS = { 7: 1, 8: 1, 9: 1, 10: 20, 11: 20 };

// 宝箱周奖励配置
export const BOX_WEEKLY_REWARD = { 5: 1 };

// 直播预约专属错误码
export const LIVE_APPOINT_ERRORS = {
  7300236: "已预约",
  7300234: "未开启",
};

// 星级抽奖专属错误码
export const STAR_DRAW_ERRORS = {
  7100684: "未获取到抽奖次数",
};

// 服务器ID编码规则
export const SERVER_ID_RULES = {
  OFFSET: 27,
  TEST1_PREFIX: 1000000,
  TEST2_PREFIX: 2000000,
};

// 根据serverId解码服务器信息
export function decodeServerId(serverId) {
  if (serverId >= SERVER_ID_RULES.TEST2_PREFIX) {
    return { number: serverId - SERVER_ID_RULES.TEST2_PREFIX - SERVER_ID_RULES.OFFSET, type: 2, typeName: "测试2" };
  }
  if (serverId >= SERVER_ID_RULES.TEST1_PREFIX) {
    return { number: serverId - SERVER_ID_RULES.TEST1_PREFIX - SERVER_ID_RULES.OFFSET, type: 1, typeName: "测试1" };
  }
  return { number: serverId - SERVER_ID_RULES.OFFSET, type: 0, typeName: "正式" };
}

// 判断今天是否为副本开放日
export function isDungeonOpenDay() {
  return DUNGEON_OPEN_DAYS.includes(new Date().getDay());
}

// 判断副本是否在开放时间段内
export function isDungeonOpenHour() {
  const hour = new Date().getHours();
  return hour >= ARENA_CONFIG.START_HOUR && hour < ARENA_CONFIG.END_HOUR;
}

// 安全属性访问器（类似lodash get）
export function getValueByPath(obj, path, defaultValue = null) {
  if (!obj || !path) return defaultValue;
  const keys = String(path).split(".");
  let result = obj;
  for (const key of keys) {
    if (result == null) return defaultValue;
    result = result[key];
  }
  return result ?? defaultValue;
}

// 智能列表提取器（尝试多种字段名）
export function extractList(data) {
  if (!data) return [];
  if (Array.isArray(data)) return data;
  return data.rankList || data.roleList || data.targets || data.targetList || data.list || [];
}

// 随机延迟（用于反检测）
export function randomDelay(min, max) {
  return new Promise((resolve) => setTimeout(resolve, min + Math.random() * (max - min)));
}
