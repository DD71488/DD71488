.class public final Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;
.super Ljava/lang/Object;
.source "IONFILEReadInChunksOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;",
        "",
        "encoding",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;",
        "chunkSize",
        "",
        "offset",
        "length",
        "(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;III)V",
        "getChunkSize",
        "()I",
        "getEncoding",
        "()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;",
        "getLength",
        "getOffset",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final chunkSize:I

.field private final encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;III)V
    .locals 1
    .param p1, "encoding"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;
    .param p2, "chunkSize"    # I
    .param p3, "offset"    # I
    .param p4, "length"    # I

    const-string v0, "encoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    .line 25
    iput p2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->chunkSize:I

    .line 26
    iput p3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->offset:I

    .line 27
    iput p4, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->length:I

    .line 23
    return-void
.end method

.method public synthetic constructor <init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 23
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 26
    const/4 p3, 0x0

    .line 23
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 27
    const p4, 0x7fffffff

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;-><init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;III)V

    .line 28
    return-void
.end method

.method public static synthetic copy$default(Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;IIIILjava/lang/Object;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->chunkSize:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->offset:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->length:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->copy(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;III)Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;
    .locals 1

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->chunkSize:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->offset:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->length:I

    return v0
.end method

.method public final copy(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;III)Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;
    .locals 1

    const-string v0, "encoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;-><init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    iget-object v4, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->chunkSize:I

    iget v4, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->chunkSize:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->offset:I

    iget v4, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->offset:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->length:I

    iget v1, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->length:I

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getChunkSize()I
    .locals 1

    .line 25
    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->chunkSize:I

    return v0
.end method

.method public final getEncoding()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    return-object v0
.end method

.method public final getLength()I
    .locals 1

    .line 27
    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->length:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    .line 26
    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    invoke-virtual {v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->chunkSize:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->offset:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->length:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    iget v1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->chunkSize:I

    iget v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->offset:I

    iget v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->length:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IONFILEReadInChunksOptions(encoding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", chunkSize="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
