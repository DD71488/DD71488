# gameCommands 变量名映射

> 源文件: gameCommands-BYMl-9HL.js
> 生成时间: 2026-06-03

## 全局映射

### 导入映射 (import aliases)

| minified | 源码名 | 说明 |
|----------|--------|------|
| `n` | `g_utils` (from index) | 全局工具实例，包含 bon 编解码、加解密等 |

### 模块级导出

| minified | 源码名 | 说明 |
|----------|--------|------|
| `r` | `GameCommands` | 游戏命令类，默认构造参数 `g_utils` |
| `d` | `gameCommands` | GameCommands 单例实例 |

## 组件内映射

### GameCommands 类 (`r`)

| minified | 源码名 | 作用域 | 说明 |
|----------|--------|--------|------|
| `r` | `GameCommands` | 类 | 游戏命令构建类 |
| `d` | `gameCommands` | 模块级 | `new r()` 单例实例 |
| `e` | `g_utils` | 构造函数参数 | 默认值 `n`，全局工具实例 |
| `this.g_utils` | `g_utils` | 实例属性 | 存储传入的 g_utils 引用 |

### GameCommands 方法映射

| minified方法名 | 源码名 | 参数 (e, o, t) | cmd字符串 | 默认body参数 | 说明 |
|---------------|--------|---------------|-----------|-------------|------|
| `heart_beat` | `heart_beat` | ack, seq, {} | `_sys/ack` | `{}` | 心跳消息 |
| `role_getroleinfo` | `role_getroleinfo` | ack, seq, overrides | `role_getroleinfo` | `{clientVersion, inviteUid:0, platform:"hortor", platformExt:"mix", scene:""}` | 获取角色信息 |
| `system_getdatabundlever` | `system_getdatabundlever` | ack, seq, overrides | `system_getdatabundlever` | `{isAudit:false}` | 获取数据包版本 |
| `system_buygold` | `system_buygold` | ack, seq, overrides | `system_buygold` | `{buyNum:1}` | 购买金币 |
| `system_mysharecallback` | `system_mysharecallback` | ack, seq, overrides | `system_mysharecallback` | `{type:3, isSkipShareCard:true}` | 分享回调 |
| `friend_batch` | `friend_batch` | ack, seq, overrides | `friend_batch` | `{friendId:0}` | 好友批处理 |
| `hero_recruit` | `hero_recruit` | ack, seq, overrides | `hero_recruit` | `{byClub:false, recruitNumber:1, recruitType:3}` | 英雄招募 |
| `system_claimhangupreward` | `system_claimhangupreward` | ack, seq, overrides | `system_claimhangupreward` | `{}` | 领取挂机奖励 |
| `item_openbox` | `item_openbox` | ack, seq, overrides | `item_openbox` | `{itemId:2001, number:10}` | 开宝箱 |
| `arena_startarea` | `arena_startarea` | ack, seq, overrides | `arena_startarea` | `{}` | 开始竞技场 |
| `arena_getareatarget` | `arena_getareatarget` | ack, seq, overrides | `arena_getareatarget` | `{refresh:false}` | 获取竞技场目标 |
| `fight_startareaarena` | `fight_startareaarena` | ack, seq, overrides | `fight_startareaarena` | `{...overrides}` (需targetId) | 开始竞技场战斗 |
| `store_goodslist` | `store_goodslist` | ack, seq, overrides | `store_goodslist` | `{storeId:1}` | 获取商店商品列表 |
| `store_buy` | `store_buy` | ack, seq, overrides | `store_buy` | `{goodsId:1}` | 商店购买 |
| `legion_storebuygoods` | `legion_storebuygoods` | ack, seq, overrides | `legion_storebuygoods` | `{}` | 军团商店购买 |
| `store_refresh` | `store_refresh` | ack, seq, overrides | `store_refresh` | `{storeId:1}` | 商店刷新 |
| `store_getpurchase` | `store_getpurchase` | ack, seq, overrides | `store_getpurchase` | `{}` | 获取购买信息 |
| `discount_getdiscountinfo` | `discount_getdiscountinfo` | ack, seq, overrides | `discount_getdiscountinfo` | `{}` | 获取折扣信息 |
| `bottlehelper_claim` | `bottlehelper_claim` | ack, seq, overrides | `bottlehelper_claim` | `{}` | 领取盐罐奖励 |
| `bottlehelper_start` | `bottlehelper_start` | ack, seq, overrides | `bottlehelper_start` | `{bottleType:-1}` | 开始盐罐计时 |
| `bottlehelper_stop` | `bottlehelper_stop` | ack, seq, overrides | `bottlehelper_stop` | `{bottleType:-1}` | 停止盐罐计时 |
| `artifact_lottery` | `artifact_lottery` | ack, seq, overrides | `artifact_lottery` | `{lotteryNumber:1, newFree:true, type:1}` | 钓鱼 |
| `task_claimdailypoint` | `task_claimdailypoint` | ack, seq, overrides | `task_claimdailypoint` | `{taskId:1}` | 领取每日积分 |
| `task_claimweekreward` | `task_claimweekreward` | ack, seq, overrides | `task_claimweekreward` | `{rewardId:0}` | 领取周奖励 |
| `fight_startboss` | `fight_startboss` | ack, seq, overrides | `fight_startboss` | `{}` | 开始BOSS战 |
| `genie_sweep` | `genie_sweep` | ack, seq, overrides | `genie_sweep` | `{}` | 精灵扫荡 |
| `genie_buysweep` | `genie_buysweep` | ack, seq, overrides | `genie_buysweep` | `{}` | 购买精灵扫荡 |
| `system_signinreward` | `system_signinreward` | ack, seq, overrides | `system_signinreward` | `{}` | 签到奖励 |
| `discount_claimreward` | `discount_claimreward` | ack, seq, overrides | `discount_claimreward` | `{discountId:1}` | 领取折扣奖励 |
| `card_claimreward` | `card_claimreward` | ack, seq, overrides | `card_claimreward` | `{cardId:1}` | 领取卡片奖励 |
| `legion_signin` | `legion_signin` | ack, seq, overrides | `legion_signin` | `{}` | 军团签到 |
| `fight_startlegionboss` | `fight_startlegionboss` | ack, seq, overrides | `fight_startlegionboss` | `{}` | 开始军团BOSS战 |
| `task_claimdailyreward` | `task_claimdailyreward` | ack, seq, overrides | `task_claimdailyreward` | `{rewardId:0}` | 领取每日任务奖励 |
| `legion_getinfo` | `legion_getinfo` | ack, seq, overrides | `legion_getinfo` | `{}` | 获取军团信息 |
| `legionmatch_rolesignup` | `legionmatch_rolesignup` | ack, seq, overrides | `legionmatch_rolesignup` | `{}` | 军团匹配报名 |
| `fight_starttower` | `fight_starttower` | ack, seq, overrides | `fight_starttower` | `{}` | 开始爬塔 |
| `tower_claimreward` | `tower_claimreward` | ack, seq, overrides | `tower_claimreward` | `{}` | 领取爬塔奖励 |
| `tower_getinfo` | `tower_getinfo` | ack, seq, overrides | `tower_getinfo` | `{}` | 获取爬塔信息 |
| `study_startgame` | `study_startgame` | ack, seq, overrides | `study_startgame` | `{}` | 开始答题游戏 |
| `study_answer` | `study_answer` | ack, seq, overrides | `study_answer` | `{}` | 答题 |
| `study_claimreward` | `study_claimreward` | ack, seq, overrides | `study_claimreward` | `{rewardId:1}` | 领取答题奖励 |
| `mail_getlist` | `mail_getlist` | ack, seq, overrides | `mail_getlist` | `{category:[0,4,5], lastId:0, size:60}` | 获取邮件列表 |
| `mail_claimallattachment` | `mail_claimallattachment` | ack, seq, overrides | `mail_claimallattachment` | `{category:0}` | 领取所有邮件附件 |
| `legionwar_getdetails` | `legionwar_getdetails` | ack, seq, overrides | `legionwar_getdetails` | `{date:"2025/10/04"}` | 获取盐场详情 |
| `collection_claimfreereward` | `collection_claimfreereward` | ack, seq, overrides | `collection_claimfreereward` | `{}` | 领取珍宝阁免费奖励 |
| `activity_buystoregoods` | `activity_buystoregoods` | ack, seq, overrides | `activity_buystoregoods` | `{}` | 购买活动商店商品 |

### 方法参数约定

所有方法遵循统一参数模式：

| 参数位 | minified名 | 源码名 | 说明 |
|--------|-----------|--------|------|
| 第1个 | `e` | `ack` | 确认号，默认 0 |
| 第2个 | `o` | `seq` | 序列号，默认 0 |
| 第3个 | `t` | `overrides` | 覆盖/扩展参数对象，默认 `{}` |

### 返回值结构

所有方法返回统一消息格式：

```
{
  cmd: "<命令字符串>",
  body: this.g_utils.bon.encode({...默认参数, ...overrides}),
  ack: e || 0,
  seq: o || 0,
  time: Date.now()
}
```

### 特殊方法说明

| 方法 | 特殊行为 |
|------|---------|
| `fight_startareaarena` | 需要 `targetId` 参数，缺失时抛出 Error |
| `heart_beat` | 不使用 `bon.encode`，body 直接为 `{}` |
