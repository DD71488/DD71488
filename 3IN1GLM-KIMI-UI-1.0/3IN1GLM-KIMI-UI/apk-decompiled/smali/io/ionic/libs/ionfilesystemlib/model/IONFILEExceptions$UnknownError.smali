.class public final Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;
.super Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions;
.source "IONFILEExceptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnknownError"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions;",
        "cause",
        "",
        "(Ljava/lang/Throwable;)V",
        "getCause",
        "()Ljava/lang/Throwable;",
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


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;-><init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 13
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "An unknown error occurred."

    invoke-direct {p0, v2, v0, v1, v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;-><init>(Ljava/lang/Throwable;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 12
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
