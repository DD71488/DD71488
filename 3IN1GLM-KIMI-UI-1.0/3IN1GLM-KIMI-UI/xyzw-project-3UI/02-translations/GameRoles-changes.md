# GameRoles 游戏角色管理页面翻译

> 源文件: `GameRoles-DIOjmCD3.js` (607行)
> 翻译时间: 2026-06-03
> 翻译方法: minified变量名 → 可读名 + 中文注释

---

## 1. GameRoles 组件 — 游戏角色管理页面

**组件名**: `GameRoles`
**行号范围**: 1-607
**功能描述**: 游戏角色的增删改查管理页面，包含角色卡片网格、添加/编辑弹窗、角色切换、删除确认等功能

### 1.1 模板静态结构定义

```javascript
// 行 29-51 — CSS类名常量定义（对应模板中的静态节点）
const ie = { class: "game-roles-page" },       // 页面容器
  re = { class: "container" },                  // 内容容器
  de = { class: "page-header" },                // 页面头部
  ue = { class: "header-content" },             // 头部内容
  ce = { class: "header-actions" },             // 头部操作区
  ve = { key: 0, class: "roles-grid" },         // 角色卡片网格（有角色时显示）
  me = ["onClick"],                             // 动态绑定onClick的元素
  pe = { class: "card-header" },                // 卡片头部
  _e = { class: "role-avatar" },                // 角色头像
  fe = ["src", "alt"],                          // 动态绑定src/alt的img元素
  ge = { class: "role-actions" },               // 角色操作区
  be = { class: "card-body" },                  // 卡片主体
  ye = { class: "role-name" },                  // 角色名称
  he = { class: "role-info" },                  // 角色信息
  ke = { class: "role-tags" },                  // 角色标签区
  Re = { class: "card-footer" },                // 卡片底部
  we = { class: "role-stats" },                 // 角色统计
  xe = { class: "stat-item" },                  // 统计项（经验）
  Ce = { class: "stat-value" },                 // 统计值
  ze = { class: "stat-item" },                  // 统计项（金币）
  Fe = { class: "stat-value" },                 // 统计值
  Se = { key: 1, class: "empty-state" },        // 空状态（无角色时显示）
  Ae = { class: "modal-actions" };              // 弹窗操作按钮区
```

### 1.2 setup — 核心状态与配置

```javascript
// 行 52-109
setup(Ue) {
  useMessage();                                  // Y() — 消息提示初始化
  const c = useMessage(),                        // L() — 消息提示实例
    A = useDialog(),                              // J() — 对话框实例
    r = useGameRoles(),                           // te() — 游戏角色Store
    d = ref(false),                               // y(!1) — 显示添加/编辑弹窗
    h = ref(false),                               // y(!1) — 提交loading状态
    f = ref(null),                                // y(null) — 当前编辑的角色（null=新增模式）
    k = ref(null),                                // y(null) — 表单ref引用
    n = reactive({                                // K({...}) — 表单数据
      name: "",                                   // 角色名称
      server: "",                                 // 服务器
      profession: "",                             // 职业
      level: 1,                                   // 等级
      account: "",                                // 账号信息
      note: "",                                   // 备注
    }),
    G = {                                         // 表单验证规则
      name: [{ required: true, message: "请输入角色名称", trigger: "blur" }],
      server: [{ required: true, message: "请选择服务器", trigger: "change" }],
      profession: [{ required: true, message: "请选择职业", trigger: "change" }],
      level: [{ required: true, type: "number", message: "请输入角色等级", trigger: "blur" }],
    },
    U = [                                         // 服务器选项列表
      { label: "风云服", value: "风云服" },
      { label: "神话服", value: "神话服" },
      { label: "传奇服", value: "传奇服" },
      { label: "梦幻服", value: "梦幻服" },
      { label: "英雄服", value: "英雄服" },
    ],
    $ = [                                         // 职业选项列表
      { label: "战士", value: "战士" },
      { label: "法师", value: "法师" },
      { label: "道士", value: "道士" },
      { label: "刺客", value: "刺客" },
      { label: "弓手", value: "弓手" },
      { label: "牧师", value: "牧师" },
    ],
    E = [                                         // 角色操作下拉菜单
      { label: "编辑", key: "edit" },
      { label: "设为主角色", key: "set-primary" },
      { label: "查看详情", key: "view-details" },
      { type: "divider" },                       // 分隔线
      { label: "删除", key: "delete" },
    ];
```

### 1.3 selectRole — 切换当前角色

```javascript
// 行 110-112
const selectRole = (role) => {                   // x = (t) => ...
  r.selectRole(role);                            // 调用Store切换角色
  c.success(`已切换到角色：${role.name}`);        // 提示切换成功
};
```

### 1.4 handleAction — 角色操作路由

```javascript
// 行 113-128
const handleAction = async (actionKey, role) => { // N = async (t, e) => ...
  switch (actionKey) {
    case "edit":
      openEditModal(role);                       // 编辑角色
      break;
    case "set-primary":
      selectRole(role);                          // 设为主角色
      break;
    case "view-details":
      viewDetails(role);                         // 查看详情
      break;
    case "delete":
      confirmDelete(role);                       // 删除角色
      break;
  }
};
```

### 1.5 openEditModal — 打开编辑弹窗

```javascript
// 行 129-131
const openEditModal = (role) => {                // O = (t) => ...
  f.value = role;                                // 记录当前编辑的角色
  Object.assign(n, role);                        // 将角色数据填充到表单
  d.value = true;                                // 显示弹窗
};
```

### 1.6 viewDetails — 查看角色详情

```javascript
// 行 132-134
const viewDetails = (role) => {                  // V = (t) => ...
  c.info("角色详情功能开发中...");                 // 功能未实现提示
};
```

### 1.7 confirmDelete — 确认删除角色

```javascript
// 行 135-146
const confirmDelete = (role) => {                // q = (t) => ...
  A.warning({                                    // 弹出警告对话框
    title: "删除角色",
    content: `确定要删除角色 "${role.name}" 吗？此操作无法恢复。`,
    positiveText: "确定删除",
    negativeText: "取消",
    onPositiveClick: async () => {               // 确认删除回调
      const result = await r.deleteGameRole(role.id);
      result.success ? c.success(result.message) : c.error(result.message);
    },
  });
};
```

### 1.8 handleSubmit — 提交表单（新增/编辑）

```javascript
// 行 147-162
const handleSubmit = async () => {               // B = async () => ...
  if (!k.value) return;                          // 表单ref不存在则退出
  try {
    await k.value.validate();                    // 验证表单
    h.value = true;                              // 开启loading

    let result;
    if (f.value) {
      // 编辑模式：更新已有角色
      result = await r.updateGameRole(f.value.id, n);
    } else {
      // 新增模式：添加新角色
      result = await r.addGameRole(n);
    }

    if (result.success) {
      c.success(result.message);                 // 提示成功
      d.value = false;                           // 关闭弹窗
      resetForm();                               // 重置表单
    } else {
      c.error(result.message);                   // 提示失败
    }
  } catch {
    // 表单验证失败，不做处理
  } finally {
    h.value = false;                             // 关闭loading
  }
};
```

### 1.9 resetForm — 重置表单

```javascript
// 行 163-168
const resetForm = () => {                        // M = () => ...
  Object.keys(n).forEach((key) => {
    n[key] = key === "level" ? 1 : "";           // level重置为1，其他重置为空字符串
  });
  f.value = null;                                // 清除编辑角色引用
};
```

### 1.10 formatGold — 格式化金币数量

```javascript
// 行 169-174
const formatGold = (value) =>                    // P = (t) => ...
  value >= 1e8
    ? (value / 1e8).toFixed(1) + "亿"            // ≥1亿显示"X.X亿"
    : value >= 1e4
      ? (value / 1e4).toFixed(1) + "万"          // ≥1万显示"X.X万"
      : value.toString();                        // 其他直接显示
```

### 1.11 onMounted — 页面初始化

```javascript
// 行 176-178
onMounted(async () => {                          // Q(async () => ...)
  if (r.gameRoles.length === 0) {               // 角色列表为空时
    await r.fetchGameRoles();                    // 从Store获取角色数据
  }
});
```

### 1.12 渲染逻辑概览

```javascript
// 行 179-603 — render函数
// 页面结构：
// div.game-roles-page
//   div.container
//     div.page-header
//       h1 "游戏角色" + p "管理您的所有游戏角色"
//       n-button "添加角色"（带Add图标）
//
//     [有角色时] div.roles-grid
//       遍历 r.gameRoles，每个角色渲染：
//         div.role-card（选中时添加active类，点击切换角色）
//           div.card-header
//             div.role-avatar > img（头像，默认/icons/xiaoyugan.png）
//             div.role-actions > n-dropdown（编辑/设为主角色/查看详情/删除）
//           div.card-body
//             h3 角色名称
//             p "服务器 | X级"
//             n-tag 活跃/离线状态 + VIP标签
//           div.card-footer
//             div.role-stats
//               经验值 + 金币（格式化显示）
//
//     [无角色时] div.empty-state
//       n-empty "暂无游戏角色" + n-button "添加第一个角色"
//
//     n-modal "添加游戏角色"（500px宽）
//       n-form（label-placement=left, label-width=80px）
//         角色名称 > n-input
//         服务器 > n-select（风云服/神话服/传奇服/梦幻服/英雄服）
//         职业 > n-select（战士/法师/道士/刺客/弓手/牧师）
//         等级 > n-input-number（min=1, max=200）
//         账号信息 > n-input（可选）
//         备注 > n-input type=textarea（可选，3行）
//       footer: "取消"按钮 + "保存/添加"按钮（根据编辑/新增模式切换文字）
```

### 功能说明

GameRoles 是游戏角色管理页面，提供完整的CRUD功能：

- **角色列表**: 卡片网格布局，显示头像/名称/服务器/等级/活跃状态/VIP/经验/金币
- **角色切换**: 点击卡片切换当前角色，选中卡片高亮
- **添加角色**: 弹窗表单，含角色名称/服务器/职业/等级/账号/备注
- **编辑角色**: 复用添加弹窗，自动填充已有数据
- **删除角色**: 警告对话框确认，调用Store删除API
- **金币格式化**: ≥1亿显示"X.X亿"，≥1万显示"X.X万"
- **5个服务器**: 风云服/神话服/传奇服/梦幻服/英雄服
- **6个职业**: 战士/法师/道士/刺客/弓手/牧师
- **表单验证**: 角色名称/服务器/职业/等级为必填项
