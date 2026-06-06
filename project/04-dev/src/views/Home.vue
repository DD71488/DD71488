<template>
  <div class="home-page">
    <nav class="navbar glass">
      <div class="container">
        <div class="nav-content">
          <div class="nav-brand">
            <img src="/icons/xiaoyugan.png" alt="XYZW" class="brand-logo" />
            <span class="brand-text">XYZW 游戏管理系统</span>
          </div>

          <div class="mobile-menu-button">
            <a-button type="text" @click="isMobileMenuOpen = true">
              <template #icon>
                <IconMenu />
              </template>
            </a-button>
          </div>

          <div class="nav-actions">
            <template v-if="!authStore.isAuthenticated">
              <a-button
                type="text"
                size="large"
                @click="router.push('/login')"
              >
                登录
              </a-button>
              <a-button
                type="primary"
                size="large"
                @click="router.push('/register')"
              >
                注册
              </a-button>
            </template>
            <template v-else>
              <a-button
                type="primary"
                size="large"
                @click="router.push('/admin/dashboard')"
              >
                进入控制台
              </a-button>
            </template>
          </div>
        </div>
      </div>
    </nav>

    <a-drawer
      v-model:visible="isMobileMenuOpen"
      placement="left"
      :width="260"
    >
      <div class="drawer-menu">
        <router-link
          to="/"
          class="drawer-item"
          @click="isMobileMenuOpen = false"
        >
          <IconFire />
          <span>首页</span>
        </router-link>
        <router-link
          to="/admin/dashboard"
          class="drawer-item"
          @click="isMobileMenuOpen = false"
        >
          <IconSettings />
          <span>控制台</span>
        </router-link>
        <router-link
          to="/admin/game-features"
          class="drawer-item"
          @click="isMobileMenuOpen = false"
        >
          <IconApps />
          <span>游戏功能</span>
        </router-link>
        <router-link
          to="/tokens"
          class="drawer-item"
          @click="isMobileMenuOpen = false"
        >
          <IconUser />
          <span>Token管理</span>
        </router-link>
        <router-link
          to="/changelog"
          class="drawer-item"
          @click="isMobileMenuOpen = false"
        >
          <IconFire />
          <span>更新日志</span>
        </router-link>
        <div class="drawer-actions">
          <a-button
            type="primary"
            long
            @click="
              router.push('/login');
              isMobileMenuOpen = false;
            "
            >登录</a-button
          >
          <a-button
            type="primary"
            long
            @click="
              router.push('/register');
              isMobileMenuOpen = false;
            "
            >注册</a-button
          >
        </div>
      </div>
    </a-drawer>

    <main class="main-content">
      <section class="hero-section">
        <div class="container">
          <div class="hero-content">
            <div class="hero-text">
              <h1 class="hero-title">专业的游戏管理平台</h1>
              <p class="hero-subtitle">让游戏变得更简单，让管理变得更高效</p>
              <div class="hero-actions">
                <a-button
                  type="primary"
                  size="large"
                  class="hero-button"
                  @click="
                    router.push(
                      authStore.isAuthenticated
                        ? '/admin/dashboard'
                        : '/register',
                    )
                  "
                >
                  {{ authStore.isAuthenticated ? "进入控制台" : "立即开始" }}
                </a-button>
                <a-button
                  type="text"
                  size="large"
                  class="hero-button"
                  @click="scrollToFeatures"
                >
                  了解更多
                </a-button>
              </div>
            </div>

            <div class="hero-visual">
              <div class="feature-cards">
                <div
                  v-for="card in featureCards"
                  :key="card.id"
                  class="feature-card"
                >
                  <div class="card-icon">
                    <component :is="card.icon" />
                  </div>
                  <div class="card-content">
                    <h3>{{ card.title }}</h3>
                    <p>{{ card.description }}</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section ref="featuresSection" class="features-section">
        <div class="container">
          <div class="section-header">
            <h2 class="section-title">核心功能</h2>
            <p class="section-subtitle">为您提供全方位的游戏管理解决方案</p>
          </div>

          <div class="features-grid">
            <div
              v-for="feature in features"
              :key="feature.id"
              class="feature-item"
            >
              <div class="feature-icon">
                <component :is="feature.icon" />
              </div>
              <h3 class="feature-title">
                {{ feature.title }}
              </h3>
              <p class="feature-description">
                {{ feature.description }}
              </p>
            </div>
          </div>
        </div>
      </section>

      <section class="stats-section">
        <div class="container">
          <div class="stats-grid">
            <div v-for="stat in stats" :key="stat.id" class="stat-item">
              <div class="stat-number">
                {{ stat.number }}
              </div>
              <div class="stat-label">
                {{ stat.label }}
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>

    <footer class="footer">
      <div class="container">
        <div class="footer-content">
          <div class="footer-brand">
            <img src="/icons/xiaoyugan.png" alt="XYZW" class="footer-logo" />
            <span class="footer-text">XYZW 游戏管理系统</span>
          </div>
          <div class="footer-links">
            <router-link to="/changelog" class="footer-link">
              更新日志
            </router-link>
            <a href="#" class="footer-link">关于我们</a>
            <a href="#" class="footer-link">隐私政策</a>
            <a href="#" class="footer-link">服务条款</a>
            <a href="#" class="footer-link">联系我们</a>
          </div>
        </div>
        <div class="footer-bottom">
          <p>&copy; 2024 XYZW. All rights reserved.</p>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup>
import { ref, onMounted, markRaw } from "vue";
import { useRouter } from "vue-router";
import { useAuthStore } from "@/stores/auth";
import { IconUser, IconApps, IconFire, IconSettings, IconMenu } from "@arco-design/web-vue/es/icon";

const router = useRouter();
const authStore = useAuthStore();
const featuresSection = ref(null);
const isMobileMenuOpen = ref(false);

const featureCards = ref([
  {
    id: 1,
    icon: markRaw(IconUser),
    title: "角色管理",
    description: "统一管理游戏角色",
  },
  {
    id: 2,
    icon: markRaw(IconApps),
    title: "任务系统",
    description: "自动化日常任务",
  },
  {
    id: 3,
    icon: markRaw(IconFire),
    title: "数据统计",
    description: "全面的数据分析",
  },
]);

const features = ref([
  {
    id: 1,
    icon: markRaw(IconUser),
    title: "角色管理",
    description: "轻松管理多个游戏角色，统一查看角色信息、等级进度和装备状态",
  },
  {
    id: 2,
    icon: markRaw(IconApps),
    title: "任务自动化",
    description: "智能日常任务系统，自动完成重复性任务，节省您的宝贵时间",
  },
  {
    id: 3,
    icon: markRaw(IconFire),
    title: "数据分析",
    description: "详细的数据统计和分析报告，帮助您更好地了解游戏进度",
  },
  {
    id: 4,
    icon: markRaw(IconSettings),
    title: "个性化设置",
    description: "灵活的配置选项，根据您的需求定制最适合的管理方案",
  },
]);

const stats = ref([
  { id: 1, number: "1000+", label: "活跃用户" },
  { id: 2, number: "50K+", label: "管理角色" },
  { id: 3, number: "100K+", label: "完成任务" },
  { id: 4, number: "99.9%", label: "系统稳定性" },
]);

const scrollToFeatures = () => {
  if (featuresSection.value) {
    featuresSection.value.scrollIntoView({
      behavior: "smooth",
    });
  }
};

onMounted(() => {
  authStore.initAuth();
});
</script>

<style scoped lang="scss">
.home-page {
  min-height: 100dvh;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  position: relative;
  overflow-x: hidden;
  padding-bottom: calc(var(--spacing-md) + env(safe-area-inset-bottom));
}

.drawer-menu {
  display: flex;
  flex-direction: column;
  gap: var(--spacing-sm);
  padding: var(--spacing-md);
}

.drawer-item {
  display: flex;
  align-items: center;
  gap: var(--spacing-sm);
  padding: var(--spacing-sm) var(--spacing-md);
  border-radius: var(--border-radius-medium);
  color: var(--text-secondary);
  text-decoration: none;
}

.drawer-item.router-link-active {
  background: var(--primary-color-light);
  color: var(--primary-color);
}

.drawer-actions {
  display: flex;
  flex-direction: column;
  gap: var(--spacing-sm);
  margin-top: var(--spacing-md);
}

.navbar {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: var(--z-fixed);
  padding: var(--spacing-md) 0;
  backdrop-filter: blur(10px);
  border-bottom: 1px solid rgba(255, 255, 255, 0.1);
}

.nav-content {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.mobile-menu-button {
  display: none;
}

.nav-brand {
  display: flex;
  align-items: center;
  gap: var(--spacing-sm);
}

.brand-logo {
  width: 32px;
  height: 32px;
  border-radius: var(--border-radius-small);
}

.brand-text {
  font-size: var(--font-size-lg);
  font-weight: var(--font-weight-semibold);
  color: white;
}

.nav-actions {
  display: flex;
  gap: var(--spacing-sm);
}

.main-content {
  padding-top: 80px;
}

.hero-section {
  padding: var(--spacing-2xl) 0;
  min-height: 80vh;
  display: flex;
  align-items: center;
}

.hero-content {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: var(--spacing-2xl);
  align-items: center;
}

.hero-text {
  color: white;
}

.hero-title {
  font-size: 3.5rem;
  font-weight: var(--font-weight-bold);
  line-height: var(--line-height-tight);
  margin-bottom: var(--spacing-md);
  background: linear-gradient(
    45deg,
    var(--bg-primary),
    var(--primary-color-light)
  );
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.hero-subtitle {
  font-size: var(--font-size-xl);
  opacity: 0.9;
  margin-bottom: var(--spacing-xl);
  line-height: var(--line-height-relaxed);
}

.hero-actions {
  display: flex;
  gap: var(--spacing-md);
}

.hero-button {
  padding: var(--spacing-md) var(--spacing-xl);
  font-size: var(--font-size-lg);
}

.feature-cards {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: var(--spacing-md);
}

.feature-card {
  background: rgba(255, 255, 255, 0.1);
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  border-radius: var(--border-radius-large);
  padding: var(--spacing-lg);
  transition: all var(--transition-normal);

  &:hover {
    transform: translateY(-4px);
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
  }
}

.card-icon {
  width: 48px;
  height: 48px;
  color: #fff;
  margin-bottom: var(--spacing-md);

  :deep(svg) {
    width: 100%;
    height: 100%;
  }
}

.card-content h3 {
  color: white;
  font-size: var(--font-size-lg);
  font-weight: var(--font-weight-semibold);
  margin-bottom: var(--spacing-sm);
}

.card-content p {
  color: rgba(255, 255, 255, 0.8);
  font-size: var(--font-size-sm);
  line-height: var(--line-height-relaxed);
}

.features-section {
  padding: var(--spacing-2xl) 0;
  background: var(--bg-primary);
}

.section-header {
  text-align: center;
  margin-bottom: var(--spacing-2xl);
}

.section-title {
  font-size: var(--font-size-3xl);
  font-weight: var(--font-weight-bold);
  color: var(--text-primary);
  margin-bottom: var(--spacing-md);
}

.section-subtitle {
  font-size: var(--font-size-lg);
  color: var(--text-secondary);
  max-width: 600px;
  margin: 0 auto;
  line-height: var(--line-height-relaxed);
}

.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: var(--spacing-xl);
}

.feature-item {
  text-align: center;
  padding: var(--spacing-xl);
  border-radius: var(--border-radius-large);
  transition: all var(--transition-normal);

  &:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow-heavy);
  }
}

.feature-icon {
  width: 64px;
  height: 64px;
  margin: 0 auto var(--spacing-lg);
  color: var(--primary-color);

  :deep(svg) {
    width: 100%;
    height: 100%;
  }
}

.feature-title {
  font-size: var(--font-size-xl);
  font-weight: var(--font-weight-semibold);
  color: var(--text-primary);
  margin-bottom: var(--spacing-md);
}

.feature-description {
  color: var(--text-secondary);
  line-height: var(--line-height-relaxed);
}

.stats-section {
  padding: var(--spacing-2xl) 0;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}

[arco-theme="dark"] .stats-section {
  background: linear-gradient(135deg, #111827 0%, #1f2937 100%);
}

.stats-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: var(--spacing-xl);
}

.stat-item {
  text-align: center;
  color: white;
}

.stat-number {
  font-size: 3rem;
  font-weight: var(--font-weight-bold);
  margin-bottom: var(--spacing-sm);
}

.stat-label {
  font-size: var(--font-size-lg);
  opacity: 0.9;
}

.footer {
  background: rgba(0, 0, 0, 0.8);
  color: white;
  padding: var(--spacing-xl) 0;
}

.footer-content {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: var(--spacing-lg);
}

.footer-brand {
  display: flex;
  align-items: center;
  gap: var(--spacing-sm);
}

.footer-logo {
  width: 24px;
  height: 24px;
}

.footer-text {
  font-weight: var(--font-weight-medium);
}

.footer-links {
  display: flex;
  gap: var(--spacing-lg);
}

.footer-link {
  color: rgba(255, 255, 255, 0.8);
  transition: color var(--transition-fast);

  &:hover {
    color: white;
  }
}

.footer-bottom {
  text-align: center;
  padding-top: var(--spacing-lg);
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  color: rgba(255, 255, 255, 0.6);
}

@media (max-width: 768px) {
  .hero-content {
    grid-template-columns: 1fr;
    text-align: center;
  }

  .mobile-menu-button {
    display: inline-flex;
    margin-left: auto;
  }

  .nav-actions {
    display: none;
  }

  .hero-title {
    font-size: 2.5rem;
  }

  .hero-actions {
    justify-content: center;
  }

  .footer-content {
    flex-direction: column;
    gap: var(--spacing-lg);
  }

  .nav-actions {
    flex-direction: column;
    gap: var(--spacing-xs);
  }

  .footer-links {
    flex-direction: column;
    gap: var(--spacing-md);
  }
}
</style>