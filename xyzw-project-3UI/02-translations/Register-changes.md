# Register 注册页面翻译

> 源文件: `Register-DrJd6Qtb.js` (392行)
> 翻译时间: 2026-06-03
> 翻译方法: minified变量名 → 可读名 + 中文注释

---

## 1. Mail 图标组件

**组件名**: `Mail`
**行号范围**: 23-43
**功能描述**: 邮箱图标SVG组件，用于注册表单的邮箱输入框前缀图标

### 1.1 SVG定义与渲染

```javascript
// 行 23-43
const F = {                                      // SVG属性
    xmlns: "http://www.w3.org/2000/svg",
    "xmlns:xlink": "http://www.w3.org/1999/xlink",
    viewBox: "0 0 512 512",
  },
  S = createElement(                             // 邮件信封路径
    "path",
    {
      d: "M424 80H88a56.06 56.06 0 0 0-56 56v240a56.06 56.06 0 0 0 56 56h336a56.06 56.06 0 0 0 56-56V136a56.06 56.06 0 0 0-56-56zm-14.18 92.63l-144 112a16 16 0 0 1-19.64 0l-144-112a16 16 0 1 1 19.64-25.26L256 251.73l134.18-104.36a16 16 0 0 1 19.64 25.26z",
      fill: "currentColor",
    },
    null,
    -1,
  ),
  K = [S];                                       // 子元素数组

const Mail = defineComponent({                   // R({...})
  name: "Mail",
  render: function (ctx, cache) {                // (c, u) => ...
    return (openBlock(), createElementBlock("svg", F, K));
  },
});
```

---

## 2. Register 注册页面组件

**组件名**: `Register`
**行号范围**: 44-391
**功能描述**: 用户注册页面，包含用户名/邮箱/密码/确认密码表单，服务条款同意，注册API调用

### 2.1 模板静态结构定义

```javascript
// 行 44-49
const X = { class: "register-page" },            // 注册页面容器
  Y = { class: "register-container" },           // 注册容器
  Z = { class: "register-card glass" },          // 注册卡片（毛玻璃效果）
  A = { class: "card-body" },                    // 卡片主体
  D = { class: "form-options" },                 // 表单选项区（服务条款）
  E = { class: "login-prompt" };                 // 登录提示区
```

### 2.2 setup — 核心状态与验证规则

```javascript
// 行 51-106
setup(props) {
  const router = useRouter(),                     // V() — 路由实例
    message = useMessage(),                       // T() — 消息提示
    authStore = useAuth(),                        // L() — 认证Store
    formRef = ref(null),                          // $(null) — 表单ref
    formData = reactive({                         // z({...}) — 表单数据
      username: "",                               // 用户名
      email: "",                                  // 邮箱
      password: "",                               // 密码
      confirmPassword: "",                        // 确认密码
      agreeTerms: false,                          // 是否同意服务条款
    }),
    formRules = {                                 // 表单验证规则
      username: [
        { required: true, message: "请输入用户名", trigger: ["input", "blur"] },
        { min: 3, max: 20, message: "用户名长度应在3-20个字符之间", trigger: ["input", "blur"] },
      ],
      email: [
        { required: true, message: "请输入邮箱地址", trigger: ["input", "blur"] },
        { type: "email", message: "请输入正确的邮箱格式", trigger: ["input", "blur"] },
      ],
      password: [
        { required: true, message: "请输入密码", trigger: ["input", "blur"] },
        { min: 6, message: "密码长度不能少于6位", trigger: ["input", "blur"] },
      ],
      confirmPassword: [
        { required: true, message: "请确认密码", trigger: ["input", "blur"] },
        {
          validator: (rule, value) => value === formData.password,  // 自定义验证：密码一致性
          message: "两次输入的密码不一致",
          trigger: ["input", "blur"],
        },
      ],
    };
```

### 2.3 handleRegister — 注册提交

```javascript
// 行 107-125
const handleRegister = async () => {             // w = async () => ...
  if (!formRef.value) return;                     // 表单ref不存在则退出

  try {
    await formRef.value.validate();               // 验证表单

    if (!formData.agreeTerms) {                   // 检查是否同意服务条款
      message.warning("请先同意服务条款和隐私政策");
      return;
    }

    // 调用注册API
    const result = await authStore.register({
      username: formData.username,
      email: formData.email,
      password: formData.password,
    });

    if (result.success) {
      message.success("注册成功，请登录");         // 注册成功提示
      router.push("/login");                      // 跳转到登录页
    } else {
      message.error(result.message);              // 注册失败提示
    }
  } catch (err) {
    console.error("Registration validation failed:", err);  // 验证失败日志
  }
};
```

### 2.4 渲染逻辑概览

```javascript
// 行 126-390 — render函数
// 页面结构：
// div.register-page
//   div.register-container
//     div.register-card.glass
//       div.card-header（品牌区）
//         img.brand-logo（XYZW Logo）
//         h1.brand-title "注册 XYZW 账户"
//         p.welcome-text "加入我们，开始您的游戏管理之旅"
//
//       div.card-body
//         n-form（size=large, show-label=false）
//           n-form-item[path=username]
//             n-input[placeholder="用户名"]（前缀：PersonCircle图标）
//           n-form-item[path=email]
//             n-input[placeholder="邮箱地址"]（前缀：Mail图标）
//           n-form-item[path=password]
//             n-input[type=password, placeholder="密码"]（前缀：Lock图标）
//           n-form-item[path=confirmPassword]
//             n-input[type=password, placeholder="确认密码"]（前缀：Lock图标，Enter提交）
//
//           div.form-options
//             n-checkbox "我已阅读并同意"
//               n-button[text] "服务条款"
//               "和"
//               n-button[text] "隐私政策"
//
//           n-button[type=primary, block, loading=isLoading, disabled=!agreeTerms]
//             "注册账户"
//
//         div.login-prompt
//           span "已有账户？"
//           n-button[text] "立即登录" → router.push("/login")
```

### 功能说明

Register 是用户注册页面，提供完整的注册流程：

- **品牌展示**: XYZW Logo + "注册 XYZW 账户" 标题 + 欢迎文案
- **4个表单字段**: 用户名（3-20字符）/ 邮箱（格式验证）/ 密码（≥6位）/ 确认密码（一致性验证）
- **输入框图标**: 用户名→PersonCircle，邮箱→Mail，密码→Lock
- **服务条款**: 必须勾选同意才能注册，可点击查看服务条款和隐私政策
- **注册按钮**: 未同意条款时禁用，注册中显示loading
- **Enter提交**: 确认密码输入框支持回车提交
- **注册成功**: 提示"注册成功，请登录"并跳转到登录页
- **登录入口**: 底部"已有账户？立即登录"链接
- **毛玻璃效果**: 卡片使用 glass CSS类
