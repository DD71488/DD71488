# imageExport 新增/修改函数翻译

> 源文件: `01-reference/formatted-js/imageExport-BfNAYNiL.js`
> 注释表: `01-reference/annotations/imageExport_annotations.md`
> 翻译时间: 2026-06-03
> 翻译方法: 读取 formatted-js 源码，结合 annotations 标记，还原为可读 JS + 中文注释

---

## 1. downloadCanvasAsImage — Canvas截图导出（[修改]）

**行号范围**: L1449-1470
**minified 名**: `ye`
**导出名**: `d`

### 翻译后代码

```javascript
/**
 * 将 Canvas 导出为图片并下载
 * 优先使用 canvas.toBlob()，失败时降级为 toDataURL()
 * 在 Capacitor 环境下使用 APK 下载方式，否则使用 Web 下载
 *
 * [修改] 开源版本为回调风格、仅支持 Web 下载
 *        目标版本改为 Promise 风格，增加 Capacitor 环境判断
 */
const downloadCanvasAsImage = (canvas, filename) =>
  new Promise((resolve, reject) => {
    try {
      if (canvas.toBlob) {
        // 优先使用 toBlob 获取 Blob 对象
        canvas.toBlob((blob) => {
          if (!blob) {
            // toBlob 返回 null，降级为 toDataURL 方式
            console.error("Canvas转换Blob失败");
            fallbackToDataURL(canvas, filename).then(resolve).catch(reject);
            return;
          }
          // 判断是否为 Capacitor 环境
          if (window.Capacitor !== undefined) {
            // Capacitor APK 环境：先尝试 APK 下载，失败则降级为 Web 下载
            downloadInApk(blob, filename)
              .then(resolve)
              .catch(() => {
                downloadBlob(blob, filename).then(resolve).catch(reject);
              });
          } else {
            // Web/EXE 环境：直接使用 Blob 下载
            downloadBlob(blob, filename).then(resolve).catch(reject);
          }
        }, "image/png");
      } else {
        // 浏览器不支持 toBlob，降级为 toDataURL
        fallbackToDataURL(canvas, filename).then(resolve).catch(reject);
      }
    } catch (error) {
      // 异常兜底：降级为 toDataURL
      console.error("导出图片出错:", error);
      fallbackToDataURL(canvas, filename).then(resolve).catch(reject);
    }
  });
```

### 功能说明

Canvas 截图导出的入口函数，负责将 Canvas 内容保存为 PNG 图片文件。核心流程：

1. **toBlob 优先**：优先使用 `canvas.toBlob()` 获取 Blob 对象（性能更好）
2. **环境判断**：检测 `window.Capacitor` 是否存在，区分 APK/Web 环境
3. **APK 环境路径**：`downloadInApk()` → 失败降级 → `downloadBlob()`
4. **Web 环境路径**：直接 `downloadBlob()`
5. **降级链**：`toBlob` 失败 → `fallbackToDataURL`；异常兜底 → `fallbackToDataURL`

**与开源版本的差异**：
- 开源版本为回调风格，目标版本改为 Promise 风格
- 开源版本仅支持 Web 下载，目标版本增加了 Capacitor 环境判断和 APK 下载路径

---

## 2. downloadBlob — Blob文件下载（[修改]）

**行号范围**: L1471-1509
**minified 名**: `H`

### 翻译后代码

```javascript
/**
 * 通过 Blob 对象下载文件（Web 方式）
 * 创建临时 <a> 标签，使用 createObjectURL 触发浏览器下载
 *
 * [修改] 开源版本使用简单的 link.click()
 *        目标版本增加了 MouseEvents 兼容处理，支持更多浏览器
 */
const downloadBlob = (blob, filename) =>
  new Promise((resolve, reject) => {
    try {
      // 创建 Blob URL
      const blobUrl = URL.createObjectURL(blob);
      const link = document.createElement("a");

      link.href = blobUrl;
      link.download = filename;
      link.style.display = "none";
      document.body.appendChild(link);

      // 兼容性点击：优先使用 MouseEvent 创建和 dispatch
      if (document.createEvent) {
        const mouseEvent = document.createEvent("MouseEvents");
        mouseEvent.initMouseEvent(
          "click",   // 事件类型
          true,      // canBubble
          true,      // cancelable
          window,    // view
          1,         // detail (点击次数)
          0, 0,      // screenX, screenY
          0, 0,      // clientX, clientY
          false,     // ctrlKey
          false,     // altKey
          false,     // shiftKey
          false,     // metaKey
          0,         // button
          null,      // relatedTarget
        );
        link.dispatchEvent(mouseEvent);
      } else if (link.fireEvent) {
        // IE 兼容
        link.fireEvent("onclick");
      } else {
        // 最终降级：直接 click()
        link.click();
      }

      // 延迟清理 DOM 和 URL，确保下载已触发
      setTimeout(() => {
        document.body.removeChild(link);
        URL.revokeObjectURL(blobUrl);
        resolve(true);
      }, 100);
    } catch (error) {
      console.error("下载失败:", error);
      reject(error);
    }
  });
```

### 功能说明

通过 Blob URL 触发浏览器下载。核心逻辑：

1. 使用 `URL.createObjectURL(blob)` 创建临时下载链接
2. 创建隐藏的 `<a>` 标签，设置 `href` 和 `download` 属性
3. **兼容性点击**：优先 `createEvent("MouseEvents")` + `dispatchEvent`，其次 `fireEvent`（IE），最终降级为 `click()`
4. 延迟 100ms 后清理 DOM 节点和释放 Blob URL

**与开源版本的差异**：
- 开源版本使用简单的 `link.click()`，目标版本增加了 `MouseEvents` 创建和 `dispatchEvent` 兼容处理
- 增加了 IE `fireEvent` 兼容分支

---

## 3. fallbackToDataURL — DataURL降级导出（[修改]）

**行号范围**: L1510-1548
**minified 名**: `M`

### 翻译后代码

```javascript
/**
 * 降级导出方式：使用 canvas.toDataURL() 生成 Base64 图片
 * 当 canvas.toBlob() 不可用或失败时使用此方法
 *
 * [修改] 开源版本使用简单的 link.click()
 *        目标版本增加了 MouseEvents 兼容处理，与 downloadBlob 保持一致
 */
const fallbackToDataURL = (canvas, filename) =>
  new Promise((resolve, reject) => {
    try {
      // 将 Canvas 转为 Base64 PNG DataURL
      const dataUrl = canvas.toDataURL("image/png");
      const link = document.createElement("a");

      link.href = dataUrl;
      link.download = filename;
      link.style.display = "none";
      document.body.appendChild(link);

      // 兼容性点击（与 downloadBlob 相同的兼容处理）
      if (document.createEvent) {
        const mouseEvent = document.createEvent("MouseEvents");
        mouseEvent.initMouseEvent(
          "click",
          true,      // canBubble
          true,      // cancelable
          window,    // view
          1,         // detail
          0, 0,      // screenX, screenY
          0, 0,      // clientX, clientY
          false,     // ctrlKey
          false,     // altKey
          false,     // shiftKey
          false,     // metaKey
          0,         // button
          null,      // relatedTarget
        );
        link.dispatchEvent(mouseEvent);
      } else if (link.fireEvent) {
        // IE 兼容
        link.fireEvent("onclick");
      } else {
        link.click();
      }

      // 延迟清理 DOM（DataURL 无需 revokeObjectURL）
      setTimeout(() => {
        document.body.removeChild(link);
        resolve(true);
      }, 100);
    } catch (error) {
      console.error("DataURL导出失败:", error);
      reject(error);
    }
  });
```

### 功能说明

`downloadBlob` 的降级方案，当 `canvas.toBlob()` 不可用时，使用 `canvas.toDataURL("image/png")` 生成 Base64 编码的 PNG 图片进行下载。

- **与 downloadBlob 的区别**：使用 DataURL 而非 Blob URL，无需 `revokeObjectURL`
- **点击兼容逻辑**：与 `downloadBlob` 完全一致（MouseEvents → fireEvent → click 降级链）

**与开源版本的差异**：
- 开源版本使用简单的 `link.click()`，目标版本增加了 MouseEvents 兼容处理

---

## 4. downloadInApk — Capacitor APK环境下载（[新增]）

**行号范围**: L1549-1623
**minified 名**: `W`
**移植优先级**: P1-高（需替换为Web方案）

### 翻译后代码

```javascript
/**
 * Capacitor APK 环境下的文件下载
 * 将 Blob 写入设备文件系统，然后调用系统分享对话框
 *
 * ⚠️ 此函数依赖 Capacitor 原生插件（Filesystem、Share）
 *    移植到纯 Web 环境时需要替换为 Web 下载方案
 *
 * 流程：
 * 1. 检测 Capacitor 环境
 * 2. 将 Blob 转为 Base64 字符串
 * 3. 尝试写入 EXTERNAL 目录，失败则降级到 DOCUMENTS 目录
 * 4. 调用系统 Share 对话框让用户选择保存/分享
 * 5. Share 失败则弹窗提示文件保存位置
 */
const downloadInApk = async (blob, filename) => {
  try {
    // 检测 Capacitor 环境
    if (!window.Capacitor) throw new Error("Capacitor not available");
    const platform = window.Capacitor.getPlatform();
    console.log("[downloadInApk] Platform:", platform);

    // 将 Blob 转换为 Base64 字符串（去掉 data:...;base64, 前缀）
    const reader = new FileReader();
    const base64Data = await new Promise((resolve, reject) => {
      reader.onloadend = () => resolve(reader.result.split(",")[1]);
      reader.onerror = reject;
      reader.readAsDataURL(blob);
    });

    // 检查 Capacitor Filesystem 插件是否可用
    if (window.Capacitor.Plugins && window.Capacitor.Plugins.Filesystem) {
      const Filesystem = window.Capacitor.Plugins.Filesystem;

      try {
        console.log("[downloadInApk] Writing to External directory");
        let writeResult;
        let usedExternal = true;

        // 优先尝试写入外部存储目录（EXTERNAL）
        try {
          writeResult = await Filesystem.writeFile({
            path: filename,
            data: base64Data,
            directory: "EXTERNAL",   // 外部存储目录
            recursive: true,        // 自动创建父目录
          });
          console.log("File saved to External:", writeResult.uri);
        } catch (externalError) {
          // EXTERNAL 目录写入失败，降级到 DOCUMENTS 目录
          console.warn("External directory failed, trying Documents:", externalError);
          usedExternal = false;
          writeResult = await Filesystem.writeFile({
            path: filename,
            data: base64Data,
            directory: "DOCUMENTS", // 应用文档目录
            recursive: true,
          });
          console.log("File saved to Documents:", writeResult.uri);
        }

        // 尝试调用系统分享对话框
        if (window.Capacitor.Plugins.Share) {
          const Share = window.Capacitor.Plugins.Share;
          try {
            const fileUri = writeResult.uri;
            await Share.share({
              title: "导出文件",
              text: `文件: ${filename}`,
              url: fileUri,
              dialogTitle: "保存或分享文件",
            });
            console.log("Share dialog shown");
            return true;
          } catch (shareError) {
            // 分享对话框失败（用户取消或系统不支持），弹窗提示保存位置
            console.warn("Share failed:", shareError);
            console.log("File saved but share failed. URI:", writeResult.uri);
            alert(
              usedExternal
                ? `文件已保存到外部存储:\n${writeResult.uri}`
                : `文件已保存，但无法分享。\n请尝试使用文件管理器访问应用文档目录。`,
            );
            return true;
          }
        }
        // 无 Share 插件，文件已保存即可
        return true;
      } catch (fsError) {
        // Filesystem 写入失败
        console.error("Filesystem write failed:", fsError);
        throw fsError;
      }
    }
    // Filesystem 插件不可用
    throw new Error("Filesystem plugin not available");
  } catch (error) {
    // 整体失败
    console.error("APK download failed:", error);
    throw error;
  }
};
```

### 功能说明

Capacitor APK 环境下的文件下载实现，专为移动端 APK 打包场景设计。完整流程：

1. **环境检测**：确认 `window.Capacitor` 存在
2. **Blob → Base64**：通过 `FileReader.readAsDataURL()` 将 Blob 转为 Base64 字符串，去掉 `data:...;base64,` 前缀
3. **文件写入**（两级降级）：
   - 优先写入 `EXTERNAL` 目录（外部存储，用户可访问）
   - 失败则降级到 `DOCUMENTS` 目录（应用文档目录）
   - `recursive: true` 自动创建不存在的父目录
4. **分享/提示**：
   - 有 Share 插件 → 弹出系统分享对话框
   - Share 失败（用户取消等）→ `alert()` 提示文件保存位置
   - 无 Share 插件 → 静默返回成功
5. **错误传播**：所有不可恢复的错误均向上抛出，由 `downloadCanvasAsImage` 降级到 Web 下载

**移植注意事项**：
- 此函数依赖 `Capacitor.Plugins.Filesystem` 和 `Capacitor.Plugins.Share` 原生插件
- 移植到纯 Web 环境时，应删除此函数，`downloadCanvasAsImage` 中的 Capacitor 判断分支也会失效，自动走 Web 下载路径

---

## 5. downloadFile — 通用文件下载（[新增]）

**行号范围**: L1624-1673
**minified 名**: `we`
**导出名**: `o`
**移植优先级**: P1-高

### 翻译后代码

```javascript
/**
 * 通用文件下载入口
 * 自动检测运行环境，选择对应的下载方式：
 * - Capacitor APK 环境 → downloadInApk（文件系统 + 分享）
 * - Web/EXE 环境 → 直接 Blob URL 下载
 *
 * 所有错误均被捕获，不会向上抛出异常（返回 false 表示失败）
 */
const downloadFile = async (blob, filename) => {
  try {
    if (window.Capacitor !== undefined) {
      // Capacitor APK 环境：使用文件系统写入 + 分享
      console.log("[downloadFile] APK environment detected, using share");
      await downloadInApk(blob, filename);
      return;
    }

    // Web/EXE 环境：创建 Blob URL 触发浏览器下载
    console.log("[downloadFile] Web/EXE environment, using direct download");
    await new Promise((resolve, reject) => {
      try {
        const blobUrl = URL.createObjectURL(blob);
        const link = document.createElement("a");

        link.href = blobUrl;
        link.download = filename;
        link.style.display = "none";
        document.body.appendChild(link);

        // 兼容性点击（与 downloadBlob 相同逻辑）
        if (document.createEvent) {
          const mouseEvent = document.createEvent("MouseEvents");
          mouseEvent.initMouseEvent(
            "click",
            true,      // canBubble
            true,      // cancelable
            window,    // view
            1,         // detail
            0, 0,      // screenX, screenY
            0, 0,      // clientX, clientY
            false,     // ctrlKey
            false,     // altKey
            false,     // shiftKey
            false,     // metaKey
            0,         // button
            null,      // relatedTarget
          );
          link.dispatchEvent(mouseEvent);
        } else if (link.fireEvent) {
          link.fireEvent("onclick");
        } else {
          link.click();
        }

        // 延迟清理
        setTimeout(() => {
          document.body.removeChild(link);
          URL.revokeObjectURL(blobUrl);
          resolve(true);
        }, 100);
      } catch (error) {
        console.error("下载失败:", error);
        reject(error);
      }
    });
  } catch (error) {
    // 整体错误捕获，返回 false（不抛出异常）
    console.error("下载失败:", error);
    return false;
  }
};
```

### 功能说明

通用文件下载入口函数，自动检测运行环境并选择下载方式：

| 环境 | 下载方式 | 说明 |
|------|---------|------|
| Capacitor APK | `downloadInApk()` | 写入文件系统 + 系统分享对话框 |
| Web / EXE | Blob URL + `<a>` 标签 | 标准浏览器下载 |

**与 `downloadCanvasAsImage` 的区别**：
- `downloadCanvasAsImage`：接收 Canvas 对象，负责 Canvas → Blob/DataURL 的转换，再调用下载
- `downloadFile`：直接接收 Blob 对象，是更底层的下载入口，可被其他模块复用

**错误处理**：
- 所有错误均被 `try-catch` 捕获，失败时返回 `false` 而非抛出异常
- 与 `downloadInApk` 不同，此函数不会向上传播错误

---

## 变量名映射速查表

### imageExport 模块函数

| minified | 可读名 | 导出名 | 说明 |
|----------|--------|--------|------|
| `ye` | `downloadCanvasAsImage` | `d` | Canvas截图导出入口 |
| `H` | `downloadBlob` | - | Blob文件下载（Web方式） |
| `M` | `fallbackToDataURL` | - | DataURL降级导出 |
| `W` | `downloadInApk` | - | Capacitor APK环境下载 |
| `we` | `downloadFile` | `o` | 通用文件下载入口 |

### 函数调用关系

```
downloadCanvasAsImage (ye / d)
├── canvas.toBlob() 成功
│   ├── Capacitor 环境 → downloadInApk (W)
│   │   └── 失败降级 → downloadBlob (H)
│   └── Web 环境 → downloadBlob (H)
└── canvas.toBlob() 失败/不可用
    └── fallbackToDataURL (M)

downloadFile (we / o)
├── Capacitor 环境 → downloadInApk (W)
└── Web 环境 → 内联 Blob URL 下载（逻辑同 downloadBlob）
```
