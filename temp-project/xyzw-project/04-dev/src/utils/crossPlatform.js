const isTauri = () => typeof window !== "undefined" && "__TAURI_INTERNALS__" in window

const isCapacitor = () => typeof window !== "undefined" && "Capacitor" in window

class CrossPlatformStorage {
  async set(key, value) {
    try {
      const serialized = typeof value === "string" ? value : JSON.stringify(value)
      localStorage.setItem(key, serialized)
      return true
    } catch (error) {
      console.error(`[Storage] Failed to set ${key}:`, error)
      return false
    }
  }

  async get(key, defaultValue = null) {
    try {
      let raw
      raw = localStorage.getItem(key)
      if (raw == null) return defaultValue
      try {
        return JSON.parse(raw)
      } catch {
        return raw
      }
    } catch (error) {
      console.error(`[Storage] Failed to get ${key}:`, error)
      return defaultValue
    }
  }

  async remove(key) {
    try {
      localStorage.removeItem(key)
      return true
    } catch (error) {
      console.error(`[Storage] Failed to remove ${key}:`, error)
      return false
    }
  }

  async clear() {
    try {
      localStorage.clear()
      return true
    } catch (error) {
      console.error("[Storage] Failed to clear:", error)
      return false
    }
  }

  getEnvironment() {
    return isTauri() ? "tauri" : isCapacitor() ? "capacitor" : "browser"
  }
}

const storage = new CrossPlatformStorage()

export { isTauri, isCapacitor, CrossPlatformStorage, storage }