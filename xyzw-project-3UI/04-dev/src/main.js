import "virtual:uno.css";
import "@arco-design/web-vue/dist/arco.css";
import "./assets/styles/global.scss";

import { createApp } from "vue";
import { createPinia } from "pinia";
import ArcoVue from "@arco-design/web-vue";
import router from "./router";
import App from "./App.vue";

const app = createApp(App);

app.use(createPinia());
app.use(ArcoVue);
app.use(router);

const applyTheme = () => {
  const saved = localStorage.getItem("theme") || "auto";
  if (saved === "dark") {
    document.body.setAttribute("arco-theme", "dark");
  } else if (saved === "light") {
    document.body.removeAttribute("arco-theme");
  } else {
    const prefersDark =
      window.matchMedia &&
      window.matchMedia("(prefers-color-scheme: dark)").matches;
    if (prefersDark)
      document.body.setAttribute("arco-theme", "dark");
    else document.body.removeAttribute("arco-theme");

    if (window.matchMedia) {
      window
        .matchMedia("(prefers-color-scheme: dark)")
        .addEventListener("change", (e) => {
          const t = localStorage.getItem("theme") || "auto";
          if (t === "auto") {
            if (e.matches)
              document.body.setAttribute("arco-theme", "dark");
            else document.body.removeAttribute("arco-theme");
          }
        });
    }
  }
};

applyTheme();

app.mount("#app");