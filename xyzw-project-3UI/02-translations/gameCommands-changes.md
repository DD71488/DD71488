# GameCommands 模块翻译

> 源文件: `gameCommands-BYMl-9HL.js`
> 翻译时间: 2026-06-03
> 翻译方法: minified变量名 → 可读名 + 中文注释

---

## 1. 模块概览

GameCommands 是游戏命令注册系统，负责构造所有发送到游戏服务器的协议消息。

| 项目 | minified | 可读名 |
|------|----------|--------|
| 导入的工具对象 | `n` (from `aL`) | `gameUtils` |
| 命令注册类 | `r` | `GameCommands` |
| 单例实例 | `d` | `gameCommands` |
| 工具引用 | `this.g_utils` | `this.gameUtils` |

**导出**: `GameCommands` (命名导出)、`default` (默认导出类)、`gameCommands` (单例)

---

## 2. 核心架构 — CommandRegistry

### 2.1 类结构与构造函数

```javascript
// 导入: 从 index 模块引入游戏工具对象（包含 bon 编码器等）
import { gameUtils } from "./index-BUwMeHKm.js";

class GameCommands {
  constructor(utils = gameUtils) {
    this.gameUtils = utils;  // g_utils → gameUtils，包含 bon.encode 等编码工具
  }
}
```

### 2.2 命令方法统一签名

每个命令方法遵循相同的签名模式：

```javascript
commandName(ack = 0, seq = 0, params = {}) {
  return {
    cmd: "command_name",              // 命令标识符
    body: this.gameUtils.bon.encode({ // bon 二进制编码的请求体
      // 默认参数 + 用户传入参数覆盖
      ...params,
    }),
    ack: ack,    // 应答号
    seq: seq,    // 序列号
    time: Date.now(),  // 时间戳
  };
}
```

参数说明：
- `ack` — 应答标记，默认 0
- `seq` — 序列号，默认 0
- `params` — 命令特有参数，通过展开运算符合并覆盖默认值

---

## 3. 系统命令

### 3.1 heart_beat — 心跳

```javascript
heart_beat(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: {},                    // 心跳无请求体
    cmd: "_sys/ack",             // 系统级命令前缀 _sys
    seq: seq,
    time: Date.now(),
  };
}
```

### 3.2 role_getroleinfo — 获取角色信息

```javascript
role_getroleinfo(ack = 0, seq = 0, params = {}) {
  return {
    cmd: "role_getroleinfo",
    body: this.gameUtils.bon.encode({
      clientVersion: "2.10.3-f10a39eaa0c409f4-wx",  // 客户端版本号
      inviteUid: 0,        // 邀请人UID
      platform: "hortor",  // 平台标识
      platformExt: "mix",  // 平台扩展标识
      scene: "",           // 场景
      ...params,
    }),
    ack: ack || 0,
    seq: seq || 0,
    time: Date.now(),
  };
}
```

> **注意**: `clientVersion: "2.10.3-f10a39eaa0c409f4-wx"` — 微信小程序版本标识，APK528 中的版本号。

### 3.3 system_getdatabundlever — 获取数据包版本

```javascript
system_getdatabundlever(ack = 0, seq = 0, params = {}) {
  return {
    cmd: "system_getdatabundlever",
    body: this.gameUtils.bon.encode({
      isAudit: false,  // 是否审核模式
      ...params,
    }),
    ack: ack || 0,
    seq: seq || 0,
    time: Date.now(),
  };
}
```

### 3.4 system_buygold — 购买金币

```javascript
system_buygold(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      buyNum: 1,  // 购买数量，默认1
      ...params,
    }),
    cmd: "system_buygold",
    seq: seq,
    time: Date.now(),
  };
}
```

### 3.5 system_mysharecallback — 分享回调

```javascript
system_mysharecallback(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      type: 3,               // 分享类型
      isSkipShareCard: true,  // 跳过分享卡片
      ...params,
    }),
    cmd: "system_mysharecallback",
    seq: seq,
    time: Date.now(),
  };
}
```

### 3.6 system_claimhangupreward — 领取挂机奖励

```javascript
system_claimhangupreward(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),  // 无额外默认参数
    cmd: "system_claimhangupreward",
    seq: seq,
    time: Date.now(),
  };
}
```

### 3.7 system_signinreward — 签到奖励

```javascript
system_signinreward(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),  // 无额外默认参数
    cmd: "system_signinreward",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 4. 英雄与招募

### 4.1 hero_recruit — 英雄招募

```javascript
hero_recruit(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      byClub: false,       // 是否通过俱乐部招募
      recruitNumber: 1,    // 招募次数
      recruitType: 3,      // 招募类型（3=普通招募?）
      ...params,
    }),
    cmd: "hero_recruit",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 5. 物品与开箱

### 5.1 item_openbox — 开箱

```javascript
item_openbox(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      itemId: 2001,  // 物品ID，默认2001
      number: 10,    // 开箱数量，默认10
      ...params,
    }),
    cmd: "item_openbox",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 6. 竞技场

### 6.1 arena_startarea — 开始竞技场

```javascript
arena_startarea(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "arena_startarea",
    seq: seq,
    time: Date.now(),
  };
}
```

### 6.2 arena_getareatarget — 获取竞技场目标

```javascript
arena_getareatarget(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      refresh: false,  // 是否刷新对手列表
      ...params,
    }),
    cmd: "arena_getareatarget",
    seq: seq,
    time: Date.now(),
  };
}
```

### 6.3 fight_startareaarena — 开始竞技场战斗

```javascript
fight_startareaarena(ack = 0, seq = 0, params = {}) {
  // 唯一带参数校验的命令：targetId 为必填参数
  if (params?.targetId === undefined || params?.targetId === null) {
    throw new Error("fight_startareaarena requires targetId in params");
  }
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "fight_startareaarena",
    seq: seq,
    time: Date.now(),
  };
}
```

> **特殊**: 这是唯一一个在构造时校验必填参数的命令，`targetId` 不可省略。

---

## 7. 商店系统

### 7.1 store_goodslist — 商品列表

```javascript
store_goodslist(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      storeId: 1,  // 商店ID，默认1
      ...params,
    }),
    cmd: "store_goodslist",
    seq: seq,
    time: Date.now(),
  };
}
```

### 7.2 store_buy — 购买商品

```javascript
store_buy(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      goodsId: 1,  // 商品ID，默认1
      ...params,
    }),
    cmd: "store_buy",
    seq: seq,
    time: Date.now(),
  };
}
```

### 7.3 store_refresh — 刷新商店

```javascript
store_refresh(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      storeId: 1,  // 商店ID，默认1
      ...params,
    }),
    cmd: "store_refresh",
    seq: seq,
    time: Date.now(),
  };
}
```

### 7.4 store_getpurchase — 获取购买记录

```javascript
store_getpurchase(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "store_getpurchase",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 8. 军团系统

### 8.1 legion_storebuygoods — 军团商店购买

```javascript
legion_storebuygoods(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "legion_storebuygoods",
    seq: seq,
    time: Date.now(),
  };
}
```

### 8.2 legion_signin — 军团签到

```javascript
legion_signin(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "legion_signin",
    seq: seq,
    time: Date.now(),
  };
}
```

### 8.3 legion_getinfo — 获取军团信息

```javascript
legion_getinfo(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({}),  // 空请求体
    cmd: "legion_getinfo",
    seq: seq,
    time: Date.now(),
  };
}
```

### 8.4 legionmatch_rolesignup — 军团赛报名

```javascript
legionmatch_rolesignup(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({}),  // 空请求体
    cmd: "legionmatch_rolesignup",
    seq: seq,
    time: Date.now(),
  };
}
```

### 8.5 legionwar_getdetails — 军团战详情

```javascript
legionwar_getdetails(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      date: "2025/10/04",  // 查询日期，默认硬编码
      ...params,
    }),
    cmd: "legionwar_getdetails",
    seq: seq,
    time: Date.now(),
  };
}
```

### 8.6 fight_startlegionboss — 开始军团Boss战

```javascript
fight_startlegionboss(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "fight_startlegionboss",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 9. 战斗系统

### 9.1 fight_startboss — 开始Boss战

```javascript
fight_startboss(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "fight_startboss",
    seq: seq,
    time: Date.now(),
  };
}
```

### 9.2 fight_starttower — 开始爬塔

```javascript
fight_starttower(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({}),  // 空请求体
    cmd: "fight_starttower",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 10. 爬塔系统

### 10.1 tower_claimreward — 领取爬塔奖励

```javascript
tower_claimreward(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "tower_claimreward",
    seq: seq,
    time: Date.now(),
  };
}
```

### 10.2 tower_getinfo — 爬塔信息

```javascript
tower_getinfo(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "tower_getinfo",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 11. 神器系统

### 11.1 artifact_lottery — 神器抽卡

```javascript
artifact_lottery(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      lotteryNumber: 1,    // 抽卡次数，默认1
      newFree: true,       // 是否使用免费次数
      type: 1,             // 抽卡类型
      ...params,
    }),
    cmd: "artifact_lottery",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 12. 任务系统

### 12.1 task_claimdailypoint — 领取日常积分

```javascript
task_claimdailypoint(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      taskId: 1,  // 任务ID，默认1
      ...params,
    }),
    cmd: "task_claimdailypoint",
    seq: seq,
    time: Date.now(),
  };
}
```

### 12.2 task_claimweekreward — 领取周奖励

```javascript
task_claimweekreward(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      rewardId: 0,  // 奖励ID，默认0
      ...params,
    }),
    cmd: "task_claimweekreward",
    seq: seq,
    time: Date.now(),
  };
}
```

### 12.3 task_claimdailyreward — 领取日常奖励

```javascript
task_claimdailyreward(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      rewardId: 0,  // 奖励ID，默认0
      ...params,
    }),
    cmd: "task_claimdailyreward",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 13. 折扣与卡片

### 13.1 discount_getdiscountinfo — 获取折扣信息

```javascript
discount_getdiscountinfo(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "discount_getdiscountinfo",
    seq: seq,
    time: Date.now(),
  };
}
```

### 13.2 discount_claimreward — 领取折扣奖励

```javascript
discount_claimreward(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      discountId: 1,  // 折扣ID，默认1
      ...params,
    }),
    cmd: "discount_claimreward",
    seq: seq,
    time: Date.now(),
  };
}
```

### 13.3 card_claimreward — 领取卡片奖励

```javascript
card_claimreward(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      cardId: 1,  // 卡片ID，默认1
      ...params,
    }),
    cmd: "card_claimreward",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 14. 炼丹炉 (BottleHelper)

### 14.1 bottlehelper_claim — 领取炼丹炉奖励

```javascript
bottlehelper_claim(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "bottlehelper_claim",
    seq: seq,
    time: Date.now(),
  };
}
```

### 14.2 bottlehelper_start — 开始炼丹

```javascript
bottlehelper_start(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      bottleType: -1,  // 炼丹类型，-1表示默认/全部
      ...params,
    }),
    cmd: "bottlehelper_start",
    seq: seq,
    time: Date.now(),
  };
}
```

### 14.3 bottlehelper_stop — 停止炼丹

```javascript
bottlehelper_stop(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      bottleType: -1,  // 炼丹类型，-1表示默认/全部
      ...params,
    }),
    cmd: "bottlehelper_stop",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 15. 精灵系统

### 15.1 genie_sweep — 精灵扫荡

```javascript
genie_sweep(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "genie_sweep",
    seq: seq,
    time: Date.now(),
  };
}
```

### 15.2 genie_buysweep — 购买精灵扫荡

```javascript
genie_buysweep(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "genie_buysweep",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 16. 答题系统 (Study)

### 16.1 study_startgame — 开始答题

```javascript
study_startgame(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({}),  // 空请求体
    cmd: "study_startgame",
    seq: seq,
    time: Date.now(),
  };
}
```

### 16.2 study_answer — 提交答案

```javascript
study_answer(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "study_answer",
    seq: seq,
    time: Date.now(),
  };
}
```

### 16.3 study_claimreward — 领取答题奖励

```javascript
study_claimreward(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      rewardId: 1,  // 奖励ID，默认1
      ...params,
    }),
    cmd: "study_claimreward",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 17. 邮件系统

### 17.1 mail_getlist — 获取邮件列表

```javascript
mail_getlist(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      category: [0, 4, 5],  // 邮件分类：0=系统, 4=?, 5=?
      lastId: 0,             // 上次查询的最后ID（分页用）
      size: 60,              // 每页数量
      ...params,
    }),
    cmd: "mail_getlist",
    seq: seq,
    time: Date.now(),
  };
}
```

### 17.2 mail_claimallattachment — 一键领取邮件附件

```javascript
mail_claimallattachment(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      category: 0,  // 邮件分类，默认0（系统邮件）
      ...params,
    }),
    cmd: "mail_claimallattachment",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 18. 好友系统

### 18.1 friend_batch — 批量好友操作

```javascript
friend_batch(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({
      friendId: 0,  // 好友ID，默认0
      ...params,
    }),
    cmd: "friend_batch",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 19. 收藏与活动

### 19.1 collection_claimfreereward — 领取收藏免费奖励

```javascript
collection_claimfreereward(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "collection_claimfreereward",
    seq: seq,
    time: Date.now(),
  };
}
```

### 19.2 activity_buystoregoods — 活动商店购买

```javascript
activity_buystoregoods(ack = 0, seq = 0, params = {}) {
  return {
    ack: ack,
    body: this.gameUtils.bon.encode({ ...params }),
    cmd: "activity_buystoregoods",
    seq: seq,
    time: Date.now(),
  };
}
```

---

## 20. answer.json 答题题库加载逻辑

> 此逻辑位于 `index-BUwMeHKm.js` 行 ~102884-102970，与 `study_*` 命令配合使用。
> 对应基线文件: `src/utils/studyQuestionsFromJSON.js`

### 20.1 题库加载 (Lbe → loadQuestionsPromise)

```javascript
let isQuestionsLoading = false;  // DE → 是否正在加载

const loadQuestionsPromise = (async () => {
  // 候选URL列表：依次尝试 base路径、根路径、相对路径
  const candidates = [
    `${"/".replace(/\/$/, "")}/answer.json`,  // base路径（此处base硬编码为"/"）
    "/answer.json",                             // 绝对路径
    "answer.json",                              // 相对路径
  ];

  isQuestionsLoading = true;
  for (let i = 0; i < candidates.length; i++) {
    const url = candidates[i];
    try {
      const response = await fetch(url);
      if (!response.ok) continue;  // HTTP错误，尝试下一个

      // 检查Content-Type是否为JSON（防止404页面返回HTML）
      const contentType = response.headers.get("content-type") || "";
      if (!contentType.includes("application/json")) {
        try {
          const text = await response.text();
          console.warn(
            `studyQuestionsFromJSON: ${url} returned non-JSON response (length ${text.length})`
          );
        } catch {}
        continue;
      }

      const data = await response.json();
      isQuestionsLoading = false;
      return data;  // 成功加载，返回题库数据
    } catch (error) {
      console.warn(`studyQuestionsFromJSON: failed to fetch ${url}:`, error);
      continue;
    }
  }

  // 所有候选URL都失败
  isQuestionsLoading = false;
  console.error("❌ 加载答题数据失败: 无法找到 answer.json（尝试了多个路径）");
  return [];
})();
```

### 20.2 导出函数映射

| minified | 可读名 | 功能 |
|----------|--------|------|
| `px` | `loadQuestionsData` | 异步加载答题数据，返回 Promise<Array> |
| `Ez` | `matchQuestion` | 模糊匹配题目（去除空格+大小写不敏感的包含匹配） |
| `wz` | `findAnswer` | 根据题目文本查找答案选项 |
| `Nbe` | `getQuestionCount` | 获取已加载题目数量 |
| `Bbe` | `preloadQuestions` | 预加载答题数据 |

### 20.3 matchQuestion — 模糊匹配

```javascript
function matchQuestion(questionFromDB, actualQuestion, threshold = 1) {
  if (!questionFromDB || !actualQuestion) return false;
  if (threshold === 1) {
    // 去除空格 + 转小写后做双向包含匹配
    const cleanDB = questionFromDB.replace(/\s+/g, "").toLowerCase();
    const cleanActual = actualQuestion.replace(/\s+/g, "").toLowerCase();
    return cleanActual.includes(cleanDB) || cleanDB.includes(cleanActual);
  }
  return false;
}
```

### 20.4 findAnswer — 查找答案

```javascript
async function findAnswer(question) {
  try {
    const questions = await loadQuestionsData();
    if (!questions || questions.length === 0) return null;

    // 遍历题库，找到第一个匹配的题目
    for (let i = 0; i < questions.length; i++) {
      const item = questions[i];
      if (!item.name || !item.value) continue;  // 数据格式: { name: 题目, value: 答案选项 }
      if (matchQuestion(item.name, question, 1)) {
        return item.value;  // 返回答案选项编号(1-4)
      }
    }
    return null;  // 未找到匹配
  } catch (error) {
    console.error("❌ 查找答案时出错:", error);
    return null;
  }
}
```

### 20.5 答题自动流程 (kbe → studyAnswerHandler)

> 位于 `index-BUwMeHKm.js` 行 ~102971，监听 `study`/`studyresp`/`study_startgame`/`study_startgameresp` 事件

```javascript
const studyAnswerHandler = ({ onSome, $emit }) => {
  onSome(
    ["study", "studyresp", "study_startgame", "study_startgameresp"],
    async (event) => {
      const { body, gameData, client, tokenId } = event;
      if (!body) return;

      const questionList = body.questionList;
      const studyId = body.role?.study?.id;

      // 无题目 → 本周已完成
      if (!questionList || !Array.isArray(questionList) || questionList.length === 0) {
        gameData.value.studyStatus = {
          isAnswering: false,
          questionCount: 0,
          answeredCount: 0,
          status: "completed",
          timestamp: Date.now(),
          thisWeek: true,
          isCompleted: true,
          maxCorrectNum: body.role?.study?.maxCorrectNum || 0,
        };
        return;
      }

      if (!studyId) return;  // 无学习ID，无法答题

      // 逐题作答
      for (let i = 0; i < questionList.length; i++) {
        const q = questionList[i];
        let answer = await findAnswer(q.question);  // 从题库查找答案

        if (answer === null) {
          answer = 1;  // 未找到匹配答案，默认选1
        }

        // 发送答案，带重试
        client.send("study_answer", {
          id: studyId,
          option: [answer],
          questionId: [q.id],
        });

        // 更新答题进度
        gameData.value.studyStatus.answeredCount = i + 1;

        // 题间延迟 300-500ms（模拟人工）
        if (i < questionList.length - 1) {
          await delay(300 + Math.floor(Math.random() * 200));
        }
      }

      // 答题完毕，等待2秒后验证进度
      await delay(2000);

      // 通过 role_getroleinfo 验证服务器答题进度
      const verifyResult = await sendMessageWithPromise(tokenId, "role_getroleinfo", {}, 10000);
      const maxCorrectNum = verifyResult?.body?.role?.study?.maxCorrectNum ?? 0;

      if (maxCorrectNum < 10) {
        // 答题未完成，标记需要重试
        gameData.value.studyStatus = {
          isAnswering: false,
          status: "failed_need_retry",
          error: `答题未完成，服务器进度: ${maxCorrectNum}/10`,
          maxCorrectNum,
        };
        return;
      }

      // 答题完成，领取奖励
      // → study_claimreward
    }
  );
};
```

---

## 21. 命令完整索引（182个命令方法）

> APK528 共有 46 个命令，04-dev 扩展至 182 个命令。
> APK528列：✅ = APK528有此命令，❌ = APK528无此命令（04-dev新增）

### 1. 系统命令 (system_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 1 | `heart_beat` | `_sys/ack` | (无body) | 心跳 | ✅ |
| 2 | `system_getdatabundlever` | `system_getdatabundlever` | isAudit: false | 获取数据包版本 | ✅ |
| 3 | `system_buygold` | `system_buygold` | buyNum: 1 | 购买金币 | ✅ |
| 4 | `system_mysharecallback` | `system_mysharecallback` | type: 3, isSkipShareCard: true | 分享回调 | ✅ |
| 5 | `system_claimhangupreward` | `system_claimhangupreward` | (无) | 领取挂机奖励 | ✅ |
| 6 | `system_signinreward` | `system_signinreward` | (无) | 签到奖励 | ✅ |
| 7 | `system_custom` | `system_custom` | key: "", value: 0 | 系统自定义 | ❌ |
| 8 | `system_sendchatmessage` | `system_sendchatmessage` | (无) | 系统发送聊天消息 | ❌ |

### 2. 角色命令 (role_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 9 | `role_getroleinfo` | `role_getroleinfo` | clientVersion: "2.21.2-...", inviteUid: 0, platform: "hortor", platformExt: "mix", scene: "" | 获取角色信息 | ✅ |
| 10 | `role_commitpassword` | `role_commitpassword` | password: "", passwordType: 1 | 角色提交密码 | ❌ |
| 11 | `role_gettargetteam` | `role_gettargetteam` | (无) | 角色获取目标队伍 | ❌ |

### 3. 英雄命令 (hero_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 12 | `hero_recruit` | `hero_recruit` | byClub: false, recruitNumber: 1, recruitType: 3 | 英雄招募 | ✅ |
| 13 | `hero_exchange` | `hero_exchange` | (无) | 英雄交换 | ❌ |
| 14 | `hero_gointobattle` | `hero_gointobattle` | (无) | 英雄上阵 | ❌ |
| 15 | `hero_gobackbattle` | `hero_gobackbattle` | (无) | 英雄下阵 | ❌ |
| 16 | `hero_heroupgradelevel` | `hero_heroupgradelevel` | (无) | 英雄升级等级 | ❌ |
| 17 | `hero_heroupgradeorder` | `hero_heroupgradeorder` | (无) | 英雄升级订单 | ❌ |
| 18 | `hero_heroupgradestar` | `hero_heroupgradestar` | (无) | 英雄升星 | ❌ |
| 19 | `hero_rebirth` | `hero_rebirth` | (无) | 英雄重生 | ❌ |

### 4. 战斗命令 (fight_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 20 | `fight_startareaarena` | `fight_startareaarena` | **targetId必填** | 开始竞技场战斗 | ✅ |
| 21 | `fight_startboss` | `fight_startboss` | (无) | 开始Boss战 | ✅ |
| 22 | `fight_startlegionboss` | `fight_startlegionboss` | (无) | 开始军团Boss战 | ✅ |
| 23 | `fight_starttower` | `fight_starttower` | (空body) | 开始爬塔 | ✅ |
| 24 | `fight_startdungeon` | `fight_startdungeon` | (无) | 开始副本战斗 | ❌ |
| 25 | `fight_startlevel` | `fight_startlevel` | (无) | 开始关卡战斗 | ❌ |
| 26 | `fight_startpvp` | `fight_startpvp` | (无) | 开始PVP战斗 | ❌ |

### 5. 竞技场命令 (arena_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 27 | `arena_startarea` | `arena_startarea` | (无) | 开始竞技场 | ✅ |
| 28 | `arena_getareatarget` | `arena_getareatarget` | refresh: false | 获取竞技场目标 | ✅ |
| 29 | `arena_getarearank` | `arena_getarearank` | (无) | 竞技场排名 | ❌ |

### 6. 军团命令 (legion_*, legionwar_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 30 | `legion_getinfo` | `legion_getinfo` | (空body) | 获取军团信息 | ✅ |
| 31 | `legion_signin` | `legion_signin` | (无) | 军团签到 | ✅ |
| 32 | `legion_storebuygoods` | `legion_storebuygoods` | (无) | 军团商店购买 | ✅ |
| 33 | `legion_storegoodslist` | `legion_storegoodslist` | (无) | 军团商店商品列表 | ❌ |
| 34 | `legionmatch_rolesignup` | `legionmatch_rolesignup` | (空body) | 军团赛报名 | ✅ |
| 35 | `legionwar_getdetails` | `legionwar_getdetails` | date: "2025/10/04" | 军团战详情 | ✅ |
| 36 | `legionwar_getgoldmonthwarrank` | `legionwar_getgoldmonthwarrank` | (无) | 军团战争获取黄金月战争排名 | ❌ |
| 37 | `legion_agree` | `legion_agree` | (无) | 军团同意 | ❌ |
| 38 | `legion_applylist` | `legion_applylist` | (无) | 军团申请列表 | ❌ |
| 39 | `legion_approveapply` | `legion_approveapply` | (无) | 军团批准申请 | ❌ |
| 40 | `legion_claimpayloadtask` | `legion_claimpayloadtask` | (无) | 军团领取载荷任务 | ❌ |
| 41 | `legion_claimpayloadtaskprogress` | `legion_claimpayloadtaskprogress` | (无) | 军团领取载荷任务进度 | ❌ |
| 42 | `legion_getarearank` | `legion_getarearank` | (无) | 军团获取区域排名 | ❌ |
| 43 | `legion_getbattlefield` | `legion_getbattlefield` | (无) | 军团获取战场 | ❌ |
| 44 | `legion_getinfobyid` | `legion_getinfobyid` | (无) | 军团通过ID获取信息 | ❌ |
| 45 | `legion_getopponent` | `legion_getopponent` | (无) | 军团获取对手 | ❌ |
| 46 | `legion_getpayloadbf` | `legion_getpayloadbf` | (无) | 军团获取载荷战场 | ❌ |
| 47 | `legion_getpayloadkillrecord` | `legion_getpayloadkillrecord` | (无) | 军团获取载荷击杀记录 | ❌ |
| 48 | `legion_getpayloadrecord` | `legion_getpayloadrecord` | (无) | 军团获取载荷记录 | ❌ |
| 49 | `legion_getpayloadtask` | `legion_getpayloadtask` | (无) | 军团获取载荷任务 | ❌ |
| 50 | `legion_getwarrank` | `legion_getwarrank` | (无) | 军团获取战争排名 | ❌ |
| 51 | `legion_ignore` | `legion_ignore` | (无) | 军团忽略 | ❌ |
| 52 | `legion_kickout` | `legion_kickout` | (无) | 军团踢出 | ❌ |
| 53 | `legion_refuseapply` | `legion_refuseapply` | (无) | 军团拒绝申请 | ❌ |

### 7. 商店命令 (store_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 54 | `store_goodslist` | `store_goodslist` | storeId: 1 | 商品列表 | ✅ |
| 55 | `store_buy` | `store_buy` | goodsId: 1 | 购买商品 | ✅ |
| 56 | `store_refresh` | `store_refresh` | storeId: 1 | 刷新商店 | ✅ |
| 57 | `store_getpurchase` | `store_getpurchase` | (无) | 获取购买记录 | ✅ |
| 58 | `store_purchase` | `store_purchase` | goodsId: 1 | 商店购买（含goodsId） | ❌ |

### 8. 任务命令 (task_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 59 | `task_claimdailypoint` | `task_claimdailypoint` | taskId: 1 | 领取日常积分 | ✅ |
| 60 | `task_claimweekreward` | `task_claimweekreward` | rewardId: 0 | 领取周奖励 | ✅ |
| 61 | `task_claimdailyreward` | `task_claimdailyreward` | rewardId: 0 | 领取日常奖励 | ✅ |

### 9. 邮件命令 (mail_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 62 | `mail_getlist` | `mail_getlist` | category: [0,4,5], lastId: 0, size: 60 | 获取邮件列表 | ✅ |
| 63 | `mail_claimallattachment` | `mail_claimallattachment` | category: 0 | 一键领取邮件附件 | ✅ |
| 64 | `mail_getmtlinfo` | `mail_getmtlinfo` | (无) | 邮件获取MTL信息 | ❌ |
| 65 | `mail_getmtlshortinfo` | `mail_getmtlshortinfo` | (无) | 邮件获取MTL简略信息 | ❌ |

### 10. 瓶子命令 (bottlehelper_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 66 | `bottlehelper_claim` | `bottlehelper_claim` | (无) | 领取炼丹炉奖励 | ✅ |
| 67 | `bottlehelper_start` | `bottlehelper_start` | bottleType: -1 | 开始炼丹 | ✅ |
| 68 | `bottlehelper_stop` | `bottlehelper_stop` | bottleType: -1 | 停止炼丹 | ✅ |

### 11. 神灯命令 (genie_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 69 | `genie_sweep` | `genie_sweep` | (无) | 精灵扫荡 | ✅ |
| 70 | `genie_buysweep` | `genie_buysweep` | (无) | 购买精灵扫荡 | ✅ |

### 12. 宝塔命令 (tower_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 71 | `tower_claimreward` | `tower_claimreward` | (无) | 领取爬塔奖励 | ✅ |
| 72 | `tower_getinfo` | `tower_getinfo` | (无) | 爬塔信息 | ✅ |
| 73 | `tower_readyfight` | `tower_readyfight` | (无) | 爬塔准备战斗 | ❌ |

### 13. 多塔命令 (towers_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 74 | `towers_fight` | `towers_fight` | (无) | 多塔战斗 | ❌ |
| 75 | `towers_getinfo` | `towers_getinfo` | (无) | 多塔获取信息 | ❌ |
| 76 | `towers_start` | `towers_start` | (无) | 多塔开始 | ❌ |

### 14. Boss塔命令 (bosstower_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 77 | `bosstower_gethelprank` | `bosstower_gethelprank` | (无) | Boss塔获取帮助排名 | ❌ |
| 78 | `bosstower_getinfo` | `bosstower_getinfo` | (无) | Boss塔获取信息 | ❌ |
| 79 | `bosstower_startboss` | `bosstower_startboss` | (无) | Boss塔开始BOSS | ❌ |
| 80 | `bosstower_startbox` | `bosstower_startbox` | (无) | Boss塔开箱 | ❌ |

### 15. 进化塔命令 (evotower_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 81 | `evotower_claimreward` | `evotower_claimreward` | (无) | 进化塔领取奖励 | ❌ |
| 82 | `evotower_claimtask` | `evotower_claimtask` | taskId: 1 | 进化塔领取任务 | ❌ |
| 83 | `evotower_fight` | `evotower_fight` | (无) | 进化塔战斗 | ❌ |
| 84 | `evotower_getinfo` | `evotower_getinfo` | (无) | 进化塔获取信息 | ❌ |
| 85 | `evotower_getlegionjoinmembers` | `evotower_getlegionjoinmembers` | (无) | 进化塔获取军团加入成员 | ❌ |
| 86 | `evotower_readyfight` | `evotower_readyfight` | (无) | 进化塔准备战斗 | ❌ |
| 87 | `evotower_claimlegiontask` | `evotower_claimlegiontask` | (无) | 进化塔领取军团任务 | ❌ |
| 88 | `evotower_claimlegionprivilege` | `evotower_claimlegionprivilege` | (无) | 进化塔领取军团特权 | ❌ |

### 16. 车辆命令 (car_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 89 | `car_claim` | `car_claim` | carId: 0 | 赛车领取 | ❌ |
| 90 | `car_claimpartconsumereward` | `car_claimpartconsumereward` | (无) | 赛车领取零件消耗奖励 | ❌ |
| 91 | `car_getmemberhelpingcnt` | `car_getmemberhelpingcnt` | (无) | 赛车获取成员帮助次数 | ❌ |
| 92 | `car_getmemberrank` | `car_getmemberrank` | (无) | 赛车获取成员排名 | ❌ |
| 93 | `car_getrolecar` | `car_getrolecar` | (无) | 赛车获取角色赛车 | ❌ |
| 94 | `car_refresh` | `car_refresh` | carId: 0 | 赛车刷新 | ❌ |
| 95 | `car_research` | `car_research` | (无) | 赛车研究 | ❌ |
| 96 | `car_send` | `car_send` | carId: 0, helperId: 0, text: "" | 赛车发送 | ❌ |

### 17. 活动命令 (activity_*, discount_*, card_*, charge_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 97 | `activity_buystoregoods` | `activity_buystoregoods` | (无) | 活动商店购买 | ✅ |
| 98 | `activity_get` | `activity_get` | (无) | 活动获取 | ❌ |
| 99 | `activity_claimweekactreward` | `activity_claimweekactreward` | (无) | 领取周活动奖励 | ❌ |
| 100 | `activity_claimredquenchreward` | `activity_claimredquenchreward` | (无) | 领取红色淬炼奖励 | ❌ |
| 101 | `activity_claimrolluppack` | `activity_claimrolluppack` | (无) | 领取翻卷包奖励 | ❌ |
| 102 | `activity_battlepassrewardclaim` | `activity_battlepassrewardclaim` | (无) | 战斗通行证奖励领取 | ❌ |
| 103 | `activity_recyclewarorderrewardclaim` | `activity_recyclewarorderrewardclaim` | (无) | 活动回收战令奖励领取 | ❌ |
| 104 | `discount_getdiscountinfo` | `discount_getdiscountinfo` | (无) | 获取折扣信息 | ✅ |
| 105 | `discount_claimreward` | `discount_claimreward` | discountId: 1 | 领取折扣奖励 | ✅ |
| 106 | `card_claimreward` | `card_claimreward` | cardId: 1 | 领取卡片奖励 | ✅ |
| 107 | `charge_claimaddup` | `charge_claimaddup` | (无) | 充值累计奖励领取 | ❌ |

### 18. 道具命令 (item_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 108 | `item_openbox` | `item_openbox` | itemId: 2001, number: 10 | 开宝箱 | ✅ |
| 109 | `item_batchclaimboxpointreward` | `item_batchclaimboxpointreward` | (无) | 批量领取宝箱积分奖励 | ❌ |
| 110 | `item_openpack` | `item_openpack` | (无) | 开礼包 | ❌ |

### 19. 合并盒子命令 (mergebox_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 111 | `mergebox_automergeitem` | `mergebox_automergeitem` | actType: 1 | 合并盒子自动合并物品 | ❌ |
| 112 | `mergebox_claimcostprogress` | `mergebox_claimcostprogress` | actType: 1 | 合并盒子领取消耗进度 | ❌ |
| 113 | `mergebox_claimfreeenergy` | `mergebox_claimfreeenergy` | (无) | 合并盒子领取免费能量 | ❌ |
| 114 | `mergebox_claimmergeprogress` | `mergebox_claimmergeprogress` | actType: 1 | 合并盒子领取合并进度 | ❌ |
| 115 | `mergebox_getinfo` | `mergebox_getinfo` | (无) | 合并盒子获取信息 | ❌ |
| 116 | `mergebox_mergeitem` | `mergebox_mergeitem` | actType: 1 | 合并盒子合并物品 | ❌ |
| 117 | `mergebox_openbox` | `mergebox_openbox` | (无) | 合并盒子开箱 | ❌ |

### 20. 遗产命令 (legacy_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 118 | `legacy_claimhangup` | `legacy_claimhangup` | (无) | 遗产领取挂机 | ❌ |
| 119 | `legacy_getinfo` | `legacy_getinfo` | (无) | 遗产获取信息 | ❌ |
| 120 | `legacy_gift_getlist` | `legacy_gift_getlist` | (无) | 遗产礼物获取列表 | ❌ |
| 121 | `legacy_gift_received` | `legacy_gift_received` | (无) | 遗产礼物已接收 | ❌ |
| 122 | `legacy_gift_send` | `legacy_gift_send` | recipientId: 0, itemId: 0, quantity: 0 | 遗产礼物发送 | ❌ |
| 123 | `legacy_sendgift` | `legacy_sendgift` | itemCnt: 0, legacyUIds: [], targetId: 0 | 遗产发送礼物 | ❌ |

### 21. 宠物命令 (pet_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 124 | `pet_activatebook` | `pet_activatebook` | (无) | 宠物激活图鉴 | ❌ |
| 125 | `pet_claimbookreward` | `pet_claimbookreward` | (无) | 宠物领取图鉴奖励 | ❌ |
| 126 | `pet_openegg` | `pet_openegg` | (无) | 宠物开蛋 | ❌ |

### 22. 噩梦命令 (nightmare_*, nmext_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 127 | `nmext_getinfo` | `nmext_getinfo` | (无) | 噩梦模式获取信息 | ❌ |
| 128 | `nmext_drawturntable` | `nmext_drawturntable` | (无) | 噩梦模式转盘抽奖 | ❌ |
| 129 | `nmext_claimstarreward` | `nmext_claimstarreward` | (无) | 噩梦模式领取星星奖励 | ❌ |
| 130 | `nmext_startboss` | `nmext_startboss` | (无) | 噩梦模式开始BOSS | ❌ |
| 131 | `nightmare_clickturntable` | `nightmare_clickturntable` | (无) | 噩梦点击转盘 | ❌ |
| 132 | `nightmare_claimweekreward` | `nightmare_claimweekreward` | (无) | 噩梦领取周奖励 | ❌ |
| 133 | `nightmare_claimturnrewardtimes` | `nightmare_claimturnrewardtimes` | (无) | 噩梦领取转盘奖励次数 | ❌ |
| 134 | `nightmare_claimbook` | `nightmare_claimbook` | (无) | 噩梦领取图鉴奖励 | ❌ |
| 135 | `nightmare_getroleinfo` | `nightmare_getroleinfo` | (无) | 噩梦获取角色信息 | ❌ |

### 23. 抽卡命令 (gacha_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 136 | `gacha_claimstagereward` | `gacha_claimstagereward` | (无) | 抽卡领取阶段奖励 | ❌ |
| 137 | `gacha_drawreward` | `gacha_drawreward` | isGroup: false, num: 1 | 抽卡抽奖 | ❌ |

### 24. 装备命令 (equipment_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 138 | `equipment_confirm` | `equipment_confirm` | heroId: 0, part: 0, quenchId: 0, quenches: {} | 装备确认 | ❌ |
| 139 | `equipment_quench` | `equipment_quench` | heroId: 0, part: 0, quenchId: 0, quenches: {}, seed: 0, skipOrange: false | 装备淬炼 | ❌ |
| 140 | `equipment_updatequenchlock` | `equipment_updatequenchlock` | heroId: 0, part: 0, slot: 0, isLocked: false | 装备更新淬炼锁定 | ❌ |

### 25. 珍珠命令 (pearl_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 141 | `pearl_replaceskill` | `pearl_replaceskill` | (无) | 珍珠替换技能 | ❌ |
| 142 | `pearl_exchangeskill` | `pearl_exchangeskill` | (无) | 珍珠交换技能 | ❌ |
| 143 | `pearl_unloadskill` | `pearl_unloadskill` | (无) | 珍珠卸载技能 | ❌ |

### 26. 预设队伍命令 (presetteam_*, matchteam_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 144 | `presetteam_typegetinfo` | `presetteam_typegetinfo` | (无) | 预设阵容按类型获取信息 | ❌ |
| 145 | `presetteam_getinfo` | `presetteam_getinfo` | (无) | 预设阵容获取信息 | ❌ |
| 146 | `presetteam_saveteam` | `presetteam_saveteam` | teamId: 1 | 预设阵容保存队伍 | ❌ |
| 147 | `presetteam_setteam` | `presetteam_setteam` | (无) | 预设阵容设置队伍 | ❌ |
| 148 | `presetteam_typecalcpowerbyteam` | `presetteam_typecalcpowerbyteam` | typ: 101, battleTeam: [], lordWeaponId: 8, petUId: "" | 预设阵容按类型计算战力 | ❌ |
| 149 | `presetteam_typesetteam` | `presetteam_typesetteam` | typ: 101, battleTeam: [], lordWeaponId: 8 | 预设阵容按类型设置队伍 | ❌ |
| 150 | `typecalcpowerbyteam` | `typecalcpowerbyteam` | (无) | 按阵容计算战力（旧版） | ❌ |
| 151 | `typesetteam` | `typesetteam` | (无) | 设置阵容（旧版） | ❌ |
| 152 | `matchteam_getroleteaminfo` | `matchteam_getroleteaminfo` | (无) | 匹配队伍获取角色队伍信息 | ❌ |

### 27. 排行榜命令 (rank_*, saltroad_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 153 | `rank_getroleinfo` | `rank_getroleinfo` | (无) | 排名获取角色信息 | ❌ |
| 154 | `rank_getserverrank` | `rank_getserverrank` | (无) | 排名获取服务器排名 | ❌ |
| 155 | `saltroad_getsaltroadwargrouprank` | `saltroad_getsaltroadwargrouprank` | (无) | 盐路获取盐路战争组排名 | ❌ |
| 156 | `saltroad_getsaltroadwartotalrank` | `saltroad_getsaltroadwartotalrank` | (无) | 盐路获取盐路战争总排名 | ❌ |
| 157 | `saltroad_getwartype` | `saltroad_getwartype` | (无) | 盐路获取战争类型 | ❌ |

### 28. 联赛命令 (league_*, warguess_*, pkroom_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 158 | `league_getbattlefield` | `league_getbattlefield` | (无) | 联赛获取战场 | ❌ |
| 159 | `league_getgroupopponent` | `league_getgroupopponent` | (无) | 联赛获取小组对手 | ❌ |
| 160 | `warguess_getguessinfo` | `warguess_getguessinfo` | (无) | 战争猜猜获取信息 | ❌ |
| 161 | `warguess_guessclaim` | `warguess_guessclaim` | (无) | 战争猜猜领取奖励 | ❌ |
| 162 | `warguess_getguesscoinreward` | `warguess_getguesscoinreward` | (无) | 战争猜猜获取金币奖励 | ❌ |
| 163 | `warguess_getrank` | `warguess_getrank` | (无) | 战争猜猜获取排名 | ❌ |
| 164 | `warguess_startguess` | `warguess_startguess` | (无) | 战争猜猜开始猜测 | ❌ |
| 165 | `pkroom_appoint` | `pkroom_appoint` | (无) | PK房间指定 | ❌ |

### 29. 收藏命令 (collection_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 166 | `collection_claimfreereward` | `collection_claimfreereward` | (无) | 领取收藏免费奖励 | ✅ |
| 167 | `collection_goodslist` | `collection_goodslist` | (无) | 珍宝阁商品列表 | ❌ |

### 30. 梦境命令 (dungeon_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 168 | `dungeon_buymerchant` | `dungeon_buymerchant` | (无) | 副本购买商人 | ❌ |
| 169 | `dungeon_selecthero` | `dungeon_selecthero` | (无) | 副本选择英雄 | ❌ |

### 31. 学习命令 (study_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 170 | `study_startgame` | `study_startgame` | (空body) | 开始答题 | ✅ |
| 171 | `study_answer` | `study_answer` | (无) | 提交答案 | ✅ |
| 172 | `study_claimreward` | `study_claimreward` | rewardId: 1 | 领取答题奖励 | ✅ |

### 32. 好友命令 (friend_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 173 | `friend_batch` | `friend_batch` | friendId: 0 | 批量好友操作 | ✅ |

### 33. 工艺品命令 (artifact_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 174 | `artifact_lottery` | `artifact_lottery` | lotteryNumber: 1, newFree: true, type: 1 | 神器抽卡 | ✅ |
| 175 | `artifact_exchange` | `artifact_exchange` | (无) | 神器兑换 | ❌ |
| 176 | `artifact_load` | `artifact_load` | (无) | 神器装载 | ❌ |
| 177 | `artifact_unload` | `artifact_unload` | (无) | 神器卸载 | ❌ |

### 34. 书籍命令 (book_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 178 | `book_upgrade` | `book_upgrade` | (无) | 书升级 | ❌ |
| 179 | `book_claimpointreward` | `book_claimpointreward` | (无) | 书领取积分奖励 | ❌ |

### 35. 主武器命令 (lordweapon_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 180 | `lordweapon_changedefaultweapon` | `lordweapon_changedefaultweapon` | (无) | 主武器更换默认武器 | ❌ |

### 36. HB命令 (hb_*)

| # | 方法名 | cmd字符串 | 默认参数 | 用途说明 | APK528 |
|---|--------|----------|----------|----------|--------|
| 181 | `hb_quench` | `hb_quench` | (无) | 红包淬炼 | ❌ |
| 182 | `hb_upgradeorder` | `hb_upgradeorder` | (无) | 红包升级订单 | ❌ |

---

## 22. 统计摘要

| 分类 | 命令数 | APK528有 | 04-dev新增 |
|------|--------|----------|-----------|
| 系统命令 (system_*) | 8 | 6 | 2 |
| 角色命令 (role_*) | 3 | 1 | 2 |
| 英雄命令 (hero_*) | 8 | 1 | 7 |
| 战斗命令 (fight_*) | 7 | 4 | 3 |
| 竞技场命令 (arena_*) | 3 | 2 | 1 |
| 军团命令 (legion_*, legionwar_*) | 24 | 5 | 19 |
| 商店命令 (store_*) | 5 | 4 | 1 |
| 任务命令 (task_*) | 3 | 3 | 0 |
| 邮件命令 (mail_*) | 4 | 2 | 2 |
| 瓶子命令 (bottlehelper_*) | 3 | 3 | 0 |
| 神灯命令 (genie_*) | 2 | 2 | 0 |
| 宝塔命令 (tower_*) | 3 | 2 | 1 |
| 多塔命令 (towers_*) | 3 | 0 | 3 |
| Boss塔命令 (bosstower_*) | 4 | 0 | 4 |
| 进化塔命令 (evotower_*) | 8 | 0 | 8 |
| 车辆命令 (car_*) | 8 | 0 | 8 |
| 活动命令 (activity_*, discount_*, card_*, charge_*) | 11 | 4 | 7 |
| 道具命令 (item_*) | 3 | 1 | 2 |
| 合并盒子命令 (mergebox_*) | 7 | 0 | 7 |
| 遗产命令 (legacy_*) | 6 | 0 | 6 |
| 宠物命令 (pet_*) | 3 | 0 | 3 |
| 噩梦命令 (nightmare_*, nmext_*) | 9 | 0 | 9 |
| 抽卡命令 (gacha_*) | 2 | 0 | 2 |
| 装备命令 (equipment_*) | 3 | 0 | 3 |
| 珍珠命令 (pearl_*) | 3 | 0 | 3 |
| 预设队伍命令 (presetteam_*, matchteam_*) | 9 | 0 | 9 |
| 排行榜命令 (rank_*, saltroad_*) | 5 | 0 | 5 |
| 联赛命令 (league_*, warguess_*, pkroom_*) | 8 | 0 | 8 |
| 收藏命令 (collection_*) | 2 | 1 | 1 |
| 梦境命令 (dungeon_*) | 2 | 0 | 2 |
| 学习命令 (study_*) | 3 | 3 | 0 |
| 好友命令 (friend_*) | 1 | 1 | 0 |
| 工艺品命令 (artifact_*) | 4 | 1 | 3 |
| 书籍命令 (book_*) | 2 | 0 | 2 |
| 主武器命令 (lordweapon_*) | 1 | 0 | 1 |
| HB命令 (hb_*) | 2 | 0 | 2 |
| 心跳命令 (heart_beat) | 1 | 1 | 0 |
| **合计** | **182** | **46** | **136** |

---

## 23. 模块导出

```javascript
const gameCommands = new GameCommands();  // d → 单例实例

export { GameCommands, GameCommands as default, gameCommands };
// 命名导出: GameCommands (类)
// 默认导出: GameCommands (类)
// 命名导出: gameCommands (单例实例)
```
