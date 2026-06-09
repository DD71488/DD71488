<template>
  <a-config-provider>
    <div id="app">
      <router-view />
    </div>
  </a-config-provider>
</template>

<script setup>
import { onMounted, onUnmounted } from "vue";
import { useTheme } from "@/composables/useTheme";

const { initTheme, setupSystemThemeListener, updateReactiveState } =
  useTheme();

onMounted(() => {
  initTheme();
  setupSystemThemeListener();
  updateReactiveState();
});

onUnmounted(() => {
});
</script>

<style>
:root {
  --app-background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  --text-color: #333;
  --text-secondary: #666;
  --text-tertiary: #999;
  --bg-color: #ffffff;
  --border-color: #e0e0e0;
}

[arco-theme="dark"] {
  --app-background: linear-gradient(135deg, #2d3748 0%, #4a5568 100%);
  --text-color: #ffffff !important;
  --text-secondary: #cbd5e0 !important;
  --text-tertiary: #a0aec0 !important;
  --bg-color: #1a202c !important;
  --border-color: #4a5568 !important;
}

[arco-theme="dark"] {
  color-scheme: dark;
}

#app {
  min-height: 100vh;
  background: var(--app-background);
  color: var(--text-color);
  transition:
    background 0.3s ease,
    color 0.3s ease;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html,
body {
  height: 100%;
  font-family:
    "SF Pro Display",
    -apple-system,
    BlinkMacSystemFont,
    "Segoe UI",
    "PingFang SC",
    "Hiragino Sans GB",
    "Microsoft YaHei",
    "Helvetica Neue",
    Helvetica,
    Arial,
    sans-serif;
  color: var(--text-color);
  transition: color 0.3s ease;
}

::-webkit-scrollbar {
  width: 6px;
  height: 6px;
}

::-webkit-scrollbar-track {
  background: rgba(255, 255, 255, 0.1);
  border-radius: 3px;
}

::-webkit-scrollbar-thumb {
  background: rgba(255, 255, 255, 0.3);
  border-radius: 3px;
}

::-webkit-scrollbar-thumb:hover {
  background: rgba(255, 255, 255, 0.5);
}
</style>