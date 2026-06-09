# BON 协议编解码器 变更翻译

> 源文件 (04-dev): `04-dev/src/utils/bonProtocol.js`
> 源文件 (APK528): `01-reference/apk-raw/index-BUwMeHKm.js` (minified, 通过 `g_utils.b4` 导出)
> 翻译时间: 2026-06-06

---

## 1. 协议概述

BON (Binary Object Notation) 是项目中使用的二进制对象序列化协议，功能类似 JSON 的二进制版本。它将 JavaScript 对象、数组、基本类型等编码为紧凑的二进制格式，用于 WebSocket 通信中游戏消息的传输。

**核心设计特点**：
- 自描述格式：每个值前有一个类型标签字节 (tag)
- 字符串引用去重：重复字符串使用 StringRef (tag=99) 引用，减少传输体积
- 变长整数编码：使用 7-bit 编码压缩整数，小数值占用更少字节
- 小端序 (Little-Endian)：所有多字节整数采用小端序
- 与加密层配合：BON 编码后的二进制数据再经过 `lx`/`x`/`xtm` 加密方案后传输

**数据流**：
```
发送: JS对象 → bon.encode() → Uint8Array → encrypt() → WebSocket发送
接收: WebSocket接收 → decrypt() → Uint8Array → bon.decode() → JS对象
```

---

## 2. 数据类型映射

### 2.1 类型标签 (Tag)

| Tag 值 | 类型名 | 编码方式 | JS 对应类型 |
|--------|--------|----------|-------------|
| 0 | Null | 无额外数据 | `null` / `undefined` |
| 1 | Int | writeInt32 (4字节) | `Number` (32位整数范围) |
| 2 | Long | writeInt64 (8字节) | `Number` / `Int64` |
| 3 | Float | writeFloat32 (4字节) | `Number` (单精度浮点) |
| 4 | Double | writeFloat64 (8字节) | `Number` (双精度浮点) |
| 5 | String | 7BitInt长度 + UTF-8字节 | `String` |
| 6 | Boolean | writeInt8 (1字节, 0或1) | `Boolean` |
| 7 | Binary | 7BitInt长度 + 原始字节 | `Uint8Array` |
| 8 | Map/Object | 7BitInt键值对数 + 交替编码键值 | `Object` / `Map` |
| 9 | Array | 7BitInt元素数 + 依次编码元素 | `Array` |
| 10 | DateTime | writeInt64 (8字节, 毫秒时间戳) | `Date` |
| 99 | StringRef | 7BitInt索引 | 重复字符串引用 |

### 2.2 编码规则

- **Int (tag=1)**：仅当 `(v | 0) === v` 时使用，即 32 位整数范围内的整数
- **Long (tag=2)**：当 `Math.floor(v) === v` 但超出 Int 范围时使用；也支持 `Int64` 对象 `{high, low}`
- **Double (tag=4)**：非整数的 Number 类型使用 Double 编码
- **Float (tag=3)**：编码器中定义了 `encodeFloat`，但 `encodeNumber` 不会自动选择 Float，仅手动调用时使用
- **String (tag=5)**：首次出现时编码完整字符串并加入 strMap；后续出现时使用 StringRef (tag=99)
- **Map/Object (tag=8)**：`Map` 实例和普通 `Object` 都使用 tag=8，区别在于遍历方式

---

## 3. 编码流程 (encode)

### 3.1 顶层入口 `encode(v)`

```
1. 判断 v 是否为 null/undefined → encodeNull()
2. 根据 v.constructor 分派:
   - Number   → encodeNumber(v)
   - Boolean  → encodeBoolean(v)
   - String   → encodeString(v)
   - Int64    → encodeLong(v)
   - Array    → encodeArray(v)
   - Map      → encodeMap(v)
   - Date     → encodeDateTime(v)
   - Uint8Array → encodeBinary(v)
   - 其他对象 → encodeObject(v)
   - 非对象   → encodeNull() (兜底)
```

### 3.2 各类型编码细节

#### encodeNull()
```
写入: [0x00]
```

#### encodeInt(v)
```
写入: [0x01] + int32LE(v | 0)
共 5 字节
```

#### encodeLong(v)
```
写入: [0x02] + int64LE(v)
若 v 为 Int64 对象: int32LE(v.low) + int32LE(v.high)
若 v 为 number: int32LE(低32位) + int32LE(高32位)
共 9 字节
```

#### encodeFloat(v)
```
写入: [0x03] + float32LE(v)
共 5 字节
```

#### encodeDouble(v)
```
写入: [0x04] + float64LE(v)
共 9 字节
```

#### encodeNumber(v) — 自动选择
```
if ((v | 0) === v)       → encodeInt(v)    // 32位整数
else if (Math.floor(v) === v) → encodeLong(v)  // 超范围整数
else                      → encodeDouble(v) // 浮点数
```

#### encodeString(s) — 含字符串去重
```
1. 查找 strMap:
   - 若命中 → 写入 [0x63] + 7BitInt(索引)
   - 若未命中 → 继续
2. 写入 [0x05] + 7BitInt(UTF8字节长度) + UTF8字节
3. 将字符串加入 strMap: strMap.set(s, strMap.size)
```

#### encodeBoolean(b)
```
写入: [0x06] + [b ? 1 : 0]
共 2 字节
```

#### encodeBinary(u8)
```
写入: [0x07] + 7BitInt(u8.byteLength) + u8原始字节
```

#### encodeArray(arr)
```
写入: [0x09] + 7BitInt(arr.length)
然后对每个元素递归调用 encode(arr[i])
```

#### encodeMap(mp)
```
写入: [0x08] + 7BitInt(mp.size)
然后对每个键值对: encode(key) + encode(value)
```

#### encodeObject(obj)
```
1. 收集有效键:
   - 跳过以 "_" 开头的键
   - 跳过值为 function/undefined 的键
   - 仅包含 hasOwnProperty 的键
2. 写入 [0x08] + 7BitInt(keys.length)
3. 对每个键值对: encode(k) + encode(obj[k])
```

#### encodeDateTime(d)
```
写入: [0x0A] + int64LE(d.getTime())
```

### 3.3 7-Bit 变长整数编码

用于编码字符串长度、数组长度、Map 大小等非负整数。

```
编码规则:
  while (n >= 0x80):
    写入 (n & 0x7F) | 0x80   // 最高位1表示"还有后续字节"
    n >>>= 7
  写入 n & 0x7F              // 最高位0表示"结束"

长度估算:
  v < 0x80       → 1字节  (0-127)
  v < 0x4000     → 2字节  (128-16383)
  v < 0x200000   → 3字节
  v < 0x10000000 → 4字节
  v >= 0x10000000 → 5字节
  v < 0          → 5字节   (负数按无符号处理)
```

### 3.4 UTF-8 字符串编码 (writeUTF)

```
1. 若字符串长度为0 → 写入 7BitInt(0)
2. 预留最大长度空间: 7BitIntLen(6 * str.length)
3. 使用 TextEncoder.encodeInto() 编码到缓冲区
4. 回写实际 UTF-8 字节长度到预留位置
5. 若实际长度与预留长度不同，使用 copyWithin 移动数据
```

---

## 4. 解码流程 (decode)

### 4.1 顶层入口 `decode()`

```
1. 读取 tag = readUInt8()
2. 根据 tag 分派:
   - 0  → return null
   - 1  → return readInt32()
   - 2  → return readInt64()
   - 3  → return readFloat32()
   - 4  → return readFloat64()
   - 5  → 读取UTF字符串, 加入strArr, return 字符串
   - 6  → return readUInt8() === 1
   - 7  → 读取7BitInt长度, return readUint8Array(len)
   - 8  → 读取7BitInt键值对数, 构建Object, return
   - 9  → 读取7BitInt元素数, 构建Array, return
   - 10 → return new Date(readInt64())
   - 99 → return strArr[read7BitInt()]
   - 其他 → return null
```

### 4.2 各类型解码细节

#### Null (tag=0)
```
直接返回 null
```

#### Int (tag=1)
```
读取4字节, 小端序组合, 符号扩展: (v << 16) >> 16 不需要,
直接 v | 0 转为有符号32位整数
```

#### Long (tag=2)
```
读取低32位 lo = readInt32()
若 lo < 0, lo += 0x100000000  (转为无符号)
读取高32位 hi = readInt32()
return lo + 0x100000000 * hi   (JS Number 可精确表示到 2^53)
```

#### Float (tag=3)
```
使用 DataView.getFloat32(position, true) 读取4字节
```

#### Double (tag=4)
```
使用 DataView.getFloat64(position, true) 读取8字节
```

#### String (tag=5)
```
1. len = read7BitInt()
2. str = TextDecoder("utf8").decode(data[position..position+len])
3. strArr.push(str)   // 存入字符串表供 StringRef 引用
4. return str
```

#### Boolean (tag=6)
```
return readUInt8() === 1
```

#### Binary (tag=7)
```
1. len = read7BitInt()
2. return data.subarray(position..position+len)  // 零拷贝视图
```

#### Map/Object (tag=8)
```
1. count = read7BitInt()
2. obj = {}
3. for i = 0..count-1:
     k = decode()
     v = decode()
     obj[k] = v
4. return obj
```

#### Array (tag=9)
```
1. len = read7BitInt()
2. arr = new Array(len)
3. for i = 0..len-1:
     arr[i] = decode()
4. return arr
```

#### DateTime (tag=10)
```
return new Date(readInt64())
```

#### StringRef (tag=99)
```
index = read7BitInt()
return strArr[index]
```

### 4.3 7-Bit 变长整数解码

```
value = 0, shift = 0, count = 0
do:
  if count++ === 35 → throw "Format_Bad7BitInt32"
  b = readUInt8()
  value |= (b & 0x7F) << shift
  shift += 7
while (b & 0x80) !== 0

return value >>> 0   // 转为无符号32位
```

---

## 5. API 方法

### 5.1 核心编解码

#### `bon.encode(value, clone = true)` → `Uint8Array`
- 重置编码器状态（清空 strMap）
- 递归编码 value
- 返回编码后的字节数组（clone=true 时返回副本，false 时返回共享缓冲区视图）

#### `bon.decode(bytes)` → `any`
- 重置解码器状态（清空 strArr）
- 设置输入字节数组
- 递归解码并返回 JS 值

### 5.2 BonEncoder 类

| 方法 | 签名 | 说明 |
|------|------|------|
| `reset()` | → void | 重置写入位置和字符串映射表 |
| `encode(v)` | → void | 根据类型自动编码任意值 |
| `encodeInt(v)` | → void | 编码 Int32 |
| `encodeLong(v)` | → void | 编码 Int64 |
| `encodeFloat(v)` | → void | 编码 Float32 |
| `encodeDouble(v)` | → void | 编码 Float64 |
| `encodeNumber(v)` | → void | 自动选择 Int/Long/Double |
| `encodeString(s)` | → void | 编码字符串（含去重） |
| `encodeBoolean(b)` | → void | 编码布尔值 |
| `encodeNull()` | → void | 编码 null |
| `encodeDateTime(d)` | → void | 编码日期时间 |
| `encodeBinary(u8)` | → void | 编码二进制数据 |
| `encodeArray(arr)` | → void | 编码数组 |
| `encodeMap(mp)` | → void | 编码 Map |
| `encodeObject(obj)` | → void | 编码普通对象 |
| `getBytes(clone)` | → Uint8Array | 获取编码结果 |

### 5.3 BonDecoder 类

| 方法 | 签名 | 说明 |
|------|------|------|
| `reset(bytes)` | → void | 重置并设置输入数据 |
| `decode()` | → any | 解码一个完整值 |

### 5.4 ProtoMsg 消息包装类

#### `ProtoMsg` — 标准消息

| 属性/方法 | 说明 |
|-----------|------|
| `seq` | 消息序列号 |
| `resp` | 响应序列号 |
| `ack` | 确认号 |
| `cmd` | 命令名（自动转小写） |
| `code` | 状态码 |
| `error` | 错误信息 |
| `time` | 时间戳 |
| `body` | 原始 body (Uint8Array) |
| `rawData` | 惰性解码: body → bon.decode → JS对象 |
| `setDataType(t)` | 设置数据类型构造器 |
| `setSendMsg(msg)` | 配置请求对象，自动对齐 respType |
| `getData(clazz)` | 获取反序列化数据（当前直接返回 rawData） |

#### `ProtoMsgLegion` — 盐场版本消息

与 `ProtoMsg` 结构相同，额外包含 `hint` 属性。由 `parse(buf, enc, isLegion=true)` 返回。

### 5.5 加密/解密

#### `getEnc(name)` → 加密器对象
- `"lx"` → LZ4压缩 + 头部掩码
- `"x"` → 随机4字节头 + XOR
- `"xtm"` → XXTEA加密
- 其他/默认 → 自动检测解密，默认用 "x" 加密

#### `encode(obj, enc)` → ArrayBuffer
```
bon.encode(obj, false) → enc.encrypt(bytes) → ArrayBuffer
```

#### `parse(buf, enc, isLegion=false)` → ProtoMsg | ProtoMsgLegion
```
new Uint8Array(buf) → enc.decrypt(u8) → bon.decode(plain) → new ProtoMsg(raw)
```

### 5.6 g_utils 全局工具

```javascript
g_utils = {
  getEnc,                              // 获取加密器
  encode: (obj, encName) => encode(obj, getEnc(encName)),  // 编码+加密
  parse: (data, encName) => parse(data, getEnc(encName)),  // 解密+解码
  bon,                                 // { encode, decode } 原始BON编解码
}
```

### 5.7 bonProtocol 兼容接口

```javascript
bonProtocol = {
  encode: bon.encode,
  decode: bon.decode,
  createMessage(cmd, body, ack, seq, options),  // 创建消息对象
  parseMessage(messageData),                     // 解析消息（支持字符串/对象）
  generateSeq(),                                 // 生成随机序列号
  generateMessageId(),                           // 生成消息ID
}
```

### 5.8 GameMessages 消息模板

| 方法 | 命令 | 加密方式 | 默认参数 |
|------|------|----------|----------|
| `heartBeat(ack, seq)` | `_sys/ack` | 无body | — |
| `getRoleInfo(ack, seq, params)` | `role_getroleinfo` | x | clientVersion, platform |
| `getDataBundleVer(ack, seq, params)` | `system_getdatabundlever` | x | isAudit:false |
| `buyGold(ack, seq, params)` | `system_buygold` | x | buyNum:1 |
| `signInReward(ack, seq, params)` | `system_signinreward` | x | (无) |
| `claimDailyReward(ack, seq, params)` | `task_claimdailyreward` | x | rewardId:0 |

---

## 6. APK528 vs 04-dev 差异

### 6.1 客户端版本号

| 项目 | APK528 | 04-dev |
|------|--------|--------|
| role_getroleinfo 中的 clientVersion | `"2.10.3-f10a39eaa0c409f4-wx"` | `"2.21.2-fa918e1997301834-wx"` |

> 04-dev 使用了更新的版本号字符串。

### 6.2 消息体编码方式

| 项目 | APK528 | 04-dev |
|------|--------|--------|
| gameCommands body 编码 | `this.g_utils.bon.encode({...})` (直接BON编码) | `encode({...}, getEnc("x"))` (BON编码 + x加密) |

> **关键差异**: APK528 的 `gameCommands` 仅使用 `bon.encode()` 编码消息体，加密在 `encodePacket` 中统一处理；04-dev 的 `GameMessages` 在构造消息时直接使用 `encode()` (BON+加密)。

### 6.3 加密方案

| 项目 | APK528 | 04-dev |
|------|--------|--------|
| lx 加密头标识 | `e[0]=112, e[1]=108` ("pl") | 相同 |
| x 加密头标识 | `e[0]=112, e[1]=120` ("px") | 相同 |
| xtm 加密头标识 | `e[0]=112, e[1]=116` ("pt") | 相同 |
| lx 解密后还原头 | `e[0]=4, e[1]=34, e[2]=77, e[3]=24` | 相同 |
| XOR 掩码范围 | 前 min(100, length) 字节 | 相同 |
| 掩码值范围 | `2 + ~~(Math.random() * 248)` (2-249) | 相同 |
| 掩码编码方式 | 分散到 byte[2] 和 byte[3] 的偶数位 | 相同 |

> 加密/解密算法在两个版本中完全一致。

### 6.4 ProtoMsg 类

| 项目 | APK528 | 04-dev |
|------|--------|--------|
| ProtoMsg | 无独立类，消息直接作为对象处理 | 有 `ProtoMsg` 和 `ProtoMsgLegion` 两个类 |
| rawData 惰性解码 | 在 WsAgent 中手动 `bon.decode(body)` | ProtoMsg.rawData getter 自动惰性解码 |
| getData() | 无 | 有，支持类型检查和警告 |
| cmd 大小写 | 无自动处理 | 构造函数中自动 `cmd.toLowerCase()` |

### 6.5 DataReader / DataWriter

| 项目 | APK528 | 04-dev |
|------|--------|--------|
| 共享缓冲区 | (minified, 无法确认) | 512KB 初始共享缓冲区 `_shared` |
| 缓冲区扩容 | (minified, 无法确认) | 1.2倍增长策略 `ensureBuffer()` |
| Int64 读取 | (minified, 无法确认) | `readInt64()` 使用 JS Number 精确到 2^53 |
| UTF 编码 | (minified, 无法确认) | `writeUTF` 使用 `TextEncoder.encodeInto()` 优化 |
| validate | (minified, 无法确认) | `validate(n)` 边界检查，越界时 console.error |

### 6.6 新增功能 (04-dev)

1. **Int64 类**: 显式的 `{high, low}` 结构，用于精确表示64位整数
2. **ProtoMsgLegion**: 盐场专用消息类，包含 `hint` 字段
3. **bonProtocol 兼容接口**: 提供 `createMessage`、`parseMessage`、`generateSeq` 等便捷方法
4. **GameMessages 模板**: 预定义常用游戏消息构造函数
5. **LXCrypto / XCrypto / XTMCrypto**: 单独导出加密器类，便于测试

---

## 7. 使用场景

### 7.1 WebSocket 通信

BON 协议是 WebSocket 消息的核心编解码层：

```
发送流程:
  1. 构造消息对象 { cmd, body, ack, seq, time }
  2. body 通过 bon.encode() 编码为 Uint8Array
  3. 整个消息对象再次 bon.encode() 编码
  4. 通过加密器 (lx/x/xtm) encrypt() 加密
  5. 通过 WebSocket.send() 发送 ArrayBuffer

接收流程:
  1. WebSocket.onmessage 接收 ArrayBuffer
  2. 通过加密器 decrypt() 解密
  3. bon.decode() 解码为消息对象
  4. 消息对象的 body 字段仍为 Uint8Array (BON编码)
  5. 再次 bon.decode(body) 解码业务数据
```

### 7.2 Token 解析

在 `MessageTester` 组件中，BON 解码用于：
- 解析 `.bin` 文件：`FileReader → Uint8Array → bon.decode() → parse() → bon.decode(body)`
- 测试 BON 解码器：`new Uint8Array([8,2,5,4,114,111,108,101]) → bon.decode() → {role: "role"}`

### 7.3 gameCommands 消息构造

APK528 中 `GameCommands` 类使用 `g_utils.bon.encode()` 编码每个命令的 body：

```javascript
// APK528
role_getroleinfo(ack, seq, params) {
  return {
    cmd: "role_getroleinfo",
    body: this.g_utils.bon.encode({ clientVersion: "2.10.3-...", ...params }),
    ack, seq, time: Date.now(),
  };
}
```

04-dev 中 `GameMessages` 使用 `encode()` (BON+加密) 编码 body：

```javascript
// 04-dev
getRoleInfo(ack, seq, params) {
  return {
    cmd: "role_getroleinfo",
    body: encode({ clientVersion: "2.21.2-...", ...params }, getEnc("x")),
    ack, seq, time: Date.now(),
  };
}
```

### 7.4 WsAgent 消息处理

在 `DateTimeUtils-DvYIltNF.js` (WsAgent) 中，BON 解码用于处理接收到的消息：

```javascript
// 收到消息后
if (typeof e.data !== "string") {
  // ArrayBuffer 消息
  t = this.utils.parse(e.data, "auto", true);  // 解密+BON解码 → ProtoMsgLegion
}

// 惰性解码 body
if (t.rawData !== undefined) {
  // ProtoMsg 已自动解码
} else if (t.body && shouldDecodeBody(t.body)) {
  // 手动 BON 解码 body
  const decoded = this.utils.bon.decode(convertToUint8Array(t.body));
}
```

### 7.5 加密自动检测

`passthrough.decrypt()` 根据消息头自动选择解密方案：

```
字节[0,1] == [112, 108] ("pl") → lx 解密 (LZ4 + 掩码)
字节[0,1] == [112, 120] ("px") → x  解密 (XOR + 掩码)
字节[0,1] == [112, 116] ("pt") → xtm 解密 (XXTEA)
其他                           → 原样返回
```

---

## 附录: 二进制示例

### 编码 `{role: "role"}` 的过程

```
1. 顶层 Object, 1个键值对:
   [0x08] [0x01]          // tag=8 (Map), count=1

2. 键 "role":
   [0x05] [0x04] [0x72 0x6F 0x6C 0x65]  // tag=5 (String), len=4, "role"

3. 值 "role" (StringRef, 因为 "role" 已在 strMap 中):
   [0x63] [0x00]          // tag=99 (StringRef), index=0

完整字节: [08, 01, 05, 04, 72, 6F, 6C, 65, 63, 00]
```

对应 MessageTester 中的测试数据: `new Uint8Array([8,2,5,4,114,111,108,101])`
> 注意: 该测试数据 count=2 但只有1个键值对，实际解码时会尝试读2对，可能不完整。
