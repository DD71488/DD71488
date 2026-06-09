.class public final Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
.super Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
.source "IONFILEUri.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Local"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\nH\u00c6\u0003J1\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\n2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
        "fullPath",
        "",
        "(Ljava/lang/String;)V",
        "uri",
        "Landroid/net/Uri;",
        "type",
        "Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;",
        "inExternalStorage",
        "",
        "(Ljava/lang/String;Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;Z)V",
        "getFullPath",
        "()Ljava/lang/String;",
        "getInExternalStorage",
        "()Z",
        "getType",
        "()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;",
        "getUri",
        "()Landroid/net/Uri;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final fullPath:Ljava/lang/String;

.field private final inExternalStorage:Z

.field private final type:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "fullPath"    # Ljava/lang/String;

    const-string v0, "fullPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    nop

    .line 48
    nop

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "fromFile(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->UNKNOWN:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    .line 51
    nop

    .line 47
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;-><init>(Ljava/lang/String;Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;Z)V
    .locals 1
    .param p1, "fullPath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "type"    # Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;
    .param p4, "inExternalStorage"    # Z

    const-string v0, "fullPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p2, p4, v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;-><init>(Landroid/net/Uri;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->fullPath:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->uri:Landroid/net/Uri;

    .line 43
    iput-object p3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->type:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    .line 44
    iput-boolean p4, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->inExternalStorage:Z

    .line 40
    return-void
.end method

.method public static synthetic copy$default(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;Ljava/lang/String;Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;ZILjava/lang/Object;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->fullPath:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->uri:Landroid/net/Uri;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->type:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->inExternalStorage:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->copy(Ljava/lang/String;Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;Z)Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->fullPath:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final component3()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;
    .locals 1

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->type:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->inExternalStorage:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;Z)Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .locals 1

    const-string v0, "fullPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;-><init>(Ljava/lang/String;Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->fullPath:Ljava/lang/String;

    iget-object v4, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->fullPath:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->uri:Landroid/net/Uri;

    iget-object v4, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->uri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->type:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    iget-object v4, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->type:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->inExternalStorage:Z

    iget-boolean v1, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->inExternalStorage:Z

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFullPath()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->fullPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInExternalStorage()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->inExternalStorage:Z

    return v0
.end method

.method public final getType()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->type:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->fullPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->type:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    invoke-virtual {v2}, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->inExternalStorage:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->fullPath:Ljava/lang/String;

    iget-object v1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->type:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    iget-boolean v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->inExternalStorage:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local(fullPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", uri="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inExternalStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
