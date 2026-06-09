.class public abstract Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions;
.super Ljava/lang/Exception;
.source "IONFILEExceptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed;,
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CreateFailed;,
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DeleteFailed;,
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;,
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;,
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;,
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForFiles;,
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;,
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnresolvableUri;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00060\u0001j\u0002`\u0002:\t\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010B\u001b\u0008\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007\u0082\u0001\t\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "message",
        "",
        "cause",
        "",
        "(Ljava/lang/String;Ljava/lang/Throwable;)V",
        "CopyRenameFailed",
        "CreateFailed",
        "DeleteFailed",
        "DoesNotExist",
        "NotSupportedForContentScheme",
        "NotSupportedForDirectory",
        "NotSupportedForFiles",
        "UnknownError",
        "UnresolvableUri",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CreateFailed;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DeleteFailed;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForFiles;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnresolvableUri;",
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
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 3
    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move-object p2, p4

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
