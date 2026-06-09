.class public final Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;
.super Ljava/lang/Object;
.source "LegacyFilesystemImplementation.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegacyFilesystemImplementation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacyFilesystemImplementation.kt\ncom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,170:1\n1#2:171\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u001bB\u0011\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0017\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J,\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "downloadFile",
        "",
        "call",
        "Lcom/getcapacitor/PluginCall;",
        "bridge",
        "Lcom/getcapacitor/Bridge;",
        "emitter",
        "Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;",
        "callback",
        "Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;",
        "isPublicDirectory",
        "",
        "directory",
        "",
        "getDirectory",
        "Ljava/io/File;",
        "getFileObject",
        "path",
        "doDownloadInBackground",
        "Lcom/getcapacitor/JSObject;",
        "urlString",
        "FilesystemDownloadCallback",
        "capacitor-filesystem_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$LDbFUFqGK9u4DFKDUQIF0miW9hs(Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;Ljava/lang/String;Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/Bridge;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;Landroid/os/Handler;Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;->downloadFile$lambda$0(Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;Ljava/lang/String;Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/Bridge;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;Landroid/os/Handler;Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WNxOW8tTnZV7ZOgtGYyaQZrgqTM(Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;->downloadFile$lambda$0$1(Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hOKEZIUBw7bxyQFriKNv_t3V0wc(Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;Lcom/getcapacitor/JSObject;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;->downloadFile$lambda$0$0(Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;Lcom/getcapacitor/JSObject;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;->context:Landroid/content/Context;

    return-void
.end method

.method private final doDownloadInBackground(Ljava/lang/String;Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/Bridge;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;)Lcom/getcapacitor/JSObject;
    .locals 33
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/getcapacitor/PluginCall;
    .param p3, "bridge"    # Lcom/getcapacitor/Bridge;
    .param p4, "emitter"    # Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 90
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    const-string v3, "headers"

    invoke-virtual {v1, v3, v0}, Lcom/getcapacitor/PluginCall;->getObject(Ljava/lang/String;Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/JSObject;

    move-result-object v3

    .line 91
    .local v3, "headers":Lcom/getcapacitor/JSObject;
    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    const-string v4, "params"

    invoke-virtual {v1, v4, v0}, Lcom/getcapacitor/PluginCall;->getObject(Ljava/lang/String;Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/JSObject;

    move-result-object v4

    .line 92
    .local v4, "params":Lcom/getcapacitor/JSObject;
    const-string v0, "connectTimeout"

    invoke-virtual {v1, v0}, Lcom/getcapacitor/PluginCall;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 93
    .local v5, "connectTimeout":Ljava/lang/Integer;
    const-string v0, "readTimeout"

    invoke-virtual {v1, v0}, Lcom/getcapacitor/PluginCall;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 94
    .local v6, "readTimeout":Ljava/lang/Integer;
    const-string v0, "disableRedirects"

    invoke-virtual {v1, v0}, Lcom/getcapacitor/PluginCall;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 95
    .local v8, "disableRedirects":Z
    const-string v0, "shouldEncodeUrlParams"

    invoke-virtual {v1, v0}, Lcom/getcapacitor/PluginCall;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    move v9, v0

    .line 96
    .local v9, "shouldEncode":Z
    const-string v0, "progress"

    invoke-virtual {v1, v0}, Lcom/getcapacitor/PluginCall;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move v10, v0

    .line 98
    .local v10, "progress":Z
    const-string v0, "method"

    invoke-virtual {v1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "toUpperCase(...)"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "GET"

    :cond_4
    move-object v11, v0

    .line 99
    .local v11, "method":Ljava/lang/String;
    const-string v12, "path"

    invoke-virtual {v1, v12}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v0

    .line 100
    .local v13, "path":Ljava/lang/String;
    const-string v0, "directory"

    sget-object v14, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v0, v14}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 102
    .local v14, "directory":Ljava/lang/String;
    new-instance v0, Ljava/net/URL;

    move-object/from16 v15, p1

    invoke-direct {v0, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v0

    .line 103
    .local v16, "url":Ljava/net/URL;
    move-object/from16 v7, p0

    invoke-direct {v7, v13, v14}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;->getFileObject(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 105
    .local v1, "file":Ljava/io/File;
    new-instance v0, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    invoke-direct {v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;-><init>()V

    .line 106
    move-object/from16 v7, v16

    .end local v16    # "url":Ljava/net/URL;
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v0, v7}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setUrl(Ljava/net/URL;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v11}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setMethod(Ljava/lang/String;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v3}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setHeaders(Lcom/getcapacitor/JSObject;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v4, v9}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setUrlParams(Lcom/getcapacitor/JSObject;Z)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v5}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setConnectTimeout(Ljava/lang/Integer;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v6}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setReadTimeout(Ljava/lang/Integer;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v0

    .line 112
    move-object/from16 v16, v3

    .end local v3    # "headers":Lcom/getcapacitor/JSObject;
    .local v16, "headers":Lcom/getcapacitor/JSObject;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->setDisableRedirects(Ljava/lang/Boolean;)Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->openConnection()Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;

    move-result-object v0

    .line 105
    move-object v3, v0

    .line 115
    .local v3, "connectionBuilder":Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    move-object/from16 v18, v3

    .end local v3    # "connectionBuilder":Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    .local v18, "connectionBuilder":Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;
    invoke-virtual/range {v18 .. v18}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$HttpURLConnectionBuilder;->build()Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;

    move-result-object v3

    .line 117
    .local v3, "connection":Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
    move-object/from16 v19, v4

    move-object/from16 v4, p3

    .end local v4    # "params":Lcom/getcapacitor/JSObject;
    .local v19, "params":Lcom/getcapacitor/JSObject;
    invoke-virtual {v3, v4}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->setSSLSocketFactory(Lcom/getcapacitor/Bridge;)V

    .line 119
    invoke-virtual {v3}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 120
    .local v4, "connectionInputStream":Ljava/io/InputStream;
    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "connectTimeout":Ljava/lang/Integer;
    .local v20, "connectTimeout":Ljava/lang/Integer;
    invoke-direct {v0, v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v5, v0

    .line 122
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    const-string v0, "content-length"

    invoke-virtual {v3, v0}, Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 123
    .local v21, "contentLength":Ljava/lang/String;
    const/16 v22, 0x0

    .line 124
    .local v22, "bytes":I
    const/16 v23, 0x0

    .line 126
    .local v23, "maxBytes":I
    nop

    .line 127
    if-eqz v21, :cond_5

    :try_start_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 128
    :catch_0
    move-exception v0

    goto :goto_4

    .line 127
    :cond_5
    const/4 v0, 0x0

    :goto_3
    move/from16 v23, v0

    .line 131
    :goto_4
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 132
    .local v0, "buffer":[B
    const/16 v24, 0x0

    .line 135
    .local v24, "len":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 136
    .local v25, "lastEmitTime":J
    const-wide/16 v27, 0x64

    .line 138
    .local v27, "minEmitIntervalMillis":J
    :goto_5
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v29

    move/from16 v30, v29

    .line 171
    .local v30, "it":I
    const/16 v31, 0x0

    .line 138
    .local v31, "$i$a$-also-LegacyFilesystemImplementation$doDownloadInBackground$1":I
    move/from16 v32, v30

    .end local v24    # "len":I
    .end local v30    # "it":I
    .end local v31    # "$i$a$-also-LegacyFilesystemImplementation$doDownloadInBackground$1":I
    .local v32, "len":I
    if-lez v29, :cond_8

    .line 139
    move-object/from16 v24, v1

    move-object/from16 v17, v3

    move/from16 v1, v32

    const/4 v3, 0x0

    .end local v3    # "connection":Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
    .end local v32    # "len":I
    .local v1, "len":I
    .local v17, "connection":Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
    .local v24, "file":Ljava/io/File;
    invoke-virtual {v5, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 141
    add-int v22, v22, v1

    .line 143
    if-eqz v10, :cond_7

    if-eqz v2, :cond_7

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 145
    .local v29, "currentTime":J
    sub-long v31, v29, v25

    cmp-long v31, v31, v27

    if-lez v31, :cond_6

    .line 146
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v32, v0

    .end local v0    # "buffer":[B
    .local v32, "buffer":[B
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;->emit(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 147
    move-wide/from16 v25, v29

    move-object/from16 v0, v24

    move/from16 v24, v1

    move-object v1, v0

    move-object/from16 v3, v17

    move-object/from16 v0, v32

    .end local v29    # "currentTime":J
    goto :goto_5

    .line 145
    .end local v32    # "buffer":[B
    .restart local v0    # "buffer":[B
    .restart local v29    # "currentTime":J
    :cond_6
    move-object/from16 v32, v0

    .end local v0    # "buffer":[B
    .restart local v32    # "buffer":[B
    goto :goto_6

    .line 143
    .end local v29    # "currentTime":J
    .end local v32    # "buffer":[B
    .restart local v0    # "buffer":[B
    :cond_7
    move-object/from16 v32, v0

    .line 138
    .end local v0    # "buffer":[B
    .restart local v32    # "buffer":[B
    :goto_6
    move-object/from16 v0, v24

    move/from16 v24, v1

    move-object v1, v0

    move-object/from16 v3, v17

    move-object/from16 v0, v32

    goto :goto_5

    .line 152
    .end local v17    # "connection":Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
    .end local v24    # "file":Ljava/io/File;
    .restart local v0    # "buffer":[B
    .local v1, "file":Ljava/io/File;
    .restart local v3    # "connection":Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
    .local v32, "len":I
    :cond_8
    move-object/from16 v24, v1

    move-object/from16 v17, v3

    move/from16 v1, v32

    move-object/from16 v32, v0

    .end local v0    # "buffer":[B
    .end local v3    # "connection":Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
    .local v1, "len":I
    .restart local v17    # "connection":Lcom/getcapacitor/plugin/util/CapacitorHttpUrlConnection;
    .restart local v24    # "file":Ljava/io/File;
    .local v32, "buffer":[B
    if-eqz v10, :cond_9

    if-eqz v2, :cond_9

    .line 153
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;->emit(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 156
    :cond_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 157
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 159
    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 160
    .local v0, "ret":Lcom/getcapacitor/JSObject;
    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v12, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 161
    return-object v0
.end method

.method private static final downloadFile$lambda$0(Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;Ljava/lang/String;Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/Bridge;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;Landroid/os/Handler;Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;
    .param p1, "$urlString"    # Ljava/lang/String;
    .param p2, "$call"    # Lcom/getcapacitor/PluginCall;
    .param p3, "$bridge"    # Lcom/getcapacitor/Bridge;
    .param p4, "$emitter"    # Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;
    .param p5, "$handler"    # Landroid/os/Handler;
    .param p6, "$callback"    # Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;

    .line 32
    nop

    .line 34
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;->doDownloadInBackground(Ljava/lang/String;Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/Bridge;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;)Lcom/getcapacitor/JSObject;

    move-result-object v0

    .line 33
    nop

    .line 35
    .local v0, "result":Lcom/getcapacitor/JSObject;
    new-instance v1, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p6, v0}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$$ExternalSyntheticLambda1;-><init>(Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;Lcom/getcapacitor/JSObject;)V

    invoke-virtual {p5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "result":Lcom/getcapacitor/JSObject;
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "error":Ljava/lang/Exception;
    new-instance v1, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$$ExternalSyntheticLambda2;

    invoke-direct {v1, p6, v0}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$$ExternalSyntheticLambda2;-><init>(Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;Ljava/lang/Exception;)V

    invoke-virtual {p5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .end local v0    # "error":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final downloadFile$lambda$0$0(Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;Lcom/getcapacitor/JSObject;)V
    .locals 0
    .param p0, "$callback"    # Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;
    .param p1, "$result"    # Lcom/getcapacitor/JSObject;

    .line 35
    invoke-interface {p0, p1}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;->onSuccess(Lcom/getcapacitor/JSObject;)V

    return-void
.end method

.method private static final downloadFile$lambda$0$1(Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "$callback"    # Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;
    .param p1, "$error"    # Ljava/lang/Exception;

    .line 37
    invoke-interface {p0, p1}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method private final getDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "directory"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;->context:Landroid/content/Context;

    .line 52
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    goto :goto_1

    :sswitch_0
    const-string v1, "EXTERNAL_STORAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 52
    :sswitch_1
    const-string v1, "LIBRARY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :sswitch_2
    const-string v1, "CACHE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 52
    :sswitch_3
    const-string v1, "DATA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 52
    :sswitch_4
    const-string v1, "DOCUMENTS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 52
    :sswitch_5
    const-string v1, "EXTERNAL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 59
    :goto_1
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x3de0ac35 -> :sswitch_5
        -0x21aa9d68 -> :sswitch_4
        0x1fe7aa -> :sswitch_3
        0x3ceb762 -> :sswitch_2
        0x34b3b09b -> :sswitch_1
        0x3c6bcde7 -> :sswitch_0
    .end sparse-switch
.end method

.method private final getFileObject(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/lang/String;

    .line 63
    if-nez p2, :cond_1

    .line 64
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 65
    .local v0, "u":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 70
    .end local v0    # "u":Landroid/net/Uri;
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;->getDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 72
    .local v0, "androidDirectory":Ljava/io/File;
    if-nez v0, :cond_2

    .line 73
    const/4 v1, 0x0

    return-object v1

    .line 75
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 80
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final downloadFile(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/Bridge;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;)V
    .locals 15
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .param p2, "bridge"    # Lcom/getcapacitor/Bridge;
    .param p3, "emitter"    # Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;
    .param p4, "callback"    # Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;

    move-object/from16 v3, p1

    const-string v0, "call"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bridge"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "urlString":Ljava/lang/String;
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    .local v6, "handler":Landroid/os/Handler;
    new-instance v12, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object/from16 v5, p3

    move-object v0, v12

    invoke-direct/range {v0 .. v7}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$$ExternalSyntheticLambda0;-><init>(Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;Ljava/lang/String;Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/Bridge;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;Landroid/os/Handler;Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;)V

    const/16 v13, 0x1f

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v14}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    .line 40
    return-void
.end method

.method public final isPublicDirectory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "directory"    # Ljava/lang/String;

    .line 47
    const-string v0, "DOCUMENTS"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "EXTERNAL_STORAGE"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
