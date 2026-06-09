<template>
  <div class="register-page">
    <div class="register-container">
      <div class="register-card glass">
        <div class="card-header">
          <div class="brand">
            <img src="/icons/xiaoyugan.png" alt="XYZW" class="brand-logo" />
            <h1 class="brand-title">注册 XYZW 账户</h1>
          </div>
          <p class="welcome-text">加入我们，开始您的游戏管理之旅</p>
        </div>

        <div class="card-body">
          <a-form
            ref="registerFormRef"
            :model="registerForm"
            :rules="registerRules"
            size="large"
            :show-label="false"
          >
            <a-form-item field="username">
              <a-input
                v-model="registerForm.username"
                placeholder="用户名"
                :input-props="{ autocomplete: 'username' }"
              >
                <template #prefix>
                  
<IconUser />

                </template>
              </a-input>
            </a-form-item>

            <a-form-item field="email">
              <a-input
                v-model="registerForm.email"
                placeholder="邮箱地址"
                :input-props="{ autocomplete: 'email' }"
              >
                <template #prefix>
                  
<IconEmail />

                </template>
              </a-input>
            </a-form-item>

            <a-form-item field="password">
              <a-input
                v-model="registerForm.password"
                type="password"
                placeholder="密码"
                :input-props="{ autocomplete: 'new-password' }"
              >
                <template #prefix>
                  
<IconLock />

                </template>
              </a-input>
            </a-form-item>

            <a-form-item field="confirmPassword">
              <a-input
                v-model="registerForm.confirmPassword"
                type="password"
                placeholder="确认密码"
                :input-props="{ autocomplete: 'new-password' }"
                @keydown.enter="handleRegister"
              >
                <template #prefix>
                  
<IconLock />

                </template>
              </a-input>
            </a-form-item>

            <div class="form-options">
              <a-checkbox v-model="registerForm.agreeTerms">
                我已阅读并同意
                <a-button type="text" @click="showTerms = true">
                  服务条款
                </a-button>
                和
                <a-button type="text" @click="showPrivacy = true">
                  隐私政策
                </a-button>
              </a-checkbox>
            </div>

            <a-button
              type="primary"
              size="large"
              block
              :loading="authStore.isLoading"
              :disabled="!registerForm.agreeTerms"
              class="register-button"
              @click="handleRegister"
            >
              注册账户
            </a-button>
          </a-form>

          <div class="login-prompt">
            <span>已有账户？</span>
            <a-button type="text" @click="router.push('/login')">
              立即登录
            </a-button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, reactive } from "vue";
import { useRouter } from "vue-router";
import { useArcoMessage } from "@/composables/useArcoMessage";
import { useAuthStore } from "@/stores/auth";
import { IconUser, IconEmail } from '@arco-design/web-vue/es/icon';

const router = useRouter();
const message = useArcoMessage();
const authStore = useAuthStore();
const registerFormRef = ref(null);

// 注册表单数据
const registerForm = reactive({
  username: "",
  email: "",
  password: "",
  confirmPassword: "",
  agreeTerms: false,
});

// 表单验证规则
const registerRules = {
  username: [
    {
      required: true,
      message: "请输入用户名",
      trigger: ["input", "blur"],
    },
    {
      min: 3,
      max: 20,
      message: "用户名长度应在3-20个字符之间",
      trigger: ["input", "blur"],
    },
  ],
  email: [
    {
      required: true,
      message: "请输入邮箱地址",
      trigger: ["input", "blur"],
    },
    {
      type: "email",
      message: "请输入正确的邮箱格式",
      trigger: ["input", "blur"],
    },
  ],
  password: [
    {
      required: true,
      message: "请输入密码",
      trigger: ["input", "blur"],
    },
    {
      min: 6,
      message: "密码长度不能少于6位",
      trigger: ["input", "blur"],
    },
  ],
  confirmPassword: [
    {
      required: true,
      message: "请确认密码",
      trigger: ["input", "blur"],
    },
    {
      validator: (rule, value) => {
        return value === registerForm.password;
      },
      message: "两次输入的密码不一致",
      trigger: ["input", "blur"],
    },
  ],
};

// 处理注册
const handleRegister = async () => {
  if (!registerFormRef.value) return;

  try {
    await registerFormRef.value.validate();

    if (!registerForm.agreeTerms) {
      message.warning("请先同意服务条款和隐私政策");
      return;
    }

    const result = await authStore.register({
      username: registerForm.username,
      email: registerForm.email,
      password: registerForm.password,
    });

    if (result.success) {
      message.success("注册成功，请登录");
      router.push("/login");
    } else {
      message.error(result.message);
    }
  } catch (error) {
    console.error("Registration validation failed:", error);
  }
};
</script>

<style scoped lang="scss">
.register-page {
  min-height: 100dvh;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  padding: var(--spacing-lg);
  padding-bottom: calc(var(--spacing-md) + env(safe-area-inset-bottom));
}

/* 深色主题下背景 */
[arco-theme="dark"] .register-page {
  background: linear-gradient(135deg, #0f172a 0%, #1f2937 100%);
}

.register-container {
  max-width: 500px;
  width: 100%;
}

.register-card {
  background: rgba(255, 255, 255, 0.95);
  backdrop-filter: blur(20px);
  border-radius: var(--border-radius-xl);
  padding: var(--spacing-2xl);
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
  border: 1px solid rgba(255, 255, 255, 0.3);
}

/* 深色主题下注册卡片 */
[arco-theme="dark"] .register-card {
  background: rgba(17, 24, 39, 0.85);
  border-color: rgba(255, 255, 255, 0.1);
}

.card-header {
  text-align: center;
  margin-bottom: var(--spacing-xl);
}

.brand {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: var(--spacing-md);
  margin-bottom: var(--spacing-lg);
}

.brand-logo {
  width: 64px;
  height: 64px;
  border-radius: var(--border-radius-large);
}

.brand-title {
  font-size: var(--font-size-2xl);
  font-weight: var(--font-weight-bold);
  color: var(--text-primary);
  margin: 0;
}

.welcome-text {
  color: var(--text-secondary);
  font-size: var(--font-size-md);
  margin: 0;
}

.card-body {
  .arco-form {
    .arco-form-item {
      margin-bottom: var(--spacing-lg);
    }
  }
}

.form-options {
  margin-bottom: var(--spacing-xl);

  :deep(.arco-checkbox) {
    line-height: var(--line-height-relaxed);
  }
}

.register-button {
  height: 48px;
  font-size: var(--font-size-md);
  font-weight: var(--font-weight-medium);
  margin-bottom: var(--spacing-lg);
}

.login-prompt {
  text-align: center;
  color: var(--text-secondary);

  span {
    margin-right: var(--spacing-sm);
  }
}

@media (max-width: 640px) {
  .register-card {
    padding: var(--spacing-xl);
  }

  .brand-title {
    font-size: var(--font-size-xl);
  }
}
</style>
