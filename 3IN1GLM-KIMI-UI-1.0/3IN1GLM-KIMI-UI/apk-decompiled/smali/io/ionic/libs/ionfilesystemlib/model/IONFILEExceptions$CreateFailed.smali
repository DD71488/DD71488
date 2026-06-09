.class public abstract Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CreateFailed;
.super Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions;
.source "IONFILEExceptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CreateFailed"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CreateFailed$AlreadyExists;,
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CreateFailed$NoParentDirectory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0005\u0006B\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u0082\u0001\u0002\u0007\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CreateFailed;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions;",
        "message",
        "",
        "(Ljava/lang/String;)V",
        "AlreadyExists",
        "NoParentDirectory",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CreateFailed$AlreadyExists;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CreateFailed$NoParentDirectory;",
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
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CreateFailed;-><init>(Ljava/lang/String;)V

    return-void
.end method
