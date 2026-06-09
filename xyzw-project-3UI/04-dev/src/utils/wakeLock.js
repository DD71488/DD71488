import { storage } from "./crossPlatform"

class WakeLockManager {
  constructor() {
    this.env = storage.getEnvironment()
    this.isActive = false
    this.wakeLock = null
    this.keepAwakeInterval = null
    this.visibilityHandler = null
    console.log(`WakeLockManager初始化, 当前环境: ${this.env}`)
  }

  async request() {
    if (this.isActive) {
      console.log("防休眠已处于激活状态")
      return true
    }
    try {
      console.log(`请求防休眠, 环境: ${this.env}`)
      switch (this.env) {
        case "web":
          return await this.requestWebWakeLock()
        case "tauri":
          return await this.requestTauriWakeLock()
        case "capacitor":
          return await this.requestCapacitorWakeLock()
        default:
          console.warn("未知环境类型")
          return false
      }
    } catch (e) {
      console.error("WakeLock请求失败:", e)
      return false
    }
  }

  async release() {
    if (!this.isActive) {
      console.log("防休眠未激活,无需释放")
      return
    }
    try {
      console.log(`释放防休眠, 环境: ${this.env}`)
      switch (this.env) {
        case "web":
          await this.releaseWebWakeLock()
          break
        case "tauri":
          await this.releaseTauriWakeLock()
          break
        case "capacitor":
          await this.releaseCapacitorWakeLock()
          break
      }
      this.isActive = false
      if (this.visibilityHandler && typeof document !== "undefined") {
        document.removeEventListener("visibilitychange", this.visibilityHandler)
        this.visibilityHandler = null
      }
    } catch (e) {
      console.error("WakeLock释放失败:", e)
    }
  }

  async requestWebWakeLock() {
    if (typeof navigator === "undefined" || !("wakeLock" in navigator)) {
      console.warn("当前浏览器不支持WakeLock API")
      return false
    }
    this.wakeLock = await navigator.wakeLock.request("screen")
    this.isActive = true
    console.log("Web WakeLock已启用")
    if (typeof document !== "undefined") {
      this.visibilityHandler = async () => {
        if (document.visibilityState === "visible" && this.isActive) {
          try {
            this.wakeLock = await navigator.wakeLock.request("screen")
            console.log("页面可见,重新请求WakeLock成功")
          } catch (e) {
            console.error("重新请求WakeLock失败:", e)
          }
        }
      }
      document.addEventListener("visibilitychange", this.visibilityHandler)
    }
    return true
  }

  async releaseWebWakeLock() {
    if (this.wakeLock) {
      await this.wakeLock.release()
      this.wakeLock = null
      console.log("Web WakeLock已释放")
    }
  }

  async requestTauriWakeLock() {
    try {
      let invoke
      try {
        const mod = await Function('return import("@tauri-apps/api")')()
        invoke = mod.invoke
      } catch {
        console.warn("Tauri API不可用,无法启用防休眠")
        return false
      }
      try {
        await invoke("prevent_sleep")
        console.log("Tauri原生防休眠命令已启用")
      } catch (o) {
        console.warn("Tauri原生命令不可用,使用心跳方案:", o)
        this.keepAwakeInterval = setInterval(async () => {
          try {
            await invoke("prevent_sleep").catch(() => {})
          } catch {}
        }, 30000)
      }
      this.isActive = true
      console.log("Tauri防休眠已启用")
      return true
    } catch (e) {
      console.error("Tauri WakeLock失败:", e)
      return false
    }
  }

  async releaseTauriWakeLock() {
    if (this.keepAwakeInterval) {
      clearInterval(this.keepAwakeInterval)
      this.keepAwakeInterval = null
      console.log("Tauri防休眠心跳已停止")
    }
    try {
      try {
        const { invoke } = await Function('return import("@tauri-apps/api")')()
        await invoke("allow_sleep").catch(() => {})
      } catch {}
    } catch {}
  }

  async requestCapacitorWakeLock() {
    try {
      const moduleName = "@capacitor-community/keep-awake"
      let KeepAwake
      try {
        KeepAwake = (await Function(`return import('${moduleName}')`)()).KeepAwake
      } catch {
        console.warn("Capacitor KeepAwake插件未安装,降级使用Web WakeLock API")
        return await this.requestWebWakeLock()
      }
      await KeepAwake.keepAwake()
      this.isActive = true
      console.log("Android KeepAwake已启用")
      return true
    } catch (e) {
      console.error("Android KeepAwake失败:", e)
      return await this.requestWebWakeLock()
    }
  }

  async releaseCapacitorWakeLock() {
    try {
      const moduleName = "@capacitor-community/keep-awake"
      let KeepAwake
      try {
        KeepAwake = (await Function(`return import('${moduleName}')`)()).KeepAwake
      } catch {
        await this.releaseWebWakeLock()
        return
      }
      await KeepAwake.allowSleep()
      console.log("Android KeepAwake已释放")
    } catch (e) {
      console.error("释放Android KeepAwake失败:", e)
      await this.releaseWebWakeLock()
    }
  }

  isSupported() {
    switch (this.env) {
      case "web":
        return typeof navigator !== "undefined" && "wakeLock" in navigator
      case "tauri":
        return true
      case "capacitor":
        return true
      default:
        return false
    }
  }

  getEnvironmentInfo() {
    const envNames = {
      web: "Web浏览器",
      tauri: "Tauri桌面应用",
      capacitor: "Android APK",
    }
    return {
      env: this.env,
      envName: envNames[this.env] || "未知环境",
      supported: this.isSupported(),
    }
  }
}

const wakeLockManager = new WakeLockManager()

export { WakeLockManager, wakeLockManager }