<template>
  <!-- 手动输入表单 -->
  <a-form
    ref="importFormRef"
    :model="importForm"
    :rules="importRules"
    :label-placement="'top'"
    :size="'large'"
    :show-label="true"
  >
    <a-form-item :label="'游戏角色名称'" :path="'name'" :show-label="true">
      <a-input
        v-model="importForm.name"
        placeholder="例如：主号战士"
        clearable
      />
    </a-form-item>

    <a-form-item
      :label="'Token字符串'"
      :path="'base64Token'"
      :show-label="true"
    >
      <a-input
        v-model="importForm.base64Token"
        type="textarea"
        :rows="3"
        placeholder="粘贴Token字符串..."
        clearable
      >
        <template #suffix>
          <a-popover placement="right" trigger="hover">
            <template #trigger>
              <IconExclamationCircle />
            </template>
            <div class="large-text">
              输入格式为：{"roleToken":"****","sessId":***,"connId":***,"isRestore":***}
            </div>
          </a-popover>
        </template>
      </a-input>
    </a-form-item>

    <!-- 角色详情 -->
    <a-collapse>
      <a-collapse-item title="角色详情 (可选)" name="optional">
        <div class="optional-fields">
          <a-form-item label="服务器">
            <a-input
              v-model="importForm.server"
              placeholder="服务器名称"
            />
          </a-form-item>

          <a-form-item label="自定义连接地址">
            <a-input
              v-model="importForm.wsUrl"
              placeholder="留空使用默认连接"
            />
          </a-form-item>
        </div>
      </a-collapse-item>
    </a-collapse>

    <div class="form-actions">
      <a-button
        type="primary"
        size="large"
        block
        :loading="isImporting"
        @click="handleImport"
      >
        <template #icon>
          
<IconUpload />

        </template>
        添加Token
      </a-button>

      <a-button v-if="tokenStore.hasTokens" size="large" block @click="cancel">
        取消
      </a-button>
    </div>
  </a-form>
</template>
<script lang="ts" setup>
import { useTokenStore } from "@/stores/tokenStore";
import { IconUpload, IconExclamationCircle } from '@arco-design/web-vue/es/icon';
import { Button } from '@arco-design/web-vue'
import { Collapse } from '@arco-design/web-vue'
import { CollapseItem } from '@arco-design/web-vue'
import { Form } from '@arco-design/web-vue'
import { FormItem } from '@arco-design/web-vue'
import { Input } from '@arco-design/web-vue'
import { useArcoMessage } from "@/composables/useArcoMessage";
import { reactive, ref } from "vue";

const $emit = defineEmits(["cancel", "ok"]);

const cancel = () => {
  $emit("cancel");
};

const tokenStore = useTokenStore();
const message = useArcoMessage();
const importFormRef = ref();
const isImporting = ref(false);
const importForm = reactive({
  name: "",
  base64Token: "",
  server: "",
  wsUrl: "",
});
const importRules = {
  name: [
    { required: true, message: "请输入角色名称", trigger: "blur" },
    {
      min: 1,
      max: 50,
      message: "名称长度应在1到50个字符之间",
      trigger: "blur",
    },
  ],
  base64Token: [
    { required: true, message: "请输入Token字符串", trigger: "blur" },
    { min: 20, message: "Token字符串长度应至少20个字符", trigger: "blur" },
  ],
};
const handleImport = () => {
  isImporting.value = true;
  try {
    tokenStore.addToken({
      name: importForm.name,
      token: importForm.base64Token,
      server: importForm.server,
      wsUrl: importForm.wsUrl,
    });
    message.success("Token添加成功");
    importForm.name = "";
    importForm.base64Token = "";
    importForm.server = "";
    importForm.wsUrl = "";
    $emit("ok");
  } catch (error: any) {
    message.error(`添加Token失败: ${error.message || error}`);
  } finally {
    isImporting.value = false;
  }
};
</script>
<style lang="scss" scoped>
.optional-fields {
  display: flex;
  gap: 16px;
  flex-wrap: wrap;

  n-form-item {
    flex: 1 1 45%;
    min-width: 200px;
  }
}

.form-actions {
  margin-top: 24px;
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.form-tips {
  display: flex;
  flex-direction: column;
  gap: 4px;
  margin-top: 4px;
  font-size: 12px;
  color: #888;
}

.cors-tip {
  color: #e67e22;
}
</style>
