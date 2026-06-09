# LegionWar 核心函数翻译

> 源文件: `LegionWar-CKHcokIB.js` (694行)
> 翻译时间: 2026-06-03
> 翻译方法: minified变量名 → 可读名 + 中文注释

---

## 1. 组件定义与核心状态

**组件名**: `LegionWar`
**行号范围**: 22-693
**修改类型**: [翻译] 盐场战争地图组件

### 1.1 常量与模板引用

```javascript
// 行 22-31 — 模板CSS类名
const Ee = { class: "legion-war-container" },    // 根容器
  Oe = { class: "legion-war-map" },               // 地图区域
  Ne = { class: "map-title" },                    // 地图标题
  Fe = { class: "map-container" },                // 地图画布容器
  Ue = { class: "legion-war-operation" },         // 操作面板区域
  Ve = { class: "legion-war-operation-container" }, // 操作面板容器
  Xe = { class: "legion-war-operation-item" },    // 操作项1: 占领/分布布局
  Ge = { class: "legion-war-operation-item" },    // 操作项2: 战队/个人战况
  Ye = { class: "legion-war-operation-item" },    // 操作项3: 拉取数据按钮
  qe = { class: "legion-war-operation-item" };    // 操作项4: 发送复活信息按钮

// 行 32-33 — 六角格绘制参数
const P = 13.25,                                  // hexRadius — 六角格半径
  he = 2.75;                                      // hexGap — 六角格间距
```

### 1.2 setup 核心状态

```javascript
// 行 36-96
const b = Me(),                                    // tokenStore — Pinia Token Store
  A = Pe();                                        // message — Naive UI 消息提示
let w = null;                                      // warSocket — 盐场战争WebSocket实例
const N = W(null),                                 // battlefieldId — 当前战场ID
  j = W(!1),                                       // isInBattlefield — 是否已进入战场
  oe = W(ge("yyyy-MM-dd HH:mm:ss"));              // currentTime — 当前格式化时间

// 连接状态计算
const V = U(() =>                                  // connectionStatus — "connected" / "disconnected"
    (w == null ? void 0 : w.status) === "connected"
      ? "connected"
      : "disconnected"
  ),
  be = U(() =>                                     // statusClass — CSS类名
    j.value ? "status-connected" : "status-disconnected"
  );

const H = W(!1),                                   // isOccupationMode — 占领布局模式（false=分布布局）
  X = W(!1);                                       // isIndividualMode — 个人战况模式（false=战队战况）

// 行 86-96 — 地图绘制核心变量
const G = W(null);                                 // mapCanvasDom — canvas DOM引用
let i = null;                                      // ctx — Canvas 2D上下文
const S = window.devicePixelRatio || 1;            // dpr — 设备像素比
let F = null;                                      // resizeHandler — 窗口resize回调

// 六角格布局参数
const me = 2 * P,                                  // hexWidth — 六角格宽度
  te = Math.sqrt(3) * P,                           // hexHeight — 六角格高度
  a = Array.from({ length: 41 }, () =>             // hexGrid — 41×41六角格网格数组
    Array.from({ length: 41 }, () => 0)
  );
let I = [0, 0],                                    // maxCoords — 画布最大坐标[x, y]
  C = W(null);                                     // warData — 盐场战争数据（buildingData + legionInfo + memberInfo）
const le = W(null);                                // rawWarData — WebSocket原始战争数据
```

---

## 2. drawHex — 绘制单个六角格

**行号范围**: 97-112

```javascript
const ye = (centerX, centerY, fillColor) => {     // drawHex — 绘制六角格
  i.beginPath();
  for (let l = 0; l < 6; l++) {
    // 六角形6个顶点，从0°开始每60°一个
    const angle = ((2 * Math.PI) / 6) * l,
      x = centerX + P * Math.cos(angle),
      y = centerY + P * Math.sin(angle);
    (l === 0 ? i.moveTo(x, y) : i.lineTo(x, y),
      // 同时跟踪画布最大坐标，用于后续绘制统计表格
      x >= I[0] && (I[0] = x),
      y >= I[1] && (I[1] = y));
  }
  (i.closePath(),
    (i.fillStyle = fillColor),
    i.fill(),
    (i.strokeStyle = fillColor),
    i.stroke());
};
```

---

## 3. renderMap — 渲染盐场地图（核心函数）

**行号范围**: 113-217

### 3.1 入口函数

```javascript
const Y = (clickX = 0, clickY = 0, eventType = "") => {
  // renderMap — 地图渲染入口
  // clickX/clickY: 鼠标点击/移动坐标; eventType: "click" / "mousemove"
  (clickX !== 0 && clickY !== 0
    ? se(clickX, clickY, eventType)               // 带交互的渲染
    : se(),                                        // 无交互的渲染
    Ie(),                                          // 绘制分隔线
    Ce(C.value));                                  // 绘制统计表格
};
```

### 3.2 drawBattlefield — 绘制战场

```javascript
const se = (clickX = 0, clickY = 0, eventType = "") => {
  // drawBattlefield — 核心绘制逻辑

  // 1. 清空画布
  i.clearRect(0, 0, i.canvas.width / S, i.canvas.height / S);

  // 2. 初始化图节点管理器，解析战争数据
  let graphManager = Te.getInstance();             // LegionWarGraph 单例
  graphManager.removeAllNode();
  C.value = Se(le.value, H.value);                // parseWarData(rawData, isOccupationMode)

  if (C.value) {
    // 3. 将建筑数据添加到图节点
    graphManager.addNodeList(
      Object.values(C.value.buildingData).map((building) => ({
        id: building.id,                           // 坐标ID，如 "16_20"
        type: building.type,                       // 建筑类型
        belongsLegionId: building.belongsLegionId, // 所属俱乐部ID
        hP: building.hP,                           // 当前血量
        maxHP: building.maxHP,                     // 最大血量
        point: building.point,                     // 分数
        belongsLegionInfo: C.value.legionInfo[building.belongsLegionId],
      }))
    );
  }
  if (!C.value) return;

  // 4. 计算领地着色
  if (!H.value) {
    // 分布布局模式：对每个俱乐部的建筑，用最短路径算法扩散领地颜色
    Object.values(C.value.legionInfo).forEach((legion) => {
      // 按坐标排序建筑ID
      let buildingIds = Object.keys(legion.buildings).sort((a, b) => {
        const [ax, ay] = a.split("_").map(Number),
          [bx, by] = b.split("_").map(Number),
          dx = ax - bx;
        return dx !== 0 ? dx : ay - by;
      });
      // 对每对建筑求最短路径，路径上的节点标记为该俱乐部领地
      for (let d = 0; d < buildingIds.length; d++)
        for (let p = d; p < buildingIds.length; p++) {
          let path = graphManager.findShortestPath(
            buildingIds[d], buildingIds[p], legion.id
          );
          path && path.forEach((node) => {
            node.belongsLegionId = legion.id;
            node.colorBg = legion.color;
          });
        }
    });
  } else {
    // 占领布局模式：仅大本营标记为俱乐部颜色
    let legions = Object.values(C.value.legionInfo);
    for (let r = 0; r < legions.length; r++) {
      let stronghold = graphManager.getNodeByCoords(legions[r].strongholdId);
      stronghold.belongsLegionId = legions[r].id;
      stronghold.colorBg = legions[r].color;
    }
  }

  // 5. 填充六角格网格数组
  graphManager.getAllNodes().forEach((node) => {
    let x = node.position.x,
      y = node.position.y;
    // 占领模式下，非大本营节点清除归属
    (H.value && node.type != 4 &&
      ((node.belongsLegionId = -1), (node.colorBg = Be(9))));
    // 仅有效范围内的节点写入网格
    parseInt(x) >= 0 && parseInt(x) < 41 &&
    parseInt(y) >= 0 && parseInt(y) < 32
      ? (a[parseInt(y)][parseInt(x)] = node)
      : console.warn(`坐标[${x},${y}]越界，跳过赋值`);
  });

  // 6. 分布模式下，大本营周围6格强制归属（大本营在[17][20]）
  if (!H.value) {
    const base = a[17][20];                        // 大本营节点
    // 周围6格: [16][19], [17][19], [16][20], [18][20], [16][21], [17][21]
    a[16][19].belongsLegionId = base.belongsLegionId;
    a[17][19].belongsLegionId = base.belongsLegionId;
    a[16][21].belongsLegionId = base.belongsLegionId;
    a[17][21].belongsLegionId = base.belongsLegionId;
    a[16][20].belongsLegionId = base.belongsLegionId;
    a[18][20].belongsLegionId = base.belongsLegionId;
    // 同步颜色
    a[16][21].colorBg = base.colorBg;
    a[17][21].colorBg = base.colorBg;
    a[16][19].colorBg = base.colorBg;
    a[17][19].colorBg = base.colorBg;
    a[16][20].colorBg = base.colorBg;
    a[18][20].colorBg = base.colorBg;
  }

  // 7. 遍历网格，绘制六角格 + 处理鼠标交互
  let clickedNode = {},
    labelList = [];
  for (let row = 0; row <= 31; row++)
    for (let col = 0; col <= 40; col++)
      if (row > 2 && a[row][col] != 0) {
        // 计算六角格像素坐标（奇偶行偏移）
        const pixelX = col * (me * 0.75) + P + he * col,
          pixelY = row * te + (col % 2 === 1 ? te / 2 : 0) + he * row;
        let color = a[row][col].colorBg;

        // 鼠标交互：mousemove高亮 / click选中
        if (clickX !== 0 && clickY !== 0) {
          const dist = Math.sqrt((clickX - pixelX) ** 2 + (clickY - pixelY) ** 2);
          if (eventType === "mousemove") {
            color = dist < P ? "#42b983" : color;  // 悬停高亮绿色
          } else if (eventType === "click" && dist < P) {
            clickedNode = a[row][col];              // 点击选中
          }
        }

        // 绘制六角格
        ye(pixelX, pixelY, color);

        // 绘制建筑标签（非空地type=9）
        if (a[row][col].type != 9) {
          let label = a[row][col].typeName.replace("据点", "");
          // 大本营特殊处理：显示俱乐部名称
          if (label == "大本营") {
            i.fillStyle = "#055138";
            label = C.value.legionInfo[a[row][col].belongsLegionId].name;
          }
          labelList.push({ x: pixelX - 13, y: pixelY + 4, name: label });
        }
      }

  // 8. 绘制所有标签文字
  for (let o = 0; o < labelList.length; o++) {
    i.fillStyle = "black";
    i.font = "bold 12px Microsoft Yahei";
    i.fillText(labelList[o].name, labelList[o].x, labelList[o].y);
  }

  // 9. 点击建筑时弹出信息框
  clickedNode.type != 9 &&
    Object.keys(clickedNode).length > 0 &&
    eventType === "click" &&
    xe(clickX, clickY, clickedNode);
};
```

### 3.3 drawDivider — 绘制分隔线

```javascript
const Ie = () => {                                 // drawDivider — 地图与统计表之间的分隔线
  (i.beginPath(),
    i.moveTo(I[0] + 10, I[1]),                     // 从地图最右下角
    i.lineTo(I[0] + 10, 10),                       // 到顶部
    i.closePath(),
    (i.strokeStyle = "#000"),
    i.stroke());
};
```

---

## 4. drawStatsTable — 绘制统计表格

**行号范围**: 226-308

```javascript
const Ce = (warData) => {                          // drawStatsTable — 绘制战况统计表格
  if (!warData) return;

  let tableConfig = {};
  if (!X.value) {
    // 战队战况模式 — 俱乐部维度
    let sortedLegions = Object.values(warData.legionInfo)
      .sort((a, b) => b.score - a.score)           // 按积分降序
      .map((legion) => [
        legion.name,                                // 俱乐部名称
        legion.killCnt,                             // 击杀数
        legion.reviveCount + "/150",                // 免费复活
        legion.score,                               // 积分
        legion.redCount,                            // 红数
        We(legion.power),                           // 战力（格式化）
        legion.participantsCount + "/" + legion.memberCount, // 人数
        legion.danCount,                            // 花费总丹
        legion.blessingCount + "个共" + legion.blessingScore + "分", // 四圣
        legion.color,                               // [隐藏列] 俱乐部颜色，用于行背景色
      ]);
    tableConfig = {
      x: I[0] + 20,                                // 表格起始X（地图右侧）
      y: 20,                                       // 表格起始Y
      columns: 9,
      rows: 20,
      headerData: [
        "俱乐部名称", "击杀数", "免费复活", "积分",
        "红数", "战力", "人数", "花费总丹", "四圣",
      ],
      tableData: sortedLegions,
      columnWidth: 78,
      rowHeight: 37,
      scale: 1,
    };
  } else {
    // 个人战况模式 — 本俱乐部成员维度
    let memberRows = [];
    const myLegionId = tokenStore.gameData?.roleInfo?.role?.legionId;
    Object.values(warData.memberInfo).forEach((member) => {
      if (member.legionId == myLegionId) {
        memberRows.push([
          member.name,                              // 名称
          member.kill,                              // 击杀数
          member.die,                               // 死亡次数
          member.revive + "/5",                     // 已复活次数
          member.score,                             // 积分
          member.digGround,                         // 刨地
          member.dan,                               // 复活丹
          parseFloat(member.kill / member.die).toFixed(2), // K/D
        ]);
      }
    });
    memberRows = memberRows.sort((a, b) => b[1] - a[1]); // 按击杀数降序
    tableConfig = {
      x: I[0] + 20,
      y: 20,
      columns: 8,
      rows: memberRows ? memberRows.length : 30,
      headerData: [
        "名称", "击杀数", "死亡次数", "已复活次数",
        "积分", "刨地", "复活丹", "K/D",
      ],
      tableData: memberRows,
      columnWidth: 88,
      rowHeight: 25,
      scale: 1,
    };
  }
  ke(i, tableConfig);                               // 调用通用表格绘制函数
};
```

---

## 5. drawTable — 通用Canvas表格绘制

**行号范围**: 309-394

```javascript
const ke = (ctx, config) => {                      // drawTable — 通用Canvas表格绘制
  // 合并默认配置
  const mergedConfig = {
    ...{
      columnWidth: 80,
      rowHeight: 25,
      headerBgColor: "#42b983",                    // 表头背景色（绿色）
      cellBgColor: "#ffffff",                       // 单元格背景色
      borderColor: "#333333",                       // 边框颜色
      headerTextColor: "#ffffff",                   // 表头文字颜色
      cellTextColor: "#373737",                     // 单元格文字颜色
      fontSize: 14,
      font: "Arial",
      scale: 1,
    },
    ...config,
  };
  const {
    x: startX, y: startY, columns, rows,
    headerData, tableData,
    columnWidth, rowHeight,
    headerBgColor, cellBgColor, borderColor,
    headerTextColor, cellTextColor,
    fontSize, font, scale,
  } = mergedConfig;

  // 响应式缩放：移动端缩小
  const screenWidth = window.innerWidth;
  let actualScale = scale;
  if (screenWidth < 768) actualScale = scale * 0.7;
  else if (screenWidth < 1024) actualScale = scale * 0.85;

  const cellW = columnWidth * actualScale;
  const cellH = rowHeight * actualScale;
  const fontSz = fontSize * actualScale;
  const borderW = 1 * actualScale;

  ctx.save();
  // 绘制表格外框
  ctx.strokeStyle = borderColor;
  ctx.lineWidth = borderW;
  ctx.strokeRect(startX, startY, columns * cellW, (rows + 1) * cellH);

  // 第一列/第二列额外宽度调整
  let colX = startX;
  const extraFirstCol = 20 * actualScale;          // 第一列额外宽度
  const extraSecondCol = 20 * actualScale;         // 第二列负宽度

  // 绘制表头行
  for (let col = 0; col < columns; col++) {
    ctx.fillStyle = headerBgColor;
    let colW = col === 0 ? cellW + extraFirstCol
              : col === 1 ? cellW - extraSecondCol
              : cellW;
    ctx.fillRect(colX, startY, colW, cellH);
    ctx.strokeRect(colX, startY, colW, cellH);
    ctx.fillStyle = headerTextColor;
    ctx.font = `${fontSz}px ${font}`;
    ctx.textAlign = "center";
    ctx.textBaseline = "middle";
    ctx.fillText(headerData[col] || "", colX + colW / 2, startY + cellH / 2);
    colX += colW;
  }

  // 绘制数据行
  for (let row = 0; row < rows; row++) {
    colX = startX;
    for (let col = 0; col < columns; col++) {
      let colW = col === 0 ? cellW + extraFirstCol
                : col === 1 ? cellW - extraSecondCol
                : cellW;
      // 行背景色：使用第10列（隐藏列）的颜色值
      ctx.fillStyle = tableData[row]?.[9] || cellBgColor;
      const cellX = colX,
        cellY = startY + (row + 1) * cellH;
      ctx.fillRect(cellX, cellY, colW, cellH);
      ctx.strokeRect(cellX, cellY, colW, cellH);
      ctx.fillStyle = cellTextColor;
      ctx.font = `${fontSz}px ${font}`;
      ctx.textAlign = "center";
      ctx.textBaseline = "middle";
      ctx.fillText(tableData[row]?.[col] || "0", cellX + colW / 2, cellY + cellH / 2);
      colX += colW;
    }
  }
  ctx.restore();
};
```

---

## 6. showBuildingInfo — 建筑信息弹框

**行号范围**: 395-452

```javascript
const xe = (clickX, clickY, buildingData, scale = 1, offsetX = 0, offsetY = 0, options = {}) => {
  // showBuildingInfo — 点击建筑后显示信息浮框

  const defaultOpts = {
    boxWidth: 200,
    boxPadding: 10,
    bgColor: "rgba(0, 0, 0, 0.8)",                // 半透明黑色背景
    borderColor: "#ffffff",
    borderWidth: 1,
    fontColor: "#ffffff",
    fontSize: 14,
    font: "Arial",
    gap: 10,                                       // 浮框与点击位置的间距
    ...options,
  };

  // 构建信息文本
  let infoText = "";
  if (typeof buildingData == "object" && buildingData !== null) {
    const b = buildingData;
    infoText = `坐标:${b.id}
血量:${b.hP}/${b.maxHP}
类型:${b.typeName}
分数:${b.point}
所属俱乐部:${C.value.legionInfo[b.belongsLegionId]?.name || "无所属"}`;
  } else {
    infoText = String(buildingData || "无数据");
  }

  const lines = infoText.split("\n");
  const boxW = defaultOpts.boxWidth * scale;
  const padding = defaultOpts.boxPadding * scale;
  const fontSz = defaultOpts.fontSize * scale;
  const borderW = defaultOpts.borderWidth * scale;
  const gap = defaultOpts.gap * scale;
  const lineH = fontSz * 1.4;
  const boxH = lines.length * lineH + 2 * padding;

  // 计算浮框位置（优先右下方，超出边界则翻转）
  const anchorX = clickX * scale + offsetX;
  const anchorY = clickY * scale + offsetY;
  let boxX = anchorX + gap;
  let boxY = anchorY + gap;
  if (boxX + boxW > I[0] + 10) boxX = anchorX - boxW - gap;  // 超出右边界→左侧
  if (boxY + boxH > I[1] + 20) boxY = anchorY - boxH - gap;  // 超出下边界→上方
  boxX = Math.max(borderW, boxX);                              // 不超出左边界
  boxY = Math.max(borderW, boxY);                              // 不超出上边界

  // 绘制浮框
  ctx.save();
  ctx.fillStyle = defaultOpts.bgColor;
  ctx.fillRect(boxX - borderW, boxY - borderW, boxW + 2 * borderW, boxH + 2 * borderW);
  ctx.strokeStyle = defaultOpts.borderColor;
  ctx.lineWidth = borderW;
  ctx.strokeRect(boxX, boxY, boxW, boxH);
  ctx.fillStyle = defaultOpts.fontColor;
  ctx.font = `${fontSz}px ${defaultOpts.font}`;
  ctx.textBaseline = "top";
  lines.forEach((line, idx) => {
    ctx.fillText(line, boxX + padding, boxY + padding + idx * lineH);
  });
  ctx.restore();
};
```

---

## 7. resizeCanvas — 画布自适应

**行号范围**: 453-458

```javascript
function ie(canvasEl) {                            // resizeCanvas — 适配画布尺寸
  const parent = canvasEl.parentElement;
  const width = parent.clientWidth;
  const height = parent.clientHeight;
  (canvasEl.width = width * S,                     // 按设备像素比放大
   canvasEl.height = height * S,
   i.scale(S, S),                                  // 缩放上下文
   Y());                                           // 重新渲染地图
}
```

---

## 8. connectBattlefield — 连接战场WebSocket

**行号范围**: 459-485

```javascript
const Le = () => {                                 // connectBattlefield — 建立WebSocket连接
  if (!b.selectedToken) {
    A.warning("请先选择一个Token");
    router.push("/tokens");
    return;
  }
  try {
    const tokenId = b.selectedToken.id,
      token = b.selectedToken.token;
    // 1. 创建WebSocket连接
    b.createWebSocketConnection(tokenId, token);
    A.info("正在建立 WebSocket 连接...");

    // 2. 2秒后检查连接状态，获取战场信息
    setTimeout(async () => {
      if (b.getWebSocketStatus(tokenId) === "connected") {
        A.success("WebSocket 连接成功");
        // API: legion_getbattlefield — 获取战场列表
        const battlefieldInfo = await b.sendMessageWithPromise(
          tokenId, "legion_getbattlefield", {}, 10000
        );
        re(battlefieldInfo);                       // 进入战场
      }
    }, 2000);
  } catch (e) {
    console.error("WebSocket连接失败:", e);
    A.error("WebSocket连接失败");
  }
};
```

---

## 9. enterBattlefield — 进入战场

**行号范围**: 486-529

```javascript
const re = async (battlefieldInfo) => {            // enterBattlefield — 进入盐场战场
  if (!b.selectedToken) return;

  const tokenId = b.selectedToken.id;
  // 如果主WebSocket未连接，先重连
  if (b.getWebSocketStatus(b.selectedToken.id) !== "connected") {
    Le();
    return;
  }

  // 构建盐场专用WebSocket URL
  const wsUrl = `wss://xxz-xyzw-new.hortorgames.com/agent?p=${encodeURIComponent(b.selectedToken.token)}&e=x&sid2=${battlefieldInfo?.info.sid}&lang=chinese&sid2=${battlefieldInfo?.info.sid}`;

  N.value = battlefieldInfo?.info.battlefieldId;   // 记录战场ID

  // 创建盐场专用WebSocket实例
  w = new _e({                                     // DateTimeUtils WebSocket
    url: wsUrl,
    utils: null,
    hint: N.value,
    heartbeatMs: 5000,                             // 5秒心跳
  });

  // 连接成功回调：5秒后发送进入战场指令
  w.onConnect = async () => {
    try {
      setTimeout(() => {
        j.value = true;                            // 标记已进入战场
        // API: war_enterbattlefield — 进入战场
        w.send("war_enterbattlefield", {
          battlefieldId: N.value,
          useGzip: true,
        });
      }, 5000);
    } catch (e) {
      console.error(`初始请求盐场信息失败 [${tokenId}]`, e);
    }
  };

  // 消息监听：接收战场数据更新
  w.setMessageListener((msg) => {
    if ((msg?.cmd || "unknown").includes("war_getbattlefieldinfo")) {
      console.log(msg.rawData);
      le.value = msg.rawData;                      // 更新原始战争数据
      ie(G.value);                                 // 重新渲染地图
    }
  });

  // 断开/错误回调
  w.onDisconnect = (event) => {
    console.log(event);
  };
  w.onError = (event) => {
    console.log(event);
  };

  w.init();                                        // 初始化连接
};
```

---

## 10. fetchBattlefieldData — 拉取战场数据

**行号范围**: 531-536

```javascript
const ae = async () => {                           // fetchBattlefieldData — 手动拉取战场数据
  if (j.value) {
    // 已进入战场：发送获取战场信息指令
    w.send("war_getbattlefieldinfo", { battlefieldId: N.value });
    oe.value = ge("");                             // 更新当前时间
  } else {
    A.error("暂未进入战场,请稍后");
  }
};
```

---

## 11. sendReviveInfo — 发送复活信息到战队频道

**行号范围**: 58-84

```javascript
const we = async function () {                     // sendReviveInfo — 发送各战队免费复活信息到战队频道
  // 1. 构建各俱乐部复活信息文本
  let legions = Object.values(C.value.legionInfo);
  const messages = [];
  for (let i = 0; i < 2; i++) {                   // 分两批（每批10个俱乐部）
    let text = "";
    for (let j = 0; j < 10; j++) {
      const legion = legions[j + i * 10];
      (j != 0 && (text += "\n"),
        (text += legion.name + ":剩" + (150 - legion.reviveCount)));
    }
    messages.push(text);
  }

  // 2. 逐条发送，间隔1.5秒防止频率限制
  const tokenId = b.selectedToken.id;
  const interval = 1500;                           // 发送间隔(ms)
  for (let i = 0; i < messages.length; i++) {
    await new Promise((resolve) => setTimeout(resolve, interval));
    try {
      // API: sendMessageToLegion — 发送战队频道消息
      await b.sendMessageToLegion(tokenId, messages[i]);
    } catch (e) {
      // 频率限制时等待3秒后重试
      if (e.message.includes("频繁")) {
        await new Promise((resolve) => setTimeout(resolve, interval * 2));
        await b.sendMessageToLegion(tokenId, messages[i]);
      }
    }
  }
};
```

---

## 12. 生命周期与事件绑定

**行号范围**: 537-556

```javascript
// onMounted — 组件挂载
He(() => {
  re();                                            // 进入战场
  const canvasEl = G.value;
  i = canvasEl.getContext("2d");                   // 获取2D上下文
  F = () => ie(canvasEl);                          // resize回调
  F();                                             // 初始渲染

  // canvas点击事件：计算点击坐标，触发地图交互
  canvasEl.addEventListener("click", (event) => {
    const rect = canvasEl.getBoundingClientRect();
    const clickX = event.clientX - rect.left;
    const clickY = event.clientY - rect.top;
    Y(clickX, clickY, "click");                    // 带点击坐标的渲染
  });

  // 窗口resize事件
  window.addEventListener("resize", F);
});

// onUnmounted — 组件卸载
$e(() => {
  window.removeEventListener("resize", F);
});
```

---

## 13. 模板渲染逻辑

**行号范围**: 557-693

```javascript
// 渲染函数 — 返回模板结构
return () => (
  <div class="legion-war-container">
    {/* 左侧：盐场地图 */}
    <div class="legion-war-map">
      <div class="map-title">
        <div class="map-title-item">战场图示</div>
        <div>
          <span>是否进入战场:</span>
          <n-button text onClick={fetchBattlefieldData}>
            <span class={statusClass}>
              {isInBattlefield ? "已进入战场" : "重新进入战场"}
            </span>
          </n-button>
          当前时间-{currentTime}
        </div>
      </div>
      <div class="map-container">
        <canvas ref={mapCanvasDom} class="mapCanvas" />
      </div>
    </div>

    {/* 右侧：操作面板 */}
    <div class="legion-war-operation">
      <div class="legion-war-operation-title">
        <div class="operation-title-item">操作面板</div>
      </div>
      <div class="legion-war-operation-container">
        {/* 占领/分布布局切换 */}
        <div class="legion-war-operation-item">
          <div>占领布局</div>
          <n-switch v-model:value={isOccupationMode} onUpdate:value={renderMap} />
          <div>分布布局</div>
        </div>
        {/* 战队/个人战况切换 */}
        <div class="legion-war-operation-item">
          <div>战队战况</div>
          <n-switch v-model:value={isIndividualMode} onUpdate:value={renderMap} />
          <div>个人战况</div>
        </div>
        {/* 拉取数据按钮 */}
        <div class="legion-war-operation-item">
          <n-button type="primary" onClick={fetchBattlefieldData}
                    disabled={!isInBattlefield} style={{ padding: "12px" }}>
            拉取数据(需进入战场后)
          </n-button>
        </div>
        {/* 发送复活信息按钮 */}
        <div class="legion-war-operation-item">
          <n-button type="primary" onClick={sendReviveInfo}
                    style={{ padding: "12px" }}>
            发送各战队免费复活到战队频道
          </n-button>
        </div>
      </div>
    </div>
  </div>
);
```

---

## 附录: 变量映射速查

| minified | 可读名 | 说明 |
|----------|--------|------|
| `P` | `hexRadius` | 六角格半径 (13.25) |
| `he` | `hexGap` | 六角格间距 (2.75) |
| `me` | `hexWidth` | 六角格宽度 (2 * hexRadius) |
| `te` | `hexHeight` | 六角格高度 (√3 * hexRadius) |
| `a` | `hexGrid` | 41×41六角格网格数组 |
| `I` | `maxCoords` | 画布最大坐标 [x, y] |
| `b` | `tokenStore` | Pinia Token Store |
| `A` | `message` | Naive UI 消息提示 |
| `w` | `warSocket` | 盐场战争WebSocket实例 |
| `N` | `battlefieldId` | 当前战场ID |
| `j` | `isInBattlefield` | 是否已进入战场 |
| `H` | `isOccupationMode` | 占领布局模式 |
| `X` | `isIndividualMode` | 个人战况模式 |
| `G` | `mapCanvasDom` | canvas DOM引用 |
| `i` | `ctx` | Canvas 2D上下文 |
| `S` | `dpr` | 设备像素比 |
| `F` | `resizeHandler` | 窗口resize回调 |
| `C` | `warData` | 盐场战争数据 |
| `le` | `rawWarData` | WebSocket原始战争数据 |
| `oe` | `currentTime` | 当前格式化时间 |
| `ye` | `drawHex` | 绘制单个六角格 |
| `Y` | `renderMap` | 地图渲染入口 |
| `se` | `drawBattlefield` | 绘制战场核心逻辑 |
| `Ie` | `drawDivider` | 绘制分隔线 |
| `Ce` | `drawStatsTable` | 绘制统计表格 |
| `ke` | `drawTable` | 通用Canvas表格绘制 |
| `xe` | `showBuildingInfo` | 建筑信息弹框 |
| `ie` | `resizeCanvas` | 画布自适应 |
| `Le` | `connectBattlefield` | 连接战场WebSocket |
| `re` | `enterBattlefield` | 进入战场 |
| `ae` | `fetchBattlefieldData` | 拉取战场数据 |
| `we` | `sendReviveInfo` | 发送复活信息到战队频道 |
| `ne` | `onModeChange` | 模式切换回调（调用renderMap） |
| `Te` | `LegionWarGraph` | 图节点管理器（最短路径算法） |
| `Se` | `parseWarData` | 解析战争数据 |
| `Be` | `getDefaultColor` | 获取默认颜色 |
| `We` | `formatPower` | 格式化战力 |
| `ge` | `formatDateTime` | 日期时间格式化 |
| `_e` | `WebSocket` | WebSocket客户端类 |
