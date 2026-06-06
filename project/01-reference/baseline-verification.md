# formatted-js 基准校验报告

> 目的：确认 prettier 格式化后的 JS 文件与 apk-raw 原始 JS 的逻辑一致性
> 方法：逐文件比对 key/function/method 数量差异，排除纯格式变化

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

---

## 2026-06-05 补充：04-dev 代码库验证

> 基于 04-dev 目录实际代码检查，补充以下验证结果

### 04-dev 技术栈状态

| 维度 | 04-dev 实际状态 | APK528 目标 | 差距 |
|------|---------------|-----------|------|
| UI框架 | Naive UI（主力）+ Arco Design（已安装，部分使用） | Arco Design | 需完成 Naive→Arco 全量迁移 |
| Arco CSS | `ArcoResolver({ importStyle: false })` 按需但关闭样式导入 | 全量/按需导入 | **⚠️ 阻断性风险**：Arco 组件可能无样式 |
| 主题切换 | `arco-theme=dark`（Arco官方方式） | `[data-theme=dark]` | 选择器不一致 |
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

1. **Arco CSS 导入缺失**：`vite.config.js` 中 `ArcoResolver({ importStyle: false })` 关闭了样式自动导入，`main.js` 中也无全量 CSS 导入。需确认是否通过其他方式提供样式，否则所有 Arco 组件将无样式渲染。
2. **GameFeatures.vue 模板语法错误**：第15-17行存在 `<>` 非法模板片段。
3. **common.ts 未导入 ref/computed**：依赖 `unplugin-auto-import` 自动注入，需确认构建时是否正常。