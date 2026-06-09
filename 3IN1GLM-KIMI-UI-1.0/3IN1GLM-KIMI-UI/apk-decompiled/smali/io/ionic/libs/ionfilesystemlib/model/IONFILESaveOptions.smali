.class public final Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;
.super Ljava/lang/Object;
.source "IONFILESaveOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\tH\u00c6\u0003J1\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\t2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;",
        "",
        "data",
        "",
        "encoding",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;",
        "mode",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;",
        "createFileRecursive",
        "",
        "(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;Z)V",
        "getCreateFileRecursive",
        "()Z",
        "getData",
        "()Ljava/lang/String;",
        "getEncoding",
        "()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;",
        "getMode",
        "()Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
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
.field private final createFileRecursive:Z

.field private final data:Ljava/lang/String;

.field private final encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

.field private final mode:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;Z)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "encoding"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;
    .param p3, "mode"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;
    .param p4, "createFileRecursive"    # Z

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->data:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    .line 16
    iput-object p3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->mode:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    .line 17
    iput-boolean p4, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->createFileRecursive:Z

    .line 13
    return-void
.end method

.method public static synthetic copy$default(Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;ZILjava/lang/Object;)Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->data:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->mode:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->createFileRecursive:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->copy(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;Z)Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;
    .locals 1

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    return-object v0
.end method

.method public final component3()Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;
    .locals 1

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->mode:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->createFileRecursive:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;Z)Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encoding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;-><init>(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->data:Ljava/lang/String;

    iget-object v4, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->data:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    iget-object v4, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->mode:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    iget-object v4, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->mode:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->createFileRecursive:Z

    iget-boolean v1, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->createFileRecursive:Z

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCreateFileRecursive()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->createFileRecursive:Z

    return v0
.end method

.method public final getData()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->data:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncoding()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    return-object v0
.end method

.method public final getMode()Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->mode:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    invoke-virtual {v2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->mode:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    invoke-virtual {v2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->createFileRecursive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->data:Ljava/lang/String;

    iget-object v1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->mode:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    iget-boolean v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->createFileRecursive:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IONFILESaveOptions(data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", encoding="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createFileRecursive="

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
