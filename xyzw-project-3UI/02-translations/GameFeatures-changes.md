# GameFeatures 核心新增/修改函数翻译

> 源文件: `GameFeatures-Dixlrubn.js` (61988行)
> 翻译时间: 2026-05-31
> 翻译方法: minified变量名 → 可读名 + 中文注释

---

## 1. GameStatus 主视图 — Tab 式布局逻辑

**组件名**: `GameStatus` (minified: `wj`)
**行号范围**: ~61279-61641
**修改类型**: [修改] 从简单功能卡片网格重构为 Tab 式布局

### 1.1 setup 核心状态

```javascript
// 行 ~61282-61304
const tokenStore = useTokenStore();           // A = _t()
useMessage();                                  // It() (副作用初始化)
const legionMatch = ref({ isRegistered: false }); // s = Y({ isRegistered: !1 })
ref(false);                                    // 未使用
const activeSection = ref("daily");           // n = Y("daily") — 当前主Tab
const saltFieldTab = ref("warrank");          // o = Y("warrank") — 盐场子Tab
const peachTab = ref("peach");                // i = Y("peach") — 蟠桃子Tab
const rankTab = ref("serverrank");            // r = Y("serverrank") — 排行榜子Tab

// 炼丹炉状态
const bottleHelperStatus = ref({              // v = Y({...})
  isRunning: false,
  remainingTime: 0,
  stopTime: 0,
});

// 挂机状态
const hangUpStatus = ref({                    // c = Y({...})
  isActive: false,
  remainingTime: 0,
  elapsedTime: 0,
  lastTime: 0,
  hangUpTime: 0,
  isExtending: false,
  isClaiming: false,
});

// 签到状态
const signInStatus = ref({ isSignedIn: false, clubName: "" }); // f = Y({...})
```

### 1.2 角色信息与Boss挑战判断

```javascript
// 行 ~61306-61318
const roleInfo = computed(() => {              // m = O(() => ...)
  return tokenStore.gameData?.roleInfo || null;
});

// 判断是否可挑战Boss：塔层数未超过450层
const canChallengeBoss = computed(() => {      // p = O(() => ...)
  const tower = roleInfo.value?.role?.tower;
  const towerId = tower?.id;
  return !(Math.floor(towerId / 10) + 1 > 450);
});
```

### 1.3 计时器更新逻辑

```javascript
// 行 ~61324-61362
const updateTimers = () => {                   // Q = () => ...
  if (!roleInfo.value) return;
  const role = roleInfo.value.role;

  // 更新炼丹炉倒计时
  if (role.bottleHelpers) {
    const now = Date.now() / 1000;
    bottleHelperStatus.value.stopTime = role.bottleHelpers.helperStopTime;
    bottleHelperStatus.value.isRunning = role.bottleHelpers.helperStopTime > now;
    bottleHelperStatus.value.remainingTime = Math.max(
      0,
      Math.floor(role.bottleHelpers.helperStopTime - now)
    );
  }

  // 更新挂机倒计时
  if (role.hangUp) {
    const now = Date.now() / 1000;
    hangUpStatus.value.lastTime = role.hangUp.lastTime;
    hangUpStatus.value.hangUpTime = role.hangUp.hangUpTime;
    const elapsed = now - hangUpStatus.value.lastTime;
    if (elapsed <= hangUpStatus.value.hangUpTime) {
      hangUpStatus.value.remainingTime = Math.floor(hangUpStatus.value.hangUpTime - elapsed);
      hangUpStatus.value.isActive = true;
    } else {
      hangUpStatus.value.remainingTime = 0;
      hangUpStatus.value.isActive = false;
    }
    hangUpStatus.value.elapsedTime = Math.floor(
      hangUpStatus.value.hangUpTime - hangUpStatus.value.remainingTime
    );
  }

  // 更新排位赛报名状态
  if (role.statistics) {
    const today = new Date();
    today.setHours(0, 0, 0, 0);
    const dayStart = today.getTime() / 1000;
    legionMatch.value.isRegistered =
      Number(role.statistics["last:legion:match:sign:up:time"]) > dayStart;
  }

  // 更新签到状态
  if (role.statisticsTime) {
    const today = new Date();
    today.setHours(0, 0, 0, 0);
    const dayStart = today.getTime() / 1000;
    signInStatus.value.isSignedIn = role.statisticsTime["legion:sign:in"] > dayStart;
  }
};
```

### 1.4 Tab 式布局渲染逻辑

```javascript
// 行 ~61426-61633 — 渲染函数核心
// 容器CSS类根据当前Tab动态切换
<div class={["game-status-container", {
  "full-grid": activeSection === "fightPvp",
  "full-page-mode": activeSection === "saltFieldGroup"
                 || activeSection === "peachGroup"
                 || activeSection === "rankGroup",
  "club-mode": activeSection === "club",
}]}>

  {/* 嵌入式身份牌，始终显示 */}
  <IdentityCard embedded />

  {/* 主Tab栏：8个Tab页 */}
  <n-tabs value={activeSection} type="line" animated size="small">
    <n-tab-pane name="daily" tab="日常" />
    <n-tab-pane name="club" tab="俱乐部" />
    <n-tab-pane name="activity" tab="活动" />
    {showToolsTab && <n-tab-pane name="tools" tab="工具" />}
    <n-tab-pane name="saltFieldGroup" tab="盐场" />
    <n-tab-pane name="peachGroup" tab="蟠桃园" />
    <n-tab-pane name="rankGroup" tab="排行榜" />
    <n-tab-pane name="fightPvp" tab="切磋" />
  </n-tabs>

  {/* ---- 日常Tab内容 ---- */}
  <TeamFormation v-show={activeSection === "daily"} />
  <HangUpStatus v-show={activeSection === "daily"} />
  <BossChallenge v-show={activeSection === "daily" && canChallengeBoss} />
  <DailyTaskStatus v-show={activeSection === "daily"} />
  <BottleHelper v-show={activeSection === "daily"} />
  <SignInCard v-show={activeSection === "daily"} />

  {/* ---- 工具Tab内容 ---- */}
  <ToolCard1 v-show={activeSection === "tools"} />
  <ToolCard2 v-show={activeSection === "tools"} />
  <ToolCard3 v-show={activeSection === "tools"} />
  <ToolCard4 v-show={activeSection === "tools"} />
  {activeSection === "tools" && <CrazyCar />}
  {activeSection === "tools" && <ClubCarKing />}
  {activeSection === "tools" && <CarScoreInfo />}
  {activeSection === "tools" && <ClubWeirdTowerInfo />}
  {activeSection === "tools" && <DailyTaskRunner />}
  {activeSection === "tools" && <ExportTool />}
  {activeSection === "tools" && <OtherTool />}

  {/* ---- 俱乐部Tab内容 ---- */}
  {activeSection === "club" && <ClubInfo />}
  {activeSection === "club" && <FightPvp />}

  {/* ---- 活动Tab内容 ---- */}
  <ActivityCard1 v-show={activeSection === "activity"} />
  <ActivityCard2 v-show={activeSection === "activity"} />
  <ActivityCard3 v-show={activeSection === "activity"} />

  {/* ---- 盐场Tab内容（含子Tab） ---- */}
  {activeSection === "saltFieldGroup" && (
    <div>
      <n-tabs value={saltFieldTab} type="segment" animated size="small">
        <n-tab-pane name="warrank" tab="盐场" />
        <n-tab-pane name="weekBattle" tab="本周盐场战绩" />
        <n-tab-pane name="monthBattle" tab="本月盐场战绩" />
        <n-tab-pane name="legionWarMap" tab="盐场地图" />
        <n-tab-pane name="legionWarStatistics" tab="盐场战况" />
      </n-tabs>
      {saltFieldTab === "weekBattle" && <SaltFieldWeeklyBattle />}
      {saltFieldTab === "warrank" && <GreatRouteRankListPageCard />}
      {saltFieldTab === "monthBattle" && <SaltFieldMonthlyBattle />}
      {saltFieldTab === "legionWarMap" && <LegionWarMap />}
      {saltFieldTab === "legionWarStatistics" && <LegionWarStatistics />}
    </div>
  )}

  {/* ---- 蟠桃Tab内容（含子Tab） ---- */}
  {activeSection === "peachGroup" && (
    <div>
      <n-tabs value={peachTab} type="segment" animated size="small">
        <n-tab-pane name="peach" tab="蟠桃园信息" />
        <n-tab-pane name="peachBattle" tab="蟠桃园战绩" />
      </n-tabs>
      {peachTab === "peachBattle" && <PeachBattleRecords />}
      {peachTab === "peach" && <PeachInfo />}
    </div>
  )}

  {/* ---- 排行榜Tab内容（含子Tab） ---- */}
  {activeSection === "rankGroup" && (
    <div>
      <n-tabs value={rankTab} type="segment" animated size="small">
        <n-tab-pane name="serverrank" tab="区服榜" />
        <n-tab-pane name="toprank" tab="巅峰榜" />
        <n-tab-pane name="topclubrank" tab="俱乐部榜" />
        <n-tab-pane name="goldclubrank" tab="黄金积分榜" />
        <n-tab-pane name="greatRouteRank" tab="伟大航路积分榜" />
      </n-tabs>
      {rankTab === "serverrank" && <ServerRank />}
      {rankTab === "toprank" && <TopRank />}
      {rankTab === "topclubrank" && <TopClubRank />}
      {rankTab === "goldclubrank" && <GoldClubRank />}
      {rankTab === "greatRouteRank" && <GreatRouteRank />}
    </div>
  )}

  {/* ---- 切磋Tab内容 ---- */}
  {activeSection === "fightPvp" && <FightPvpComponent />}
</div>
```

### 功能说明

GameStatus 是整个 GameFeatures 页面的主视图组件，从开源版本的功能卡片网格布局**大幅重构**为 Tab 式布局：

- **8个主Tab**: 日常 / 俱乐部 / 活动 / 工具 / 盐场 / 蟠桃园 / 排行榜 / 切磋
- **3个含子Tab的分组**: 盐场(5子Tab)、蟠桃园(2子Tab)、排行榜(5子Tab)
- **动态CSS类**: 根据当前Tab切换容器布局模式（全页/俱乐部/网格）
- **计时器系统**: 管理炼丹炉倒计时、挂机倒计时，每秒更新
- **WebSocket生命周期**: 连接成功后自动发送 `legion_getinfo` 初始化俱乐部数据

---

## 2. ClubInfo 增强功能

**组件名**: `ClubInfo` (minified: `hB`)
**行号范围**: ~11754-14688
**修改类型**: [修改] 从基础俱乐部信息展示扩展为完整成员管理+申请审批+导出

### 2.1 核心数据状态

```javascript
// 行 ~11757-11811
const tokenStore = useTokenStore();            // A = _t()
const message = useMessage();                  // s = It()
const dialog = useDialog();                    // n = zr()

const legionInfo = computed(() =>              // o = O(() => ...)
  tokenStore.gameData?.legionInfo || null
);
const clubInfo = computed(() =>                // i = O(() => ...)
  legionInfo.value?.info || null
);
const members = computed(() =>                 // r = O(() => ...)
  clubInfo.value?.members || {}
);
const memberList = computed(() =>              // v = O(() => ...)
  Object.values(members.value || {})
);
const memberCount = computed(() =>             // c = O(() => ...)
  memberList.value.length
);
const leader = computed(() => {                // f = O(() => ...)
  const leaderId = clubInfo.value?.leaderId;
  return (leaderId && memberList.value.find(m => Number(m.roleId) === Number(leaderId))) || null;
});

// 成员排序：职位 > 红淬数 > 战力
const sortedMembers = computed(() => {         // m = O(() => ...)
  return [...memberList.value].sort((a, b) => {
    const jobA = a.job === 0 ? 99 : a.job;
    const jobB = b.job === 0 ? 99 : b.job;
    if (jobA !== jobB) return jobA - jobB;     // 职位低的排前（会长1 < 副会长2 < 成员0→99）
    const redA = Number(a.custom?.red_quench_cnt || 0);
    const redB = Number(b.custom?.red_quench_cnt || 0);
    if (redA !== redB) return redB - redA;     // 红淬多的排前
    const powerA = Number(a.power || a.custom?.s_power || 0);
    const powerB = Number(b.power || b.custom?.s_power || 0);
    return powerB - powerA;                    // 战力高的排前
  });
});

const showPlayerInfoModal = ref(false);        // p = Y(!1)
const playerInfo = ref(null);                  // Q = Y(null)
const fetchingInfo = ref(false);               // G = Y(!1)
const showHeroModal = ref(false);              // _ = Y(!1)
const heroModalTemp = ref(null);               // N = Y(null)
const fetchingLineup = ref(false);             // X = Y(!1)
const exporting = ref(false);                  // I = Y(!1)
const exportDom = ref(null);                   // b = Y(null)
```

### 2.2 getHeroInfo — 处理英雄数据

```javascript
// 行 ~11812-11867
const getHeroInfo = (heroesData) => {          // U = (Ae) => ...
  let redCount = 0, holeCount = 0, heroList = [];
  try {
    let heroes = [];
    if (Array.isArray(heroesData)) heroes = heroesData;
    else if (typeof heroesData === "object" && heroesData !== null)
      heroes = Object.values(heroesData);
    else
      return { redCount, holeCount, heroList };

    heroes.forEach((hero, index) => {
      if (!hero) return;
      const heroId = hero.heroId || hero.id;
      const heroConfig = HERO_DICT[heroId] || {};
      // 统计装备红孔数
      const equipStats = hero.equipment
        ? countRedHoles(hero.equipment)
        : { redCount: 0, holeCount: 0 };

      const heroInfo = {
        heroId: heroId || `unknown_${index}`,
        artifactId: hero.artifactId || "",
        power: hero.power || 0,
        star: hero.star || 0,
        equipment: hero.equipment,
        heroName: hero.heroName || hero.name || heroConfig.name || `未知武将_${index}`,
        heroAvate: hero.heroAvate || hero.headImg || heroConfig.avatar || "",
        level: hero.level || 0,
        hole: equipStats.holeCount,
        red: equipStats.redCount,
        // 四圣兽状态
        HolyBeast: hero.hB?.active === true || hero.fourBasest?.level > 0,
        HBlevel: hero.hB?.order || hero.fourBasest?.level || 0,
        skillList: hero.skillList || [],
        attributeList: hero.attributeList || [],
        battleTeamSlot: hero.battleTeamSlot,
      };
      if (heroId) {
        redCount += heroInfo.red;
        holeCount += heroInfo.hole;
        heroList.push(heroInfo);
      }
    });
  } catch (e) {
    heroList = [];
  }
  // 按阵容槽位排序
  heroList.sort((a, b) => a.battleTeamSlot - b.battleTeamSlot);
  return { redCount, holeCount, heroList };
};
```

### 2.3 countRedHoles — 统计装备红孔数

```javascript
// 行 ~11868-11878
const countRedHoles = (equipment) => {         // x = (Ae) => ...
  let redCount = 0, holeCount = 0;
  Object.values(equipment).forEach((slot) => {
    Object.values(slot.quenches).forEach((quench) => {
      holeCount++;
      if (quench.colorId == 6) redCount++;     // colorId=6 为红色淬炼
    });
  });
  return { redCount, holeCount };
};
```

### 2.4 fetchAllLineups — 批量获取成员阵容

```javascript
// 行 ~11883-11941
const fetchAllLineups = async () => {          // M = async () => ...
  if (fetchingLineup.value) return;
  const token = tokenStore.selectedToken;
  if (!token) return;
  if (tokenStore.getWebSocketStatus(token.id) !== "connected") {
    message.error("WebSocket未连接，无法获取阵容信息");
    return;
  }
  const members = memberList.value;
  if (!members.length) return;

  fetchingLineup.value = true;
  message.loading("正在获取成员阵容信息...");

  const roleIds = members.map(m => m.roleId);
  const batchSize = 5;                        // 每批5个并发请求

  try {
    for (let i = 0; i < roleIds.length; i += batchSize) {
      const batch = roleIds.slice(i, i + batchSize).map(async (roleId) => {
        try {
          const result = await tokenStore.sendMessageWithPromise(
            token.id,
            "rank_getroleinfo",
            {
              roleId: Number(roleId),
              includeBottleTeam: false,
              isSearch: false,
              bottleType: 0,
              includeHero: true,
              includeHeroDetail: true,
              includePearl: true,
            },
            5000
          );
          if (result && result.roleInfo) {
            let heroList = [];
            if (result.roleInfo.heroes) {
              heroList = getHeroInfo(result.roleInfo.heroes).heroList;
            }
            const lineupType = getLineupType(heroList);
            // 将阵容类型写回成员数据
            if (tokenStore.gameData.legionInfo?.info?.members?.[roleId]) {
              tokenStore.gameData.legionInfo.info.members[roleId].lineupType = lineupType;
            }
          }
        } catch (e) {
          console.error(`Failed to fetch info for ${roleId}`, e);
        }
      });
      await Promise.all(batch);
    }
    message.success("阵容信息获取完成");
  } catch (e) {
    message.error(`获取失败: ${e.message}`);
  } finally {
    fetchingLineup.value = false;
  }
};
```

### 2.5 handleExportImage — 导出成员列表图片

```javascript
// 行 ~11942-11996
const handleExportImage = async () => {        // V = async () => ...
  if (!exportDom.value) {
    message.error("未找到要导出的内容");
    return;
  }
  try {
    exporting.value = true;
    message.loading("正在生成图片，请稍候...");
    await nextTick();

    // 展开表格（移除滚动限制以完整截图）
    const table = exportDom.value.querySelector(".n-data-table");
    if (table) {
      const body = table.querySelector(".n-data-table-base-table-body");
      if (body) {
        body.dataset.originalHeight = body.style.height;
        body.dataset.originalOverflow = body.style.overflow;
        body.style.height = "auto";
        body.style.overflow = "visible";
      }
      table.dataset.originalHeight = table.style.height;
      table.style.height = "auto";
    }

    const canvas = await html2canvas(exportDom.value, {
      scale: 2,
      useCORS: true,
      backgroundColor: "#ffffff",
      logging: false,
      allowTaint: true,
    });
    const filename = `俱乐部成员信息_${new Date().toLocaleDateString().replace(/\//g, "-")}.png`;
    downloadImage(canvas, filename);
    message.success("图片导出成功");
  } catch (e) {
    message.error("导出图片失败，请重试");
  } finally {
    // 恢复表格原始样式
    const table = exportDom.value?.querySelector(".n-data-table");
    if (table) {
      const body = table.querySelector(".n-data-table-base-table-body");
      if (body) {
        body.dataset.originalHeight
          ? (body.style.height = body.dataset.originalHeight)
          : body.style.removeProperty("height");
        body.dataset.originalOverflow
          ? (body.style.overflow = body.dataset.originalOverflow)
          : body.style.removeProperty("overflow");
        delete body.dataset.originalHeight;
        delete body.dataset.originalOverflow;
      }
      table.dataset.originalHeight
        ? (table.style.height = table.dataset.originalHeight)
        : table.style.removeProperty("height");
      delete table.dataset.originalHeight;
    }
    exporting.value = false;
  }
};
```

### 2.6 handleExportCSV — 导出CSV表格

```javascript
// 行 ~11997-12044
const handleExportCSV = () => {                // F = () => ...
  try {
    exporting.value = true;
    message.loading("正在导出表格，请稍候...");

    const data = sortedMembers.value;
    if (!data || data.length === 0) {
      message.error("暂无成员数据");
      exporting.value = false;
      return;
    }

    // 构建CSV内容
    let csv = `序号,成员名称,ID,战力,红淬,阵容,职位\n`;
    data.forEach((member, index) => {
      const name = member.name || "";
      const roleId = member.roleId || "";
      const power = formatPower(member.power || member.custom?.s_power || 0);
      const redCount = formatRedCount(member.custom?.red_quench_cnt || 0);
      const lineup = member.lineupType || "-";
      const job = getJobName(member.job);
      // CSV转义双引号
      const escapedName = name.replace(/"/g, '""');
      const escapedLineup = lineup.replace(/"/g, '""');
      const escapedJob = job.replace(/"/g, '""');
      csv += `${index + 1},"${escapedName}",${roleId},${power},${redCount},"${escapedLineup}","${escapedJob}"\n`;
    });

    // 创建并下载Blob
    const blob = new Blob([csv], { type: "text/csv;charset=utf-8;" });
    const url = URL.createObjectURL(blob);
    const link = document.createElement("a");
    link.setAttribute("href", url);
    const dateStr = new Date().toLocaleDateString().replace(/\//g, "-");
    link.setAttribute("download", `俱乐部成员信息_${dateStr}.csv`);
    link.style.visibility = "hidden";
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
    message.success("表格导出成功");
  } catch (e) {
    message.error("导出表格失败，请重试");
  } finally {
    exporting.value = false;
  }
};
```

### 2.7 成员管理 — 踢出/申请审批

```javascript
// 行 ~12409-12513

// 当前用户职位（1=会长, 2=副会长, 0/其他=成员）
const currentUserJob = computed(() => {         // re = O(() => ...)
  const myRoleId = tokenStore.gameData?.roleInfo?.role?.roleId;
  if (!myRoleId) return 0;
  const me = memberList.value.find(m => Number(m.roleId) === Number(myRoleId));
  return me?.job || 0;
});

// 是否管理员（会长或副会长）
const isManager = computed(() =>               // ae = O(() => ...)
  [1, 2].includes(currentUserJob.value)
);

// 踢出成员 — API: legion_kickout
const kickMember = (roleId, name) => {         // L = (Ae, j) => ...
  const token = tokenStore.selectedToken;
  if (!token) return;
  dialog.warning({
    title: "确认踢出",
    content: `确定要踢出成员 ${name} ID: ${roleId} 吗？`,
    positiveText: "确定",
    negativeText: "取消",
    onPositiveClick: () => {
      tokenStore.sendMessage(token.id, "legion_kickout", { roleId: Number(roleId) });
      // 从本地数据中移除
      if (tokenStore.gameData.legionInfo?.info?.members) {
        delete tokenStore.gameData.legionInfo.info.members[roleId];
        setTimeout(() => refreshClubInfo(), 1000);
      }
      message.info(`正在踢出成员 ID: ${roleId}`);
    },
  });
};

// 获取申请列表 — API: legion_applylist
const fetchApplyList = async () => {           // oe = async () => ...
  const token = tokenStore.selectedToken;
  if (!token) return;
  showApplyModal.value = true;
  applyLoading.value = true;
  applyList.value = [];
  try {
    message.info("正在获取申请列表");
    const result = await tokenStore.sendMessageWithPromise(
      token.id, "legion_applylist", {}, 10000
    );
    processApplyList({ body: result });
  } catch (e) {
    applyLoading.value = false;
    message.error("获取申请列表失败: " + (e.message || "未知错误"));
  }
};

// 通过申请 — API: legion_agree
const approveApply = (roleId) => {             // fe = (Ae) => ...
  const token = tokenStore.selectedToken;
  if (!token) return;
  tokenStore.sendMessage(token.id, "legion_agree", { roleId: Number(roleId) });
  applyList.value = applyList.value.filter(a => a.roleId !== roleId);
  message.info(`已通过成员 ID: ${roleId} 的申请`);
  setTimeout(() => refreshClubInfo(), 1000);
};

// 拒绝申请 — API: legion_ignore
const rejectApply = (roleId) => {             // w = (Ae) => ...
  const token = tokenStore.selectedToken;
  if (!token) return;
  tokenStore.sendMessage(token.id, "legion_ignore", { roleId: Number(roleId) });
  applyList.value = applyList.value.filter(a => a.roleId !== roleId);
  message.info(`已拒绝成员 ID: ${roleId} 的申请`);
};

// 一键通过所有申请
const approveAll = () => {                     // C = () => ...
  const token = tokenStore.selectedToken;
  if (!token) return;
  const count = applyList.value.length;
  if (count === 0) return;
  applyList.value.forEach(applicant => {
    tokenStore.sendMessage(token.id, "legion_agree", { roleId: Number(applicant.roleId) });
  });
  applyList.value = [];
  message.success(`已通过所有 ${count} 个申请`);
  setTimeout(() => refreshClubInfo(), 1000);
};

// 一键拒绝所有申请
const rejectAll = () => {                      // P = () => ...
  const token = tokenStore.selectedToken;
  if (!token) return;
  const count = applyList.value.length;
  if (count === 0) return;
  applyList.value.forEach(applicant => {
    tokenStore.sendMessage(token.id, "legion_ignore", { roleId: Number(applicant.roleId) });
  });
  applyList.value = [];
  message.success(`已拒绝所有 ${count} 个申请`);
};
```

### 2.8 签到与概览

```javascript
// 行 ~12614-12699

// 是否已签到
const isSignedIn = computed(() => {             // h = O(() => ...)
  const signInTime = Number(
    tokenStore.gameData?.roleInfo?.role?.statisticsTime?.["legion:sign:in"] || 0
  );
  const today = new Date();
  today.setHours(0, 0, 0, 0);
  const dayStart = Math.floor(today.getTime() / 1000);
  return signInTime > dayStart;
});

// 俱乐部签到 — API: legion_signin
const signInLegion = () => {                   // B = () => ...
  const token = tokenStore.selectedToken;
  if (!token || isSignedIn.value) return;
  tokenStore.sendMessage(token.id, "legion_signin");
  tokenStore.sendMessage(token.id, "role_getroleinfo");
  message.info("俱乐部签到");
};

// 俱乐部概览统计
const overviewInfo = computed(() => {           // k = O(() => ...)
  const info = legionInfo.value || {};
  const clubDetail = info.info || {};
  const currentBoss = clubDetail.currentBoss || {};
  const statistics = info.statistics || info.stat || {};
  return {
    power: Number(clubDetail.power ?? info.power ?? clubDetail.s_power ?? info.s_power ?? 0),
    dan: clubDetail.dan ?? info.dan ?? clubDetail.rank ?? info.rank ?? "-",
    redQuench: Number(clubDetail.redQuenchCnt ?? info.redQuenchCnt ?? statistics["red:quench"] ?? statistics.red_quench ?? 0),
    lastWarRank: statistics["last:war:rank"] ?? statistics.lastWarRank ?? statistics["legion:last:war:rank"] ?? "-",
    noApply: !!(clubDetail.noApply ?? info.noApply),
    currentHP: formatPower(currentBoss.currentHP || 0),
    currentBossId: currentBoss.bossId || 0,
    unfoughtBosses: /* 1-150中未击败的Boss列表 */,
  };
});

// 刷新俱乐部信息 — API: legion_getinfo
const refreshClubInfo = () => {                // ge = () => ...
  const token = tokenStore.selectedToken;
  if (!token) return;
  tokenStore.sendMessage(token.id, "legion_getinfo");
  if (activeTab.value === "members") fetchAllLineups();
};

// 职位名称映射
const getJobName = (job) =>                    // J = (Ae) => ...
  job === 1 ? "会长" : job === 2 ? "副会长" : "成员";

// 格式化红数
const formatRedCount = (count) =>              // W = (Ae) => ...
  count + "红";

// 格式化战力（兆/亿/万）
const formatPower = (value) => {               // Qe = (Ae) => ...
  const num = Number(value || 0);
  return num >= 1e12 ? (num / 1e12).toFixed(2) + "兆"
       : num >= 1e8  ? (num / 1e8).toFixed(2) + "亿"
       : num >= 1e4  ? (num / 1e4).toFixed(2) + "万"
       : String(num);
};
```

### 功能说明

ClubInfo 从开源版本的基础信息展示**大幅扩展**为完整的俱乐部管理面板：

- **成员排序**: 按职位→红淬数→战力三级排序
- **英雄数据处理**: `getHeroInfo` 解析英雄列表，统计红淬/开孔/四圣兽状态
- **批量阵容获取**: `fetchAllLineups` 以5个并发分批获取所有成员阵容信息
- **导出功能**: 支持导出图片（html2canvas截图）和CSV表格两种格式
- **成员管理**: 踢出成员（带确认对话框）、申请审批（单个/批量通过/拒绝）
- **签到系统**: 判断今日是否已签到，一键签到
- **概览统计**: 战力/段位/红淬/上次战绩排名/Boss状态等

---

## 3. IdentityCard 完整资源面板

**组件名**: `IdentityCard` (minified: `Zw`)
**行号范围**: ~16007-16450
**修改类型**: [修改] 从基础角色信息扩展为完整资源面板（30+物品）

### 3.1 角色信息 computed

```javascript
// 行 ~16021-16047
const roleInfo = computed(() => {              // v = O(() => ...)
  const gameData = tokenStore.gameData;
  const role = gameData?.roleInfo?.role;
  return role ? {
    roleId: role.roleId,
    name: role.name,
    headImg: role.headImg,
    level: role.level,
    power: role.power || role.fighting || 0,
    gold: role.gold ?? 0,
    legacy: role.legacy?.color ?? 0,
    diamond: role.diamond ?? 0,
    fishing: role.fishing || role.fish || null,
    items: role.items || role.itemList || role.bag?.items || role.inventory || null,
  } : {};
});
```

### 3.2 段位系统

```javascript
// 行 ~16058-16076
const rankConfig = {                           // Q = {...}
  0: { icon: "🌱", class: "rank-beginner" },   // 初出茅庐
  1: { icon: "🌱", class: "rank-beginner" },
  2: { icon: "⚔️", class: "rank-known" },      // 崭露头角
  3: { icon: "🗡️", class: "rank-veteran" },    // 身经百战
  4: { icon: "🏹", class: "rank-master" },      // 百步穿杨
  5: { icon: "⚡", class: "rank-hero" },        // 威震天下
  6: { icon: "👑", class: "rank-overlord" },    // 霸主
  7: { icon: "🔱", class: "rank-supreme" },     // 至尊
};

const rankInfo = computed(() => {              // G = O(() => ...)
  const legacyLevel = Number(roleInfo.value.legacy || 0);
  const config = rankConfig[legacyLevel] || rankConfig[0];
  return {
    title: (legacycolor[legacyLevel] || { name: "初出茅庐" }).name,
    icon: config.icon,
    class: config.class,
  };
});
```

### 3.3 getItemCount — 通用物品数量获取

```javascript
// 行 ~16099-16121
const getItemCount = (items, itemId) => {      // b = (Ge, Ne) => ...
  if (!items) return null;

  // 数组格式: [{id, num}, ...]
  if (Array.isArray(items)) {
    const found = items.find(item => Number(item.id ?? item.itemId) === itemId);
    return found ? Number(found.num ?? found.count ?? found.quantity ?? 0) : 0;
  }

  // 对象格式: { [itemId]: count } 或 { [itemId]: {num, count, ...} }
  const direct = items[String(itemId)] ?? items[itemId];
  if (direct == null) {
    // 尝试在值中查找
    const found = Object.values(items).find(
      item => Number(item?.itemId ?? item?.id) === itemId
    );
    return found ? Number(found.num ?? found.count ?? found.quantity ?? 0) : 0;
  }
  return typeof direct === "number"
    ? Number(direct)
    : typeof direct === "object"
      ? Number(direct.num ?? direct.count ?? direct.quantity ?? 0)
      : Number(direct) || 0;
};
```

### 3.4 30+ 物品 computed 声明

```javascript
// 行 ~16097-16168 — 所有物品的computed定义
const gold = computed(() => roleInfo.value.gold ?? 0);              // X — 金币
const diamond = computed(() => roleInfo.value.diamond ?? 0);        // I — 金砖

// 通过 getItemCount 获取的物品（参数为 itemId）
const normalRod = computed(() => getItemCount(items.value, 1011));  // x — 普通鱼竿
const goldRod = computed(() => getItemCount(items.value, 1012));    // R — 黄金鱼竿
const pearl = computed(() => getItemCount(items.value, 1013));      // M — 珍珠
const recruitOrder = computed(() => getItemCount(items.value, 1001)); // V — 招募令
const iron = computed(() => getItemCount(items.value, 1006));       // F — 精铁
const colorJade = computed(() => getItemCount(items.value, 1023));  // y — 彩玉
const whiteJade = computed(() => getItemCount(items.value, 1022));  // Ce — 白玉
const advanceStone = computed(() => getItemCount(items.value, 1003)); // re — 进阶石
const revivePill = computed(() => getItemCount(items.value, 1017)); // ae — 复活丹
const blueJade = computed(() => getItemCount(items.value, 10002));  // L — 蓝玉
const redJade = computed(() => getItemCount(items.value, 10003));   // oe — 红玉
const fourSaintFragment = computed(() => getItemCount(items.value, 10101)); // fe — 四圣碎片
const goldBag = computed(() => getItemCount(items.value, 3001));    // w — 金币袋子
const diamondBag = computed(() => getItemCount(items.value, 3002)); // C — 金砖袋子
const purpleShard = computed(() => getItemCount(items.value, 3005)); // P — 紫色随机碎片
const orangeShard = computed(() => getItemCount(items.value, 3006)); // ue — 橙色随机碎片
const redShard = computed(() => getItemCount(items.value, 3007));   // ve — 红色随机碎片
const ironBag = computed(() => getItemCount(items.value, 3008));    // z — 精铁袋子
const advanceBag = computed(() => getItemCount(items.value, 3009)); // ne — 进阶袋子
const nightmareBag = computed(() => getItemCount(items.value, 3010)); // Be — 梦魇袋子
const whiteJadeBag = computed(() => getItemCount(items.value, 3011)); // q — 白玉袋子
const wrenchBag = computed(() => getItemCount(items.value, 3012));  // h — 扳手袋子
const treasureBowl = computed(() => getItemCount(items.value, 3020)); // B — 聚宝盆
const luxuryBowl = computed(() => getItemCount(items.value, 3021)); // k — 豪华聚宝盆
const redUniversalShard = computed(() => getItemCount(items.value, 3201)); // ge — 红色万能碎片
const orangeUniversalShard = computed(() => getItemCount(items.value, 3302)); // J — 橙色万能碎片
const saltIndigo = computed(() => getItemCount(items.value, 1019)); // W — 盐靛
const crystal = computed(() => getItemCount(items.value, 1016));    // Qe — 晶石
const skinCoin = computed(() => getItemCount(items.value, 1020));   // Ae — 皮肤币
const sweepCarpet = computed(() => getItemCount(items.value, 1021)); // j — 扫荡魔毯
const shell = computed(() => getItemCount(items.value, 1033));      // $ — 贝壳
const goldSaltIndigo = computed(() => getItemCount(items.value, 1035)); // T — 金盐靛
const arenaTicket = computed(() => getItemCount(items.value, 1007)); // S — 竞技场门票
const woodBox = computed(() => getItemCount(items.value, 2001));    // H — 木制宝箱
const bronzeBox = computed(() => getItemCount(items.value, 2002));  // Z — 青铜宝箱
const goldBox = computed(() => getItemCount(items.value, 2003));    // be — 黄金宝箱
const platinumBox = computed(() => getItemCount(items.value, 2004)); // ce — 铂金宝箱
const diamondBox = computed(() => getItemCount(items.value, 2005)); // ye — 钻石宝箱
const refreshTicket = computed(() => getItemCount(items.value, 35002)); // K — 刷新券
const parts = computed(() => getItemCount(items.value, 35009));     // te — 零件
const woodTorch = computed(() => getItemCount(items.value, 1008));  // ee — 木柴火把
const bronzeTorch = computed(() => getItemCount(items.value, 1009)); // ie — 青铜火把
const saltGodTorch = computed(() => getItemCount(items.value, 1010)); // le — 咸神火把
const legionCoin = computed(() => getItemCount(items.value, 1014)); // _e — 军团币
const wrench = computed(() => getItemCount(items.value, 1026));     // pe — 扳手
const cheerCoin = computed(() => getItemCount(items.value, 2101));  // Ie — 助威币
```

### 3.5 getCurrentActivityWeek — 当前活动周

```javascript
// 行 ~16169-16178
const getCurrentActivityWeek = computed(() => { // xe = O(() => ...)
  const now = new Date();
  const epoch = new Date("2025-12-12T12:00:00");  // 活动周期起点
  const weekMs = 7 * 24 * 60 * 60 * 1000;
  const cycleMs = 3 * weekMs;                     // 3周一个周期
  const elapsed = now - epoch;
  if (elapsed < 0) return null;
  const phase = elapsed % cycleMs;
  return phase < weekMs ? "黑市周"
       : phase < 2 * weekMs ? "招募周"
       : "宝箱周";
});
```

### 3.6 resList — 资源列表（核心展示数据）

```javascript
// 行 ~16209-16263
const resList = computed(() => {               // Le = O(() => ...)
  const all = [
    { label: "金币", value: formatNumber(gold.value), raw: gold.value },
    { label: "金砖", value: formatNumber(diamond.value), raw: diamond.value },
    { label: "普通鱼竿", value: formatItemCount(normalRodCount.value), raw: getRawCount(normalRodCount.value) },
    { label: "金鱼竿", value: formatItemCount(goldRodCount.value), raw: getRawCount(goldRodCount.value) },
    { label: "珍珠", value: formatItemCount(pearl.value), raw: getRawCount(pearl.value) },
    { label: "复活丹", value: formatItemCount(revivePill.value), raw: getRawCount(revivePill.value) },
    { label: "招募令", value: formatItemCount(recruitOrder.value), raw: getRawCount(recruitOrder.value) },
    { label: "精铁", value: formatItemCount(iron.value), raw: getRawCount(iron.value) },
    { label: "彩玉", value: formatItemCount(colorJade.value), raw: getRawCount(colorJade.value) },
    { label: "进阶石", value: formatItemCount(advanceStone.value), raw: getRawCount(advanceStone.value) },
    { label: "蓝玉", value: formatItemCount(blueJade.value), raw: getRawCount(blueJade.value) },
    { label: "红玉", value: formatItemCount(redJade.value), raw: getRawCount(redJade.value) },
    { label: "四圣宝珠碎片", value: formatItemCount(fourSaintFragment.value), raw: getRawCount(fourSaintFragment.value) },
    { label: "金币袋子", value: formatItemCount(goldBag.value), raw: getRawCount(goldBag.value) },
    { label: "金砖袋子", value: formatItemCount(diamondBag.value), raw: getRawCount(diamondBag.value) },
    { label: "紫色随机碎片", value: formatItemCount(purpleShard.value), raw: getRawCount(purpleShard.value) },
    { label: "橙色随机碎片", value: formatItemCount(orangeShard.value), raw: getRawCount(orangeShard.value) },
    { label: "红色随机碎片", value: formatItemCount(redShard.value), raw: getRawCount(redShard.value) },
    { label: "精铁袋子", value: formatItemCount(ironBag.value), raw: getRawCount(ironBag.value) },
    { label: "进阶袋子", value: formatItemCount(advanceBag.value), raw: getRawCount(advanceBag.value) },
    { label: "梦魇袋子", value: formatItemCount(nightmareBag.value), raw: getRawCount(nightmareBag.value) },
    { label: "白玉袋子", value: formatItemCount(whiteJadeBag.value), raw: getRawCount(whiteJadeBag.value) },
    { label: "扳手袋子", value: formatItemCount(wrenchBag.value), raw: getRawCount(wrenchBag.value) },
    { label: "聚宝盆", value: formatItemCount(treasureBowl.value), raw: getRawCount(treasureBowl.value) },
    { label: "豪华聚宝盆", value: formatItemCount(luxuryBowl.value), raw: getRawCount(luxuryBowl.value) },
    { label: "红色万能碎片", value: formatItemCount(redUniversalShard.value), raw: getRawCount(redUniversalShard.value) },
    { label: "橙色万能碎片", value: formatItemCount(orangeUniversalShard.value), raw: getRawCount(orangeUniversalShard.value) },
    { label: "盐靛", value: formatItemCount(saltIndigo.value), raw: getRawCount(saltIndigo.value) },
    { label: "晶石", value: formatItemCount(crystal.value), raw: getRawCount(crystal.value) },
    { label: "皮肤币", value: formatItemCount(skinCoin.value), raw: getRawCount(skinCoin.value) },
    { label: "扫荡魔毯", value: formatItemCount(sweepCarpet.value), raw: getRawCount(sweepCarpet.value) },
    { label: "白玉", value: formatItemCount(whiteJade.value), raw: getRawCount(whiteJade.value) },
    { label: "贝壳", value: formatItemCount(shell.value), raw: getRawCount(shell.value) },
    { label: "金盐靛", value: formatItemCount(goldSaltIndigo.value), raw: getRawCount(goldSaltIndigo.value) },
    { label: "竞技场门票", value: formatItemCount(arenaTicket.value), raw: getRawCount(arenaTicket.value) },
    { label: "木制宝箱", value: formatItemCount(woodBox.value), raw: getRawCount(woodBox.value) },
    { label: "青铜宝箱", value: formatItemCount(bronzeBox.value), raw: getRawCount(bronzeBox.value) },
    { label: "黄金宝箱", value: formatItemCount(goldBox.value), raw: getRawCount(goldBox.value) },
    { label: "铂金宝箱", value: formatItemCount(platinumBox.value), raw: getRawCount(platinumBox.value) },
    { label: "钻石宝箱", value: formatItemCount(diamondBox.value), raw: getRawCount(diamondBox.value) },
    { label: "刷新券", value: formatItemCount(refreshTicket.value), raw: getRawCount(refreshTicket.value) },
    { label: "零件", value: formatItemCount(parts.value), raw: getRawCount(parts.value) },
    { label: "木柴火把", value: formatItemCount(woodTorch.value), raw: getRawCount(woodTorch.value) },
    { label: "青铜火把", value: formatItemCount(bronzeTorch.value), raw: getRawCount(bronzeTorch.value) },
    { label: "咸神火把", value: formatItemCount(saltGodTorch.value), raw: getRawCount(saltGodTorch.value) },
    { label: "军团币", value: formatItemCount(legionCoin.value), raw: getRawCount(legionCoin.value) },
    { label: "扳手", value: formatItemCount(wrench.value), raw: getRawCount(wrench.value) },
    { label: "助威币", value: formatItemCount(cheerCoin.value), raw: getRawCount(cheerCoin.value) },
  ];
  // 有数值的排前面，为零的排后面
  const nonZero = all.filter(item => item.raw > 0);
  const zero = all.filter(item => item.raw === 0);
  return [...nonZero, ...zero];
});
```

### 3.7 头像处理

```javascript
// 行 ~16265-16285
const updateAvatar = () => {                   // ot = () => ...
  if (roleInfo.value && roleInfo.value.headImg) {
    roleAvatar.value = roleInfo.value.headImg;
  } else {
    if (!fallbackAvatar.value) {
      const seed = roleInfo.value.roleId || roleInfo.value.name || "default";
      const hash = Array.from(String(seed)).reduce((acc, ch) => acc + ch.charCodeAt(0), 0);
      fallbackAvatar.value = fallbackAvatars[hash % fallbackAvatars.length];
    }
    roleAvatar.value = fallbackAvatar.value;
  }
};

const handleAvatarError = () => {              // Ve = () => ...
  if (!fallbackAvatar.value) {
    const index = Math.floor(Math.random() * fallbackAvatars.length);
    fallbackAvatar.value = fallbackAvatars[index] || fallbackAvatars[0];
  }
  roleAvatar.value = fallbackAvatar.value;
};
```

### 功能说明

IdentityCard 从开源版本的基础角色信息**大幅扩展**为完整资源面板：

- **段位系统**: 7级段位（🌱初出茅庐 → 🔱至尊），基于传承等级
- **30+物品展示**: 通过 `getItemCount` 统一获取物品数量，兼容数组/对象/嵌套等多种数据格式
- **活动周判断**: 3周循环（黑市周→招募周→宝箱周），以2025-12-12为周期起点
- **鱼竿兼容**: `normalRodCount`/`goldRodCount` 兼容 `fishing` 字段和 `items` 字段两种数据来源
- **资源列表排序**: 有数值的物品排前面，为零的排后面
- **展开/收起**: 超过6个物品时显示展开按钮
- **头像容错**: 优先使用角色头像，失败时使用基于roleId哈希的备用头像

---

## 4. ClubWeirdTowerInfo — Modal + 导出图片

**组件名**: `ClubWeirdTowerInfo` (minified: `Wp`)
**行号范围**: ~10656-11152
**修改类型**: [修改] 从基础怪异塔状态新增 Modal + 导出图片

### 4.1 核心状态

```javascript
// 行 ~10665-10672
const exportDom = ref(null);                   // o = Y(null)
const emit = emit;                             // i = s
const message = useMessage();                  // r = It()
const tokenStore = useTokenStore();            // v = _t()
const exporting = ref(false);                  // c = Y(!1)
const visible = computed({                     // f = O({ get/set })
  get: () => props.visible,
  set: (val) => emit("update:visible", val),
});
const loading = ref(false);                    // m = Y(!1)
const towerData = ref([]);                     // p = Y([])
```

### 4.2 convertTowerCount — 层数转换

```javascript
// 行 ~10843-10850
const convertTowerCount = (rawCount) => {      // G = (U) => ...
  if (rawCount === 0) return "1-1";
  const floor = Math.floor(rawCount / 10) + 1;   // 大层
  const stage = (rawCount % 10) + 1;              // 小层
  return `${floor}-${stage}`;
  // 例: rawCount=14 → "2-5" (第2大层第5小层)
};
```

### 4.3 fetchWeirdTowerInfo — 获取怪异塔数据

```javascript
// 行 ~10851-10923
const fetchWeirdTowerInfo = async () => {      // _ = async () => ...
  if (!tokenStore.selectedToken) {
    message.warning("请先选择游戏角色");
    return;
  }
  const tokenId = tokenStore.selectedToken.id;
  if (tokenStore.getWebSocketStatus(tokenId) !== "connected") {
    message.error("WebSocket未连接，无法查询爬塔数据");
    return;
  }

  loading.value = true;
  try {
    // API: evotower_getlegionjoinmembers
    const result = await tokenStore.sendMessageWithPromise(
      tokenId, "evotower_getlegionjoinmembers", {}, 10000
    );

    // 获取俱乐部成员信息用于名称匹配
    const members = tokenStore.gameData?.legionInfo?.info?.members || {};
    const memberList = Object.values(members);
    let dataList = [];
    const scoreMap = new Map();

    // 构建成员爬塔分数映射
    if (result && result.memberScores) {
      Object.entries(result.memberScores).forEach(([id, score]) => {
        scoreMap.set(parseInt(id), score);
      });
    }

    // 合并成员信息和爬塔数据
    if (memberList.length > 0) {
      dataList = memberList.map(member => {
        const towerCount = scoreMap.get(member.roleId) || 0;
        return {
          roleId: member.roleId,
          name: member.name,
          headImg: member.headImg,
          towerCount: towerCount,
          towerCountconvert: convertTowerCount(towerCount),
          power: member.power,
        };
      });
    } else if (result && result.memberScores) {
      // 无成员信息时，仅使用API返回数据
      dataList = Object.entries(result.memberScores).map(([id, score]) => ({
        roleId: parseInt(id),
        towerCount: score,
        towerCountconvert: convertTowerCount(score),
        name: `ID:${id}`,
        headImg: "",
        power: 0,
      }));
    }

    // 按爬塔层数降序，同层按战力降序
    dataList.sort((a, b) =>
      b.towerCount !== a.towerCount
        ? b.towerCount - a.towerCount
        : (b.power || 0) - (a.power || 0)
    );

    towerData.value = dataList;
    dataList.length > 0
      ? message.success("怪异塔数据加载成功，已按怪异塔数量从高到低排序")
      : message.warning("未查询到数据");
  } catch (e) {
    message.error(`查询失败: ${e.message}`);
    towerData.value = [];
  } finally {
    loading.value = false;
  }
};
```

### 4.4 exportImage / doExport — 导出图片

```javascript
// 行 ~10927-10956
const exportImage = async () => {              // X = async () => ...
  if (!towerData.value) {
    message.warning("没有可导出的数据");
    return;
  }
  try {
    exporting.value = true;
    await nextTick();
    await new Promise(resolve => setTimeout(resolve, 100));
    await doExport();
    message.success("导出成功");
  } catch (e) {
    message.error("导出失败，请重试");
  } finally {
    exporting.value = false;
  }
};

const doExport = async () => {                 // I = async () => ...
  if (!exportDom.value) throw new Error("未找到要导出的DOM元素");
  const canvas = await html2canvas(exportDom.value, {
    scale: 2,
    useCORS: true,
    backgroundColor: "#ffffff",
    logging: false,
  });
  const filename = getCurrentDate()
    .replace("/", "年").replace("/", "月") + "日俱乐部怪异塔数据.png";
  downloadImage(canvas, filename);
};
```

### 4.5 双模式渲染（inline / Modal）

```javascript
// 行 ~10963-11148 — 渲染逻辑
// inline模式: 直接嵌入页面，表头带操作按钮
// Modal模式: 弹窗展示，header-extra带刷新和导出按钮

if (props.inline) {
  // 内嵌模式：表头组包含标题 + 刷新/导出按钮
  // 数据表格直接渲染
} else {
  // 弹窗模式：NModal + preset="card"
  <n-modal
    show={visible.value}
    preset="card"
    title="俱乐部怪异塔信息"
    style={{ width: "90%", maxWidth: "800px" }}
    onAfterLeave={onAfterLeave}
  >
    header-extra: [刷新按钮, 导出按钮]
    default: [加载中 / 数据表格 / 暂无数据]
  </n-modal>
}
```

### 功能说明

ClubWeirdTowerInfo 从开源版本迁移并增强：

- **双模式渲染**: 支持 `inline`（内嵌页面）和 Modal（弹窗）两种展示模式
- **层数转换**: `convertTowerCount` 将原始数值转为 "大层-小层" 格式（如14→2-5）
- **数据获取**: API `evotower_getlegionjoinmembers`，自动合并成员信息
- **排序**: 按爬塔层数降序，同层按战力降序
- **导出图片**: html2canvas截图，文件名含日期

---

## 5. LegionWarStatistics — 视图模式切换

**组件名**: `LegionWarStatistics` (minified: `rz`)
**行号范围**: ~57353-61278
**修改类型**: [修改] 新增 legion/individual 视图模式切换

### 5.1 核心状态

```javascript
// 行 ~57355-57370
const message = useMessage();                  // A = It()
const tokenStore = useTokenStore();            // s = _t()
const legionWarStore = useLegionWarStore();    // n = zu()
const battlefieldId = ref(getCurrentBattlefieldId()); // o = Y(Jr())

// 从store解构状态
const { isConnected, connecting, validData, battlefieldId: storeBattlefieldId,
        lastUpdateTime, legionDetails, isJoined } = useLegionWarStoreDestructure(legionWarStore);

const viewMode = ref("legion");               // Q = Y("legion") — 视图模式
const exporting = ref(false);                  // G = Y(!1)
const tableMaxHeight = ref(600);               // _ = Y(600)
```

### 5.2 俱乐部战况数据

```javascript
// 行 ~57409-57427
const legionData = computed(() => {            // X = O(() => ...)
  if (!validData.value?.legionInfo) return [];
  return Object.values(validData.value.legionInfo)
    .map(legion => {
      const detail = legionDetails.value[legion.id];
      const redCount = detail?.quenchNum !== undefined ? detail.quenchNum : legion.redCount;
      const power = detail?.power !== undefined ? detail.power : legion.power;
      return { ...legion, redCount, power, key: legion.id };
    })
    .sort((a, b) => b.score - a.score);       // 按积分降序
});
```

### 5.3 个人战况数据

```javascript
// 行 ~57428-57447
const individualData = computed(() => {        // I = O(() => ...)
  if (!validData.value?.memberInfo) return [];
  // 仅显示本俱乐部成员
  const myLegionId = tokenStore.gameData?.roleInfo?.role?.legionId;
  return Object.values(validData.value.memberInfo)
    .filter(member => member.legionId == myLegionId)
    .map((member, index) => ({
      ...member,
      key: index,
      kd: member.die > 0
        ? (member.kill / member.die).toFixed(2)
        : member.kill.toFixed(2),             // K/D比率
    }))
    .sort((a, b) => b.kill - a.kill);         // 按击杀数降序
});
```

### 5.4 表格列定义

```javascript
// 行 ~57448-57516

// 俱乐部战况列
const legionColumns = [                        // b = [...]
  { title: "排名", key: "rank", width: 60, render: (_, i) => i + 1 },
  { title: "俱乐部名称", key: "name", width: 150 },
  { title: "击杀数", key: "killCnt", sorter: true },
  { title: "免费复活", key: "reviveCount", render: (row) => `${row.reviveCount}/150` },
  { title: "积分", key: "score", sorter: true },
  { title: "红数", key: "redCount", sorter: true },
  { title: "战力", key: "power", render: (row) => formatPower(row.power), sorter: true },
  { title: "人数", key: "participantsCount", render: (row) => `${row.participantsCount}/30` },
  { title: "花费总丹", key: "danCount", sorter: true },
  { title: "四圣", key: "blessingInfo", render: (row) => `${row.blessingCount}个共${row.blessingScore}分` },
];

// 个人战况列
const individualColumns = [                    // U = [...]
  { title: "排名", key: "rank", width: 60, render: (_, i) => i + 1 },
  { title: "名称", key: "name", width: 120 },
  { title: "击杀数", key: "kill", sorter: true },
  { title: "死亡次数", key: "die", sorter: true },
  { title: "已复活次数", key: "revive", render: (row) => `${row.revive}/5` },
  { title: "积分", key: "score", sorter: true },
  { title: "刨地", key: "digGround", sorter: true },
  { title: "复活丹", key: "dan", sorter: true },
  { title: "K/D", key: "kd", sorter: true },
];
```

### 5.5 视图模式切换渲染

```javascript
// 行 ~57594-57633 — 渲染中的视图切换UI
<div class="view-controls">
  {/* 单选按钮组切换视图模式 */}
  <n-radio-group value={viewMode.value} size="small">
    <n-radio-button value="legion">战队战况</n-radio-button>
    <n-radio-button value="individual">个人战况</n-radio-button>
  </n-radio-group>

  {/* 连接状态标签 */}
  <n-tag type={isConnected ? "success" : "error"}>
    {isConnected ? "已连接" : "未连接"}
  </n-tag>
</div>

{/* 根据视图模式渲染不同表格 */}
{viewMode.value === "legion"
  ? <n-data-table columns={legionColumns} data={legionData.value} rowClassName={rowClassName} />
  : <n-data-table columns={individualColumns} data={individualData.value} />
}
```

### 5.6 导出图片（含视图模式判断）

```javascript
// 行 ~57371-57408
const exportImage = async () => {              // N = async () => ...
  const container = document.querySelector(".legion-war-statistics-card .table-content");
  if (!container) { message.error("未找到导出内容"); return; }

  exporting.value = true;
  const originalMaxHeight = tableMaxHeight.value;
  tableMaxHeight.value = undefined;            // 移除高度限制以完整截图

  try {
    await nextTick();
    const isMobile = window.innerWidth < 768;
    // 临时调整宽度
    const origWidth = container.style.width;
    const origMaxWidth = container.style.maxWidth;
    if (isMobile) {
      container.style.width = "100%";
      container.style.maxWidth = "100%";
    } else {
      container.style.width = "auto";
      container.style.maxWidth = "none";
    }
    await new Promise(r => setTimeout(r, 100));

    const canvas = await html2canvas(container, {
      useCORS: true,
      scale: isMobile ? 1.5 : 2,
      backgroundColor: "#ffffff",
    });

    // 恢复原始宽度
    container.style.width = origWidth;
    container.style.maxWidth = origMaxWidth;

    // 文件名根据视图模式不同
    const label = viewMode.value === "legion" ? "俱乐部战况" : "个人战况";
    const link = document.createElement("a");
    link.download = `盐场${label}_${formatDateTime("yyyyMMdd_HHmmss")}.png`;
    link.href = canvas.toDataURL("image/png");
    link.click();
    message.success("导出成功");
  } catch (e) {
    message.error("导出失败");
  } finally {
    tableMaxHeight.value = originalMaxHeight;
    exporting.value = false;
  }
};
```

### 功能说明

LegionWarStatistics 新增了**视图模式切换**功能：

- **双视图模式**: "战队战况"（俱乐部维度）和"个人战况"（成员维度），通过 n-radio-group 切换
- **俱乐部战况**: 排名/名称/击杀/复活/积分/红数/战力/人数/花费丹/四圣
- **个人战况**: 排名/名称/击杀/死亡/复活/积分/刨地/复活丹/K/D
- **K/D计算**: 死亡>0时为 kill/die，否则直接显示击杀数
- **本俱乐部过滤**: 个人战况仅显示当前用户所在俱乐部的成员
- **导出图片**: 文件名根据当前视图模式自动命名，支持移动端适配

---

## 6. CarScoreInfo — 赛车积分信息

**组件名**: `CarScoreInfo` (minified: `th`)
**行号范围**: ~11161-11657
**修改类型**: [新增] 开源中无对应

### 6.1 核心状态与列定义

```javascript
// 行 ~11170-11347
const exportDom = ref(null);                   // o = Y(null)
const message = useMessage();                  // r = It()
const tokenStore = useTokenStore();            // v = _t()
const exporting = ref(false);                  // c = Y(!1)
const visible = computed({ get/set for v-model }); // f
const loading = ref(false);                    // m = Y(!1)
const carScoreData = ref([]);                  // p = Y([])

// 表格列: 序号 / 头像 / 成员(名称+ID) / 赛车积分
const columns = computed(() => {               // Q = O(() => ...)
  const baseColumns = [
    { title: "序号", key: "index", width: 60, align: "center", render: (_, i) => i + 1 },
    { title: "头像", key: "headImg", width: 60, align: "center", render: ... },
    { title: "成员", key: "name", align: "left", render: ... },
    { title: "赛车积分", key: "score", align: "center", render: (row) => row.score || "0" },
  ];
  // inline模式时包装为带标题和操作按钮的分组列
  return props.inline ? [{ title: headerWithButtons, children: baseColumns }] : baseColumns;
});
```

### 6.2 fetchCarScoreInfo — 获取赛车积分数据

```javascript
// 行 ~11348-11428
const fetchCarScoreInfo = async () => {        // G = async () => ...
  if (!tokenStore.selectedToken) {
    message.warning("请先选择游戏角色");
    return;
  }
  const tokenId = tokenStore.selectedToken.id;
  if (tokenStore.getWebSocketStatus(tokenId) !== "connected") {
    message.error("WebSocket未连接，无法查询爬塔数据");
    return;
  }

  loading.value = true;
  try {
    // API: car_getmemberrank
    const result = await tokenStore.sendMessageWithPromise(
      tokenId, "car_getmemberrank", {}, 10000
    );

    const members = tokenStore.gameData?.legionInfo?.info?.members || {};
    const memberList = Object.values(members);
    let dataList = [];
    const scoreMap = new Map();

    // 构建积分映射
    if (result && result.list) {
      result.list.forEach(item => {
        scoreMap.set(item.roleId, item);
      });
    }

    // 合并成员信息和积分数据
    if (memberList.length > 0) {
      dataList = memberList.map(member => {
        const scoreInfo = scoreMap.get(member.roleId);
        return {
          roleId: member.roleId,
          name: member.name,
          headImg: member.headImg,
          score: scoreInfo ? scoreInfo.score : 0,
          power: member.power,
          rank: scoreInfo ? scoreInfo.rank : 9999,
          serverId: member.serverId,
        };
      });
    } else if (result && result.list) {
      dataList = result.list.map(item => ({
        roleId: item.roleId,
        name: item.name,
        headImg: item.headImg?.replace(/`/g, "").trim(),
        score: item.score,
        power: item.power,
        rank: item.rank,
        serverId: item.serverId,
      }));
    }

    // 按积分降序，同分按战力降序
    dataList.sort((a, b) =>
      b.score !== a.score ? b.score - a.score : (b.power || 0) - (a.power || 0)
    );

    carScoreData.value = dataList;
    dataList.length > 0
      ? message.success("赛车数据加载成功，已按积分从高到低排序")
      : message.warning("未查询到数据");
  } catch (e) {
    message.error(`查询失败: ${e.message}`);
    carScoreData.value = [];
  } finally {
    loading.value = false;
  }
};
```

### 功能说明

CarScoreInfo 是**全新组件**，用于展示俱乐部赛车积分排名：

- **API**: `car_getmemberrank` 获取俱乐部成员赛车积分
- **数据合并**: 将API返回的积分数据与俱乐部成员信息合并
- **排序**: 按积分降序，同分按战力降序
- **双模式**: 支持 inline（内嵌）和 Modal（弹窗）展示
- **导出图片**: html2canvas截图，文件名含日期

---

## 7. CrazyCar / ClubCarKing — 疯狂赛车

**组件名**: CrazyCar (内嵌于 ClubCarKing)
**行号范围**: ~1060-1737
**修改类型**: [新增] 开源中无对应

### 7.1 辅助函数

```javascript
// 行 ~1062-1075

// 品阶名称映射
const getColorName = (colorId) => ({           // I = (K) => ...
  1: "绿·普通", 2: "蓝·稀有", 3: "紫·史诗",
  4: "橙·传说", 5: "红·神话", 6: "金·传奇",
})[colorId] || "未知";

// 车辆图标映射
const getCarIcon = (carType) => ({             // x = (K) => ...
  1: "/icons/大众.svg", 2: "/icons/特斯拉.svg", 3: "/icons/奥迪.svg",
  4: "/icons/奔驰.svg", 5: "/icons/保时捷.svg", 6: "/icons/兰博基尼.svg",
})[carType] || "/icons/大众.svg";

// 是否活动时间（周一至周三）
const isActivityTime = computed(() => {         // m = O(() => ...)
  const day = new Date().getDay();
  return day >= 1 && day <= 3;
});
```

### 7.2 fetchCarData — 获取赛车数据

```javascript
// 行 ~1238-1284
const fetchCarData = async () => {             // fe = async () => ...
  const token = tokenStore.selectedToken;
  if (!token || (!isConnected.value && !isConnecting.value)) {
    message.warning("请先选择 Token 并建立连接");
    return;
  }
  loading.value = true;
  try {
    // API: car_getrolecar
    const result = await tokenStore.sendMessageWithPromise(
      token.id, "car_getrolecar", {}, 10000
    );
    // 同时获取车票数量
    try {
      const roleResult = await tokenStore.sendMessageWithPromise(
        token.id, "role_getroleinfo", {}, 10000
      );
      ticketCount.value = Number(roleResult?.role?.items?.[35002]?.quantity || 0);
    } catch {}

    carData.value = result?.body ?? result;
    dataLoaded.value = true;
    parseCarList(carData.value).length
      ? message.success("疯狂赛车数据已更新")
      : message.info("未识别到车辆字段，已启用智能解析");
  } catch (e) {
    message.error("获取车辆数据失败：" + (e.message || "未知错误"));
  } finally {
    loading.value = false;
  }
};
```

### 7.3 refreshCarGrade — 刷新品阶

```javascript
// 行 ~1298-1370
const refreshCarGrade = async (car) => {       // w = async (K) => ...
  const token = tokenStore.selectedToken;
  if (!token || (!isConnected.value && !isConnecting.value)) {
    message.warning("请先选择 Token 并建立连接");
    return;
  }
  if (!car?.id) { message.warning("未找到车辆ID"); return; }
  if (Number(car.sendAt || 0) !== 0) {
    message.warning("仅未发车的车辆可刷新品阶");
    return;
  }

  try {
    if (Number(car.refreshCount ?? 0) !== 0) {
      message.info("将消耗车票进行刷新");
    }
    // API: car_refresh
    const result = await tokenStore.sendMessageWithPromise(
      token.id, "car_refresh", { carId: String(car.id) }, 10000
    );
    const updatedCar = result?.car || result?.body?.car || result;
    if (updatedCar && typeof updatedCar === "object") {
      // 就地更新车辆数据
      if (updatedCar.color != null) car.color = Number(updatedCar.color);
      if (updatedCar.rewards != null) car.rewards = updatedCar.rewards;
      if (updatedCar.refreshCount != null) car.refreshCount = Number(updatedCar.refreshCount);
      // 同步更新 carDataMap
      const body = carData.value?.body || carData.value || {};
      if (body.roleCar?.carDataMap?.[car.id]) {
        body.roleCar.carDataMap[car.id] = { ...body.roleCar.carDataMap[car.id], ...updatedCar };
      }
      message.success(`刷新完成：${getColorName(car.color)}`);
    } else {
      await fetchCarData();
      message.success("品阶刷新完成");
    }
    // 刷新车票数量
    try {
      const roleResult = await tokenStore.sendMessageWithPromise(token.id, "role_getroleinfo", {}, 8000);
      ticketCount.value = Number(roleResult?.role?.items?.[35002]?.quantity || 0);
    } catch {}
  } catch (e) {
    message.error("刷新失败：" + (e.message || "未知错误"));
  }
};
```

### 7.4 sendCar — 发车

```javascript
// 行 ~1371-1433
const sendCar = async (car) => {               // C = async (K) => ...
  const token = tokenStore.selectedToken;
  if (!token || (!isConnected.value && !isConnecting.value)) {
    message.warning("请先选择 Token 并建立连接");
    return;
  }
  if (Number(car.sendAt || 0) !== 0) { message.info("该车辆已发车"); return; }
  if (!isActivityTime.value) {
    message.warning("非活动时间不可发车（仅周一至周三开放）");
    return;
  }
  if (!car?.id) { message.warning("未找到车辆ID"); return; }

  try {
    message.info("发车中...");
    // API: car_send
    const result = await tokenStore.sendMessageWithPromise(
      token.id, "car_send", {
        carId: String(car.id),
        helperId: Number(car.helperId || 0),
        text: "",
        isUpgrade: false,
      }, 10000
    );
    const body = result?.body || result;
    const roleCar = body?.roleCar || body?.rolecar;
    const carDataMap = roleCar?.carDataMap || roleCar?.cardatamap;

    if (carDataMap && carDataMap[car.id]) {
      const updated = carDataMap[car.id];
      // 就地更新
      if (updated.sendAt != null) car.sendAt = updated.sendAt;
      if (updated.color != null) car.color = updated.color;
      if (updated.refreshCount != null) car.refreshCount = updated.refreshCount;
      message.success("已发车");
    } else {
      await fetchCarData();
      message.success("已发车");
    }
  } catch (e) {
    message.error("发车失败：" + (e.message || "未知错误"));
  }
};
```

### 7.5 canCollect / collectCar / smartSendCar

```javascript
// 行 ~1434-1515

// 判断是否可收车（发车后超过4小时）
const canCollect = (car) => {                  // P = (K) => ...
  const sendAt = Number(car?.sendAt || 0);
  if (!sendAt) return false;
  const sendTime = sendAt < 1e12 ? sendAt * 1000 : sendAt;
  return Date.now() - sendTime >= COLLECT_INTERVAL;  // 4小时
};

// 一键收车
const collectCar = async () => {               // h = async () => ...
  if (!tokenStore.selectedToken || (!isConnected.value && !isConnecting.value))
    return message.warning("请先选择 Token 并建立连接");
  try {
    const collectible = (parsedCarList.value || []).filter(car => canCollect(car));
    for (const car of collectible) {
      try { await claimCar(car); } catch {}
      await new Promise(r => setTimeout(r, 300));  // 间隔300ms防止请求过快
    }
    await fetchCarData();
    message.success("一键收车完成");
  } catch (e) {
    message.error("一键收车失败：" + (e.message || "未知错误"));
  }
};

// 智能发车 — 核心策略
const smartSendCar = async () => {             // B = async () => ...
  const token = tokenStore.selectedToken;
  if (!token || !isConnected.value)
    return message.warning("请先选择 Token 并建立连接");

  try {
    await fetchCarData();  // 先刷新数据

    // 获取护卫次数信息
    let helpingCountMap = {};
    const fetchHelpingCount = async () => {
      try {
        const result = await tokenStore.sendMessageWithPromise(
          token.id, "car_getmemberhelpingcnt", {}, 5000
        );
        helpingCountMap = result?.body?.memberHelpingCntMap
                       || result?.memberHelpingCntMap || {};
      } catch {}
    };

    // 构建护卫候选人列表（排除自己，按红淬降序）
    const candidates = memberList.value
      .filter(m => !myRoleId.value || String(m.roleId) !== myRoleId.value)
      .map(m => ({
        id: String(m.roleId),
        name: m.name || m.nickname || String(m.roleId),
        redQuench: m.custom?.red_quench_cnt || 0,
      }))
      .sort((a, b) => b.redQuench - a.redQuench);

    // 自动分配护卫（红·神话以上且无护卫的车辆）
    const autoAssignGuard = async (car) => {
      if (Number(car.color || 0) < 5 || car.helperId) return;
      await fetchHelpingCount();
      const candidate = candidates.find(c => Number(helpingCountMap[c.id] || 0) < 4);
      if (candidate) {
        car.helperId = candidate.id;
        helpingCountMap[candidate.id] = Number(helpingCountMap[candidate.id] || 0) + 1;
        message.success(`已自动分配护卫：${candidate.name} (已助战: ${helpingCountMap[candidate.id]}/4)`);
      } else {
        message.warning(`车辆[${getColorName(car.color)}]需要护卫，但所有护卫次数已满`);
      }
    };

    // 遍历所有未发车车辆，执行智能发车策略
    let tickets = Number(ticketCount.value || 0);
    for (const car of parsedCarList.value) {
      if (Number(car.sendAt || 0) !== 0) continue;  // 跳过已发车

      // 如果车辆品质已达标，直接发车
      if (isQualityGoodEnough(car, tickets)) {
        await autoAssignGuard(car);
        await sendCar(car);
        await new Promise(r => setTimeout(r, 500));
        continue;
      }

      // 判断是否需要刷新品阶
      let shouldRefresh = false;
      const isFirstRefresh = Number(car.refreshCount ?? 0) === 0;
      if (tickets >= 6) shouldRefresh = true;        // 车票充足，刷新
      else if (isFirstRefresh) shouldRefresh = true;  // 首次刷新免费
      else {
        // 车票不足且非首次，直接发车
        await autoAssignGuard(car);
        await sendCar(car);
        await new Promise(r => setTimeout(r, 500));
        continue;
      }

      // 循环刷新直到品质达标或车票耗尽
      while (shouldRefresh) {
        await refreshCarGrade(car);
        tickets = Number(ticketCount.value || 0);
        if (isQualityGoodEnough(car, tickets)) {
          await autoAssignGuard(car);
          await sendCar(car);
          await new Promise(r => setTimeout(r, 500));
          break;
        }
        const isFirstRefresh = Number(car.refreshCount ?? 0) === 0;
        if (tickets >= 6) shouldRefresh = true;
        else if (isFirstRefresh) shouldRefresh = true;
        else {
          await autoAssignGuard(car);
          await sendCar(car);
          await new Promise(r => setTimeout(r, 500));
          break;
        }
      }
    }
    await fetchCarData();
    message.success("智能发车完成");
  } catch (e) {
    message.error("智能发车失败：" + (e.message || "未知错误"));
  }
};
```

### 7.6 护卫系统

```javascript
// 行 ~1643-1737

// 获取护卫状态文本
const getGuardStatus = (car) => {              // R = (K) => ...
  if (car.helperBattleTeam) {
    const name = car.helperBattleTeam.name || car.helperBattleTeam.nickname;
    if (name) return name;
    if (car.helperBattleTeam.roleId) return getMemberName(car.helperBattleTeam.roleId);
  }
  const guardId = car.helperId || car.guardId;
  if (guardId) return getMemberName(guardId);
  // 未发车且品质≥5显示"可携带"，已发车显示"未携带"
  return Number(car.sendAt || 0) !== 0 ? "未携带"
       : Number(car.color || 0) >= 5 ? "可携带" : "—";
};

// 设置护卫 — 弹出选择器
const setGuard = async (car) => {              // be = async (K) => ...
  const token = tokenStore.selectedToken;
  if (!token || (!isConnected.value && !isConnecting.value))
    return message.warning("请先选择 Token 并建立连接");
  if (Number(car.color || 0) < 5)
    return message.warning("仅品阶≥5的车辆可设置护卫");
  if (Number(car.sendAt || 0) !== 0)
    return message.warning("已发车车辆不可设置护卫");

  currentCar.value = car;
  showGuardModal.value = true;
  guardLoading.value = true;
  selectedGuardId.value = car.helperId ? String(car.helperId) : null;

  try {
    // 获取护卫次数
    const result = await tokenStore.sendMessageWithPromise(
      token.id, "car_getmemberhelpingcnt", {}, 10000
    );
    const helpingMap = result?.body?.memberHelpingCntMap
                    || result?.memberHelpingCntMap || {};

    // 构建护卫候选人选项（排除自己，按红淬降序）
    guardOptions.value = memberList.value
      .filter(m => !myRoleId.value || String(m.roleId) !== myRoleId.value)
      .map(m => {
        const id = String(m.roleId);
        const count = Number(helpingMap[id] ?? 0);
        const power = formatPower(m.power || m.custom?.s_power || 0);
        const redQuench = m.custom?.red_quench_cnt || 0;
        return {
          label: `${m.name || m.nickname || id}（战力: ${power} | 红粹: ${redQuench} | 已护卫 ${count}/4）`,
          value: id,
          disabled: count >= 4,              // 已满4次不可再护卫
          redQuench,
        };
      })
      .sort((a, b) => b.redQuench - a.redQuench);
  } catch (e) {
    message.error("获取护卫数据失败：" + (e.message || "未知错误"));
    guardOptions.value = [];
  } finally {
    guardLoading.value = false;
  }
};
```

### 功能说明

CrazyCar / ClubCarKing 是**全新组件**，实现完整的疯狂赛车玩法：

- **6种车辆**: 大众/特斯拉/奥迪/奔驰/保时捷/兰博基尼
- **6种品阶**: 绿·普通 → 金·传奇，可通过刷新提升
- **活动时间**: 仅周一至周三开放发车
- **收车条件**: 发车后需超过4小时才可收车
- **智能发车**: 自动判断品质是否达标，不达标则刷新品阶（消耗车票），达标后自动分配护卫并发车
- **护卫系统**: 品阶≥5的车辆可设置护卫，每人最多护卫4次，优先分配红淬高的成员
- **一键收车**: 批量收取所有已到时间的车辆

---

## 8. 盐场匹配详情导出 xlsx

**行号范围**: ~10536-10647
**修改类型**: [新增] 导出盐场匹配详情为Excel文件

### 8.1 getCurrentDate — 获取当前日期

```javascript
// 行 ~10536-10542
function getCurrentDate() {                    // Ps = () => ...
  const now = new Date();
  const year = now.getFullYear();
  const month = String(now.getMonth() + 1).padStart(2, "0");
  const day = String(now.getDate()).padStart(2, "0");
  return `${year}/${month}/${day}`;
}
```

### 8.2 exportSaltFieldXlsx — 导出xlsx

```javascript
// 行 ~10543-10627
function exportSaltFieldXlsx(data, dateStr) {  // hu = (t, A) => ...
  if (!data || data.length === 0) return "暂无战绩数据";

  // 构建表头和数据行
  const sheetData = [
    ["排名", "ID", "区服", "俱乐部名", "战力", "红淬", "前三红淬", "积分", "联盟", "公告"],
    ...data
      .sort((a, b) => (b.redQuench || 0) - (a.redQuench || 0))  // 按红淬降序
      .map((item, index) => [
        index + 1,
        item.id,
        item.serverId,
        item.name,
        formatPowerForExport(item.power),
        item.redQuench,
        formatTop3Red(item.redno1, item.redno2, item.redno3),
        formatScore(item.sRScore),
        detectAlliance(item.announcement),
        item.announcement,
      ]),
  ];

  // 统计各联盟数量
  let xiCount = 0, bigAllianceCount = 0, justiceCount = 0, dragonCount = 0, unknownCount = 0;
  data.forEach(item => {
    switch (detectAlliance(item.announcement)) {
      case "曦盟": xiCount++; break;
      case "大联盟": bigAllianceCount++; break;
      case "正义联盟": justiceCount++; break;
      case "龙盟": dragonCount++; break;
      default: unknownCount++;
    }
  });

  // 创建Excel工作簿
  const workbook = XLSX.book_new();            // VA.book_new()
  const worksheet = XLSX.aoa_to_sheet(sheetData); // VA.aoa_to_sheet()

  // 添加汇总行
  XLSX.sheet_add_aoa(worksheet, [
    ["总计", `曦盟：${xiCount}家`, `大联盟：${bigAllianceCount}家`,
     `正义联盟：${justiceCount}家`, `龙盟：${dragonCount}家`, `未知联盟：${unknownCount}家`],
  ], { origin: -1 });

  // 设置列宽
  worksheet["!cols"] = [
    { wch: 8 }, { wch: 15 }, { wch: 15 }, { wch: 15 }, { wch: 15 },
    { wch: 15 }, { wch: 15 }, { wch: 15 }, { wch: 15 }, { wch: 80 },
  ];

  XLSX.book_append_sheet(workbook, worksheet, "盐场匹配详情");

  const filename = `盐场匹配详情_${dateStr.replace(/\//g, "-")}.xlsx`;
  XLSX.writeFile(workbook, filename);          // qr(c, m)
  return ""
}
```

### 8.3 辅助函数

```javascript
// 行 ~10628-10647

// 导出时格式化战力
const formatPowerForExport = (value) =>        // Sp = (t) => ...
  value
    ? value >= 1e8 ? (value / 1e8).toFixed(2) + "亿"
      : value >= 1e4 ? (value / 1e4).toFixed(2) + "万"
      : value.toString()
    : "0";

// 格式化积分
const formatScore = (score) =>                 // Tp = (t) => ...
  (score || 0).toFixed(0).toString();

// 格式化前三红淬
const formatTop3Red = (r1, r2, r3) =>          // Dp = (t, A, s) => ...
  `${r1},${r2},${r3}`;

// 联盟关键词匹配规则
const ALLIANCE_KEYWORDS = [                    // xp = [...]
  { keywords: ["大联盟"], value: "大联盟" },
  { keywords: ["正义"], value: "正义联盟" },
  { keywords: ["龙盟", "龍盟"], value: "龙盟" },
  { keywords: ["曦", "曦盟", "晨曦之盟"], value: "曦盟" },
];

// 检测联盟归属
const detectAlliance = (announcement) => {     // BA = (t) => ...
  const match = ALLIANCE_KEYWORDS.find(rule =>
    rule.keywords.some(keyword => announcement.includes(keyword))
  );
  return match ? match.value : "未知联盟";
};
```

### 功能说明

盐场匹配详情xlsx导出是**全新功能**：

- **XLSX库**: 使用 SheetJS 生成Excel文件
- **数据列**: 排名/ID/区服/俱乐部名/战力/红淬/前三红淬/积分/联盟/公告
- **联盟检测**: 通过公告中的关键词自动识别联盟归属（曦盟/大联盟/正义联盟/龙盟）
- **汇总行**: 统计各联盟的俱乐部数量
- **排序**: 按红淬数降序排列

---

## 9. 月赛系统（新增类型）

**行号范围**: ~10370-10386
**修改类型**: [新增] 5种月赛类型

### 战斗类型映射

```javascript
// 盐场战斗类型扩展（在 ClubWarHistory 的 typeLabel 函数中）
const typeLabel = (type) => {
  switch (type) {
    case 6:  return "夺旗赛";
    case 15: return "灰岩岛";
    case 16: return "进阶周赛";
    case 17: return "进阶月赛";    // 新增
    case 18: return "青铜周赛";
    case 19: return "青铜月赛";    // 新增
    case 20: return "秘蓝周赛";
    case 21: return "秘蓝月赛";    // 新增
    case 22: return "月宫周赛";
    case 23: return "月宫月赛";    // 新增
    case 24: return "天宫周赛";
    case 25: return "天宫月赛";    // 新增
    default: return "伟大航路";
  }
};
```

### 功能说明

月赛系统新增了5种月赛类型（type 17/19/21/23/25），对应进阶/青铜/秘蓝/月宫/天宫的月赛。配套API `legionwar_getgoldmonthwarrank`（行~44679）用于获取金月赛排名数据。

---

## 附录: 通用工具函数映射速查

| minified | 源码名 | 说明 |
|----------|--------|------|
| `Y` | `ref` | Vue ref() |
| `O` | `computed` | Vue computed() |
| `ft` | `reactive` | Vue reactive() |
| `It` | `useMessage` | Naive UI 消息 |
| `_t` | `useTokenStore` | Pinia Token Store |
| `zr` | `useDialog` | Naive UI 对话框 |
| `zu` | `useLegionWarStore` | Pinia 盐场 Store |
| `xt` | `onMounted` | Vue 生命周期 |
| `jA` | `onUnmounted` | Vue 生命周期 |
| `wt` | `watch` | Vue watch |
| `EA` | `nextTick` | Vue nextTick |
| `gA` | `html2canvas` | 截图库 |
| `yA` | `downloadImage` | 下载图片 |
| `g` | `withCtx` | Vue 编译辅助 |
| `d` | `createVNode/h` | Vue 渲染函数 |
| `it` | `h` | Vue 渲染函数 |
| `Ft` | `_defineComponent` | SFC组件定义+scopeId |
| `Jr` | `getCurrentBattlefieldId` | 获取当前战场ID |
| `hl` | `formatDateTime` | 日期时间格式化 |
| `ls` | `HeroFillInfo` | 处理鱼灵/鱼珠信息 |
| `Po` | `getLineupType` | 获取阵容类型 |
| `ei` | `LINEUP_RULES` | 阵容规则配置 |
| `Jt` | `legacycolor` | 传承颜色配置 |
| `jt` | `HERO_DICT` | 英雄字典 |

---

## 近期修复与变更（2026-06-06）

### daily tab组件调整（对齐APK528）
- APK528顺序：TeamFormation → DailyTaskStatus → TowerStatus → WeirdTowerStatus → BottleHelperCard → HangUpStatusCard
- 修复前04-dev顺序：TeamFormation → HangUpStatusCard → TowerStatus → DailyTaskStatus → BottleHelperCard → SignInCard
- 修复后：对齐APK528顺序，新增WeirdTowerStatus，移除SignInCard

### club tab组件调整（对齐APK528）
- APK528：仅ClubInfo + ClubCarKing
- 修复前04-dev：ClubInfo + FightPvp + ClubCarKing + CarScoreInfo + ClubWeirdTowerInfo
- 修复后：对齐APK528，仅保留ClubInfo + ClubCarKing

### 子Tab类型调整（对齐APK528）
- APK528使用segment类型
- 修复前04-dev使用card类型
- 修复后：改为rounded类型（Arco Design中最接近segment的样式）
- 影响范围：盐场、蟠桃园、排行榜三个子Tab

### 新增WeirdTowerStatus组件导入
- 从@/components/Tower/WeirdTowerStatus.vue导入
- 在daily tab中显示，v-show="activeSection === 'daily'"

### 移除SignInCard组件
- 原在daily tab中显示
- APK528中不存在此组件

### 移除CarScoreInfo和ClubWeirdTowerInfo
- 原在club tab中以:inline="true"方式显示
- APK528中这两个组件不在club tab中