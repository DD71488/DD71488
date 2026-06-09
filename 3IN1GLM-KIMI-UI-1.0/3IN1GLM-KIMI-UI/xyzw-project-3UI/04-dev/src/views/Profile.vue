<template>
  <div class="profile-page">
    <div class="container">
      <div class="page-header">
        <h1>个人资料</h1>
        <p>管理您的账户信息和偏好设置</p>
      </div>

      <h2>基本信息</h2>
      <a-card>
        <a-form :model="userInfo" label-placement="left" label-width="80px">
          <a-form-item label="用户名">
            <a-input v-model:value="userInfo.username" readonly />
          </a-form-item>
          <a-form-item label="邮箱">
            <a-input v-model:value="userInfo.email" />
          </a-form-item>
          <a-form-item label="昵称">
            <a-input
              v-model:value="userInfo.nickname"
              placeholder="请输入昵称"
            />
          </a-form-item>
          <a-form-item label="手机">
            <a-input
              v-model:value="userInfo.phone"
              placeholder="请输入手机号"
            />
          </a-form-item>
        </a-form>

        <template #actions>
          <a-button type="primary" @click="saveProfile"> 保存更改 </a-button>
        </template>
      </a-card>

      <h2>密码修改</h2>
      <a-card>
        <a-form
          :model="passwordForm"
          ref="passwordFormRef"
          label-placement="left"
          label-width="100px"
        >
          <a-form-item label="当前密码" prop="currentPassword">
            <a-input
              v-model:value="passwordForm.currentPassword"
              type="password"
              placeholder="请输入当前密码"
            />
          </a-form-item>
          <a-form-item label="新密码" prop="newPassword">
            <a-input
              v-model:value="passwordForm.newPassword"
              type="password"
              placeholder="请输入新密码"
            />
          </a-form-item>
          <a-form-item label="确认新密码" prop="confirmPassword">
            <a-input
              v-model:value="passwordForm.confirmPassword"
              type="password"
              placeholder="请再次输入新密码"
            />
          </a-form-item>
        </a-form>
        <template #actions>
          <a-button type="primary" @click="changePassword"> 修改密码 </a-button>
        </template>
      </a-card>

      <h2>系统偏好</h2>
      <a-card>
        <a-form>
          <a-form-item label="主题设置">
            <a-select
              v-model:model-value="preferences.theme"
              :options="themeOptions"
              @change="updateTheme"
            />
            <template #extra> 选择您喜欢的界面主题 </template>
          </a-form-item>
          <a-form-item label="语言设置">
            <a-select
              v-model:model-value="preferences.language"
              :options="languageOptions"
            />
            <template #extra> 选择界面显示语言 </template>
          </a-form-item>
          <a-form-item label="通知设置">
            <a-switch v-model:model-value="preferences.notifications" />
            <template #extra> 接收任务完成通知 </template>
          </a-form-item>
          <a-form-item label="自动执行">
            <a-switch v-model:model-value="preferences.autoExecute" />
            <template #extra> 默认开启任务自动执行 </template>
          </a-form-item>
        </a-form>
      </a-card>

      <h2>Token管理</h2>
      <a-card class="token-manager-card">
        <template #header-extra>
          <div class="header-actions">
            <a-button size="small" @click="refreshTokenManager" :disabled="tokenLoading">
              <template #icon>
                <IconRefresh />
              </template>
              刷新
            </a-button>
            <a-button size="small" type="warning" @click="exportTokens" :disabled="tokenLoading">
              <template #icon>
                <IconDownload />
              </template>
              导出
            </a-button>
            <a-upload
              :show-file-list="false"
              accept=".json"
              @change="importTokens"
              :disabled="tokenLoading"
            >
              <template #upload-button>
                <a-button size="small" type="info">
                  <template #icon>
                    <IconUpload />
                  </template>
                  导入
                </a-button>
              </template>
            </a-upload>
          </div>
        </template>

        <div class="token-section">
          <h4 class="section-title">用户认证Token</h4>
          <div v-if="localTokenManager.userToken" class="token-item">
            <div class="token-info">
              <span class="token-label">Token:</span>
              <span class="token-value">{{ maskToken(localTokenManager.userToken) }}</span>
            </div>
            <a-button size="tiny" type="error" @click="clearUserToken" :disabled="tokenLoading">
              清除
            </a-button>
          </div>
          <div v-else class="empty-token">
            <a-empty description="未设置用户Token" />
          </div>
        </div>

        <div class="token-section">
          <div class="section-header">
            <h4 class="section-title">
              游戏角色Token
              <a-tag size="small" type="info" class="token-count-tag">
                {{ Object.keys(localTokenManager.gameTokens).length }}个
              </a-tag>
            </h4>
            <a-button size="small" type="primary" @click="addToken" :disabled="tokenLoading">
              <template #icon>
                <IconEdit />
              </template>
              添加Token
            </a-button>
          </div>

          <div v-if="Object.keys(localTokenManager.gameTokens).length === 0" class="empty-state">
            <a-empty description="暂无游戏Token" />
          </div>
          <div v-else class="game-tokens-list">
            <div
              v-for="(tokenData, roleKey) in localTokenManager.gameTokens"
              :key="roleKey"
              class="game-token-item"
              :class="{ selected: selectedGameRoleKey === roleKey }"
            >
              <div class="token-header">
                <div class="role-info">
                  <div class="role-name-row">
                    <span class="role-name">{{ tokenData.roleName }}</span>
                    <a-tag size="small" type="default" class="server-tag">
                      {{ tokenData.server }}
                    </a-tag>
                  </div>
                  <div class="role-meta">
                    <span
                      class="import-method-tag"
                      :class="`method-${tokenData.importMethod}`"
                    >
                      {{ getImportMethodLabel(tokenData.importMethod) }}
                    </span>
                    <span class="last-used">
                      最后使用: {{ formatDate(tokenData.lastUsed) }}
                    </span>
                  </div>
                </div>
                <div class="token-actions">
                  <a-button
                    size="tiny"
                    :type="getWebSocketStatus(roleKey) === 'connected' ? 'success' : 'default'"
                    @click="toggleWebSocket(roleKey, tokenData)"
                    :disabled="tokenLoading"
                  >
                    <template #icon>
                      <component :is="getStatusIcon(getWebSocketStatus(roleKey))" />
                    </template>
                    {{ getWebSocketStatus(roleKey) === 'connected' ? '断开' : '连接' }}
                  </a-button>
                  <a-dropdown
                    trigger="click"
                    :options="getTokenMenuOptions(tokenData)"
                    @select="(key) => handleMenuSelect(key, roleKey, tokenData)"
                  >
                    <a-button size="tiny" type="tertiary">
                      <template #icon>
                        <IconMore />
                      </template>
                    </a-button>
                  </a-dropdown>
                </div>
              </div>

              <div class="token-details">
                <div class="detail-item">
                  <span class="detail-label">Token:</span>
                  <span class="detail-value">{{ maskToken(tokenData.token) }}</span>
                </div>
                <div class="detail-item">
                  <span class="detail-label">WebSocket URL:</span>
                  <span class="detail-value">{{ tokenData.wsUrl || '默认' }}</span>
                </div>
                <div class="detail-item">
                  <span class="detail-label">创建时间:</span>
                  <span class="detail-value">{{ formatDate(tokenData.createdAt) }}</span>
                </div>
                <div class="detail-item">
                  <span class="detail-label">连接状态:</span>
                  <a-tag size="small" :type="getStatusType(getWebSocketStatus(roleKey))">
                    {{ getStatusText(getWebSocketStatus(roleKey)) }}
                  </a-tag>
                </div>
              </div>
            </div>
          </div>
        </div>

        <template #action>
          <a-dropdown trigger="click" :options="bulkOptions" @select="handleBulkAction">
            <a-button type="primary">
              <template #icon>
                <IconMenu />
              </template>
              批量操作
            </a-button>
          </a-dropdown>
          <a-button type="warning" @click="cleanExpired" :disabled="tokenLoading">
            清理过期Token
          </a-button>
          <a-button type="error" @click="clearAllTokens" :disabled="tokenLoading">
            清除所有Token
          </a-button>
        </template>
      </a-card>

      <h2>账户安全</h2>
      <a-card>
        <div class="security-items">
          <div class="security-item">
            <div class="security-info">
              <h3>两步验证</h3>
              <p>为您的账户添加额外的安全保护</p>
            </div>
            <a-button @click="setupTwoFactor"> 设置 </a-button>
          </div>

          <div class="security-item">
            <div class="security-info">
              <h3>登录历史</h3>
              <p>查看最近的登录记录</p>
            </div>
            <a-button @click="viewLoginHistory"> 查看 </a-button>
          </div>

          <div class="security-item">
            <div class="security-info">
              <h3>数据导出</h3>
              <p>导出您的所有数据</p>
            </div>
            <a-button @click="exportData"> 导出 </a-button>
          </div>

          <div class="security-item danger">
            <div class="security-info">
              <h3>删除账户</h3>
              <p>永久删除您的账户和所有数据</p>
            </div>
            <a-button type="error" @click="deleteAccount"> 删除 </a-button>
          </div>
        </div>
      </a-card>
    </div>
  </div>
</template>

<script setup>
import { ref, reactive, computed, onMounted, h } from "vue";
import { useArcoMessage } from "@/composables/useArcoMessage";
import { useArcoDialog } from "@/composables/useArcoDialog";
import { useAuthStore } from "@/stores/auth";
import { useLocalTokenStore } from "@/stores/localTokenManager";
import { useGameRolesStore } from "@/stores/gameRoles";
import { IconRefresh, IconDownload, IconUpload, IconEdit, IconMore, IconMenu, IconWifi, IconExclamationCircle, IconClockCircle, IconCopy, IconSync, IconDelete } from "@arco-design/web-vue/es/icon";

const message = useArcoMessage();
const dialog = useArcoDialog();
const authStore = useAuthStore();
const localTokenManager = useLocalTokenStore();
const gameRoles = useGameRolesStore();
const passwordFormRef = ref(null);

const tokenLoading = ref(false);

const selectedGameRoleKey = computed(() => {
  return gameRoles.selectedRole?.id || null;
});

const userInfo = reactive({
  username: "",
  email: "",
  nickname: "",
  phone: "",
  avatar: "",
});

const passwordForm = reactive({
  currentPassword: "",
  newPassword: "",
  confirmPassword: "",
});

const preferences = reactive({
  theme: "auto",
  language: "zh-CN",
  notifications: true,
  autoExecute: false,
});

const themeOptions = [
  { label: "跟随系统", value: "auto" },
  { label: "浅色主题", value: "light" },
  { label: "深色主题", value: "dark" },
];

const languageOptions = [
  { label: "简体中文", value: "zh-CN" },
  { label: "English", value: "en-US" },
];

const maskToken = (token) => {
  if (!token) return "";
  const len = token.length;
  return len <= 8
    ? token
    : token.substring(0, 8) + "***" + token.substring(len - 8);
};

const formatDate = (dateStr) => new Date(dateStr).toLocaleString("zh-CN");

const getWebSocketStatus = (roleKey) => localTokenManager.getWebSocketStatus(roleKey);

const getStatusType = (status) => {
  switch (status) {
    case "connected":
      return "success";
    case "error":
      return "error";
    case "connecting":
      return "warning";
    default:
      return "default";
  }
};

const getStatusText = (status) => {
  switch (status) {
    case "connected":
      return "已连接";
    case "error":
      return "连接错误";
    case "connecting":
      return "连接中";
    default:
      return "未连接";
  }
};

const getStatusIcon = (status) => {
  switch (status) {
    case "connected":
      return IconWifi;
    case "error":
      return IconExclamationCircle;
    case "connecting":
      return IconClockCircle;
    default:
      return IconWifi;
  }
};

const getImportMethodLabel = (method) => {
  switch (method) {
    case "url":
      return "URL导入";
    case "bin":
      return "Bin导入";
    case "wxQrcode":
      return "微信二维码";
    default:
      return "手动导入";
  }
};

const addToken = () => {
  message.info("请使用页面顶部的Token导入功能添加新Token");
};

const getTokenMenuOptions = (tokenData) => {
  const options = [
    {
      label: "编辑",
      key: "edit",
      icon: () => h(IconEdit),
    },
    {
      label: "复制Token",
      key: "copy",
      icon: () => h(IconCopy),
    },
  ];

  if (tokenData.importMethod === "url" && tokenData.sourceUrl) {
    options.unshift({
      label: "从URL刷新",
      key: "refresh-url",
      icon: () => h(IconSync),
    });
  } else {
    options.unshift({
      label: "刷新Token",
      key: "refresh",
      icon: () => h(IconRefresh),
    });
  }

  options.push(
    { type: "divider" },
    {
      label: "删除",
      key: "delete",
      icon: () => h(IconDelete),
    },
  );

  return options;
};

const handleMenuSelect = (menuKey, roleKey, tokenData) => {
  switch (menuKey) {
    case "edit":
      editToken();
      break;
    case "copy":
      copyToken(tokenData.token);
      break;
    case "refresh":
      refreshGameToken(roleKey);
      break;
    case "refresh-url":
      refreshFromUrl(roleKey, tokenData);
      break;
    case "delete":
      removeGameToken(roleKey);
      break;
  }
};

const refreshTokenManager = () => {
  localTokenManager.initTokenManager();
  message.success("Token数据已刷新");
};

const clearUserToken = () => {
  dialog.warning({
    title: "清除用户Token",
    content: "确定要清除用户认证Token吗？这将会退出登录。",
    positiveText: "确定",
    negativeText: "取消",
    onPositiveClick: () => {
      localTokenManager.clearUserToken();
      message.success("用户Token已清除");
    },
  });
};

const toggleWebSocket = (roleKey, tokenData) => {
  if (getWebSocketStatus(roleKey) === "connected") {
    localTokenManager.closeWebSocketConnection(roleKey);
    message.info("WebSocket连接已断开");
  } else {
    try {
      localTokenManager.createWebSocketConnection(
        roleKey,
        tokenData.token,
        tokenData.wsUrl,
      );
      message.success("正在建立WebSocket连接...");
    } catch {
      message.error("建立WebSocket连接失败");
    }
  }
};

const refreshGameToken = (roleKey) => {
  const tokenData = localTokenManager.getGameToken(roleKey);
  if (!tokenData) {
    message.error("找不到对应的Token数据");
    return;
  }
  if (!tokenData.sourceUrl) {
    message.warning(
      "该Token没有配置源地址，无法重新生成。请手动重新导入Token。",
    );
    return;
  }

  dialog.info({
    title: "重新获取Token",
    content: "确定要从源地址重新获取此角色的Token吗？",
    positiveText: "确定",
    negativeText: "取消",
    onPositiveClick: async () => {
      try {
        const loadingMsg = message.loading("正在重新获取Token...", { duration: 0 });
        let response;

        const sourceUrl = tokenData.sourceUrl;
        if (
          sourceUrl.startsWith(window.location.origin) ||
          sourceUrl.startsWith("/") ||
          sourceUrl.startsWith("http://localhost") ||
          sourceUrl.startsWith("http://127.0.0.1")
        ) {
          response = await fetch(sourceUrl);
        } else {
          try {
            response = await fetch(sourceUrl, {
              method: "GET",
              headers: { Accept: "application/json" },
              mode: "cors",
            });
          } catch (corsError) {
            throw new Error(
              `跨域请求被阻止。请确保目标服务器支持CORS。错误详情: ${corsError.message}`,
            );
          }
        }

        if (!response.ok) {
          throw new Error(`请求失败: ${response.status} ${response.statusText}`);
        }

        const data = await response.json();
        if (!data.token) throw new Error("返回数据中未找到token字段");

        localTokenManager.updateGameToken(roleKey, {
          token: data.token,
          server: data.server || tokenData.server,
          regeneratedAt: new Date().toISOString(),
          lastRefreshed: new Date().toISOString(),
        });

        if (localTokenManager.getWebSocketStatus(roleKey) === "connected") {
          localTokenManager.closeWebSocketConnection(roleKey);
          setTimeout(() => {
            localTokenManager.createWebSocketConnection(
              roleKey,
              data.token,
              tokenData.wsUrl,
            );
          }, 500);
        }

        loadingMsg.destroy();
        message.success("Token已成功重新获取");
      } catch (error) {
        console.error("重新获取Token失败:", error);
        message.error(error.message || "Token重新获取失败");
      }
    },
  });
};

const removeGameToken = (roleKey) => {
  dialog.warning({
    title: "删除Token",
    content:
      "确定要删除此角色的游戏Token吗？这将断开相关的WebSocket连接。",
    positiveText: "确定删除",
    negativeText: "取消",
    onPositiveClick: () => {
      localTokenManager.removeGameToken(roleKey);
      message.success("Token已删除");
    },
  });
};

const editToken = (roleKey, tokenData) => {
  message.info("编辑功能正在开发中");
};

const copyToken = async (token) => {
  try {
    await navigator.clipboard.writeText(token);
    message.success("Token已复制到剪贴板");
  } catch {
    const textarea = document.createElement("textarea");
    textarea.value = token;
    document.body.appendChild(textarea);
    textarea.select();
    document.execCommand("copy");
    document.body.removeChild(textarea);
    message.success("Token已复制到剪贴板");
  }
};

const refreshFromUrl = async (roleKey, tokenData) => {
  if (!tokenData.sourceUrl) {
    message.warning("该Token没有配置源URL");
    return;
  }

  dialog.info({
    title: "从URL刷新Token",
    content: `确定要从源URL重新获取Token吗？\n源地址：${tokenData.sourceUrl}`,
    positiveText: "确定",
    negativeText: "取消",
    onPositiveClick: async () => {
      try {
        const loadingMsg = message.loading("正在从URL获取新Token...", { duration: 0 });
        let response;

        if (
          tokenData.sourceUrl.startsWith(window.location.origin) ||
          tokenData.sourceUrl.startsWith("/") ||
          tokenData.sourceUrl.startsWith("http://localhost") ||
          tokenData.sourceUrl.startsWith("http://127.0.0.1")
        ) {
          response = await fetch(tokenData.sourceUrl);
        } else {
          const proxyUrl = `/api/proxy?url=${encodeURIComponent(tokenData.sourceUrl)}`;
          response = await fetch(proxyUrl);
        }

        if (!response.ok) {
          throw new Error(`HTTP ${response.status}: ${response.statusText}`);
        }

        const data = await response.json();
        if (!data.token) throw new Error("返回数据中未找到token字段");

        localTokenManager.updateGameToken(roleKey, {
          token: data.token,
          lastUsed: new Date().toISOString(),
        });

        loadingMsg.destroy();
        message.success("Token刷新成功");
      } catch (error) {
        console.error("URL刷新Token失败:", error);
        message.error("刷新失败: " + error.message);
      }
    },
  });
};

const exportTokens = () => {
  try {
    const tokensData = localTokenManager.exportTokens();
    const jsonStr = JSON.stringify(tokensData, null, 2);
    const blob = new Blob([jsonStr], { type: "application/json" });
    const link = document.createElement("a");

    link.href = URL.createObjectURL(blob);
    link.download = `tokens_backup_${new Date().toISOString().split("T")[0]}.json`;
    link.click();

    message.success("Token数据已导出");
  } catch (error) {
    message.error("导出失败: " + error.message);
  }
};

const importTokens = (fileItemList, fileItem) => {
  const file = fileItem?.file;
  if (!file) return;
  const reader = new FileReader();
  reader.onload = (event) => {
    try {
      const data = JSON.parse(event.target.result);
      const result = localTokenManager.importTokens(data);
      if (result.success) {
        message.success(result.message);
        gameRoles.fetchGameRoles();
      } else {
        message.error(result.message);
      }
    } catch {
      message.error("导入失败：文件格式错误");
    }
  };
  reader.readAsText(file);
};

const cleanExpired = () => {
  dialog.info({
    title: "清理过期Token",
    content: "确定要清理超过24小时未使用的Token吗？",
    positiveText: "确定",
    negativeText: "取消",
    onPositiveClick: () => {
      const count = localTokenManager.cleanExpiredTokens();
      message.success(`已清理 ${count} 个过期Token`);
    },
  });
};

const clearAllTokens = () => {
  dialog.error({
    title: "清除所有Token",
    content:
      "确定要清除所有游戏Token吗？这将断开所有WebSocket连接。此操作不可恢复！",
    positiveText: "确定清除",
    negativeText: "取消",
    onPositiveClick: () => {
      localTokenManager.clearAllGameTokens();
      message.success("所有游戏Token已清除");
    },
  });
};

const bulkOptions = [
  { label: "清理过期Token", key: "clean-expired" },
  { label: "清除所有Token", key: "clear-all" },
  { label: "导出所有Token", key: "export-all" },
  { label: "刷新Token管理器", key: "refresh-manager" },
];

const handleBulkAction = (key) => {
  switch (key) {
    case "clean-expired":
      cleanExpired();
      break;
    case "clear-all":
      clearAllTokens();
      break;
    case "export-all":
      exportTokens();
      break;
    case "refresh-manager":
      refreshTokenManager();
      break;
  }
};

const saveProfile = async () => {
  try {
    message.success("个人信息保存成功");
  } catch {
    message.error("保存失败，请稍后重试");
  }
};

const changePassword = async () => {
  if (!passwordFormRef.value) return;

  try {
    await passwordFormRef.value.validate();
    message.success("密码修改成功");
    Object.keys(passwordForm).forEach((key) => {
      passwordForm[key] = "";
    });
  } catch {
    // 验证失败
  }
};

const updateTheme = (theme) => {
  preferences.theme = theme;
  localStorage.setItem("theme", theme);
  if (theme === "dark") {
    document.body.setAttribute("arco-theme", "dark");
  } else if (theme === "light") {
    document.body.removeAttribute("arco-theme");
  } else {
    if (
      window.matchMedia &&
      window.matchMedia("(prefers-color-scheme: dark)").matches
    ) {
      document.body.setAttribute("arco-theme", "dark");
    } else {
      document.body.removeAttribute("arco-theme");
    }
  }
};

const setupTwoFactor = () => {
  message.info("两步验证设置功能开发中...");
};

const viewLoginHistory = () => {
  message.info("登录历史查看功能开发中...");
};

const exportData = () => {
  message.info("数据导出功能开发中...");
};

const deleteAccount = () => {
  dialog.warning({
    title: "删除账户",
    content: "此操作将永久删除您的账户和所有数据，且无法恢复。确定要继续吗？",
    positiveText: "确定删除",
    negativeText: "取消",
    onPositiveClick: () => {
      message.error("账户删除功能暂未开放");
    },
  });
};

onMounted(() => {
  if (authStore.userInfo) {
    Object.assign(userInfo, authStore.userInfo);
  }

  const savedPrefs = localStorage.getItem("userPreferences");
  if (savedPrefs) {
    try {
      Object.assign(preferences, JSON.parse(savedPrefs));
    } catch (error) {
      console.error("解析用户偏好失败:", error);
    }
  }
});
</script>

<style scoped lang="scss">
.profile-page {
  min-height: 100dvh;
  background: var(--bg-secondary);
  padding: var(--spacing-xl) 0;
  padding-bottom: calc(var(--spacing-md) + env(safe-area-inset-bottom));
}

.container {
  max-width: 800px;
  margin: 0 auto;
  padding: 0 var(--spacing-lg);
}

.page-header {
  text-align: center;
  margin-bottom: var(--spacing-2xl);

  h1 {
    font-size: var(--font-size-3xl);
    font-weight: var(--font-weight-bold);
    color: var(--text-primary);
    margin-bottom: var(--spacing-sm);
  }

  p {
    color: var(--text-secondary);
    font-size: var(--font-size-lg);
    margin: 0;
  }
}

h2 {
  font-size: var(--font-size-xl);
  font-weight: var(--font-weight-semibold);
  color: var(--text-primary);
  margin-bottom: var(--spacing-lg);
}

.profile-section {
  margin-bottom: var(--spacing-2xl);
}

.security-items {
  display: flex;
  gap: var(--spacing-lg);
  flex-direction: column;

  .security-item {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: var(--spacing-lg);
    border: 1px solid var(--border-light);
    border-radius: var(--border-radius-medium);
    transition: all var(--transition-fast);

    &:hover {
      box-shadow: var(--shadow-light);
    }

    &.danger {
      border-color: var(--error-color);
      background: rgba(208, 48, 80, 0.05);
    }

    .security-info {
      flex: 1;

      h3 {
        font-size: var(--font-size-md);
        font-weight: var(--font-weight-medium);
        color: var(--text-primary);
        margin-bottom: var(--spacing-xs);
      }

      p {
        color: var(--text-secondary);
        font-size: var(--font-size-sm);
        margin: 0;
      }
    }
  }
}

.token-manager-card {
  margin-bottom: var(--spacing-2xl);
}

.header-actions {
  display: flex;
  gap: 8px;
  align-items: center;
}

.token-section {
  margin-bottom: var(--spacing-lg);
}

.section-title {
  font-size: var(--font-size-md);
  font-weight: var(--font-weight-medium);
  color: var(--text-primary);
  margin: 0 0 var(--spacing-sm) 0;
  display: flex;
  align-items: center;
  gap: 8px;
}

.token-count-tag {
  font-size: var(--font-size-xs);
}

.section-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: var(--spacing-sm);
}

.token-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: var(--spacing-sm);
  border: 1px solid var(--border-light);
  border-radius: var(--border-radius-small);
  margin-bottom: var(--spacing-sm);
}

.token-info {
  flex: 1;
  display: flex;
  align-items: center;
  gap: 8px;
  overflow: hidden;
}

.token-label {
  color: var(--text-secondary);
  font-size: var(--font-size-sm);
  flex-shrink: 0;
}

.token-value {
  color: var(--text-primary);
  font-family: monospace;
  font-size: var(--font-size-sm);
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

.empty-token {
  padding: var(--spacing-lg);
  text-align: center;
}

.empty-state {
  padding: var(--spacing-xl);
  text-align: center;
}

.game-tokens-list {
  display: flex;
  flex-direction: column;
  gap: var(--spacing-sm);
}

.game-token-item {
  border: 1px solid var(--border-light);
  border-radius: var(--border-radius-medium);
  padding: var(--spacing-sm);
  transition: all var(--transition-fast);

  &:hover {
    box-shadow: var(--shadow-light);
  }

  &.selected {
    border-color: var(--primary-color);
    background: rgba(24, 144, 255, 0.05);
  }
}

.token-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: var(--spacing-sm);
}

.role-info {
  flex: 1;
}

.role-name-row {
  display: flex;
  align-items: center;
  gap: 8px;
  margin-bottom: 4px;
}

.role-name {
  font-weight: var(--font-weight-medium);
  color: var(--text-primary);
  font-size: var(--font-size-sm);
}

.server-tag {
  font-size: var(--font-size-xs);
}

.role-meta {
  display: flex;
  align-items: center;
  gap: var(--spacing-sm);
  font-size: var(--font-size-xs);
  color: var(--text-secondary);
}

.import-method-tag {
  padding: 1px 6px;
  border-radius: var(--border-radius-small);
  background: var(--bg-tertiary);
  font-size: var(--font-size-xs);

  &.method-url {
    background: rgba(24, 144, 255, 0.1);
    color: var(--primary-color);
  }

  &.method-bin {
    background: rgba(82, 196, 26, 0.1);
    color: var(--success-color);
  }

  &.method-wxQrcode {
    background: rgba(114, 46, 209, 0.1);
    color: var(--purple-color, #722ed1);
  }
}

.last-used {
  color: var(--text-tertiary);
}

.token-actions {
  display: flex;
  gap: 4px;
  align-items: center;
  flex-shrink: 0;
}

.token-details {
  display: flex;
  flex-direction: column;
  gap: 4px;
  padding-top: var(--spacing-xs);
  border-top: 1px solid var(--border-light);
}

.detail-item {
  display: flex;
  gap: 8px;
  font-size: var(--font-size-xs);
}

.detail-label {
  color: var(--text-secondary);
  flex-shrink: 0;
  min-width: 90px;
}

.detail-value {
  color: var(--text-primary);
  font-family: monospace;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

@media (max-width: 768px) {
  .container {
    padding: 0 var(--spacing-md);
  }

  .info-card {
    padding: var(--spacing-lg);
  }

  .preference-item,
  .security-item {
    flex-direction: column;
    align-items: flex-start;
    gap: var(--spacing-md);
  }

  .preference-item .arco-select,
  .preference-item .arco-switch {
    width: 100%;
  }

  .token-header {
    flex-direction: column;
    gap: var(--spacing-sm);
  }

  .token-actions {
    align-self: flex-end;
  }
}
</style>