# Home 首页翻译

> 源文件: `Home-BTAjlfWM.js` (608行)
> 翻译时间: 2026-06-03
> 翻译方法: minified变量名 → 可读名 + 中文注释

---

## 1. Home 首页组件

**组件名**: `Home`
**行号范围**: 1-608
**功能描述**: 系统首页/落地页，包含导航栏、Hero区、功能卡片、核心功能介绍、数据统计、页脚

### 1.1 模板静态结构定义

```javascript
// 行 29-61 — CSS类名常量定义
const T = { class: "home-page" },                // 首页容器
  D = { class: "navbar glass" },                 // 导航栏（毛玻璃）
  H = { class: "container" },                    // 内容容器
  I = { class: "nav-content" },                  // 导航内容
  K = { class: "mobile-menu-button" },           // 移动端菜单按钮
  P = { class: "nav-actions" },                  // 导航操作区
  j = { class: "drawer-menu" },                  // 抽屉菜单
  E = { class: "drawer-actions" },               // 抽屉操作区
  L = { class: "main-content" },                 // 主内容区
  O = { class: "hero-section" },                 // Hero区
  U = { class: "container" },                    // 内容容器
  q = { class: "hero-content" },                 // Hero内容
  G = { class: "hero-text" },                    // Hero文字
  J = { class: "hero-actions" },                 // Hero操作按钮
  Q = { class: "hero-visual" },                  // Hero视觉区
  tt = { class: "feature-cards" },               // 功能卡片
  st = { class: "card-icon" },                   // 卡片图标
  et = { class: "card-content" },                // 卡片内容
  ot = { class: "container" },                   // 内容容器
  nt = { class: "features-grid" },               // 功能网格
  it = { class: "feature-icon" },                // 功能图标
  lt = { class: "feature-title" },               // 功能标题
  rt = { class: "feature-description" },         // 功能描述
  at = { class: "stats-section" },               // 统计区
  dt = { class: "container" },                   // 内容容器
  ut = { class: "stats-grid" },                  // 统计网格
  ft = { class: "stat-number" },                 // 统计数字
  pt = { class: "stat-label" },                  // 统计标签
  mt = { class: "footer" },                      // 页脚
  vt = { class: "container" },                   // 内容容器
  ct = { class: "footer-content" },              // 页脚内容
  _t = { class: "footer-links" };                // 页脚链接
```

### 1.2 setup — 核心状态与数据

```javascript
// 行 62-124
setup(props) {
  const router = useRouter(),                     // R() — 路由实例
    authStore = useAuth(),                        // V() — 认证Store
    featuresSectionRef = ref(null),               // _(null) — 功能区DOM引用
    mobileMenuOpen = ref(false),                  // _(!1) — 移动端菜单开关

    // Hero区功能卡片数据（3个）
    heroFeatures = ref([                          // _([...])
      { id: 1, icon: markRaw(PersonCircle), title: "角色管理", description: "统一管理游戏角色" },
      { id: 2, icon: markRaw(Cube), title: "任务系统", description: "自动化日常任务" },
      { id: 3, icon: markRaw(Ribbon), title: "数据统计", description: "全面的数据分析" },
    ]),

    // 核心功能区数据（4个）
    coreFeatures = ref([                          // _([...])
      { id: 1, icon: markRaw(PersonCircle), title: "角色管理",
        description: "轻松管理多个游戏角色，统一查看角色信息、等级进度和装备状态" },
      { id: 2, icon: markRaw(Cube), title: "任务自动化",
        description: "智能日常任务系统，自动完成重复性任务，节省您的宝贵时间" },
      { id: 3, icon: markRaw(Ribbon), title: "数据分析",
        description: "详细的数据统计和分析报告，帮助您更好地了解游戏进度" },
      { id: 4, icon: markRaw(Settings), title: "个性化设置",
        description: "灵活的配置选项，根据您的需求定制最适合的管理方案" },
    ]),

    // 统计数据（4项）
    stats = ref([                                 // _([...])
      { id: 1, number: "1000+", label: "活跃用户" },
      { id: 2, number: "50K+", label: "管理角色" },
      { id: 3, number: "100K+", label: "完成任务" },
      { id: 4, number: "99.9%", label: "系统稳定性" },
    ]),

    // 滚动到功能区
    scrollToFeatures = () => {                    // Y = () => ...
      featuresSectionRef.value &&
        featuresSectionRef.value.scrollIntoView({ behavior: "smooth" });
    };
```

### 1.3 onMounted — 初始化认证

```javascript
// 行 126-128
onMounted(() => {                                 // B(() => ...)
  authStore.initAuth();                           // 初始化认证状态
});
```

### 1.4 渲染逻辑概览

```javascript
// 行 129-604 — render函数
// 页面结构：
//
// ── 导航栏 (nav.navbar.glass) ──
//   div.nav-brand > img.brand-logo + span.brand-text "XYZW 游戏管理系统"
//   div.mobile-menu-button > n-button（Menu图标，打开抽屉）
//   div.nav-actions
//     [已登录] n-button[type=primary] "进入控制台" → /admin/dashboard
//     [未登录] n-button[text] "登录" + n-button[type=primary] "注册"
//
// ── 移动端抽屉 (n-drawer[placement=left, width=260px]) ──
//   router-link "/" → "首页"
//   router-link "/admin/dashboard" → "控制台"
//   router-link "/admin/game-features" → "游戏功能"
//   router-link "/tokens" → "Token管理"
//   router-link "/changelog" → "更新日志"
//   div.drawer-actions
//     n-button[type=primary, block] "登录"
//     n-button[type=primary, block] "注册"
//
// ── 主内容区 (main.main-content) ──
//
//   section.hero-section
//     h1.hero-title "专业的游戏管理平台"
//     p.hero-subtitle "让游戏变得更简单，让管理变得更高效"
//     div.hero-actions
//       n-button[type=primary] "进入控制台"/"立即开始"（根据登录状态）
//       n-button[text] "了解更多" → scrollToFeatures()
//     div.hero-visual > div.feature-cards
//       遍历 heroFeatures 渲染3个功能卡片
//
//   section.features-section（ref=featuresSectionRef）
//     h2.section-title "核心功能"
//     p.section-subtitle "为您提供全方位的游戏管理解决方案"
//     div.features-grid
//       遍历 coreFeatures 渲染4个功能项
//
//   section.stats-section
//     div.stats-grid
//       遍历 stats 渲染4个统计项
//
// ── 页脚 (footer.footer) ──
//   div.footer-brand > img.footer-logo + span.footer-text "XYZW 游戏管理系统"
//   div.footer-links
//     router-link "/changelog" "更新日志"
//     a[href=#] "关于我们"
//     a[href=#] "隐私政策"
//     a[href=#] "服务条款"
//     a[href=#] "联系我们"
//   div.footer-bottom
//     p "© 2024 XYZW. All rights reserved."
```

### 功能说明

Home 是系统首页/落地页，采用经典SaaS落地页布局：

- **导航栏**: 毛玻璃效果，包含品牌Logo + 登录/注册按钮（已登录显示"进入控制台"）
- **移动端适配**: 汉堡菜单按钮 + 左侧抽屉菜单，包含5个导航项
- **Hero区**: 大标题"专业的游戏管理平台" + 副标题 + CTA按钮 + 3个功能预览卡片
- **核心功能区**: 4个功能介绍（角色管理/任务自动化/数据分析/个性化设置）
- **数据统计**: 4项展示数据（1000+活跃用户/50K+管理角色/100K+完成任务/99.9%稳定性）
- **页脚**: 品牌信息 + 5个链接 + 版权声明
- **平滑滚动**: "了解更多"按钮平滑滚动到功能区
- **登录状态适配**: CTA按钮根据登录状态显示"进入控制台"或"立即开始"
