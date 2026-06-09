// Lightweight IndexedDB wrapper for token persistence
// 对齐APK528的纯IndexedDB存储方案

const DB_NAME = "xyzw_token_db";
const DB_VERSION = 2;
const STORE_KV = "kv";
const STORE_GAME_TOKENS = "gameTokens";
const STORE_TOKEN_LIST = "tokenList";

function openDB() {
  return new Promise((resolve, reject) => {
    const req = indexedDB.open(DB_NAME, DB_VERSION);

    req.onupgradeneeded = (event) => {
      const db = req.result;
      if (!db.objectStoreNames.contains(STORE_KV)) {
        db.createObjectStore(STORE_KV, { keyPath: "key" });
      }
      if (!db.objectStoreNames.contains(STORE_GAME_TOKENS)) {
        db.createObjectStore(STORE_GAME_TOKENS, { keyPath: "roleId" });
      }
      // V2: 新增 tokenList store，对齐APK的tokenStore数组存储
      if (!db.objectStoreNames.contains(STORE_TOKEN_LIST)) {
        db.createObjectStore(STORE_TOKEN_LIST, { keyPath: "id" });
      }
    };

    req.onsuccess = () => resolve(req.result);
    req.onerror = () => reject(req.error);
  });
}

async function withStore(storeName, mode, fn) {
  const db = await openDB();
  return new Promise((resolve, reject) => {
    const tx = db.transaction(storeName, mode);
    const store = tx.objectStore(storeName);
    const result = fn(store);
    tx.oncomplete = () => resolve(result);
    tx.onerror = () => reject(tx.error);
    tx.onabort = () => reject(tx.error);
  });
}

// KV helpers
export async function getKV(key) {
  return withStore(STORE_KV, "readonly", (store) => {
    return new Promise((resolve, reject) => {
      const req = store.get(key);
      req.onsuccess = () => resolve(req.result ? req.result.value : undefined);
      req.onerror = () => reject(req.error);
    });
  });
}

export async function setKV(key, value) {
  return withStore(STORE_KV, "readwrite", (store) => {
    store.put({ key, value });
  });
}

export async function deleteKV(key) {
  return withStore(STORE_KV, "readwrite", (store) => {
    store.delete(key);
  });
}

// User token
export async function getUserToken() {
  return getKV("userToken");
}
export async function setUserToken(token) {
  return setKV("userToken", token);
}
export async function clearUserToken() {
  return deleteKV("userToken");
}

// Game tokens (per role) - localTokenManager 使用的字典结构
export async function getAllGameTokens() {
  return withStore(STORE_GAME_TOKENS, "readonly", (store) => {
    return new Promise((resolve, reject) => {
      const req = store.getAll();
      req.onsuccess = () => {
        const arr = req.result || [];
        const map = {};
        arr.forEach((t) => {
          if (t && t.roleId) map[t.roleId] = t;
        });
        resolve(map);
      };
      req.onerror = () => reject(req.error);
    });
  });
}

export async function putGameToken(roleId, tokenData) {
  return withStore(STORE_GAME_TOKENS, "readwrite", (store) => {
    store.put({ ...tokenData, roleId });
  });
}

export async function deleteGameToken(roleId) {
  return withStore(STORE_GAME_TOKENS, "readwrite", (store) => {
    store.delete(roleId);
  });
}

export async function clearGameTokens() {
  return withStore(STORE_GAME_TOKENS, "readwrite", (store) => {
    store.clear();
  });
}

// Token list (tokenStore 使用的数组结构) - 对齐APK的IndexedDB方案
export async function getAllTokenList() {
  return withStore(STORE_TOKEN_LIST, "readonly", (store) => {
    return new Promise((resolve, reject) => {
      const req = store.getAll();
      req.onsuccess = () => resolve(req.result || []);
      req.onerror = () => reject(req.error);
    });
  });
}

export async function putTokenItem(tokenData) {
  return withStore(STORE_TOKEN_LIST, "readwrite", (store) => {
    store.put(tokenData);
  });
}

export async function deleteTokenItem(id) {
  return withStore(STORE_TOKEN_LIST, "readwrite", (store) => {
    store.delete(id);
  });
}

export async function clearTokenList() {
  return withStore(STORE_TOKEN_LIST, "readwrite", (store) => {
    store.clear();
  });
}

// Token groups
export async function getAllTokenGroups() {
  const data = await getKV("tokenGroups");
  return data || [];
}

export async function putTokenGroups(groups) {
  return setKV("tokenGroups", groups);
}

// Migration from localStorage for backward compatibility
export async function migrateFromLocalStorageIfNeeded() {
  try {
    // 检查 tokenList store 是否已有数据
    const existingList = await getAllTokenList();
    if (existingList.length > 0) return { migrated: false };

    // 检查旧的 gameTokens store
    const existing = await getAllGameTokens();
    const hasAny = existing && Object.keys(existing).length > 0;
    const userTok = await getUserToken();
    const hasUser = !!userTok;

    // 如果旧store已有数据，迁移到新store
    if (hasAny) {
      for (const [roleId, tokenData] of Object.entries(existing)) {
        // 旧store的tokenData需要转换为新store格式
        if (tokenData && tokenData.id) {
          await putTokenItem(tokenData);
        }
      }
    }

    // 如果DB已有数据，跳过localStorage迁移
    if (hasAny || hasUser) return { migrated: true, source: "existingDB" };

    // 尝试从 localStorage 迁移（tokenStore 的 useLocalStorage 格式）
    const lsGameTokensRaw = localStorage.getItem("gameTokens");
    let migrated = false;

    if (lsGameTokensRaw) {
      try {
        const lsGameTokens = JSON.parse(lsGameTokensRaw);
        if (Array.isArray(lsGameTokens)) {
          // tokenStore 格式：数组
          for (const token of lsGameTokens) {
            if (token && token.id) {
              await putTokenItem(token);
            }
          }
          migrated = true;
        } else if (lsGameTokens && typeof lsGameTokens === "object") {
          // localTokenManager 格式：字典
          for (const [roleId, tokenData] of Object.entries(lsGameTokens)) {
            if (tokenData) await putGameToken(roleId, tokenData);
          }
          migrated = true;
        }
      } catch (e) {
        console.warn("Failed to parse gameTokens from localStorage:", e);
      }
    }

    // 迁移 userToken
    const lsUser = localStorage.getItem("userToken");
    if (lsUser) {
      await setUserToken(lsUser);
      migrated = true;
    }

    // 迁移 selectedTokenId
    const lsSelectedId = localStorage.getItem("selectedTokenId");
    if (lsSelectedId) {
      await setKV("selectedTokenId", lsSelectedId);
    }

    // 迁移 tokenGroups
    const lsGroups = localStorage.getItem("tokenGroups");
    if (lsGroups) {
      try {
        const groups = JSON.parse(lsGroups);
        if (Array.isArray(groups)) {
          await putTokenGroups(groups);
          migrated = true;
        }
      } catch (e) {
        console.warn("Failed to parse tokenGroups from localStorage:", e);
      }
    }

    return { migrated };
  } catch (e) {
    console.warn("Token DB migration skipped:", e);
    return { migrated: false, error: e?.message };
  }
}
