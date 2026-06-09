<template>
  <!-- URL获取表单 -->
  <a-form
    ref="urlFormRef"
    :model="urlForm"
    :rules="urlRules"
    label-placement="top"
    size="large"
  >
    <a-form-item label="游戏角色名称" path="name">
      <a-input
        v-model="urlForm.name"
        placeholder="例如：主号战士"
        clearable
      />
    </a-form-item>

    <a-form-item label="Token获取地址" path="url">
      <a-input
        v-model="urlForm.url"
        placeholder="输入API接口地址..."
        clearable
      />
      <template #feedback>
        <div class="form-tips">
          <span class="form-tip"> 接口应返回包含token字段的JSON数据 </span>
          <span class="form-tip cors-tip">
            注意：如果是跨域URL，服务器需要支持CORS，否则会被浏览器阻止
          </span>
        </div>
      </template>
    </a-form-item>

    <!-- 角色详情 -->
    <a-collapse>
      <a-collapse-item title="角色详情 (可选)" name="optional">
        <div class="optional-fields">
          <a-form-item label="服务器">
            <a-input v-model="urlForm.server" placeholder="服务器名称" />
          </a-form-item>

          <a-form-item label="自定义连接地址">
            <a-input
              v-model="urlForm.wsUrl"
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
        @click="handleUrlImport"
      >
        <template #icon>
          
<IconUpload />

        </template>
        获取并添加Token
      </a-button>

      <a-button v-if="tokenStore.hasTokens" size="large" block @click="cancel">
        取消
      </a-button>
    </div>
  </a-form>
</template>
<script lang="ts" setup>
import { ref, reactive } from "vue";
import { useTokenStore } from "@/stores/tokenStore";
import { IconUpload } from '@arco-design/web-vue/es/icon';

import { Form } from '@arco-design/web-vue'
import { FormItem } from '@arco-design/web-vue'
import { Input } from '@arco-design/web-vue'
import { Button } from '@arco-design/web-vue'
import { Collapse } from '@arco-design/web-vue'
import { CollapseItem } from '@arco-design/web-vue'
import { useArcoMessage } from "@/composables/useArcoMessage";
import axios from "axios";

const tokenStore = useTokenStore();
const message = useArcoMessage();
const urlFormRef = ref();
const isImporting = ref(false);

const $emit = defineEmits(["cancel", "ok"]);

const cancel = () => {
  $emit("cancel");
};

const urlForm = reactive({
  name: "",
  url: "",
  server: "",
  wsUrl: "",
});

const urlRules = {
  name: [
    { required: true, message: "请输入角色名称", trigger: "blur" },
    {
      min: 1,
      max: 50,
      message: "名称长度应在1到50个字符之间",
      trigger: "blur",
    },
  ],
  url: [
    { required: true, message: "请输入Token获取地址", trigger: "blur" },
    { type: "url", message: "请输入有效的URL地址", trigger: "blur" },
  ],
};

const handleUrlImport = async () => {
  if (!urlFormRef.value) return;

  try {
    await urlFormRef.value.validate();
  } catch {
    message.error("请修正表单中的错误后再提交");
    return;
  }

  isImporting.value = true;
  try {
    const response = await axios.get(urlForm.url);
    if (response.status === 200 && response.data && response.data.token) {
      const newToken = {
        name: urlForm.name,
        token: response.data.token,
        server: urlForm.server || "未知",
        wsUrl: urlForm.wsUrl || "",
        id: Date.now().toString(),
        sourceUrl: urlForm.url,
        importMethod: 'url'
      };
      tokenStore.addToken(newToken);
      message.success("Token添加成功");
      // 重置表单
      urlForm.name = "";
      urlForm.url = "";
      urlForm.server = "";
      urlForm.wsUrl = "";
      $emit("ok");
    } else {
      message.error("接口返回数据格式不正确，未找到token字段");
    }
  } catch (error) {
    message.error("获取Token失败，请检查URL地址或网络连接");
  } finally {
    isImporting.value = false;
  }
};
</script>

<style lang="scss" scoped>
.form-tips {
  display: flex;
  flex-direction: column;
  gap: 4px;
  margin-top: 4px;

  .form-tip {
    font-size: 12px;
    color: #888;
  }

  .cors-tip {
    color: #e67e22;
  }
}

.optional-fields {
  display: flex;
  flex-direction: column;
  gap: 16px;
  margin-top: 8px;
}

.form-actions {
  margin-top: 24px;
  display: flex;
  flex-direction: column;
  gap: 12px;
}
</style>
