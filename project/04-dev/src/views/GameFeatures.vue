<template>
  <div class="game-features-page">
    <div class="page-header">
      <div class="container">
        <div class="header-content">
          <div class="header-left">
            <h1 class="page-title">游戏功能</h1>
            <p class="page-subtitle">
              {{ tokenStore.selectedToken?.name || "未选择Token" }}
            </p>
          </div>

          <div class="header-actions">
            <div class="connection-status" :class="connectionStatus">
              <CloudDone />
              <span>{{ connectionStatusText }}</span>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div v-if="showFeedback" class="feedback-section" />

    <div class="features-grid-section">
      <div class="container">
        <div
          class="game-status-container"
          :class="{
            'full-grid': activeSection === 'fightPvp',
            'full-page-mode':
              activeSection === 'saltFieldGroup' ||
              activeSection === 'peachGroup' ||
              activeSection === 'rankGroup',
            'club-mode': activeSection === 'club',
          }"
        >
          <IdentityCard embedded />

          <a-tabs
            class="section-tabs"
            v-model:active-key="activeSection"
            type="line"
            size="small"
          >
            <a-tab-pane key="daily" title="日常" />
            <a-tab-pane key="club" title="俱乐部" />
            <a-tab-pane key="activity" title="活动" />
            <a-tab-pane v-if="showToolsTab" key="tools" title="工具" />
            <a-tab-pane key="saltFieldGroup" title="盐场" />
            <a-tab-pane key="peachGroup" title="蟠桃园" />
            <a-tab-pane key="rankGroup" title="排行榜" />
            <a-tab-pane key="fightPvp" title="切磋" />
          </a-tabs>

          <TeamFormation v-show="activeSection === 'daily'" />
          <DailyTaskStatus v-show="activeSection === 'daily'" />
          <TowerStatus v-show="activeSection === 'daily' && canChallengeBoss" />
          <WeirdTowerStatus v-show="activeSection === 'daily'" />
          <BottleHelperCard v-show="activeSection === 'daily'" />
          <HangUpStatusCard v-show="activeSection === 'daily'" />

          <Unlimitedlineup v-show="activeSection === 'tools'" />
          <BoxHelperCard v-show="activeSection === 'tools'" />
          <FishHelperCard v-show="activeSection === 'tools'" />
          <RecruitHelperCard v-show="activeSection === 'tools'" />
          <StarUpgradeCard v-if="activeSection === 'tools'" />
          <FightHelperCard v-if="activeSection === 'tools'" />
          <DreamHelperCard v-if="activeSection === 'tools'" />
          <HeroUpgradeCard v-if="activeSection === 'tools'" />
          <RefineHelperCard v-if="activeSection === 'tools'" />
          <ConsumptionProgressCard v-if="activeSection === 'tools'" />
          <BossTower v-if="activeSection === 'tools'" />

          <ClubInfo v-if="activeSection === 'club'" />
          <ClubCarKing v-if="activeSection === 'club'" />

          <MonthlyTasksCard v-show="activeSection === 'activity'" />
          <StudyChallengeCard v-show="activeSection === 'activity'" />
          <SkinChallengeCard v-show="activeSection === 'activity'" />

          <div class="salt-field-group" v-if="activeSection === 'saltFieldGroup'">
            <div class="sub-nav">
              <a-tabs
                v-model:active-key="saltFieldTab"
                type="rounded"
                size="small"
              >
                <a-tab-pane key="warrank" title="盐场" />
                <a-tab-pane key="weekBattle" title="本周盐场战绩" />
                <a-tab-pane key="monthBattle" title="本月盐场战绩" />
                <a-tab-pane key="legionWarMap" title="盐场地图" />
                <a-tab-pane key="legionWarStatistics" title="盐场战况" />
              </a-tabs>
            </div>

            <div class="warrank-full-container" v-if="saltFieldTab === 'weekBattle'">
              <ClubBattleRecords />
            </div>

            <div class="warrank-full-container" v-if="saltFieldTab === 'warrank'">
              <ClubWarrank />
            </div>

            <div class="warrank-full-container" v-if="saltFieldTab === 'monthBattle'">
              <ClubMonthBattleRecords />
            </div>

            <div class="warrank-full-container" v-if="saltFieldTab === 'legionWarMap'">
              <LegionWarMap />
            </div>

            <div class="warrank-full-container" v-if="saltFieldTab === 'legionWarStatistics'">
              <LegionWarStatistics />
            </div>
          </div>

          <div class="peach-group" v-if="activeSection === 'peachGroup'">
            <div class="sub-nav">
              <a-tabs
                v-model:active-key="peachTab"
                type="rounded"
                size="small"
              >
                <a-tab-pane key="peach" title="蟠桃园信息" />
                <a-tab-pane key="peachBattle" title="蟠桃园战绩" />
              </a-tabs>
            </div>

            <div class="warrank-full-container" v-if="peachTab === 'peachBattle'">
              <PeachBattleRecords />
            </div>

            <div class="warrank-full-container" v-if="peachTab === 'peach'">
              <PeachInfo />
            </div>
          </div>

          <div class="rank-group" v-if="activeSection === 'rankGroup'">
            <div class="sub-nav">
              <a-tabs
                v-model:active-key="rankTab"
                type="rounded"
                size="small"
              >
                <a-tab-pane key="serverrank" title="区服榜" />
                <a-tab-pane key="toprank" title="巅峰榜" />
                <a-tab-pane key="topclubrank" title="俱乐部榜" />
                <a-tab-pane key="goldclubrank" title="黄金积分榜" />
                <a-tab-pane key="greatRouteRank" title="伟大航路积分榜" />
              </a-tabs>
            </div>

            <div class="warrank-full-container" v-if="rankTab === 'serverrank'">
              <ServerRankList />
            </div>

            <div class="warrank-full-container" v-if="rankTab === 'toprank'">
              <TopRankList />
            </div>

            <div class="warrank-full-container" v-if="rankTab === 'topclubrank'">
              <TopClubList />
            </div>

            <div class="warrank-full-container" v-if="rankTab === 'goldclubrank'">
              <GoldClubList />
            </div>

            <div class="warrank-full-container" v-if="rankTab === 'greatRouteRank'">
              <GreatRouteRankList />
            </div>
          </div>

          <FightPvp v-if="activeSection === 'fightPvp'" />
        </div>
      </div>
    </div>

    <div class="ws-status-section">
      <div class="container">
        <div class="ws-status-card">
          <div class="status-header">
            <h3>连接状态</h3>
            <a-button text @click="toggleConnection">
              {{ isConnected ? "断开连接" : "重新连接" }}
            </a-button>
          </div>
          <div class="status-content">
            <div class="status-item">
              <span>WebSocket状态:</span>
              <span :class="connectionClass">{{ connectionStatusText }}</span>
            </div>
            <div v-if="tokenStore.selectedToken" class="status-item">
              <span>当前Token:</span>
              <span>{{ tokenStore.selectedToken.name }}</span>
            </div>
            <div v-if="lastActivity" class="status-item">
              <span>最后活动:</span>
              <span>{{ lastActivity }}</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, onUnmounted, watch } from "vue";
import { useRouter } from "vue-router";
import { useArcoMessage } from "@/composables/useArcoMessage";
import { useTokenStore } from "@/stores/tokenStore";
import { CloudDone } from "@vicons/ionicons5";

import IdentityCard from "@/components/Common/IdentityCard.vue";
import TeamFormation from "@/components/Team/TeamFormation.vue";
import DailyTaskStatus from "@/components/Daily/DailyTaskStatus.vue";
import TowerStatus from "@/components/Tower/TowerStatus.vue";
import WeirdTowerStatus from "@/components/Tower/WeirdTowerStatus.vue";
import BottleHelperCard from "@/components/cards/BottleHelperCard.vue";
import HangUpStatusCard from "@/components/cards/HangUpStatusCard.vue";
import ClubInfo from "@/components/Club/ClubInfo.vue";
import ClubCarKing from "@/components/ClubCarKing.vue";
import FightPvp from "@/components/cards/FightPvp.vue";
import MonthlyTasksCard from "@/components/cards/MonthlyTasksCard.vue";
import StudyChallengeCard from "@/components/cards/StudyChallengeCard.vue";
import SkinChallengeCard from "@/components/cards/SkinChallengeCard.vue";
import ClubWarrank from "@/components/Club/ClubWarrank.vue";
import ClubMonthBattleRecords from "@/components/Club/ClubMonthBattleRecords.vue";
import ClubBattleRecords from "@/components/Club/ClubBattleRecords.vue";
import PeachBattleRecords from "@/components/Club/PeachBattleRecords.vue";
import PeachInfo from "@/components/Club/PeachInfo.vue";
import LegionWarMap from "@/components/Club/LegionWarMap.vue";
import LegionWarStatistics from "@/components/Club/LegionWarStatistics.vue";
import ServerRankList from "@/components/cards/ServerRankListPageCard.vue";
import TopRankList from "@/components/cards/TopRankListPageCard.vue";
import TopClubList from "@/components/cards/TopClubListPageCard.vue";
import GoldClubList from "@/components/cards/GoldRankListPageCard.vue";
import GreatRouteRankList from "@/components/Club/GreatRouteRankListPageCard.vue";
import Unlimitedlineup from "@/components/cards/Unlimitedlineup.vue";
import BoxHelperCard from "@/components/cards/BoxHelperCard.vue";
import FishHelperCard from "@/components/cards/FishHelperCard.vue";
import RecruitHelperCard from "@/components/cards/RecruitHelperCard.vue";
import StarUpgradeCard from "@/components/cards/StarUpgradeCard.vue";
import FightHelperCard from "@/components/cards/FightHelperCard.vue";
import DreamHelperCard from "@/components/cards/DreamHelperCard.vue";
import HeroUpgradeCard from "@/components/cards/HeroUpgradeCard.vue";
import RefineHelperCard from "@/components/cards/RefineHelperCard.vue";
import ConsumptionProgressCard from "@/components/cards/ConsumptionProgressCard.vue";
import BossTower from "@/components/Tower/BossTower.vue";

const router = useRouter();
const message = useArcoMessage();
const tokenStore = useTokenStore();

const showFeedback = ref(true);
const lastActivity = ref(null);

const showToolsTab = ref(true);

const activeSection = ref("daily");
const saltFieldTab = ref("warrank");
const peachTab = ref("peach");
const rankTab = ref("serverrank");

const legionMatch = ref({ isRegistered: false });

const bottleHelperStatus = ref({
  isRunning: false,
  remainingTime: 0,
  stopTime: 0,
});

const hangUpStatus = ref({
  isActive: false,
  remainingTime: 0,
  elapsedTime: 0,
  lastTime: 0,
  hangUpTime: 0,
  isExtending: false,
  isClaiming: false,
});

const signInStatus = ref({ isSignedIn: false, clubName: "" });

const connectionStatus = computed(() => {
  if (!tokenStore.selectedToken) return "disconnected";
  const status = tokenStore.getWebSocketStatus(tokenStore.selectedToken.id);
  return status === "connected" ? "connected" : "disconnected";
});

const connectionStatusText = computed(() => {
  if (!tokenStore.selectedToken) return "未选择Token";
  const status = tokenStore.getWebSocketStatus(tokenStore.selectedToken.id);
  return status === "connected" ? "已连接" : "未连接";
});

const connectionClass = computed(() => {
  return connectionStatus.value === "connected"
    ? "status-connected"
    : "status-disconnected";
});

const isConnected = computed(() => {
  return connectionStatus.value === "connected";
});

const roleInfo = computed(() => {
  return tokenStore.gameData?.roleInfo || null;
});

const canChallengeBoss = computed(() => {
  const tower = roleInfo.value?.role?.tower;
  const towerId = tower?.id;
  if (towerId == null) return true;
  return !(Math.floor(towerId / 10) + 1 > 450);
});

const updateTimers = () => {
  if (!roleInfo.value) return;
  const role = roleInfo.value.role;

  if (role.bottleHelpers) {
    const now = Date.now() / 1000;
    bottleHelperStatus.value.stopTime = role.bottleHelpers.helperStopTime;
    bottleHelperStatus.value.isRunning = role.bottleHelpers.helperStopTime > now;
    bottleHelperStatus.value.remainingTime = Math.max(
      0,
      Math.floor(role.bottleHelpers.helperStopTime - now),
    );
  }

  if (role.hangUp) {
    const now = Date.now() / 1000;
    hangUpStatus.value.lastTime = role.hangUp.lastTime;
    hangUpStatus.value.hangUpTime = role.hangUp.hangUpTime;
    const elapsed = now - hangUpStatus.value.lastTime;
    if (elapsed <= hangUpStatus.value.hangUpTime) {
      hangUpStatus.value.remainingTime = Math.floor(
        hangUpStatus.value.hangUpTime - elapsed,
      );
      hangUpStatus.value.isActive = true;
    } else {
      hangUpStatus.value.remainingTime = 0;
      hangUpStatus.value.isActive = false;
    }
    hangUpStatus.value.elapsedTime = Math.floor(
      hangUpStatus.value.hangUpTime - hangUpStatus.value.remainingTime,
    );
  }

  if (role.statistics) {
    const today = new Date();
    today.setHours(0, 0, 0, 0);
    const dayStart = today.getTime() / 1000;
    legionMatch.value.isRegistered =
      Number(role.statistics["last:legion:match:sign:up:time"]) > dayStart;
  }

  if (role.statisticsTime) {
    const today = new Date();
    today.setHours(0, 0, 0, 0);
    const dayStart = today.getTime() / 1000;
    signInStatus.value.isSignedIn =
      role.statisticsTime["legion:sign:in"] > dayStart;
  }
};

let timerInterval = null;
const startTimer = () => {
  if (timerInterval) clearInterval(timerInterval);
  timerInterval = setInterval(() => {
    if (bottleHelperStatus.value.isRunning && bottleHelperStatus.value.remainingTime > 0) {
      bottleHelperStatus.value.remainingTime = Math.max(
        0,
        bottleHelperStatus.value.remainingTime - 1,
      );
      if (bottleHelperStatus.value.remainingTime <= 0) {
        bottleHelperStatus.value.isRunning = false;
      }
    }
    if (hangUpStatus.value.isActive && hangUpStatus.value.remainingTime > 0) {
      hangUpStatus.value.remainingTime = Math.max(
        0,
        hangUpStatus.value.remainingTime - 1,
      );
      hangUpStatus.value.elapsedTime = hangUpStatus.value.elapsedTime + 1;
      if (hangUpStatus.value.remainingTime <= 0) {
        hangUpStatus.value.isActive = false;
      }
    }
  }, 1000);
};

watch(
  roleInfo,
  (newValue) => {
    if (newValue) {
      updateTimers();
    }
  },
  { deep: true, immediate: true },
);

const hasInitialized = ref(false);
watch(
  () =>
    tokenStore.selectedToken
      ? tokenStore.getWebSocketStatus(tokenStore.selectedToken.id)
      : "disconnected",
  (status) => {
    if (status === "connected" && !hasInitialized.value && tokenStore.selectedToken) {
      hasInitialized.value = true;
      const tokenId = tokenStore.selectedToken.id;
      tokenStore.sendMessage(tokenId, "legion_getinfo");
    }
  },
);

const connectWebSocket = () => {
  if (!tokenStore.selectedToken) {
    message.warning("请先选择一个Token");
    router.push("/tokens");
    return;
  }

  try {
    const tokenId = tokenStore.selectedToken.id;
    const token = tokenStore.selectedToken.token;

    tokenStore.createWebSocketConnection(tokenId, token);
    message.info("正在建立 WebSocket 连接...");

    setTimeout(async () => {
      const status = tokenStore.getWebSocketStatus(tokenId);
      if (status === "connected") {
        message.success("WebSocket 连接成功");
        await initializeGameData();
      }
    }, 2000);
  } catch (error) {
    console.error("WebSocket连接失败:", error);
    message.error("WebSocket连接失败");
  }
};

const disconnectWebSocket = () => {
  if (tokenStore.selectedToken) {
    const tokenId = tokenStore.selectedToken.id;
    tokenStore.closeWebSocketConnection(tokenId);
    message.info("WebSocket连接已断开");
  }
};

const toggleConnection = () => {
  if (connectionStatus.value === "connected") {
    disconnectWebSocket();
  } else {
    connectWebSocket();
  }
};

const initializeGameData = async () => {
  if (!tokenStore.selectedToken) return;

  try {
    const tokenId = tokenStore.selectedToken.id;
    tokenStore.sendMessage(tokenId, "role_getroleinfo");
    tokenStore.sendMessage(tokenId, "tower_getinfo");
    tokenStore.sendMessage(tokenId, "evotower_getinfo");
    tokenStore.sendMessage(tokenId, "presetteam_getinfo");
    const res = await tokenStore.sendMessageWithPromise(
      tokenId,
      "fight_startlevel",
    );
    tokenStore.setBattleVersion(res?.battleData?.version);
  } catch (error) {
  }
};

onMounted(() => {
  updateTimers();
  startTimer();
  if (tokenStore.selectedToken) {
    const status = tokenStore.getWebSocketStatus(tokenStore.selectedToken.id);
    if (status !== "connected") {
      connectWebSocket();
    } else {
      initializeGameData();
      const tokenId = tokenStore.selectedToken.id;
      tokenStore.sendMessage(tokenId, "legion_getinfo");
      hasInitialized.value = true;
    }
  }
});

watch(
  () => {
    if (!tokenStore.selectedToken)
      return { status: "disconnected", lastError: null };
    const conn = tokenStore.wsConnections[tokenStore.selectedToken.id];
    return { status: conn?.status, lastError: conn?.lastError };
  },
  (cur) => {
    if (!cur) return;
    if (cur.status === "error" && cur.lastError) {
      const err = String(cur.lastError.error || "").toLowerCase();
      if (err.includes("token") && err.includes("expired")) {
        const importMethod = tokenStore.selectedToken?.importMethod;
        if (
          importMethod === "url" ||
          importMethod === "bin" ||
          importMethod === "wxQrcode"
        ) {
          message.warning("Token已过期，正在尝试自动刷新...");
          return;
        }
        message.error("当前 Token 已过期，请重新导入后再试");
        router.push("/tokens");
      }
    }
  },
  { deep: true },
);

onUnmounted(() => {
  if (timerInterval) {
    clearInterval(timerInterval);
  }
});
</script>

<style scoped lang="scss">
.game-features-page {
  min-height: 100dvh;
  background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
  padding-bottom: calc(var(--spacing-md) + env(safe-area-inset-bottom));
}

[arco-theme="dark"] .game-features-page {
  background: linear-gradient(135deg, #0f172a 0%, #1f2937 100%);
}

.page-header {
  background: var(--bg-primary);
  border-bottom: 1px solid var(--border-light);
  padding: var(--spacing-lg) 0;
}

.container {
  max-width: 1400px;
  margin: 0 auto;
  padding: 0 var(--spacing-lg);
}

.header-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.header-left {
  flex: 1;
}

.page-title {
  font-size: var(--font-size-2xl);
  font-weight: var(--font-weight-bold);
  color: var(--text-primary);
  margin: 0 0 var(--spacing-xs) 0;
}

.page-subtitle {
  color: var(--text-secondary);
  font-size: var(--font-size-md);
  margin: 0;
}

.connection-status {
  display: flex;
  align-items: center;
  gap: var(--spacing-xs);
  padding: var(--spacing-sm) var(--spacing-md);
  border-radius: var(--border-radius-medium);
  font-size: var(--font-size-sm);
  font-weight: var(--font-weight-medium);

  &.connected {
    background: rgba(24, 160, 88, 0.1);
    color: var(--success-color);
  }

  &.disconnected {
    background: rgba(208, 48, 80, 0.1);
    color: var(--error-color);
  }
}

.feedback-section {
  padding: var(--spacing-md) 0;
}

.features-grid-section {
  padding: var(--spacing-xl) 0;
}

.game-status-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: var(--spacing-lg);
  padding: var(--spacing-lg);

  @media (min-width: 1400px) {
    grid-template-columns: repeat(3, 1fr);
    max-width: 1400px;
    margin: 0 auto;
  }

  @media (max-width: 1200px) {
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  }

  @media (max-width: 900px) {
    grid-template-columns: 1fr;
    gap: var(--spacing-md);
  }

  @media (max-width: 768px) {
    grid-template-columns: minmax(0, 1fr);
    padding: var(--spacing-sm);
    gap: var(--spacing-md);
  }
}

.game-status-container.full-grid {
  grid-template-columns: repeat(1, 1fr);
}

.game-status-container.full-page-mode {
  max-width: 100% !important;
  grid-template-columns: 1fr;
  padding: var(--spacing-sm);

  @media (min-width: 1400px) {
    max-width: 100% !important;
  }
}

.game-status-container.club-mode {
  @media (min-width: 1400px) {
    grid-template-columns: repeat(2, 1fr);
    max-width: 100% !important;
  }
}

.section-tabs {
  grid-column: 1 / -1;
  margin: 0 var(--spacing-sm) var(--spacing-md) var(--spacing-sm);
  border-bottom: 1px solid var(--border-light);
  overflow: auto;
}

.section-tabs :deep(.arco-tabs-nav) {
  border-bottom: none;
}

.salt-field-group,
.peach-group,
.rank-group {
  grid-column: 1 / -1;
  width: 100%;
  display: flex;
  flex-direction: column;
}

.sub-nav {
  padding: 8px;
  background: var(--color-bg-2);
  display: flex;
  justify-content: center;
}

.warrank-full-container {
  grid-column: 1 / -1;
  width: 100%;
  height: calc(100vh - 200px);
  min-height: 600px;
  overflow: hidden;

  @media (max-width: 768px) {
    height: calc(100vh - 180px);
    min-height: 500px;
  }
}

.ws-status-section {
  padding: 0 0 var(--spacing-xl) 0;
}

.ws-status-card {
  background: var(--bg-primary);
  border-radius: var(--border-radius-large);
  padding: var(--spacing-lg);
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.status-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: var(--spacing-md);

  h3 {
    font-size: var(--font-size-lg);
    font-weight: var(--font-weight-semibold);
    color: var(--text-primary);
    margin: 0;
  }
}

.status-content {
  display: flex;
  flex-direction: column;
  gap: var(--spacing-sm);
}

.status-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: var(--spacing-sm) 0;
  border-bottom: 1px solid var(--border-light);

  &:last-child {
    border-bottom: none;
  }

  span:first-child {
    color: var(--text-secondary);
    font-size: var(--font-size-sm);
  }

  span:last-child {
    font-weight: var(--font-weight-medium);
    font-size: var(--font-size-sm);
  }
}

.status-connected {
  color: var(--success-color);
}

.status-disconnected {
  color: var(--error-color);
}

@media (max-width: 1024px) {
  .features-grid {
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  }
}

@media (max-width: 768px) {
  .container {
    padding: 0 var(--spacing-md);
  }

  .page-header {
    padding: var(--spacing-md) 0;
    margin-bottom: var(--spacing-md);

    .header-content {
      flex-direction: column;
      gap: var(--spacing-sm);
      text-align: center;
    }

    .page-title {
      font-size: var(--font-size-xl);
    }
  }

  .header-content {
    flex-direction: column;
    gap: var(--spacing-md);
    text-align: center;
  }

  .features-grid-section {
    padding: var(--spacing-md) 0;
  }

  .ws-status-section {
    padding: 0 0 var(--spacing-lg) 0;
  }

  .ws-status-card {
    padding: var(--spacing-md);
  }
}
</style>