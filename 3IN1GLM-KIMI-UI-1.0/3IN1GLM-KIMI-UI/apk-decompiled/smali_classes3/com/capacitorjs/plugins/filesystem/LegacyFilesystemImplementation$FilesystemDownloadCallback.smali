.class public interface abstract Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;
.super Ljava/lang/Object;
.source "LegacyFilesystemImplementation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FilesystemDownloadCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0014\u0010\u0006\u001a\u00020\u00032\n\u0010\u0007\u001a\u00060\u0008j\u0002`\tH&\u00a8\u0006\n\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;",
        "",
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


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Lcom/getcapacitor/JSObject;)V
.end method
