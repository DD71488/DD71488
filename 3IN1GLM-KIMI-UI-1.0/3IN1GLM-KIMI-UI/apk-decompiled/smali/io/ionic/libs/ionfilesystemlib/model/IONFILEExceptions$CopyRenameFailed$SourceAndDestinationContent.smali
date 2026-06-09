.class public final Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$SourceAndDestinationContent;
.super Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed;
.source "IONFILEExceptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceAndDestinationContent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$SourceAndDestinationContent;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed;",
        "()V",
        "IONFilesystemLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    const-string v0, "Copy is not allowed from content:// to content://"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    return-void
.end method
