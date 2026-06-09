.class public final Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
.super Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
.source "IONFILEUri.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unresolved"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001f\u0010\r\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
        "parentFolder",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;",
        "uriPath",
        "",
        "(Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;Ljava/lang/String;)V",
        "getParentFolder",
        "()Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;",
        "getUriPath",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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
.field private final parentFolder:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

.field private final uriPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;Ljava/lang/String;)V
    .locals 1
    .param p1, "parentFolder"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;
    .param p2, "uriPath"    # Ljava/lang/String;

    const-string v0, "uriPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->parentFolder:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    .line 17
    iput-object p2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->uriPath:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static synthetic copy$default(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;Ljava/lang/String;ILjava/lang/Object;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->parentFolder:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->uriPath:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->copy(Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;Ljava/lang/String;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;
    .locals 1

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->parentFolder:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->uriPath:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;Ljava/lang/String;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .locals 1

    const-string v0, "uriPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    invoke-direct {v0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;-><init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->parentFolder:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    iget-object v4, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->parentFolder:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->uriPath:Ljava/lang/String;

    iget-object v1, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->uriPath:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getParentFolder()Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->parentFolder:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    return-object v0
.end method

.method public final getUriPath()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->uriPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->parentFolder:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->parentFolder:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    invoke-virtual {v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->uriPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->parentFolder:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    iget-object v1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->uriPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unresolved(parentFolder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uriPath="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
