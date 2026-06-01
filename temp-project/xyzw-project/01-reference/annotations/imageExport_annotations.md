# imageExport 增量标记

> 目标文件: `/workspace/formatted_528/imageExport-BfNAYNiL.js`
> 开源源码: `/workspace/opensource/src/utils/imageExport.js`, `HeroList.js`, `dreamConstants.js`
> 生成时间: 2026-05-28

---

## [新增] 函数列表

| 函数名 | 行号 | 功能描述 | 移植优先级 |
|--------|------|---------|-----------|
| `downloadInApk` (`W`) | 新增 | Capacitor APK环境下载，需替换为Web方案 | P1-高 |
| `downloadFile` (`we`) | 新增 | 通用文件下载，自动判断Capacitor/Web环境 | P1-高 |

## [修改] 函数列表

| 函数名 | 行号 | 修改内容 | 开源版本 | 目标版本 |
|--------|------|---------|---------|---------|
| `downloadCanvasAsImage` (`ye`) | imageExport.js:7 | 改为Promise风格，增加Capacitor环境判断 | 回调风格，仅Web下载 | Promise风格，支持Capacitor/Web双环境 |
| `downloadBlob` (`H`) | imageExport.js:44 | 增加MouseEvents兼容处理 | 简单link.click() | 增加MouseEvent创建和dispatch |
| `fallbackToDataURL` (`M`) | imageExport.js:64 | 增加MouseEvents兼容处理 | 简单link.click() | 增加MouseEvent创建和dispatch |

## [共享] 函数列表（跳过，无需移植）

| 函数名 | 行号 | 说明 |
|--------|------|------|
| `HERO_DICT` (`se`/`a`) | HeroList.js:2 | 武将字典，数据与开源一致 |
| `FishMap` (`V`/`F`) | HeroList.js:173 | 鱼灵名称字典，数据与开源一致 |
| `PearlMap` (`B`/`P`) | HeroList.js:159 | 鱼珠技能字典，数据与开源一致 |
| `LINEUP_RULES` (`J`/`L`) | HeroList.js:68 | 阵容预设规则，数据与开源一致 |
| `getLineupType` (`re`/`g`) | HeroList.js:127 | 阵容识别函数，逻辑与开源一致 |
| `color` (`Q`/`k`) | HeroList.js:252 | 洗练颜色定义，数据与开源一致 |
| `legacycolor` (`ie`/`l`) | HeroList.js:275 | 段位定义，数据与开源一致 |
| `weapon` (`ee`/`w`) | HeroList.js:261 | 道具名称字典，数据与开源一致 |
| `formatWeapon` (`oe`/`f`) | HeroList.js:285 | 根据ID获取道具名称，逻辑与开源一致 |
| `HeroFillInfo` (`ce`/`H`) | HeroList.js:294 | 提取鱼灵和鱼珠信息，逻辑与开源一致 |
| `LEGION_TECH_MAX_LEVEL` (`me`/`j`) | HeroList.js:331 | 军团科技最大等级，数据与开源一致 |
| `LEGION_TECH_TYPE_MAP` (`le`/`e`) | HeroList.js:418 | 军团科技按职业分组，数据与开源一致 |
| `LEGION_TECH_RESET_TYPE_MAP` (`de`/`n`) | HeroList.js:427 | 军团科技重置分组，数据与开源一致 |
| `LEGION_TECH_TYPE_NAME` (`he`/`d`) | HeroList.js:436 | 职业名称，数据与开源一致 |
| `LEGION_TECH_NAME` (`ue`/`h`) | HeroList.js:445 | 军团科技技能名称，数据与开源一致 |
| `merchantConfig` (`pe`/`m`) | dreamConstants.js:2 | 商人配置，数据与开源一致 |
| `goldItemsConfig` (`fe`/`b`) | dreamConstants.js:44 | 金币购买商品配置，数据与开源一致 |
| `isDungeonOpen` (`ge`/`i`) | dreamConstants.js:51 | 咸王梦境开放判断，逻辑与开源一致 |

## [删除] 函数列表

| 函数名 | 行号 | 说明 |
|--------|------|------|
| 无 | - | 开源函数在目标中均有对应（部分被重构拆分） |
