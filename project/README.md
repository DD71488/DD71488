# XYZW Web Helper - 移植项目

> 目标：基于开源项目 `w1249178256/xyzw_web_helper`，将 APK528 版本的全量变更（新增+修改+删除+重构）移植到 Web 版，切换到 Arco Design，实现功能完整对齐，部署到 Cloudflare Pages。

## 项目背景

| 版本 | 说明 | 地址 |
|------|------|------|
| A. 开源项目 | 基线源码（Vue 3 + Vite + Pinia） | https://github.com/w1249178256/xyzw_web_helper |
| B. 原生部署版 | 从 A 构建部署，无自定义修改 | https://xyzw-web-helper-2fu.pages.dev/ |
| C. 目标开发版 | APK528 提取的构建产物，包含大量自定义功能 | https://xyzw-web-helper-ena.pages.dev/ |

APK528 = C 的 Capacitor 打包版本，与 ena.pages.dev / xiaohuaxyzw.top 字节级一致。

---

## 目录结构

```
/workspace/xyzw-project/
│
├── 00-baseline/              基线（只读，不修改）
│   ├── src/                  开源项目完整源码
│   │   ├── api/              API 接口
│   │   ├── assets/styles/    全局样式 (global.scss, variables.scss)
│   │   ├── components/       42 个组件
│   │   │   ├── Club/         俱乐部相关 (15个)
│   │   │   ├── Common/       通用组件 (3个)
│   │   │   ├── Daily/        日常任务 (2个)
│   │   │   ├── Setting/      设置 (1个)
│   │   │   ├── Team/         团队 (1个)
│   │   │   ├── Test/         测试 (2个)
│   │   │   ├── Tower/        爬塔 (3个)
│   │   │   ├── cards/        功能卡片 (20个)
│   │   │   └── *.vue         根级组件 (6个)
│   │   ├── composables/      组合式函数 (useTheme.js)
│   │   ├── hooks/            自定义 Hooks (useIndexedDB.ts)
│   │   ├── layout/           布局 (DefaultLayout.vue)
│   │   ├── locales/          国际化 (en.json, zh-CN.json)
│   │   ├── router/           路由配置
│   │   ├── stores/           Pinia 状态管理
│   │   │   ├── events/       事件系统 (11个文件)
│   │   │   └── *.js/ts       8 个 store 文件
│   │   ├── utils/            工具函数
│   │   │   ├── batch/        批量任务工具集 (15个文件)
│   │   │   └── *.js/ts       25 个独立工具文件
│   │   ├── views/            页面视图
│   │   │   ├── TokenImport/  Token导入 (6个文件)
│   │   │   └── *.vue         12 个页面
│   │   └── xyzw/             游戏协议定义
│   ├── public/               静态资源
│   ├── package.json          依赖（同时含 naive-ui 和 @arco-design/web-vue）
│   ├── vite.config.js        Vite 构建配置
│   ├── uno.config.ts         UnoCSS 配置
│   └── worker.js             Cloudflare Pages 代理
│
├── 01-reference/             APK528 参考材料
│   ├── apk-raw/              APK 原始文件（未格式化，83个文件）
│   │   ├── *.js              58 个 JS 文件
│   │   ├── *.css             24 个 CSS 文件
│   │   └── index.html        入口 HTML
│   ├── formatted-js/         prettier 格式化后的 JS（58个，与 apk-raw 有 0.8%~2.5% 真实差异）
│   ├── css/                  CSS 文件副本（24个，与 apk-raw 一致）
│   ├── baseline-verification.md  formatted-js 基准校验报告
│   ├── mappings/             变量名映射表（minified → 可读名）
│   │   ├── BatchDailyTasks_mapping.md
│   │   ├── GameFeatures_mapping.md
│   │   ├── Profile_mapping.md
│   │   ├── imageExport_mapping.md
│   │   ├── MessageTester_mapping.md
│   │   ├── wsAgent_mapping.md
│   │   ├── GameRoles_mapping.md
│   │   ├── Changelog_mapping.md
│   │   ├── Login_mapping.md
│   │   ├── Dashboard_mapping.md
│   │   ├── Settings_mapping.md
│   │   ├── DefaultLayout_mapping.md
│   │   ├── auth_mapping.md
│   │   ├── localTokenManager_mapping.md
│   │   ├── gameCommands_mapping.md
│   │   ├── LegionWar_mapping.md
│   │   └── DailyTasks_mapping.md
│   └── annotations/          增量标记文档
│       ├── overview.md                    统计总览
│       ├── BatchDailyTasks_annotations.md 19新增/26修改/43共享/0删除
│       ├── GameFeatures_annotations.md    78新增/12修改/32共享/7删除
│       ├── Profile_annotations.md         65新增/6修改/11共享/4删除
│       ├── dailyTaskRunner_annotations.md 50新增/10修改/1共享/0删除
│       └── imageExport_annotations.md     2新增/3修改/18共享/0删除
│
├── 02-translations/          翻译文档（minified → 可读代码）
│   ├── BatchDailyTasks-new-functions.md   12 个新增函数翻译
│   ├── DailyTaskRunner-changes.md         45 个章节翻译
│   ├── GameFeatures-changes.md            9 个章节翻译
│   └── Profile-changes.md                 4 大章节翻译
│
├── 03-css-analysis/          CSS 差异分析
│   └── css-analysis.md       完整分析报告
│
└── 04-dev/                   开发目录（所有修改在此进行）
    └── (与 00-baseline 结构相同 + APK独有图片资源)
```

---

## 关键技术决策

### 1. UI 框架：Naive UI → Arco Design 渐进式迁移

开源项目**已同时安装** `naive-ui ^2.43.1` 和 `@arco-design/web-vue ^2.57.0`。

当前状态：
- Naive UI：56 个文件，1,320 处 `<n-xxx>` 标签
- Arco Design：21 个文件，80 处 `<a-xxx>` 标签

APK528 采用 **Naive UI JS + Arco Design CSS 混合架构**：JS 层使用 Naive UI 组件，CSS 层加载完整 Arco Design 样式库。本项目统一到纯 Arco Design。迁移策略：逐组件替换，每替换一个组件后 `npm run build` 验证。

⚠️ 当前04-dev/main.js缺少Arco CSS导入（阻断性bug），需添加 `import '@arco-design/web-vue/dist/arco.css'`

### 2. 基线版本：GitHub 最新 main 分支

使用 `00-baseline/` 作为基线，后续可 merge 开源项目更新。

### 3. 部署方式：Cloudflare Pages

构建命令：`npm run build`，输出目录：`dist/`，代理：`worker.js`。

---

## 增量统计

APK528 相对于开源项目的差异：

| 类型 | 数量 | 说明 |
|------|------|------|
| [新增] | 198 | 目标独有，需从零实现 |
| [修改] | 51 | 开源有但逻辑不同，需改造 |
| [共享] | 99 | 逻辑一致，直接复用 |
| [删除] | 11 | 开源有但目标已移除 |

---

## 如何使用各参考材料

### mappings/ — 变量名映射表

APK528 的 JS 是 minified 的，变量名被替换为单字母。mappings 提供了对应关系：

```
minified名 → 源码名（作用域）
k → defineComponent（全局）
c → createElementBlock（函数内）
```

使用方法：读 formatted-js 中的代码时，对照 mappings 还原变量名。

### annotations/ — 增量标记

每个函数标记了 [新增]/[修改]/[共享]/[删除]，包含行号范围。

使用方法：确定某个函数需要移植时，先查 annotations 确认类型，再决定是新建还是改造。

### translations/ — 翻译文档

将 minified 代码翻译为可读的 JavaScript，包含中文注释。

使用方法：移植某个函数时，先读 translations 中的翻译版本理解逻辑，再在 04-dev 中实现。

### css-analysis/ — CSS 差异分析

APK528 有 24 个独立 CSS 文件，开源项目没有。分析报告包含每个 CSS 文件的选择器、变量、深色主题、响应式断点。

使用方法：移植组件样式时，参考对应 CSS 文件中的选择器和变量。

### apk-raw/ — APK 原始文件

从 APK 直接提取的未格式化文件，作为最终验证基准。

使用方法：当 formatted-js 和 apk-raw 内容有疑问时，以 apk-raw 为准。

---

## 开发流程

### 环境准备

```bash
cd 04-dev
npm install
npm run dev      # 启动开发服务器 (端口3000)
npm run build    # 构建生产版本
npm run lint     # 代码检查
```

### 移植一个组件的标准流程

1. 查 `annotations/` 确认该组件的增量类型和行号
2. 查 `translations/` 读取翻译后的可读代码
3. 查 `mappings/` 还原 minified 变量名
4. 在 `04-dev/src/` 中实现（同时完成 template + script + style）
5. `npm run build` 验证构建通过
6. 对比 APK528 的 CSS 文件确认样式一致

### 移植优先级

| 优先级 | 模块 | 工作量 | 说明 |
|--------|------|--------|------|
| P0 | 基础设施 | 低 | crossPlatform.js, wakeLock.js, answer.json |
| P0 | DailyTaskRunner | 高 | 核心执行器重构（拆分为11个build方法） |
| P1 | Profile + TokenManager | 中 | Token管理、多方式导入、导出 |
| P1 | BatchDailyTasks | 最高 | 1438净增中文字符串，14个tab |
| P2 | GameFeatures | 高 | Tab式布局，42个子组件 |
| P2 | Arco Design 迁移 | 高 | 56个文件1320处标签替换 |
| P3 | Login / DailyTasks / LegionWar | 低 | 文案修改、功能精简 |

---

## 已验证事项

| 事项 | 结果 | 说明 |
|------|------|------|
| 基线构建 | ✅ 通过 | `npm run build` 成功 |
| APK JS 内容一致性 | ⚠️ 0.8%~2.5% 偏差 | formatted-js 与 apk-raw 存在 0.8%~2.5% 真实代码差异（非格式），详见 baseline-verification.md |
| APK CSS 内容一致性 | ✅ 一致 | 未被 prettier 修改 |
| formatted-js 基准校验 | ✅ 完成 | 详见 `01-reference/baseline-verification.md` |
| mappings 准确性 | ✅ 验证通过 | 抽样13个映射条目均准确 |
| annotations [共享] 标记 | ✅ 验证通过 | normalizeCars/gradeLabel/shouldSendCar 逻辑确实一致 |
| annotations [删除] 标记 | ✅ 验证通过 | FightPvp/passwordRules 等在 APK528 中确实不存在 |
| translations 准确性 | ✅ 验证通过 | 4个模块的功能描述与代码一致 |
| APK 独有图片资源 | ✅ 已复制 | 14个图片已复制到 04-dev/public/ |

---

## 已修正的问题

| 问题 | 修正 |
|------|------|
| imageExport_annotations 标注错位 | 拆分为 dailyTaskRunner_annotations + imageExport_annotations |
| 开源项目代码不完整 | 从 GitHub 重新 clone 完整版本 |
| translations/ 翻译文件缺失 | 重新翻译4个核心模块 |
| CSS 差异未分析 | 新增 03-css-analysis/ |
| APK 原始文件未保存 | 新增 01-reference/apk-raw/ |
| APK 独有图片缺失 | 复制14个图片到 04-dev/public/ |

---

## 注意事项

1. **UI/模板与逻辑必须同步移植**，不要分阶段
2. **每完成一个组件就 `npm run build` 验证**，不要积累到最后
3. **Capacitor 代码必须替换为 Web API**（isCapacitor→false, CrossPlatformStorage→localStorage, downloadInApk→Blob下载）
4. **eval 安全风险**：BatchDailyTasks.vue 中有 `eval(taskName)`，必须替换为函数映射表
5. **21对重复组件**需统一目录结构
6. **APK528 采用 Naive UI JS + Arco Design CSS 混合架构**，本项目统一到纯 Arco Design，需渐进式迁移
