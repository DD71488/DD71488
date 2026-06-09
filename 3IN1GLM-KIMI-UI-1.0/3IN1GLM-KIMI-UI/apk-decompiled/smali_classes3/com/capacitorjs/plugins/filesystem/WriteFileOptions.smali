.class public final Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;
.super Ljava/lang/Object;
.source "FilesystemMethodOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;",
        "",
        "uri",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;",
        "options",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;",
        "<init>",
        "(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;)V",
        "getUri",
        "()Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;",
        "getOptions",
        "()Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final options:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

.field private final uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;


# direct methods
.method public constructor <init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;)V
    .locals 1
    .param p1, "uri"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .param p2, "options"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    .line 39
    iput-object p2, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->options:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    .line 37
    return-void
.end method

.method public static synthetic copy$default(Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;ILjava/lang/Object;)Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->options:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->copy(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;)Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .locals 1

    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    return-object v0
.end method

.method public final component2()Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;
    .locals 1

    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->options:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    return-object v0
.end method

.method public final copy(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;)Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;

    invoke-direct {v0, p1, p2}, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;-><init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;

    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iget-object v4, v1, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->options:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    iget-object v1, v1, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->options:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getOptions()Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->options:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    return-object v0
.end method

.method public final getUri()Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    invoke-virtual {v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->options:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    invoke-virtual {v2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->options:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WriteFileOptions(uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", options="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
