<template>
  <a-button shape="circle" size="medium" class="theme-toggle" @click="toggleTheme">
    <template #icon>
      <IconSun v-if="isDark" />
      <IconMoon v-else />
    </template>
  </a-button>
</template>

<script setup>
import { IconSun, IconMoon } from "@arco-design/web-vue/es/icon";
import { useTheme } from "@/composables/useTheme";

const { isDark, toggleTheme } = useTheme();
</script>

<style scoped lang="scss">
.theme-toggle {
  transition: all 0.3s ease;

  &:hover {
    transform: scale(1.1);
  }
}
</style>