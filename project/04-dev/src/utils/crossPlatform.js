const isTauri = () => typeof window !== "undefined" && "__TAURI_INTERNALS__" in window

const isCapacitor = () => typeof window !== "undefined" && "Capacitor" in window

const isWeb = () => typeof window !== "undefined" && !isTauri() && !isCapacitor()

/**
 * 跨平台文件下载
 * Web 环境：Blob URL + <a> 标签触发下载
 */
const downloadFile = (data, filename, mimeType = "application/octet-stream") => {
  let blob
  if (data instanceof Blob) {
    blob = data
  } else if (data instanceof Uint8Array) {
    blob = new Blob([data], { type: mimeType })
  } else if (typeof data === "string") {
    blob = new Blob([data], { type: mimeType })
  } else {
    blob = new Blob([JSON.stringify(data, null, 2)], { type: "application/json" })
  }

  const url = URL.createObjectURL(blob)
  const link = document.createElement("a")
  link.href = url
  link.download = filename
  link.style.display = "none"
  document.body.appendChild(link)
  link.click()

  setTimeout(() => {
    document.body.removeChild(link)
    URL.revokeObjectURL(url)
  }, 100)
}

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

export { isTauri, isCapacitor, isWeb, downloadFile, CrossPlatformStorage, storage }