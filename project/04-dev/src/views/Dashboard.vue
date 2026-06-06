<template>
  <div class="dashboard-page">
    <main class="dashboard-main">
      <div class="main-container">
        <!-- 欢迎区域 -->
        <section class="welcome-section">
          <div class="welcome-content">
            <div class="welcome-text">
              <h1>欢迎回来，{{ tokenStore.selectedToken?.name || "游戏玩家" }}！</h1>
              <p>今天是 {{ currentDate }}，继续您的游戏管理之旅吧</p>
            </div>
            <div class="welcome-actions">
              <a-button type="primary" size="large" @click="router.push('/admin/game-features')">
                进入游戏功能
              </a-button>
              <a-button size="large" @click="handleManageTokens">管理Token</a-button>
            </div>
          </div>
        </section>

        <!-- 快速操作 -->
        <section class="quick-actions-section">
          <h2 class="section-title">快速操作</h2>
          <div class="actions-grid">
            <div
              v-for="action in quickActions"
              :key="action.id"
              class="action-card"
              @click="handleQuickAction(action)"
            >
              <div class="action-icon">
                <component :is="action.icon" />
              </div>
              <div class="action-content">
                <h3>{{ action.title }}</h3>
                <p>{{ action.description }}</p>
              </div>
            </div>
          </div>
        </section>
      </div>
    </main>
  </div>
</template>

<script setup>
import { ref, computed, onMounted } from "vue";
import { useRouter } from "vue-router";
import { useArcoMessage } from "@/composables/useArcoMessage";
import { useTokenStore } from "@/stores/tokenStore";
import { IconPlus, IconCloud, IconApps, IconCheckCircle } from '@arco-design/web-vue/es/icon';

const Cube = IconApps;
const Add = IconPlus;
const CheckmarkCircle = IconCheckCircle;
const Cloud = IconCloud;

const router = useRouter();
const message = useArcoMessage();
const tokenStore = useTokenStore();

const currentDate = computed(() => {
  return new Date().toLocaleDateString("zh-CN", {
    year: "numeric",
    month: "long",
    day: "numeric",
    weekday: "long",
  });
});

const quickActions = ref([
  { id: 1, icon: Cube, title: "游戏功能", description: "访问所有游戏功能模块", action: "game-features" },
  { id: 2, icon: Add, title: "添加Token", description: "快速添加新的游戏Token", action: "add-token" },
  { id: 3, icon: CheckmarkCircle, title: "批量任务", description: "批量执行任务", action: "batch-daily-tasks" },
  { id: 4, icon: Cloud, title: "WebSocket测试", description: "测试WebSocket连接和游戏命令", action: "websocket-test" },
]);

const handleManageTokens = () => {
  try {
    router.push("/tokens");
  } catch (error) {
    console.error("导航失败:", error);
    message.error("导航到Token管理页面失败");
  }
};

const handleQuickAction = (action) => {
  switch (action.action) {
    case "game-features": router.push("/admin/game-features"); break;
    case "add-token": handleManageTokens(); break;
    case "batch-daily-tasks": router.push("/admin/batch-daily-tasks"); break;
    case "websocket-test": router.push("/websocket-test"); break;
  }
};

onMounted(async () => {
  if (!tokenStore.hasTokens) {
    router.push("/tokens");
    return;
  }
  tokenStore.initTokenStore();
});
</script>

<style scoped lang="scss">
.dashboard-page {
  min-height: 100vh;
  background: var(--bg-secondary);
}

.dashboard-main {
  padding: var(--spacing-xl);
}

.main-container {
  max-width: 1400px;
  margin: 0 auto;
}

.welcome-section {
  background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
  border-radius: var(--border-radius-xl);
  padding: var(--spacing-2xl);
  margin-bottom: var(--spacing-xl);
  color: white;
}

.welcome-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: var(--spacing-lg);
}

.welcome-text {
  h1 {
    font-size: var(--font-size-3xl);
    font-weight: var(--font-weight-bold);
    margin-bottom: var(--spacing-sm);
  }
  p {
    font-size: var(--font-size-lg);
    opacity: 0.9;
    margin: 0;
  }
}

.welcome-actions {
  display: flex;
  gap: var(--spacing-md);
}

.quick-actions-section {
  margin-bottom: var(--spacing-xl);
}

.section-title {
  font-size: var(--font-size-xl);
  font-weight: var(--font-weight-semibold);
  color: var(--text-primary);
  margin-bottom: var(--spacing-lg);
}

.actions-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: var(--spacing-lg);
}

.action-card {
  background: var(--bg-primary);
  border-radius: var(--border-radius-large);
  padding: var(--spacing-lg);
  box-shadow: var(--shadow-light);
  cursor: pointer;
  transition: all var(--transition-normal);
  border: 1px solid var(--border-light);

  &:hover {
    box-shadow: var(--shadow-medium);
    transform: translateY(-2px);
    border-color: var(--border-primary);
  }
}

.action-icon {
  width: 40px;
  height: 40px;
  color: var(--primary-color);
  margin-bottom: var(--spacing-md);

  :deep(svg) {
    width: 100%;
    height: 100%;
  }
}

.action-content {
  h3 {
    font-size: var(--font-size-md);
    font-weight: var(--font-weight-semibold);
    color: var(--text-primary);
    margin-bottom: var(--spacing-xs);
  }
  p {
    color: var(--text-secondary);
    font-size: var(--font-size-sm);
    margin: 0;
  }
}

@media (max-width: 1024px) {
  .welcome-content {
    flex-direction: column;
    text-align: center;
  }
}

@media (max-width: 768px) {
  .dashboard-main {
    padding: var(--spacing-md);
  }
  .welcome-section {
    padding: var(--spacing-xl);
  }
  .welcome-text h1 {
    font-size: var(--font-size-2xl);
  }
  .welcome-actions {
    flex-direction: column;
    width: 100%;
  }
  .actions-grid {
    grid-template-columns: 1fr;
  }
}
</style>
