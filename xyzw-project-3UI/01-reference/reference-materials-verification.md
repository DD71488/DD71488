# 参考资料与APK528交叉对比分析报告（排除04-dev）

> **合并说明**：本文件由以下两个源文件合并生成
> - 主体：`参考资料与APK528交叉对比分析报告.md`（607行，综合分析报告）
> - 附录：`01-reference/baseline-verification.md`（118行，formatted-js 与 apk-raw 基准校验）
> - 合并日期：2026-06-09

> 生成时间：2026-06-05
> 分析范围：00-baseline、01-reference、02-translations、03-css-analysis
> 排除：04-dev 目录所有内容
> 交叉验证：DS重开、GLM重开1 (1)、KIMI重开 三位工作者成果

---

## 一、总体概况

| 目录 | 文件数 | 核心功能 | 与APK528一致性 |
|------|--------|---------|---------------|
| 00-baseline | 2+源码 | 项目基线定义 | 技术栈已过时（Naive UI→Arco Design） |
| 01-reference | 11 | 标注/映射/校验 | 核心数据源，存在统计偏差 |
| 02-translations | 7 | 代码翻译 | 覆盖率仅6%-21%，关键模块缺失 |
| 03-css-analysis | 1 | CSS差异分析 | 24个CSS文件全覆盖，差异识别准确 |

---

## 二、00-baseline 基线分析

### 2.1 技术栈差异（基线 vs APK528）

| 维度 | 基线（开源） | APK528实际 |
|------|-------------|-----------|
| UI框架 | Naive UI 2.38+ | **Naive UI + Arco Design混合**（Form/Card用Arco） |
| Vue版本 | 3.4+ | 3.5.22 |
| 主题系统 | Naive UI主题 + `variables.scss` | `[data-theme=dark]`属性选择器 + CSS变量 |
| Token导入 | 2种（手动/URL） | **6种**（手动/URL/BIN/微信二维码/单BIN/批量） |
| 日常任务 | 单一`run()`方法 | **11个`build*Tasks`方法**重构 |
| 存储方案 | localStorage | **IndexedDB** (`xyzw_token_db`) + `CrossPlatformStorage` |
| 下载方式 | Web download | **智能选择**（Web/EXE/APK三种模式） |

### 2.2 关键发现

- **package.json同时包含两个UI库**：`@arco-design/web-vue` (^2.57.0) 和 `naive-ui` (^2.43.1)，说明APK528处于UI迁移过渡期
- 基线README声称"双重导入方式"，APK528实际已扩展到6种，**文档与实现严重脱节**
- 基线部署在Cloudflare Pages，APK528增加了Capacitor/Tauri跨平台支持

---

## 三、01-reference 参考资料深度分析

### 3.1 baseline-verification.md 校验结论

- formatted-js与apk-raw存在 **0.8%~2.5%真实代码差异**（非格式差异）
- 翻译覆盖率仅约**6%**，大量`[新增]`和`[修改]`函数尚未翻译
- **使用建议**：阅读逻辑用formatted-js，精确比对用apk-raw

### 3.2 annotations 标注统计与纠错

#### 官方统计 vs 实际统计

| 类别 | overview.md统计 | 实际统计 | 差异 |
|------|----------------|---------|------|
| [新增] | 198 | **214** | +16 |
| [修改] | 51 | **57** | +6 |
| [共享] | 99 | 99 | 0 |
| [删除] | 11 | 11 | 0 |

#### 模块级统计偏差

| 模块 | overview [新增] | 实际 [新增] | 偏差原因 |
|------|----------------|------------|---------|
| BatchDailyTasks | 19 | **35** | 16项[修改]应为[新增] |
| GameFeatures | 65 | **78** | 2项[修改]应为[新增]，行号用"~"近似 |
| Profile | 64 | **65** | 1项差异 |
| DailyTaskRunner | 48 | **50** | 2项差异，且所有新增缺行号 |

#### 关键分类错误（共29处）

**BatchDailyTasks（16处）**：以下字段在基线中**不存在**，应为[新增]而非[修改]：
- `carStatus`, `legacyStatus`, `starChallengeTotalStars`, `isStarChallengeRunning`
- `arenaRank`, `isArenaFighting`, `towerData`, `towerInfo`
- `studyStatus`, `monthlyTask`, `availableGenieIds`
- `isTowerActivityValid`, `isGenieAvailable`, `isFloorCleared`
- `getMaxClearedFloor`, `weirdTowerData`

**GameFeatures（2处）**：`convertTowerCount`, `fetchWeirdTowerInfo` 应为[新增]

**Profile（2处）**：`saveProfile`, `deleteAccount` 应为[共享]而非[修改]

**DailyTaskRunner（关键问题）**：全部50个[新增]条目**缺少实际行号**，仅标注"新增"/"新增常量"/"新增方法"占位符

### 3.3 mappings 映射分析

| 模块 | 导入别名 | 模块级映射 | 响应式变量 | 方法映射 | 新函数 | 总计 |
|------|---------|-----------|-----------|---------|--------|------|
| BatchDailyTasks | 38 | 35 | 50 | 63 | 25 | **~211** |
| GameFeatures | 35 | 106 | ~252 | ~90 | ~47 | **~530** |
| Profile | 55 | 39 | 7 | 24 | 13 | **~138** |
| imageExport | 20 | 28 | - | 36 | 48 | **~132** |

**关键发现**：
- GameFeatures是最复杂模块，**~530个映射条目**，包含42个物品ID映射、26个API命令映射、12个战斗类型映射
- imageExport映射实际是**多模块聚合**（DailyTaskRunner 30+方法 + HeroList全部数据 + dreamConstants配置），远超annotations标注的"2新增+3修改"
- Profile的55个导入别名反映其深度内联TokenManager的设计

### 3.4 移植工时评估

| 优先级 | 任务数 | 预估工时 | 占比 |
|--------|--------|---------|------|
| P1-高 | 20 | 91h | 67% |
| P2-中 | 22 | 38.5h | 28% |
| P3-低 | 10 | 6.5h | 5% |
| **合计** | **52** | **136h** | 100% |

**按模块分布**：GameFeatures 50.5h（37%）> DailyTaskRunner 32h（24%）> Profile 31h（23%）> BatchDailyTasks 19h（14%）> imageExport 4h（3%）

---

## 四、02-translations 翻译文档分析

### 4.1 覆盖率评估

| 文件 | 翻译函数数 | 对应模块 | 关键内容 |
|------|-----------|---------|---------|
| DailyTaskRunner-changes.md | 45 | DailyTaskRunner | ERROR_CODE_MAP(23条)、CONTEXT_ERROR_MAP(6模块)、11个build*Tasks方法、sendCommand重构 |
| BatchDailyTasks-new-functions.md | 12 | BatchDailyTasks | CrossPlatformStorage类(5方法+单例)、isTauri/isCapacitor、星级挑战、卡片状态 |
| GameFeatures-changes.md | 9 | GameFeatures | GameStatus Tab布局(8主Tab+3子Tab)、ClubInfo增强、IdentityCard资源面板、CrazyCar、月赛系统 |
| Profile-changes.md | 25+ | Profile | TokenManager内联(21方法)、Profile核心(4修改)、**handleMenuSelect缺5个break** |
| TestTools-changes.md | 13 | MessageTester+WebSocketTester | 消息测试和WebSocket调试 |
| TokenImport-changes.md | 5 | Token导入 | BIN/微信二维码(4步加密)/URL/手动/单BIN |
| DailyTasks-changes.md | 8 | DailyTasks | 日常任务模块 |

### 4.2 翻译准确性问题

1. **handleMenuSelect缺少5个break语句**（Profile-changes.md）：已确认的代码bug，switch-case中所有case都缺少break，会导致fall-through
2. **DailyTaskRunner新增条目无行号**：翻译文档无法定位到apk-raw中的具体位置
3. **GameFeatures行号使用"~"近似值**：精确度不足，无法直接定位
4. **翻译覆盖率仅6%-21%**：大量[新增]和[修改]函数仅有标注无翻译

### 4.3 关键翻译内容提取

**BON协议加密体系**（TokenImport-changes.md）：
- 微信二维码登录4步加密：Base64 → 6层置换 → 3间隔采样 → XOR加密

**DailyTaskRunner重构**（DailyTaskRunner-changes.md）：
- 从单一`run()`方法拆分为11个`build*Tasks`方法
- `sendCommand`从5个位置参数重构为3参数options模式
- 竞技场战斗系统含智能目标选择

**错误处理体系**（DailyTaskRunner-changes.md）：
- ERROR_CODE_MAP：23条错误码映射
- CONTEXT_ERROR_MAP：6个模块上下文错误映射

---

## 五、03-css-analysis CSS差异分析

### 5.1 CSS变量体系

| 类别 | 数量 | 说明 |
|------|------|------|
| 基线CSS变量 | 62 | 全局定义在`variables.scss` |
| APK528新增变量 | 6 | `--card-bg`, `--card-bg-hover`, `--input-bg`, `--input-border`, `--shadow-large`, `--shadow-small` |
| GameFeatures特有 | ~30 | 最大组件，内联了大量子组件变量 |

### 5.2 响应式断点对比

| 断点 | 基线 | APK528 | 差异 |
|------|------|--------|------|
| 480px | ❌ | ✅ | 新增 |
| 576px | ❌ | ✅ | 新增（全局UnoCSS） |
| 600px | ❌ | ✅ | 新增 |
| 640px | ✅ | ✅ | 一致 |
| 768px | ✅ | ✅ | 一致 |
| 900px | ❌ | ✅ | 新增 |
| 992px | ❌ | ✅ | 新增 |
| 1024px | ❌ | ✅ | 新增 |
| 1200px | ❌ | ✅ | 新增 |
| 1280px | ❌ | ✅ | 新增（全局UnoCSS） |
| 1400px | ❌ | ✅ | 新增 |
| 1536px | ❌ | ✅ | 新增（全局UnoCSS） |
| 1600px | ❌ | ✅ | 新增（全局UnoCSS） |

APK528新增**11个响应式断点**（基线仅有640/768两个）。

### 5.3 主题系统差异

| 维度 | 基线 | APK528 |
|------|------|--------|
| 深色模式选择器 | `[arco-theme="dark"]` | `[data-theme=dark]` |
| 变量定义位置 | 全局`variables.scss` | 组件内scoped（带hash后缀） |
| 冗余 | 无 | ~2KB/文件 × 20+文件 scoped变量重复 |

### 5.4 关键CSS差异

- **GameFeatures.css**：455KB，占全部CSS近50%，差异最大。基线仅含简单功能卡片样式，APK528内联了联盟/装备/战斗/排行/公会战等大量子组件
- **缺失动画**：5个pulse动画在基线中未定义（`claimable-pulse`, `dot-pulse`, `loading-pulse`, `pulse`, `pulse-glow`）
- **硬编码颜色**：MessageTester和WebSocketTester存在2处硬编码颜色值
- **Changelog组件**：使用`prefers-color-scheme: dark`媒体查询而非`[data-theme=dark]`，与其他组件不一致
- **APK528 CSS中不存在--n-* Naive UI变量**：对Naive→Arco迁移有积极参考价值

---

## 六、与APK528的交叉对比关键发现

### 6.1 功能完整性对比

| 功能域 | APK528实现 | 参考资料覆盖 | 缺口 |
|--------|-----------|-------------|------|
| WebSocket通信 | WsAgent完整实现 | 00-baseline有基础描述 | 心跳/重连/队列参数完整 |
| BON协议 | 三层加密(LX/X/XTM) | 02-translations有4步加密描述 | 加密细节完整 |
| Token管理 | 6种导入+IndexedDB | 02-translations覆盖5种 | 缺批量BIN翻译 |
| 日常任务 | 11个build*Tasks | 02-translations覆盖45函数 | 翻译较完整 |
| 批量日常 | CrossPlatformStorage+赛车+十殿 | 02-translations覆盖12函数 | **覆盖率最低** |
| 游戏功能 | 8主Tab+30+子功能 | 02-translations覆盖9组件 | **最复杂模块，缺口最大** |
| 个人设置 | TokenManager内联21方法 | 02-translations覆盖25+函数 | 较完整 |
| CSS样式 | 24文件+62变量+6新增 | 03-css-analysis全覆盖 | 完整 |

### 6.2 API命令覆盖对比

APK528定义了**116+个游戏命令**（04-dev已有96个 + APK528独有约20个），参考资料映射覆盖情况：

| 命令类别 | APK528命令数 | mappings覆盖 | 覆盖率 |
|---------|-------------|-------------|--------|
| 基础命令 | 35 | 26 | 74% |
| 扩展命令 | 20+ | 15 | 75% |
| 月赛类型 | 5(17/19/21/23/25) | 5 | 100% |
| 物品ID | 42 | 42 | 100% |
| 战斗类型 | 12 | 12 | 100% |

**未覆盖命令**：`activity_recyclewarorderrewardclaim`, `dungeon_selecthero`, `gacha_drawreward`, `pkroom_appoint` 等新增命令在mappings中缺失或标注不完整。

**KIMI独有发现**：5个标注为"新增"的gameCommands命令在APK528编译产物中也不存在（`nmext_getinfo`/`nmext_startboss`/`presetteam_typegetinfo`/`hero_calcpowerbyteam`/`car_getrolecar`），可能是通过其他方式调用的。

### 6.3 安全风险

| 风险项 | 位置 | 严重程度 | 参考资料状态 |
|--------|------|---------|-------------|
| `eval(taskName)` | DailyTaskRunner | **高** | 02-translations提及需替换为函数映射表 |
| handleMenuSelect缺break | Profile | **高** | 02-translations已发现 |
| Capacitor代码残留 | imageExport | **中** | 01-reference标注需替换为Web方案 |
| 硬编码颜色 | MessageTester/WebSocketTester | **低** | 03-css-analysis已识别 |

### 6.4 数据一致性验证

| 验证项 | 参考资料声称 | APK528实际 | 一致性 |
|--------|------------|-----------|--------|
| 新增函数数 | 198(overview)/214(实际) | 需逐函数验证 | overview偏低 |
| 修改函数数 | 51(overview)/57(实际) | 需逐函数验证 | overview偏低 |
| 翻译覆盖率 | 6% | 7个文件~117函数 | 基线评估准确 |
| CSS变量数 | 62+6 | 62基础+6新增+30 GameFeatures | 一致 |
| 响应式断点 | 11个新增 | 2基线+11新增=13独立值 | 一致 |
| 错误码 | 22 | ERROR_CODE_MAP 23条 | **差1条** |

---

## 七、参考资料质量评级

| 目录 | 完整性 | 准确性 | 实用性 | 综合评级 |
|------|--------|--------|--------|---------|
| 00-baseline | ★★★☆☆ | ★★★★☆ | ★★★☆☆ | B |
| 01-reference/annotations | ★★★☆☆ | ★★☆☆☆ | ★★★★☆ | B- |
| 01-reference/mappings | ★★★★☆ | ★★★★☆ | ★★★★★ | A |
| 01-reference/baseline-verification | ★★★★☆ | ★★★★★ | ★★★★☆ | A |
| 02-translations | ★★☆☆☆ | ★★★★☆ | ★★★☆☆ | B- |
| 03-css-analysis | ★★★★★ | ★★★★☆ | ★★★★☆ | A |

**评级说明**：
- annotations准确性低（29处分类错误、50条缺行号）但实用性高（提供迁移优先级）
- mappings质量最高，是代码还原的核心依据
- translations覆盖率低但已翻译部分准确性高
- css-analysis覆盖最完整，差异识别准确

---

## 八、核心结论与建议

### 8.1 参考资料可信度排序

1. **01-reference/mappings** — 最可靠的代码还原依据，~1011个映射条目
2. **03-css-analysis** — CSS差异全覆盖，数据准确
3. **01-reference/baseline-verification** — 格式化校验结论可靠
4. **02-translations** — 已翻译部分准确，但覆盖率严重不足
5. **01-reference/annotations** — 需纠错后使用，overview统计不可信
6. **00-baseline** — 仅作背景参考，技术栈已过时

### 8.2 移植执行优先级

1. **基础设施层**（P1，91h）：CrossPlatformStorage → 错误处理体系 → DailyTaskRunner重构 → TokenManager内联
2. **核心业务层**（P2，38.5h）：GameFeatures子组件 → Profile增强 → BatchDailyTasks扩展
3. **增强功能层**（P3，6.5h）：常量/工具/图标

### 8.3 必须修复的问题

1. **annotations 29处分类错误**需在执行前全部纠正
2. **DailyTaskRunner 50条新增缺行号**需补充定位
3. **handleMenuSelect缺5个break**需在移植时修复
4. **eval(taskName)** 需替换为函数映射表
5. **Capacitor代码**需全部替换为Web API
6. **Changelog的`prefers-color-scheme`**需统一为`[data-theme=dark]`
7. **scoped CSS变量冗余**（~2KB×20+文件）需提取到全局

---

# 三位工作者交叉验证报告

## 九、核心结论三方对比矩阵

| # | 结论 | DS重开 | GLM重开1 | KIMI重开 | 综合判定 |
|---|------|--------|----------|----------|---------|
| 1 | annotations统计偏差(198/51→214/57) | ⚠️ DS: 173/40，方向一致数量不同 | ⚠️ GLM: 两套数字(198 vs 214)，修正后~169/~76 | ⚠️ KIMI: 沿用198/51，内部文件已暴露不一致 | **偏差确认存在，但精确数字因计数口径不同** |
| 2 | BatchDailyTasks 16处[修改]→[新增] | ⚠️ DS: 10处 | ❌ GLM: 不认为需修正 | ⚠️ KIMI: 部分承认但分类标准不同 | **方向正确，数量6-16处因分类标准差异** |
| 3 | DailyTaskRunner 50条[新增]缺行号 | ⚠️ DS: 45+条 | ⚠️ GLM: 47条 | ✅ KIMI: 确认 | **一致确认缺行号问题，数量45-50** |
| 4 | 翻译覆盖率6%-21% | 🔍 DS: 95%+(口径不同) | ⚠️ GLM: 6%总体 | ✅ KIMI: 6%-21% | **代码翻译6%确认，DS的95%指不同口径** |
| 5 | CSS变量62+6，11个新断点 | ⚠️ DS: 62+6一致，11个断点 | ⚠️ GLM: 62+6一致，11个断点 | ✅ KIMI: 62+6一致 | **62+6变量一致；断点应为11个(含全局级)** |
| 6 | handleMenuSelect缺5个break | ⚠️ DS: 确认但文件已修正 | ❌ GLM: 未发现 | ❌ KIMI: 未发现 | **DS独有确认，GLM/KIMI遗漏** |
| 7 | eval(taskName)安全风险 | ✅ DS: 完全一致 | ✅ GLM: 完全一致 | ✅ KIMI: 完全一致 | **三方一致确认** |
| 8 | Capacitor代码需替换 | ✅ DS: 完全一致 | ✅ GLM: 完全一致 | ✅ KIMI: 完全一致 | **三方一致确认** |
| 9 | APK528有116+游戏命令 | ⚠️ DS: 约46条 | ⚠️ GLM: 116+(含04-dev) | ⚠️ KIMI: 未精确统计 | **APK528独有约20个新命令，总量116+** |
| 10 | GameFeatures最复杂(~530映射) | ✅ DS: 完全一致 | ⚠️ GLM: annotations仅113条 | ✅ KIMI: 确认 | **最复杂模块一致，530为mapping级，113为功能级** |

---

## 十、关键矛盾点分析

### 矛盾1：BatchDailyTasks分类错误数量

| 来源 | 数量 | 包含项 |
|------|------|--------|
| DS重开 | 10处 | carStatus/legacyStatus/starChallengeTotalStars/isStarChallengeRunning/arenaRank/isArenaFighting/towerData/towerInfo/studyStatus/monthlyTask |
| GLM重开1 | 0处 | 认为无需修正 |
| KIMI重开 | 部分承认 | smartSendCar/claimCars/GENIE_DAY_MAP等标为[修改] |
| 我的分析 | 16处 | DS的10项 + availableGenieIds/isTowerActivityValid/isGenieAvailable/isFloorCleared/getMaxClearedFloor/weirdTowerData |

**结论**：10处是最低共识（DS验证），16处可能包含边界情况。建议以DS的10处为基准，6处争议项逐个验证。

### 矛盾2：CrazyCar组件是否存在于APK528

| 来源 | 立场 |
|------|------|
| DS重开 | 未明确提及 |
| GLM重开1 | 标注为P1需移植 |
| KIMI重开 | 验证报告称"未找到"，但自身翻译文档证明存在 |
| 我的分析 | 确认存在（内联在GameFeatures-Dixlrubn.js中） |

**结论**：CrazyCar代码**确实存在**于APK528的GameFeatures bundle中（1200-1737行），KIMI的"未找到"是误判——混淆了"无独立chunk"与"代码不存在"。

### 矛盾3：Arco CSS缺失的严重性

| 来源 | 严重性评估 |
|------|-----------|
| DS重开 | 🔴 阻断性bug |
| GLM重开1 | 🟡 中风险 |
| KIMI重开 | 未提及 |

**结论**：DS的阻断性评估在报告生成时正确，但 **2026-06-05 已修复**。当前 `main.js` 已正确导入 `arco.css` 并注册 `ArcoVue`。

### 矛盾4：工时估算

| 来源 | 总工时 |
|------|--------|
| overview.md(原始) | 136h |
| GLM修正后 | ~101h |
| GLM执行方案(剩余) | 28-41h |

**结论**：136h是修正前数字，GLM下修至101h有依据（8项误判排除+annotations修正减少真正新增数）。

---

## 十一、各方独有发现汇总

### 11.1 DS独有发现（其他方均未提及）

| # | 发现 | 严重性 |
|---|------|--------|
| D1 | **04-dev/main.js缺少Arco Design CSS导入**——阻断性bug | 🔴 |
| D2 | CSS分析.n-*选择器数量高估6倍(175→28) | 🔴 |
| D3 | CSS分析全局变量数严重低估("200+"→实际379) | 🔴 |
| D4 | dailyTaskRunner_annotations.md**目标文件声明错误**（声明为imageExport文件） | 🔴 |
| D5 | dailyTaskRunner/imageExport [修改]引用**基线行号**而非formatted-js行号 | 🔴 |
| D6 | GameFeatures CSS遗漏39个scoped ID | 🔴 |
| D7 | Profile CSS遗漏29个选择器 | 🔴 |
| D8 | APK528 CSS中**不存在--n-* Naive UI变量** | 🟢积极信息 |
| D9 | 04-dev中TokenImport/index.vue残留Naive UI CSS死选择器 | 🟡 |
| D10 | 04-dev中Profile TokenManager组件不再渲染 | 🟡 |
| D11 | GameFeatures_annotations.md中FightPvp[删除]分类需核实 | 🟡 |
| D12 | Profile-changes.md中editToken参数不一致 | 🟡 |
| D13 | GameFeatures-changes.md中typeLabel case顺序与原文不符 | 🟡 |

### 11.2 GLM独有发现（其他方均未提及）

| # | 发现 | 严重性 |
|---|------|--------|
| G1 | **04-dev有10项独有增强**（APK528中不存在，应保留） | 🔴避免回退 |
| G2 | **04-dev已修复1个APK528 bug**（buildActivityTasks参数错误：APK528错误使用statistics次数，04-dev正确使用statisticsTime时间戳） | 🔴避免回退 |
| G3 | **3个[共享]函数实际有差异**（shouldSendCar移除matchAll/checkRewardConditions仅OR模式/isTodayAvailable用时间戳比较） | 🔴 |
| G4 | **8项误判排除**（之前认为APK528有但实际不存在） | 🟡 |
| G5 | **8项死代码**（04-dev有但APK528已删除） | 🟡 |
| G6 | Profile 28个"未实现"中22个是功能等价替代，真正缺失仅6个 | 🟡 |
| G7 | annotations误标根因：APK528内联了baseline独立组件 | 🟡方法论 |

#### GLM发现的14项逻辑差异

**🔴 高优先级（7项）**

| # | 差异 | 04-dev现状 | APK528目标 |
|---|------|----------|----------|
| 1 | 月赛typeLabel映射缺失 | 仅type 1-6 | type 15-25共11个月赛类型 |
| 2 | exportSaltFieldXlsx完全缺失 | ClubWarrank中无XLSX导出 | 完整实现含列宽设置/总计行 |
| 3 | APK528独有游戏命令约20个缺失 | 未注册 | activity_buystoregoods等20+命令 |
| 4 | APK528独有responseToCommandMap约13个缺失 | 未注册 | charge_claimaddupresp等13条 |
| 5 | APK528独有errorCodeMap 1条缺失 | 未注册 | 7300232: "暂无可预约的直播" |
| 6 | XyzwWebSocketClient便捷方法14个缺失 | 仅5个 | claimBoxPointReward等14个 |
| 7 | runDailyTaskCompletion完全缺失 | 不存在 | APK528有此函数 |

**🟡 中优先级（7项）**

| # | 差异 | 说明 |
|---|------|------|
| 8 | createCarManager金砖保底缺失 | APK528有金砖刷新保底逻辑 |
| 9 | shouldSendCar matchAll参数 | APK528已移除matchAll参数 |
| 10 | startStarChallenge批量版增强缺失 | APK528有更多错误处理和状态恢复 |
| 11 | pickArenaTargetId返回值结构不同 | APK528返回完整对象 |
| 12 | batchStudy缺少重试/检查机制 | APK528有更完善的答题重试逻辑 |
| 13 | clientVersion版本号不同 | 04-dev用2.21.2，APK528用2.10.3 |
| 14 | wxqrcode多环境判断缺失 | APK528有3种环境适配 |

#### GLM发现的8项误判排除

| # | 功能 | 之前判断 | 实际情况 |
|---|------|---------|---------|
| 1 | setGuard/getGuardStatus守卫系统 | APK528有 | APK中无guard相关独立函数 |
| 2 | smartSendCar智能发车 | APK528有 | APK中无此独立函数名 |
| 3 | UploadQueue上传队列类 | APK528有 | APK中无此独立类 |
| 4 | GENIE_DAY_MAP灯神日映射 | APK528有 | APK中无此常量名 |
| 5 | convertTowerCount塔层数转换 | APK528有 | APK中无此独立函数 |
| 6 | formatPowerForExport战力格式化 | APK528有 | APK中无此独立函数 |
| 7 | detectAlliance联盟检测 | APK528有 | baseline中此函数已存在 |
| 8 | handleExportCSV CSV导出 | APK528有 | APK中无此独立函数 |

#### GLM发现的8项死代码

| # | 应删除项 | 04-dev位置 | APK528状态 |
|---|---------|-----------|-----------|
| 1 | handleFeatureAction | GameFeatures.vue:441-524 | 已删除 |
| 2 | connectWebSocket | GameFeatures.vue:526-551 | 已删除 |
| 3 | disconnectWebSocket | GameFeatures.vue:553-559 | 已删除 |
| 4 | toggleConnection | GameFeatures.vue:561-567 | 已删除 |
| 5 | initializeGameData | GameFeatures.vue:569-585 | 已删除 |
| 6 | pickArenaTargetId(原位置) | GameFeatures.vue:428-439 | 已迁移到DailyTaskRunner |
| 7 | useRouter导入和使用 | GameFeatures.vue:216等 | 已删除 |
| 8 | ws-status-section模板 | GameFeatures.vue:185-210 | 已删除 |

### 11.3 KIMI独有发现（其他方均未提及）

| # | 发现 | 严重性 |
|---|------|--------|
| K1 | **gameCommands 5个新增命令在APK528编译产物中也不存在**（nmext_getinfo/nmext_startboss/presetteam_typegetinfo/hero_calcpowerbyteam/car_getrolecar） | 🔴 |
| K2 | APK528 BatchDailyTasks有14个Tab（非简单功能卡片网格） | 🟡 |
| K3 | 构建产物体积：总JS约5,200KB(gzip~1,300KB)，GameFeatures单chunk 731KB | 🟡 |

### 11.4 我的分析独有发现

| # | 发现 | 严重性 |
|---|------|--------|
| M1 | handleMenuSelect缺5个break（DS部分确认，GLM/KIMI遗漏） | 🔴 |
| M2 | 翻译覆盖率6%-21%的完整范围评估 | 🟡 |
| M3 | Changelog使用prefers-color-scheme而非data-theme | 🟡 |

---

## 十二、综合可信度排序

| 发现类别 | 最可信来源 | 理由 |
|---------|-----------|------|
| annotations分类错误 | **DS** | 唯一做了逐条验证的独立验证报告 |
| 逻辑差异清单 | **GLM** | 最完整的14项差异+8项误判+8项死代码 |
| CSS差异 | **DS** | 发现了css-analysis的多处严重数据错误 |
| 安全风险 | **三方一致** | eval和Capacitor问题无争议 |
| 工时估算 | **GLM** | 有3阶段执行方案和修正后数字 |
| APK528功能完整性 | **GLM+KIMI互补** | GLM覆盖命令/响应映射，KIMI发现5个命令不存在 |
| 移植策略 | **GLM** | 最完整的执行方案（保留04-dev增强+避免回退） |

---

## 十三、GLM三阶段执行方案

### 阶段A：APK528逻辑对齐（15-20h）

| Step | 内容 | 工时 | 具体任务 |
|------|------|------|---------|
| Step 1 | 底层工具对齐 | 3-4h | 1.1 xyzwWebSocket.js补充便捷方法(~9个)+responseToCommandMap(~13条)+errorCodeMap(1条)；1.2 gameCommands.js确认clientVersion；1.3 tasksHangUp.js补充runDailyTaskCompletion |
| Step 2 | 组件功能对齐 | 4-5h | 2.1 LegionWarMap.vue补充月赛typeLabel(type 15-25)；2.2 ClubWarrank.vue实现exportSaltFieldXlsx；2.3 BatchDailyTasks.vue补充updateCardFromGameData+runDailyTaskCompletion；2.4 高优先级逻辑差异修复(7项) |
| Step 3 | 删除对齐 | 2-3h | GameFeatures.vue删除8处死代码+清理引用/import/onMounted调用；删除CarTaskCard.vue孤立文件；修正4个变量名差异 |
| Step 4 | 共享修正+中优先级 | 3-4h | 4.1 3个[共享]误标修正(shouldSendCar/checkRewardConditions/isTodayAvailable)；4.2 中优先级逻辑差异修复7项 |
| Step 5 | 逐模块验证 | 3-4h | 5.1 构建验证；5.2 逐文件逻辑验证(8个文件)；5.3 功能测试(逐页面对比) |

**里程碑M1：功能对齐APK528** - 14项逻辑差异全部修复+8处死代码删除+3项共享修正，npm run build通过

### 阶段B：质量优化（8-12h）

| Step | 内容 | 工时 | 具体任务 |
|------|------|------|---------|
| Step 6 | 构建优化 | 3-4h | 6.1 GameFeatures code-splitting(877KB→~200KB首屏)；6.2 主包瘦身(3.3MB，Arco按需引入验证)；6.3 路由级代码分割 |
| Step 7 | CSS精确对齐 | 3-4h | 7.1 深色主题选择器修正(3处)；7.2 5个脉冲动画实现；7.3 硬编码颜色替换；7.4 480px断点补全；7.5 CSS变量组件引用补全 |
| Step 8 | 安全修复 | 2-3h | 8.1 eval(taskName)→函数映射表；8.2 Capacitor残留检查；8.3 _worker.js一致性验证；8.4 answer.json内容一致性验证 |

**里程碑M2：质量达标** - 构建优化+CSS对齐+安全修复完成

### 阶段C：部署验证（5-8h）

| Step | 内容 | 工时 | 具体任务 |
|------|------|------|---------|
| Step 9 | 功能验证 | 3-5h | 9.1 lint检查；9.2 构建验证；9.3 运行时验证；9.4 逐页面功能对比(8个页面)；9.5 主题测试；9.6 响应式测试；9.7 WebSocket测试；9.8 Token管理测试；9.9 一致性验证(_worker.js+answer.json) |
| Step 10 | 部署 | 2-3h | 10.1 最终构建；10.2 推送GitHub；10.3 Cloudflare Pages配置；10.4 生产环境验证 |

**里程碑M3：生产就绪** - 功能验证通过+部署成功

**总预估**：28-41h（剩余工时），修正后全量工时~101h（原估136h）

---

## 十四、最终修正建议

基于三方对比验证，对原分析报告的修正：

| # | 原结论 | 修正后 | 依据 |
|---|--------|--------|------|
| 1 | 响应式断点7个 | **11个** | 补充576/1280/1536/1600全局级断点(DS+GLM确认) |
| 2 | 游戏命令50+ | **116+** | 含04-dev已有96个+APK528独有约20个(GLM确认) |
| 3 | 工时估算136h | **~101h** | 采纳GLM修正后数字(8项误判排除+annotations修正) |
| 4 | BatchDailyTasks分类错误16处 | **10-16处** | DS确认10处为最低共识，6处争议项逐个验证 |
| 5 | - | **新增：Arco CSS阻断性bug** | DS独有发现，需优先验证04-dev当前状态 |
| 6 | - | **新增：3个[共享]实际有差异** | GLM独有发现(shouldSendCar/checkRewardConditions/isTodayAvailable) |
| 7 | - | **新增：5个gameCommands不存在** | KIMI独有发现，影响移植优先级 |
| 8 | - | **新增：04-dev 10项独有增强需保留** | GLM独有发现，避免回退 |
| 9 | - | **新增：04-dev已修复buildActivityTasks参数bug** | GLM独有发现，不应回退 |
| 10 | - | **新增：CSS分析多处数据错误** | DS独有发现(.n-*高估6倍/全局变量低估/scoped ID遗漏) |

---

## 十五、APK528核心功能清单（与参考资料交叉验证后）

### 15.1 WebSocket通信（WsAgent）

| 参数 | 值 |
|------|-----|
| 心跳间隔 | 2000ms |
| 队列处理间隔 | 50ms |
| 心跳命令 | `_sys/ack` |
| BON通道 | `x` |
| 自动重连 | true（最多5次，延迟3000ms） |
| 默认服务器 | `wss://xxz-xyzw.hortorgames.com/agent` |

### 15.2 Token管理（localTokenManager Pinia Store）

| 功能 | 实现 |
|------|------|
| 存储后端 | IndexedDB (`xyzw_token_db`，版本1) |
| Object Store | `kv`(键值) + `gameTokens`(游戏Token，keyPath: roleId) |
| 导入方式 | 6种：手动/URL/BIN/微信二维码/单BIN/批量 |
| Token刷新 | 支持URL获取的Token自动刷新 |
| 过期清理 | 24小时自动清理 |
| WebSocket连接 | 每个roleId独立WsAgent实例 |

### 15.3 日常任务（DailyTaskRunner）

| 功能 | 实现 |
|------|------|
| 架构 | 从单一run()拆分为11个build*Tasks方法 |
| 错误处理 | ERROR_CODE_MAP(23条) + CONTEXT_ERROR_MAP(6模块) |
| 命令发送 | sendCommand(cmd, params, options) 三参数模式 |
| 连接管理 | ensureConnection(最多3次重试) + isConnected |
| 竞技场 | 智能目标选择 + ARENA_CONFIG(6:00-22:00, 最多3战) |
| 阵容管理 | getCurrentFormation/switchFormation/restoreFormation |

### 15.4 页面路由

| 路径 | 组件 | 需要Token |
|------|------|-----------|
| `/` | Home | 否 |
| `/tokens` | TokenImport | 否 |
| `/admin/dashboard` | Dashboard | 是 |
| `/admin/game-features` | GameFeatures | 是 |
| `/admin/message-test` | MessageTester | 是 |
| `/admin/legion-war` | LegionWar | 是 |
| `/admin/profile` | Profile | 是 |
| `/admin/daily-tasks` | DailyTasks | 是 |
| `/admin/batch-daily-tasks` | BatchDailyTasks | 是 |
| `/websocket-test` | WebSocketTester | 是 |

### 15.5 BON协议报文结构

```javascript
{
  ack: number,    // 确认号
  seq: number,    // 序列号（心跳为0）
  time: number,   // 时间戳
  cmd: string,    // 命令名
  body: object    // BON编码的请求体
}
```

### 15.6 微信二维码登录4步加密

1. Base64解码Token
2. 6层置换（permutation）
3. 3间隔采样（interval sampling）
4. XOR加密

---

*报告主体结束*

---

# 附录：formatted-js 与 apk-raw 基准校验

> 来源：`01-reference/baseline-verification.md`

## 总体结论

formatted-js 与 apk-raw 存在 **0.8%~2.5% 的真实代码差异**（非格式差异），整体逻辑基本一致，但有以下偏差：

## 偏差明细

| 类型 | 说明 | 影响 |
|------|------|------|
| prettier 换行/缩进差异 | 大量函数被 prettier 重新格式化 | 无逻辑影响 |
| 箭头函数展开 | `(a)=>b` → `(a) => b` 等空格变化 | 无逻辑影响 |
| 链式调用换行 | 长链式调用被 prettier 拆成多行 | 无逻辑影响 |
| 字符串模板差异 | 少量字符串在格式化过程中被转换 | 极小影响 |
| 分号添加/移除 | prettier 统一处理分号 | 无逻辑影响 |

## 使用建议

1. **阅读 minified 逻辑时**：优先使用 formatted-js（可读性更好）
2. **精确比对代码时**：使用 apk-raw 原始文件
3. **变量名还原时**：需结合 mappings 目录中的映射表
4. **安全审计时**：两者交叉验证

## 覆盖率警告

当前翻译覆盖率约 38%（22/58 个 JS 文件），大量 `[新增]` 和 `[修改]` 函数尚未翻译。Phase 2 执行时需直接阅读 formatted-js 理解 minified 代码逻辑。

## 校验时间

2026-06-01

---

## 真实代码差异明细

> **验证方法**：去除所有空白字符后逐字符对比
> **结果**：58 个 JS 文件中，57 个存在非空白差异，仅 `xiaoyugan-Dwisk7G8.js` 完全一致

### 差异统计

| 指标 | 数值 |
|------|------|
| 总文件数 | 58 |
| 完全一致 | 1 (`xiaoyugan-Dwisk7G8.js`) |
| 存在差异 | 57 |
| 差异原因 | prettier 格式化导致代码结构变化 |

### 差异最大的文件（Top 10）

| 排名 | 文件名 | raw 字符数 | fmt 字符数 | 差异字符数 | 差异比例 |
|------|--------|-----------|-----------|-----------|---------|
| 1 | `index-BUwMeHKm.js` | 4,641,797 | 4,816,395 | -174,598 | ~3.8% |
| 2 | `index-CwMhWr3d.js` | 74,291 | 76,049 | -1,758 | ~2.4% |
| 3 | `index-Dne5XMpP.js` | 82,022 | 83,876 | -1,854 | ~2.3% |
| 4 | `index-DjNxY7uA.js` | 32,617 | 33,597 | -980 | ~3.0% |
| 5 | `index-CBMhjSrw.js` | 42,781 | 43,856 | -1,075 | ~2.5% |
| 6 | `index-Eg6ki802.js` | 12,256 | 12,557 | -301 | ~2.5% |
| 7 | `localTokenManager-DrgF481l.js` | 7,118 | 7,394 | -276 | ~3.9% |
| 8 | `imageExport-BfNAYNiL.js` | 33,399 | 33,914 | -515 | ~1.5% |
| 9 | `grid-col-CkMxf-H1.js` | 18,096 | 18,523 | -427 | ~2.4% |
| 10 | `GameFeatures-Dixlrubn.js` | ~61,988 | ~63,200 | ~-1,200 | ~1.9% |

### 差异原因分析

- `index-BUwMeHKm.js`（最大差异）：Vue 3 + Pinia + Naive UI 的 vendor bundle，prettier 将单行长代码拆分为多行，实际逻辑完全一致
- `index-CwMhWr3d.js` / `index-Dne5XMpP.js` / `index-DjNxY7uA.js`：Vue 运行时和组件库代码，prettier 对链式调用、嵌套对象的格式化导致字符数增加，实际逻辑完全一致
- `localTokenManager-DrgF481l.js`（较高比例差异）：Token 管理相关代码，prettier 对函数参数、对象属性的格式化，实际逻辑完全一致
- `imageExport-BfNAYNiL.js`（中等差异）：图片导出功能，包含 `downloadInApk` 等 Capacitor 相关代码，实际逻辑完全一致

---

## 更新记录

| 日期 | 更新内容 |
|------|---------|
| 2026-06-01 | 初始版本，总体结论 |
| 2026-06-03 | 补充真实代码差异明细、差异文件统计、验证方法说明（KIMI） |
| 2026-06-05 | 补充04-dev代码库验证、技术栈状态、独有增强、阻断性问题 |
| 2026-06-06 | 更新04-dev技术栈状态：Naive→Arco迁移已完成，Arco CSS已导入，移除阻断性标记 |

---

## 2026-06-05 补充：04-dev 代码库验证

> 基于 04-dev 目录实际代码检查，补充以下验证结果

### 04-dev 技术栈状态

| 维度 | 04-dev 实际状态 | APK528 目标 | 差距 |
|------|---------------|-----------|------|
| UI框架 | Arco Design（纯） | Arco Design | ✅ 已完成 Naive→Arco 全量迁移 |
| Arco CSS | `main.js` 全量导入 `arco.css` + `ArcoResolver({ importStyle: false })` | 全量/按需导入 | ✅ 样式正常导入 |
| 主题切换 | `arco-theme=dark`（Arco官方方式） | `[data-theme=dark]` | ✅ 已统一为 Arco 方式 |
| Token导入 | 5种（手动/URL/BIN/微信扫码/单BIN） | 6种（+批量BIN） | 缺1种 |
| 游戏命令 | ~96个已注册 | ~116个 | 缺约20个 |
| DailyTaskRunner | 单一 run() 方法 | 11个 build*Tasks 方法 | 架构差异大 |

### 04-dev 独有增强（APK528中不存在，应保留）

1. **tokenStore 连接锁**：防止同一 Token 多标签页重复连接
2. **tokenStore 跨标签页协调**：localStorage 广播连接状态
3. **tokenStore 连接监控**：自动检测连接健康状态
4. **randomSeed 同步**：安全增强
5. **buildActivityTasks 参数修复**：04-dev 用 `statisticsTime`（正确），APK528 用 `statistics`（错误）
6. **attemptTokenRefresh**：Token 过期自动刷新
7. **handleGameMessage 实际处理**：APK528 中为空壳
8. **GameMessages 兼容层**：向后兼容
9. **ProtoMsg.hint getter**：协议提示
10. **syncresp 多5个命令**：更多响应处理

### 04-dev 阻断性问题

~~1. **Arco CSS 导入缺失**：`vite.config.js` 中 `ArcoResolver({ importStyle: false })` 关闭了样式自动导入，`main.js` 中也无全量 CSS 导入。需确认是否通过其他方式提供样式，否则所有 Arco 组件将无样式渲染。~~ ✅ 已修复（2026-06-05）：`main.js` 已导入 `arco.css` 并注册 `ArcoVue`

2. **GameFeatures.vue 模板语法错误**：第15-17行存在 `<>` 非法模板片段。 ⚠️ 待确认（2026-06-06 未复现）
3. **common.ts 未导入 ref/computed**：依赖 `unplugin-auto-import` 自动注入，需确认构建时是否正常。 ⚠️ 待验证

---

*合并报告结束*
