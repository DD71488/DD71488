.class public final Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
.super Ljava/lang/Object;
.source "IONFILEReadOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;",
        "",
        "encoding",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;",
        "offset",
        "",
        "length",
        "(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;II)V",
        "getEncoding",
        "()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;",
        "getLength",
        "()I",
        "getOffset",
        "component1",
        "component2",
        "component3",
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
.field private final encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;II)V
    .locals 1
    .param p1, "encoding"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "encoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    .line 15
    iput p2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->offset:I

    .line 16
    iput p3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->length:I

    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 15
    const/4 p2, 0x0

    .line 13
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 16
    const p3, 0x7fffffff

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;-><init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;II)V

    .line 17
    return-void
.end method

.method public static synthetic copy$default(Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;IIILjava/lang/Object;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->offset:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->length:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->copy(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;II)Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;
    .locals 1

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->offset:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->length:I

    return v0
.end method

.method public final copy(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;II)Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    .locals 1

    const-string v0, "encoding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;

    invoke-direct {v0, p1, p2, p3}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;-><init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;

    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    iget-object v4, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->offset:I

    iget v4, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->offset:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->length:I

    iget v1, v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->length:I

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEncoding()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;
    .locals 1

    .line 14
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    return-object v0
.end method

.method public final getLength()I
    .locals 1

    .line 16
    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->length:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    .line 15
    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    invoke-virtual {v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->offset:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->length:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->encoding:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    iget v1, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->offset:I

    iget v2, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->length:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IONFILEReadOptions(encoding="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", offset="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
