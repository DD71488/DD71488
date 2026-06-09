/**
 * 加密配置导出/导入工具
 * 完全对齐 APK528 的 AES-GCM + SHA-256 实现，确保加密文件可互通
 */

const EXPORT_VERSION = "1.4";

/**
 * 从密码派生 AES-GCM 密钥
 * APK528 方式：直接对密码做 SHA-256 哈希，将哈希结果作为密钥
 */
async function deriveKey(password) {
  const encoder = new TextEncoder();
  const passwordBytes = encoder.encode(password);
  const hashBuffer = await crypto.subtle.digest("SHA-256", passwordBytes);
  return crypto.subtle.importKey("raw", hashBuffer, "AES-GCM", false, [
    "encrypt",
    "decrypt",
  ]);
}

/**
 * AES-GCM 加密
 * APK528 方式：iv(12字节) + ciphertext 拼接后 base64 编码为单个字符串
 */
async function encryptData(data, password) {
  const key = await deriveKey(password);
  const encoder = new TextEncoder();
  const plaintext = encoder.encode(JSON.stringify(data));
  const iv = crypto.getRandomValues(new Uint8Array(12));
  const encrypted = await crypto.subtle.encrypt(
    { name: "AES-GCM", iv },
    key,
    plaintext,
  );
  // 拼接 iv + ciphertext
  const ciphertext = new Uint8Array(encrypted);
  const combined = new Uint8Array(iv.length + ciphertext.length);
  combined.set(iv, 0);
  combined.set(ciphertext, iv.length);
  // base64 编码
  let binary = "";
  for (let i = 0; i < combined.length; i++) {
    binary += String.fromCharCode(combined[i]);
  }
  return btoa(binary);
}

/**
 * AES-GCM 解密
 * APK528 方式：base64 字符串 → atob → 前12字节为iv，其余为密文
 */
async function decryptData(base64String, password) {
  const key = await deriveKey(password);
  // base64 解码
  const binary = atob(base64String);
  const combined = new Uint8Array(binary.length);
  for (let i = 0; i < binary.length; i++) {
    combined[i] = binary.charCodeAt(i);
  }
  // 拆分 iv 和密文
  const iv = combined.slice(0, 12);
  const ciphertext = combined.slice(12);
  const decrypted = await crypto.subtle.decrypt(
    { name: "AES-GCM", iv },
    key,
    ciphertext,
  );
  const decoder = new TextDecoder();
  return JSON.parse(decoder.decode(decrypted));
}

/**
 * 加密导出配置
 * 输出格式与 APK528 一致：{ encrypted: true, version: "1.4", exportTime, data: "base64字符串" }
 * @param {Object} config - 配置数据 { tokens, settings, binData }
 * @param {string} password - 加密密码（至少6位）
 * @returns {Promise<Object>} 加密后的配置对象
 */
export async function encryptConfigData(config, password) {
  if (!password || password.length < 6) {
    throw new Error("密码至少需要6位");
  }
  const encryptedBase64 = await encryptData(config, password);
  return {
    encrypted: true,
    version: EXPORT_VERSION,
    exportTime: new Date().toISOString(),
    data: encryptedBase64,
  };
}

/**
 * 解密导入配置
 * 兼容 APK528 格式：data 字段为 base64 加密字符串
 * @param {Object} encryptedConfig - 加密的配置对象
 * @param {string} password - 解密密码
 * @returns {Promise<Object>} 解密后的配置数据
 */
export async function decryptConfigData(encryptedConfig, password) {
  if (!encryptedConfig.encrypted) {
    return encryptedConfig;
  }
  if (!password || password.length < 6) {
    throw new Error("密码至少需要6位");
  }
  return decryptData(encryptedConfig.data, password);
}

/**
 * 检查是否在离线时段内
 * @param {Array} offlineTimeRanges - 离线时段列表 [{start: "HH:mm", end: "HH:mm"}]
 * @returns {boolean}
 */
export function isInOfflineTime(offlineTimeRanges) {
  if (!offlineTimeRanges || offlineTimeRanges.length === 0) return false;
  const now = new Date();
  const currentMinutes = now.getHours() * 60 + now.getMinutes();
  for (const range of offlineTimeRanges) {
    const [startH, startM] = range.start.split(":").map(Number);
    const [endH, endM] = range.end.split(":").map(Number);
    const startMinutes = startH * 60 + startM;
    const endMinutes = endH * 60 + endM;
    if (currentMinutes >= startMinutes && currentMinutes < endMinutes) {
      return true;
    }
  }
  return false;
}

/**
 * 检查是否在本周的指定日期范围内
 * @param {string} weekStart - 周开始日期 "YYYY-MM-DD"
 * @returns {boolean}
 */
export function isInCurrentWeek(weekStart) {
  if (!weekStart) return false;
  const start = new Date(weekStart);
  const now = new Date();
  const diffDays = Math.floor((now - start) / (1000 * 60 * 60 * 24));
  return diffDays >= 0 && diffDays < 7;
}

/**
 * ArrayBuffer 转 Base64
 */
export function arrayBufferToBase64(buffer) {
  const bytes = new Uint8Array(buffer);
  let binary = "";
  for (let i = 0; i < bytes.byteLength; i++) {
    binary += String.fromCharCode(bytes[i]);
  }
  return btoa(binary);
}

/**
 * Base64 转 ArrayBuffer
 */
export function base64ToArrayBuffer(base64) {
  const binary = atob(base64);
  const bytes = new Uint8Array(binary.length);
  for (let i = 0; i < binary.length; i++) {
    bytes[i] = binary.charCodeAt(i);
  }
  return bytes.buffer;
}
