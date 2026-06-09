import { ref, computed, onMounted, onUnmounted } from "vue";

const isDark = ref(false);

const checkCurrentTheme = () => {
  return document.body.getAttribute("arco-theme") === "dark";
};

const updateReactiveState = () => {
  isDark.value = checkCurrentTheme();
  window.dispatchEvent(
    new CustomEvent("theme-change", { detail: { isDark: isDark.value } }),
  );
};

export function useTheme() {
  let mutationObserver = null;

  const initTheme = () => {
    const savedTheme = localStorage.getItem("theme");
    const prefersDark = window.matchMedia(
      "(prefers-color-scheme: dark)",
    ).matches;

    if (savedTheme === "dark" || (!savedTheme && prefersDark)) {
      setDarkTheme();
    } else {
      setLightTheme();
    }

    updateReactiveState();
  };

  const setDarkTheme = () => {
    document.body.setAttribute("arco-theme", "dark");
    localStorage.setItem("theme", "dark");

    isDark.value = true;

    window.dispatchEvent(
      new CustomEvent("theme-change", { detail: { isDark: true } }),
    );
  };

  const setLightTheme = () => {
    document.body.removeAttribute("arco-theme");
    localStorage.setItem("theme", "light");

    isDark.value = false;

    window.dispatchEvent(
      new CustomEvent("theme-change", { detail: { isDark: false } }),
    );
  };

  const toggleTheme = () => {
    if (isDark.value) {
      setLightTheme();
    } else {
      setDarkTheme();
    }
  };

  const setupSystemThemeListener = () => {
    const mediaQuery = window.matchMedia("(prefers-color-scheme: dark)");
    mediaQuery.addEventListener("change", () => {
      const savedTheme = localStorage.getItem("theme");
      if (!savedTheme) {
        initTheme();
      }
    });
  };

  const setupDOMObserver = () => {
    if (typeof window !== "undefined") {
      mutationObserver = new MutationObserver(() => {
        updateReactiveState();
      });

      mutationObserver.observe(document.body, {
        attributes: true,
        attributeFilter: ["arco-theme"],
      });
    }
  };

  const cleanup = () => {
    if (mutationObserver) {
      mutationObserver.disconnect();
      mutationObserver = null;
    }
  };

  const getCurrentTheme = () => {
    return isDark.value ? "dark" : "light";
  };

  onMounted(() => {
    setupDOMObserver();
    updateReactiveState();
  });

  onUnmounted(() => {
    cleanup();
  });

  return {
    isDark,
    initTheme,
    toggleTheme,
    setDarkTheme,
    setLightTheme,
    setupSystemThemeListener,
    getCurrentTheme,
    updateReactiveState,
  };
}