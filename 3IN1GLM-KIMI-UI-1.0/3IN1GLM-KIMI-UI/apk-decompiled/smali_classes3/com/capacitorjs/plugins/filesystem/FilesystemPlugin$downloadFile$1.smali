.class public final Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$downloadFile$1;
.super Ljava/lang/Object;
.source "FilesystemPlugin.kt"

# interfaces
.implements Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->downloadFile(Lcom/getcapacitor/PluginCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0014\u0010\u0006\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0008j\u0002`\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/capacitorjs/plugins/filesystem/FilesystemPlugin$downloadFile$1",
        "Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;",
        "onSuccess",
        "",
        "result",
        "Lcom/getcapacitor/JSObject;",
        "onError",
        "error",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
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
.field final synthetic $call:Lcom/getcapacitor/PluginCall;

.field final synthetic $directory:Ljava/lang/String;

.field final synthetic this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;


# direct methods
.method constructor <init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .param p2, "$directory"    # Ljava/lang/String;
    .param p3, "$call"    # Lcom/getcapacitor/PluginCall;

    iput-object p1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$downloadFile$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    iput-object p2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$downloadFile$1;->$directory:Ljava/lang/String;

    iput-object p3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$downloadFile$1;->$call:Lcom/getcapacitor/PluginCall;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Exception;

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$downloadFile$1;->$call:Lcom/getcapacitor/PluginCall;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error downloading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 286
    return-void
.end method

.method public onSuccess(Lcom/getcapacitor/JSObject;)V
    .locals 4
    .param p1, "result"    # Lcom/getcapacitor/JSObject;

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$downloadFile$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    invoke-static {v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->access$getLegacyImplementation$p(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$downloadFile$1;->$directory:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;->isPublicDirectory(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$downloadFile$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 276
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "path"

    invoke-virtual {p1, v3}, Lcom/getcapacitor/JSObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 277
    nop

    .line 278
    nop

    .line 274
    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$downloadFile$1;->$call:Lcom/getcapacitor/PluginCall;

    invoke-virtual {v0, p1}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 282
    return-void
.end method
