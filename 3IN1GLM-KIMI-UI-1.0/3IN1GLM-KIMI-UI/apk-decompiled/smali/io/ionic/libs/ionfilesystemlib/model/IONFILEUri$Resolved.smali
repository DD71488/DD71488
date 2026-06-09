.class public abstract Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
.super Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
.source "IONFILEUri.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Resolved"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Content;,
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u000b\u000cB\u0017\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u0082\u0001\u0002\r\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
        "uri",
        "Landroid/net/Uri;",
        "inExternalStorage",
        "",
        "(Landroid/net/Uri;Z)V",
        "getInExternalStorage",
        "()Z",
        "getUri",
        "()Landroid/net/Uri;",
        "Content",
        "Local",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Content;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;",
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
.field private final inExternalStorage:Z

.field private final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inExternalStorage"    # Z

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;->uri:Landroid/net/Uri;

    iput-boolean p2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;->inExternalStorage:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;-><init>(Landroid/net/Uri;Z)V

    return-void
.end method


# virtual methods
.method public getInExternalStorage()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;->inExternalStorage:Z

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;->uri:Landroid/net/Uri;

    return-object v0
.end method
