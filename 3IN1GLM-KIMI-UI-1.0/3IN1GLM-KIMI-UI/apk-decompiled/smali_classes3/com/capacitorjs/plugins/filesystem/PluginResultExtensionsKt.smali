.class public final Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;
.super Ljava/lang/Object;
.source "PluginResultExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0014\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\tH\u0000\u00a8\u0006\n"
    }
    d2 = {
        "sendSuccess",
        "",
        "Lcom/getcapacitor/PluginCall;",
        "result",
        "Lcom/getcapacitor/JSObject;",
        "keepCallback",
        "",
        "sendError",
        "error",
        "Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;",
        "capacitor-filesystem_debug"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V
    .locals 2
    .param p0, "$this$sendError"    # Lcom/getcapacitor/PluginCall;
    .param p1, "error"    # Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final sendSuccess(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/JSObject;Z)V
    .locals 1
    .param p0, "$this$sendSuccess"    # Lcom/getcapacitor/PluginCall;
    .param p1, "result"    # Lcom/getcapacitor/JSObject;
    .param p2, "keepCallback"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/getcapacitor/PluginCall;->setKeepAlive(Ljava/lang/Boolean;)V

    .line 13
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 18
    :goto_0
    return-void
.end method

.method public static synthetic sendSuccess$default(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/JSObject;ZILjava/lang/Object;)V
    .locals 0

    .line 11
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendSuccess(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/JSObject;Z)V

    return-void
.end method
