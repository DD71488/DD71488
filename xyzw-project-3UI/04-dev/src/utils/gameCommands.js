/**
 * 游戏命令构造器
 * 基于mirror代码中的游戏指令实现完整的游戏功能
 */

import { g_utils } from "./bonProtocol.js";

// 生成随机数工具函数
function randomInt(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

/**
 * 游戏命令构造器类
 * 每个命令方法返回标准的WebSocket消息格式
 */
export class GameCommands {
  constructor(g_utils_instance = g_utils) {
    this.g_utils = g_utils_instance;
  }

  /**
   * 心跳消息
   */
  heart_beat(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: {},
      cmd: "_sys/ack",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 获取角色信息
   */
  role_getroleinfo(ack = 0, seq = 0, params = {}) {
    return {
      cmd: "role_getroleinfo",
      body: this.g_utils.bon.encode({
        clientVersion: "2.21.2-fa918e1997301834-wx",
        inviteUid: 0,
        platform: "hortor",
        platformExt: "mix",
        scene: "",
        ...params,
      }),
      ack: ack || 0,
      seq: seq || 0,
      time: Date.now(),
    };
  }

  /**
   * 获取数据包版本
   */
  system_getdatabundlever(ack = 0, seq = 0, params = {}) {
    return {
      cmd: "system_getdatabundlever",
      body: this.g_utils.bon.encode({
        isAudit: false,
        ...params,
      }),
      ack: ack || 0,
      seq: seq || 0,
      time: Date.now(),
    };
  }

  /**
   * 购买金币
   */
  system_buygold(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        buyNum: 1,
        ...params,
      }),
      cmd: "system_buygold",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 分享回调
   */
  system_mysharecallback(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        type: 3,
        isSkipShareCard: true,
        ...params,
      }),
      cmd: "system_mysharecallback",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 好友批处理
   */
  friend_batch(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        friendId: 0,
        ...params,
      }),
      cmd: "friend_batch",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 英雄招募
   */
  hero_recruit(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        byClub: false,
        recruitNumber: 1,
        recruitType: 3,
        ...params,
      }),
      cmd: "hero_recruit",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 领取挂机奖励
   */
  system_claimhangupreward(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "system_claimhangupreward",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 开宝箱
   */
  item_openbox(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        itemId: 2001,
        number: 10,
        ...params,
      }),
      cmd: "item_openbox",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 开始竞技场
   */
  arena_startarea(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "arena_startarea",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 获取竞技场目标
   */
  arena_getareatarget(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        refresh: false,
        ...params,
      }),
      cmd: "arena_getareatarget",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 开始竞技场战斗
   */
  fight_startareaarena(ack = 0, seq = 0, params = {}) {
    if (params?.targetId === undefined || params?.targetId === null) {
      throw new Error("fight_startareaarena requires targetId in params");
    }
    // battleVersion 应该由调用方通过 params 传入
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "fight_startareaarena",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 获取商店商品列表
   */
  store_goodslist(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        storeId: 1,
        ...params,
      }),
      cmd: "store_goodslist",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 商店购买
   */
  store_buy(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        goodsId: 1,
        ...params,
      }),
      cmd: "store_buy",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 军团商店购买商品
   */
  legion_storebuygoods(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "legion_storebuygoods",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 商店刷新
   */
  store_refresh(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        storeId: 1,
        ...params,
      }),
      cmd: "store_refresh",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 领取机器人助手奖励
   */
  bottlehelper_claim(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "bottlehelper_claim",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 启动机器人助手
   */
  bottlehelper_start(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        bottleType: -1,
        ...params,
      }),
      cmd: "bottlehelper_start",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 停止机器人助手
   */
  bottlehelper_stop(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        bottleType: -1,
        ...params,
      }),
      cmd: "bottlehelper_stop",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 钓鱼
   */
  artifact_lottery(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        lotteryNumber: 1,
        newFree: true,
        type: 1,
        ...params,
      }),
      cmd: "artifact_lottery",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 领取每日积分
   */
  task_claimdailypoint(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        taskId: 1,
        ...params,
      }),
      cmd: "task_claimdailypoint",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 领取周奖励
   */
  task_claimweekreward(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        rewardId: 0,
        ...params,
      }),
      cmd: "task_claimweekreward",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 开始BOSS战
   */
  fight_startboss(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "fight_startboss",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 精灵扫荡
   */
  genie_sweep(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "genie_sweep",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 购买精灵扫荡
   */
  genie_buysweep(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "genie_buysweep",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 签到奖励
   */
  system_signinreward(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "system_signinreward",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 领取折扣奖励
   */
  discount_claimreward(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        discountId: 1,
        ...params,
      }),
      cmd: "discount_claimreward",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 领取卡片奖励
   */
  card_claimreward(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        cardId: 1,
        ...params,
      }),
      cmd: "card_claimreward",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 军团签到
   */
  legion_signin(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "legion_signin",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 开始军团BOSS战
   */
  fight_startlegionboss(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "fight_startlegionboss",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 领取每日任务奖励
   */
  task_claimdailyreward(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        rewardId: 0,
        ...params,
      }),
      cmd: "task_claimdailyreward",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 获取军团信息
   */
  legion_getinfo(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({}),
      cmd: "legion_getinfo",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 军团匹配角色报名
   */
  legionmatch_rolesignup(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({}),
      cmd: "legionmatch_rolesignup",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 开始爬塔
   */
  fight_starttower(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({}),
      cmd: "fight_starttower",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 领取爬塔奖励
   */
  tower_claimreward(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "tower_claimreward",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 获取爬塔信息
   */
  tower_getinfo(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "tower_getinfo",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 开始答题游戏
   */
  study_startgame(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({}),
      cmd: "study_startgame",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 答题
   */
  study_answer(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "study_answer",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 领取答题奖励
   */
  study_claimreward(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        rewardId: 1,
        ...params,
      }),
      cmd: "study_claimreward",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 获取邮件列表
   */
  mail_getlist(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        category: [0, 4, 5],
        lastId: 0,
        size: 60,
        ...params,
      }),
      cmd: "mail_getlist",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 领取所有邮件附件
   */
  mail_claimallattachment(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        category: 0,
        ...params,
      }),
      cmd: "mail_claimallattachment",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 获取俱乐部战争详情
   */
  legionwar_getdetails(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        date: "2025/10/04",
        ...params,
      }),
      cmd: "legionwar_getdetails",
      seq,
      time: Date.now(),
    };
  }

  /**
   * 领取珍宝阁每日免费奖励
   */
  collection_claimfreereward(ack = 0, seq = 0, params = {}) {
    return {
      ack,
      body: this.g_utils.bon.encode({
        ...params,
      }),
      cmd: "collection_claimfreereward",
      seq,
      time: Date.now(),
    };
  }

  // ============================================================
  // APK528 独有命令
  // ============================================================

  /** 活动商店购买 */
  activity_buystoregoods(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "activity_buystoregoods", seq, time: Date.now() };
  }

  /** 领取周活动奖励 */
  activity_claimweekactreward(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "activity_claimweekactreward", seq, time: Date.now() };
  }

  /** 领取红色淬炼奖励 */
  activity_claimredquenchreward(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "activity_claimredquenchreward", seq, time: Date.now() };
  }

  /** 领取翻卷包奖励 */
  activity_claimrolluppack(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "activity_claimrolluppack", seq, time: Date.now() };
  }

  /** 战斗通行证奖励领取 */
  activity_battlepassrewardclaim(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "activity_battlepassrewardclaim", seq, time: Date.now() };
  }

  /** 充值累计奖励领取 */
  charge_claimaddup(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "charge_claimaddup", seq, time: Date.now() };
  }

  /** 宠物激活图鉴 */
  pet_activatebook(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "pet_activatebook", seq, time: Date.now() };
  }

  /** 宠物领取图鉴奖励 */
  pet_claimbookreward(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "pet_claimbookreward", seq, time: Date.now() };
  }

  /** 宠物开蛋 */
  pet_openegg(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "pet_openegg", seq, time: Date.now() };
  }

  /** 噩梦模式获取信息 */
  nmext_getinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "nmext_getinfo", seq, time: Date.now() };
  }

  /** 噩梦模式转盘抽奖 */
  nmext_drawturntable(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "nmext_drawturntable", seq, time: Date.now() };
  }

  /** 噩梦模式领取星星奖励 */
  nmext_claimstarreward(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "nmext_claimstarreward", seq, time: Date.now() };
  }

  /** 噩梦模式开始BOSS */
  nmext_startboss(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "nmext_startboss", seq, time: Date.now() };
  }

  /** 噩梦点击转盘 */
  nightmare_clickturntable(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "nightmare_clickturntable", seq, time: Date.now() };
  }

  /** 噩梦领取周奖励 */
  nightmare_claimweekreward(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "nightmare_claimweekreward", seq, time: Date.now() };
  }

  /** 噩梦领取转盘奖励次数 */
  nightmare_claimturnrewardtimes(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "nightmare_claimturnrewardtimes", seq, time: Date.now() };
  }

  /** 噩梦领取图鉴奖励 */
  nightmare_claimbook(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "nightmare_claimbook", seq, time: Date.now() };
  }

  /** 进化塔领取军团任务 */
  evotower_claimlegiontask(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "evotower_claimlegiontask", seq, time: Date.now() };
  }

  /** 进化塔领取军团特权 */
  evotower_claimlegionprivilege(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "evotower_claimlegionprivilege", seq, time: Date.now() };
  }

  /** 抽卡领取阶段奖励 */
  gacha_claimstagereward(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "gacha_claimstagereward", seq, time: Date.now() };
  }

  /** 爬塔准备战斗 */
  tower_readyfight(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "tower_readyfight", seq, time: Date.now() };
  }

  /** 预设阵容获取信息 */
  presetteam_typegetinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "presetteam_typegetinfo", seq, time: Date.now() };
  }

  /** 按阵容计算战力 */
  typecalcpowerbyteam(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "typecalcpowerbyteam", seq, time: Date.now() };
  }

  /** 设置阵容 */
  typesetteam(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "typesetteam", seq, time: Date.now() };
  }

  /** 战争猜猜获取信息 */
  warguess_getguessinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "warguess_getguessinfo", seq, time: Date.now() };
  }

  /** 战争猜猜领取奖励 */
  warguess_guessclaim(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "warguess_guessclaim", seq, time: Date.now() };
  }

  /** PK房间指定 */
  pkroom_appoint(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "pkroom_appoint", seq, time: Date.now() };
  }

  /** 红包淬炼 */
  hb_quench(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "hb_quench", seq, time: Date.now() };
  }

  /** 红包升级订单 */
  hb_upgradeorder(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "hb_upgradeorder", seq, time: Date.now() };
  }

  /** 商店获取购买信息 */
  store_getpurchase(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "store_getpurchase", seq, time: Date.now() };
  }

  /** 军团商店商品列表 */
  legion_storegoodslist(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_storegoodslist", seq, time: Date.now() };
  }

  /** 折扣获取信息 */
  discount_getdiscountinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "discount_getdiscountinfo", seq, time: Date.now() };
  }

  // ============================================================
  // APK528 补充命令（从APK主包ege()函数注册表补全）
  // ============================================================

  /** 活动获取 */
  activity_get(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "activity_get", seq, time: Date.now() };
  }

  /** 活动回收战令奖励领取 */
  activity_recyclewarorderrewardclaim(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "activity_recyclewarorderrewardclaim", seq, time: Date.now() };
  }

  /** 竞技场排名 */
  arena_getarearank(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "arena_getarearank", seq, time: Date.now() };
  }

  /** 神器兑换 */
  artifact_exchange(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "artifact_exchange", seq, time: Date.now() };
  }

  /** 神器装载 */
  artifact_load(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "artifact_load", seq, time: Date.now() };
  }

  /** 神器卸载 */
  artifact_unload(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "artifact_unload", seq, time: Date.now() };
  }

  /** 书升级 */
  book_upgrade(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "book_upgrade", seq, time: Date.now() };
  }

  /** 书领取积分奖励 */
  book_claimpointreward(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "book_claimpointreward", seq, time: Date.now() };
  }

  /** Boss塔获取帮助排名 */
  bosstower_gethelprank(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "bosstower_gethelprank", seq, time: Date.now() };
  }

  /** Boss塔获取信息 */
  bosstower_getinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "bosstower_getinfo", seq, time: Date.now() };
  }

  /** Boss塔开始BOSS */
  bosstower_startboss(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "bosstower_startboss", seq, time: Date.now() };
  }

  /** Boss塔开箱 */
  bosstower_startbox(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "bosstower_startbox", seq, time: Date.now() };
  }

  /** 赛车领取 */
  car_claim(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ carId: 0, ...params }), cmd: "car_claim", seq, time: Date.now() };
  }

  /** 赛车领取零件消耗奖励 */
  car_claimpartconsumereward(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "car_claimpartconsumereward", seq, time: Date.now() };
  }

  /** 赛车获取成员帮助次数 */
  car_getmemberhelpingcnt(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "car_getmemberhelpingcnt", seq, time: Date.now() };
  }

  /** 赛车获取成员排名 */
  car_getmemberrank(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "car_getmemberrank", seq, time: Date.now() };
  }

  /** 赛车获取角色赛车 */
  car_getrolecar(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "car_getrolecar", seq, time: Date.now() };
  }

  /** 赛车刷新 */
  car_refresh(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ carId: 0, ...params }), cmd: "car_refresh", seq, time: Date.now() };
  }

  /** 赛车研究 */
  car_research(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "car_research", seq, time: Date.now() };
  }

  /** 赛车发送 */
  car_send(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ carId: 0, helperId: 0, text: "", ...params }), cmd: "car_send", seq, time: Date.now() };
  }

  /** 珍宝阁商品列表 */
  collection_goodslist(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "collection_goodslist", seq, time: Date.now() };
  }

  /** 副本购买商人 */
  dungeon_buymerchant(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "dungeon_buymerchant", seq, time: Date.now() };
  }

  /** 副本选择英雄 */
  dungeon_selecthero(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "dungeon_selecthero", seq, time: Date.now() };
  }

  /** 装备确认 */
  equipment_confirm(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ heroId: 0, part: 0, quenchId: 0, quenches: {}, ...params }), cmd: "equipment_confirm", seq, time: Date.now() };
  }

  /** 装备淬炼 */
  equipment_quench(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ heroId: 0, part: 0, quenchId: 0, quenches: {}, seed: 0, skipOrange: false, ...params }), cmd: "equipment_quench", seq, time: Date.now() };
  }

  /** 装备更新淬炼锁定 */
  equipment_updatequenchlock(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ heroId: 0, part: 0, slot: 0, isLocked: false, ...params }), cmd: "equipment_updatequenchlock", seq, time: Date.now() };
  }

  /** 进化塔领取奖励 */
  evotower_claimreward(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "evotower_claimreward", seq, time: Date.now() };
  }

  /** 进化塔领取任务 */
  evotower_claimtask(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ taskId: 1, ...params }), cmd: "evotower_claimtask", seq, time: Date.now() };
  }

  /** 进化塔战斗 */
  evotower_fight(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "evotower_fight", seq, time: Date.now() };
  }

  /** 进化塔获取信息 */
  evotower_getinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "evotower_getinfo", seq, time: Date.now() };
  }

  /** 进化塔获取军团加入成员 */
  evotower_getlegionjoinmembers(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "evotower_getlegionjoinmembers", seq, time: Date.now() };
  }

  /** 进化塔准备战斗 */
  evotower_readyfight(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "evotower_readyfight", seq, time: Date.now() };
  }

  /** 开始副本战斗 */
  fight_startdungeon(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "fight_startdungeon", seq, time: Date.now() };
  }

  /** 开始关卡战斗 */
  fight_startlevel(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "fight_startlevel", seq, time: Date.now() };
  }

  /** 开始PVP战斗 */
  fight_startpvp(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "fight_startpvp", seq, time: Date.now() };
  }

  /** 抽卡抽奖 */
  gacha_drawreward(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ isGroup: false, num: 1, ...params }), cmd: "gacha_drawreward", seq, time: Date.now() };
  }

  /** 英雄交换 */
  hero_exchange(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "hero_exchange", seq, time: Date.now() };
  }

  /** 英雄上阵 */
  hero_gointobattle(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "hero_gointobattle", seq, time: Date.now() };
  }

  /** 英雄下阵 */
  hero_gobackbattle(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "hero_gobackbattle", seq, time: Date.now() };
  }

  /** 英雄升级等级 */
  hero_heroupgradelevel(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "hero_heroupgradelevel", seq, time: Date.now() };
  }

  /** 英雄升级订单 */
  hero_heroupgradeorder(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "hero_heroupgradeorder", seq, time: Date.now() };
  }

  /** 英雄升星 */
  hero_heroupgradestar(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "hero_heroupgradestar", seq, time: Date.now() };
  }

  /** 英雄重生 */
  hero_rebirth(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "hero_rebirth", seq, time: Date.now() };
  }

  /** 批量领取宝箱积分奖励 */
  item_batchclaimboxpointreward(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "item_batchclaimboxpointreward", seq, time: Date.now() };
  }

  /** 开礼包 */
  item_openpack(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "item_openpack", seq, time: Date.now() };
  }

  /** 联赛获取战场 */
  league_getbattlefield(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "league_getbattlefield", seq, time: Date.now() };
  }

  /** 联赛获取小组对手 */
  league_getgroupopponent(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "league_getgroupopponent", seq, time: Date.now() };
  }

  /** 遗产领取挂机 */
  legacy_claimhangup(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legacy_claimhangup", seq, time: Date.now() };
  }

  /** 遗产获取信息 */
  legacy_getinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legacy_getinfo", seq, time: Date.now() };
  }

  /** 遗产礼物获取列表 */
  legacy_gift_getlist(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legacy_gift_getlist", seq, time: Date.now() };
  }

  /** 遗产礼物已接收 */
  legacy_gift_received(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legacy_gift_received", seq, time: Date.now() };
  }

  /** 遗产礼物发送 */
  legacy_gift_send(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ recipientId: 0, itemId: 0, quantity: 0, ...params }), cmd: "legacy_gift_send", seq, time: Date.now() };
  }

  /** 遗产发送礼物 */
  legacy_sendgift(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ itemCnt: 0, legacyUIds: [], targetId: 0, ...params }), cmd: "legacy_sendgift", seq, time: Date.now() };
  }

  /** 军团同意 */
  legion_agree(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_agree", seq, time: Date.now() };
  }

  /** 军团申请列表 */
  legion_applylist(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_applylist", seq, time: Date.now() };
  }

  /** 军团批准申请 */
  legion_approveapply(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_approveapply", seq, time: Date.now() };
  }

  /** 军团领取载荷任务 */
  legion_claimpayloadtask(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_claimpayloadtask", seq, time: Date.now() };
  }

  /** 军团领取载荷任务进度 */
  legion_claimpayloadtaskprogress(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_claimpayloadtaskprogress", seq, time: Date.now() };
  }

  /** 军团获取区域排名 */
  legion_getarearank(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_getarearank", seq, time: Date.now() };
  }

  /** 军团获取战场 */
  legion_getbattlefield(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_getbattlefield", seq, time: Date.now() };
  }

  /** 军团通过ID获取信息 */
  legion_getinfobyid(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_getinfobyid", seq, time: Date.now() };
  }

  /** 军团获取对手 */
  legion_getopponent(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_getopponent", seq, time: Date.now() };
  }

  /** 军团获取载荷战场 */
  legion_getpayloadbf(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_getpayloadbf", seq, time: Date.now() };
  }

  /** 军团获取载荷击杀记录 */
  legion_getpayloadkillrecord(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_getpayloadkillrecord", seq, time: Date.now() };
  }

  /** 军团获取载荷记录 */
  legion_getpayloadrecord(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_getpayloadrecord", seq, time: Date.now() };
  }

  /** 军团获取载荷任务 */
  legion_getpayloadtask(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_getpayloadtask", seq, time: Date.now() };
  }

  /** 军团获取战争排名 */
  legion_getwarrank(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_getwarrank", seq, time: Date.now() };
  }

  /** 军团忽略 */
  legion_ignore(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_ignore", seq, time: Date.now() };
  }

  /** 军团踢出 */
  legion_kickout(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_kickout", seq, time: Date.now() };
  }

  /** 军团拒绝申请 */
  legion_refuseapply(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legion_refuseapply", seq, time: Date.now() };
  }

  /** 军团战争获取黄金月战争排名 */
  legionwar_getgoldmonthwarrank(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "legionwar_getgoldmonthwarrank", seq, time: Date.now() };
  }

  /** 主武器更换默认武器 */
  lordweapon_changedefaultweapon(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "lordweapon_changedefaultweapon", seq, time: Date.now() };
  }

  /** 邮件获取MTL信息 */
  mail_getmtlinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "mail_getmtlinfo", seq, time: Date.now() };
  }

  /** 邮件获取MTL简略信息 */
  mail_getmtlshortinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "mail_getmtlshortinfo", seq, time: Date.now() };
  }

  /** 匹配队伍获取角色队伍信息 */
  matchteam_getroleteaminfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "matchteam_getroleteaminfo", seq, time: Date.now() };
  }

  /** 合并盒子自动合并物品 */
  mergebox_automergeitem(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ actType: 1, ...params }), cmd: "mergebox_automergeitem", seq, time: Date.now() };
  }

  /** 合并盒子领取消耗进度 */
  mergebox_claimcostprogress(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ actType: 1, ...params }), cmd: "mergebox_claimcostprogress", seq, time: Date.now() };
  }

  /** 合并盒子领取免费能量 */
  mergebox_claimfreeenergy(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "mergebox_claimfreeenergy", seq, time: Date.now() };
  }

  /** 合并盒子领取合并进度 */
  mergebox_claimmergeprogress(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ actType: 1, ...params }), cmd: "mergebox_claimmergeprogress", seq, time: Date.now() };
  }

  /** 合并盒子获取信息 */
  mergebox_getinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "mergebox_getinfo", seq, time: Date.now() };
  }

  /** 合并盒子合并物品 */
  mergebox_mergeitem(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ actType: 1, ...params }), cmd: "mergebox_mergeitem", seq, time: Date.now() };
  }

  /** 合并盒子开箱 */
  mergebox_openbox(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "mergebox_openbox", seq, time: Date.now() };
  }

  /** 噩梦获取角色信息 */
  nightmare_getroleinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "nightmare_getroleinfo", seq, time: Date.now() };
  }

  /** 珍珠替换技能 */
  pearl_replaceskill(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "pearl_replaceskill", seq, time: Date.now() };
  }

  /** 珍珠交换技能 */
  pearl_exchangeskill(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "pearl_exchangeskill", seq, time: Date.now() };
  }

  /** 珍珠卸载技能 */
  pearl_unloadskill(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "pearl_unloadskill", seq, time: Date.now() };
  }

  /** 预设阵容获取信息 */
  presetteam_getinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "presetteam_getinfo", seq, time: Date.now() };
  }

  /** 预设阵容保存队伍 */
  presetteam_saveteam(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ teamId: 1, ...params }), cmd: "presetteam_saveteam", seq, time: Date.now() };
  }

  /** 预设阵容设置队伍 */
  presetteam_setteam(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "presetteam_setteam", seq, time: Date.now() };
  }

  /** 预设阵容按类型计算战力 */
  presetteam_typecalcpowerbyteam(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ typ: 101, battleTeam: [], lordWeaponId: 8, petUId: "", ...params }), cmd: "presetteam_typecalcpowerbyteam", seq, time: Date.now() };
  }

  /** 预设阵容按类型设置队伍 */
  presetteam_typesetteam(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ typ: 101, battleTeam: [], lordWeaponId: 8, ...params }), cmd: "presetteam_typesetteam", seq, time: Date.now() };
  }

  /** 排名获取角色信息 */
  rank_getroleinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "rank_getroleinfo", seq, time: Date.now() };
  }

  /** 排名获取服务器排名 */
  rank_getserverrank(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "rank_getserverrank", seq, time: Date.now() };
  }

  /** 角色提交密码 */
  role_commitpassword(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ password: "", passwordType: 1, ...params }), cmd: "role_commitpassword", seq, time: Date.now() };
  }

  /** 角色获取目标队伍 */
  role_gettargetteam(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "role_gettargetteam", seq, time: Date.now() };
  }

  /** 盐路获取盐路战争组排名 */
  saltroad_getsaltroadwargrouprank(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "saltroad_getsaltroadwargrouprank", seq, time: Date.now() };
  }

  /** 盐路获取盐路战争总排名 */
  saltroad_getsaltroadwartotalrank(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "saltroad_getsaltroadwartotalrank", seq, time: Date.now() };
  }

  /** 盐路获取战争类型 */
  saltroad_getwartype(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "saltroad_getwartype", seq, time: Date.now() };
  }

  /** 商店购买（含goodsId） */
  store_purchase(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ goodsId: 1, ...params }), cmd: "store_purchase", seq, time: Date.now() };
  }

  /** 系统自定义 */
  system_custom(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ key: "", value: 0, ...params }), cmd: "system_custom", seq, time: Date.now() };
  }

  /** 系统发送聊天消息 */
  system_sendchatmessage(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "system_sendchatmessage", seq, time: Date.now() };
  }

  /** 多塔战斗 */
  towers_fight(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "towers_fight", seq, time: Date.now() };
  }

  /** 多塔获取信息 */
  towers_getinfo(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "towers_getinfo", seq, time: Date.now() };
  }

  /** 多塔开始 */
  towers_start(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "towers_start", seq, time: Date.now() };
  }

  /** 战争猜猜获取金币奖励 */
  warguess_getguesscoinreward(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "warguess_getguesscoinreward", seq, time: Date.now() };
  }

  /** 战争猜猜获取排名 */
  warguess_getrank(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "warguess_getrank", seq, time: Date.now() };
  }

  /** 战争猜猜开始猜测 */
  warguess_startguess(ack = 0, seq = 0, params = {}) {
    return { ack, body: this.g_utils.bon.encode({ ...params }), cmd: "warguess_startguess", seq, time: Date.now() };
  }
}

// 三国答题题库（基于mirror代码中的题目）
export const studyQuestions = [
  { name: "", value: 2 },
  { name: "《三国演义》中，「大意失街亭」的是马谩？", value: 1 },
  { name: "《三国演义》中，「挥泪斩马谩」的是孙权？", value: 2 },
  { name: "《三国演义》中，「火烧博望坡」的是庞统？", value: 2 },
  { name: "《三国演义》中，「火烧藤甲兵」的是徐庶？", value: 2 },
  { name: "《三国演义》中，「千里走单骑」的是赵云？", value: 2 },
  { name: "《三国演义》中，「温酒斩华雄」的是张飞？", value: 2 },
  { name: "《三国演义》中，关羽在长坂坡「七进七出」？", value: 2 },
  { name: "《三国演义》中，刘备三顾茅庐请诸葛亮出山？", value: 1 },
  { name: "《三国演义》中，孙权与曹操「煮酒论英雄」？", value: 2 },
  { name: "《三国演义》中，提出「隆中对」的是诸葛亮？", value: 1 },
  { name: "《三国演义》中，夏侯杰在当阳桥被张飞吓死？", value: 1 },
  { name: "《三国演义》中，张飞在当阳桥厉吼吓退曹军？", value: 1 },
  { name: "《三国演义》中，赵云参与了「三英战吕布」？", value: 2 },
  { name: "《三国演义》中，赵云参与了「桃园三结义」？", value: 2 },
  // 更多题目可以从原始数据中添加...
];

// 创建命令实例
export const gameCommands = new GameCommands();
export default GameCommands;
