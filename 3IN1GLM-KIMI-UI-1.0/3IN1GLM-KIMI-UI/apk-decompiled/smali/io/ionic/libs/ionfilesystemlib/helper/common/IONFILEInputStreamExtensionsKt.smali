.class public final Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt;
.super Ljava/lang/Object;
.source "IONFILEInputStreamExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u001a\u0014\u0010\u0008\u001a\u00020\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0003\u001a\u001c\u0010\u000c\u001a\u00020\u0005*\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005H\u0002\u001a\u0014\u0010\u0010\u001a\u00020\u0005*\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0005H\u0002\u001aF\u0010\u0012\u001a\u00020\t*\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00052\"\u0010\u0013\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0014H\u0080@\u00a2\u0006\u0002\u0010\u0017\u001a\u001c\u0010\u0018\u001a\u00020\u0005*\u00020\n2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0005H\u0002\u001a\u0014\u0010\u0019\u001a\u00020\u0001*\u00020\n2\u0006\u0010\r\u001a\u00020\u001aH\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "processReadChunk",
        "",
        "byteArray",
        "",
        "bytesRead",
        "",
        "encoding",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;",
        "applyOffset",
        "",
        "Ljava/io/InputStream;",
        "offset",
        "calculateChunkSizeToUse",
        "options",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;",
        "bufferSize",
        "convertChunkSize",
        "chunkSize",
        "readByChunks",
        "onChunkRead",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Ljava/io/InputStream;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;ILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readChunk",
        "readFull",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;",
        "IONFilesystemLib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final applyOffset(Ljava/io/InputStream;I)V
    .locals 7
    .param p0, "$this$applyOffset"    # Ljava/io/InputStream;
    .param p1, "offset"    # I

    .line 159
    if-gtz p1, :cond_0

    return-void

    .line 161
    :cond_0
    sget-object v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEBuildConfig;->INSTANCE:Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEBuildConfig;

    invoke-virtual {v0}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEBuildConfig;->getAndroidSdkVersionCode()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    .line 162
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skipNBytes(J)V

    .line 163
    return-void

    .line 166
    :cond_1
    int-to-long v0, p1

    .line 167
    .local v0, "remaining":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 168
    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    .line 169
    .local v4, "skipped":J
    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    .line 170
    sub-long/2addr v0, v4

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 176
    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    .end local v4    # "skipped":J
    goto :goto_0

    .line 174
    .restart local v4    # "skipped":J
    :cond_3
    new-instance v2, Ljava/io/EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reached end of stream with "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " bytes left to skip"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    .end local v4    # "skipped":J
    :cond_4
    return-void
.end method

.method private static final calculateChunkSizeToUse(Ljava/io/InputStream;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;I)I
    .locals 3
    .param p0, "$this$calculateChunkSizeToUse"    # Ljava/io/InputStream;
    .param p1, "options"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;
    .param p2, "bufferSize"    # I

    .line 143
    invoke-virtual {p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->getChunkSize()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->getOffset()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->getLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 144
    invoke-static {v0, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 145
    nop

    .local v0, "it":I
    const/4 v1, 0x0

    .line 146
    .local v1, "$i$a$-let-IONFILEInputStreamExtensionsKt$calculateChunkSizeToUse$1":I
    invoke-virtual {p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->getEncoding()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    move-result-object v2

    invoke-static {v2, v0}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt;->convertChunkSize(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;I)I

    move-result v0

    .line 145
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-IONFILEInputStreamExtensionsKt$calculateChunkSizeToUse$1":I
    nop

    .line 147
    return v0
.end method

.method private static final convertChunkSize(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;I)I
    .locals 1
    .param p0, "$this$convertChunkSize"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;
    .param p1, "chunkSize"    # I

    .line 149
    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;->INSTANCE:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    rem-int/lit8 v0, p1, 0x3

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 154
    :cond_0
    move v0, p1

    .line 155
    :goto_0
    return v0
.end method

.method private static final processReadChunk([BILio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;)Ljava/lang/String;
    .locals 3
    .param p0, "byteArray"    # [B
    .param p1, "bytesRead"    # I
    .param p2, "encoding"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    .line 121
    if-gtz p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .local v0, "byteArrayToConvert":[B
    instance-of v1, p2, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/String;

    .line 124
    move-object v2, p2

    check-cast v2, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;

    invoke-virtual {v2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 123
    :goto_0
    nop

    .line 128
    .local v1, "readChunk":Ljava/lang/String;
    return-object v1
.end method

.method public static final readByChunks(Ljava/io/InputStream;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;ILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;

    invoke-direct {v0, p4}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p4, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->result:Ljava/lang/Object;

    .local p4, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 67
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p4    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p4    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p0, 0x0

    .local p0, "$i$a$-let-IONFILEInputStreamExtensionsKt$readByChunks$2":I
    iget p1, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->I$1:I

    .local p1, "chunkSize":I
    iget p2, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->I$0:I

    .local p2, "bufferSize":I
    iget-object p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->L$4:Ljava/lang/Object;

    check-cast p3, Lkotlin/jvm/internal/Ref$IntRef;

    .local p3, "totalBytesRead":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    .local v2, "chunkBytesRead":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .local v3, "onChunkRead":Lkotlin/jvm/functions/Function2;
    iget-object v4, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    .local v4, "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;
    iget-object v5, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/io/InputStream;

    .local v5, "$this$readByChunks":Ljava/io/InputStream;
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "chunkBytesRead":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v3    # "onChunkRead":Lkotlin/jvm/functions/Function2;
    .end local v4    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;
    .end local v5    # "$this$readByChunks":Ljava/io/InputStream;
    .end local p0    # "$i$a$-let-IONFILEInputStreamExtensionsKt$readByChunks$2":I
    .end local p1    # "chunkSize":I
    .end local p2    # "bufferSize":I
    .end local p3    # "totalBytesRead":Lkotlin/jvm/internal/Ref$IntRef;
    :pswitch_1
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    .local p0, "$this$readByChunks":Ljava/io/InputStream;
    .local p1, "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;
    .restart local p2    # "bufferSize":I
    .local p3, "onChunkRead":Lkotlin/jvm/functions/Function2;
    invoke-static {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt;->calculateChunkSizeToUse(Ljava/io/InputStream;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;I)I

    move-result v2

    .line 73
    .local v2, "chunkSize":I
    invoke-virtual {p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->getOffset()I

    move-result v3

    invoke-static {p0, v3}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt;->applyOffset(Ljava/io/InputStream;I)V

    .line 74
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 75
    .local v3, "chunkBytesRead":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v5, v4

    move-object v4, p1

    move p1, v2

    move-object v2, v3

    move-object v3, p3

    move-object p3, v5

    move-object v5, p0

    .line 77
    .end local p0    # "$this$readByChunks":Ljava/io/InputStream;
    .local v2, "chunkBytesRead":Lkotlin/jvm/internal/Ref$IntRef;
    .local v3, "onChunkRead":Lkotlin/jvm/functions/Function2;
    .restart local v4    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;
    .restart local v5    # "$this$readByChunks":Ljava/io/InputStream;
    .local p1, "chunkSize":I
    .local p3, "totalBytesRead":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_1
    invoke-virtual {v4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->getLength()I

    move-result p0

    iget v6, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr p0, v6

    .line 78
    .local p0, "remainingBytesToRead":I
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .end local p0    # "remainingBytesToRead":I
    new-array p0, p0, [B

    .line 79
    .local p0, "byteArray":[B
    invoke-static {v5, p0, p2}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt;->readChunk(Ljava/io/InputStream;[BI)I

    move-result v6

    iput v6, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 80
    iget v6, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->getEncoding()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt;->processReadChunk([BILio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "byteArray":[B
    if-eqz p0, :cond_3

    .local p0, "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 81
    .local v6, "$i$a$-let-IONFILEInputStreamExtensionsKt$readByChunks$2":I
    iget v7, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v8, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v7, v8

    iput v7, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 82
    iput-object v5, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->L$3:Ljava/lang/Object;

    iput-object p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->L$4:Ljava/lang/Object;

    iput p2, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->I$0:I

    iput p1, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->I$1:I

    const/4 v7, 0x1

    iput v7, v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt$readByChunks$1;->label:I

    invoke-interface {v3, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "it":Ljava/lang/String;
    if-ne p0, v1, :cond_2

    .line 67
    return-object v1

    .line 82
    :cond_2
    move p0, v6

    .end local v6    # "$i$a$-let-IONFILEInputStreamExtensionsKt$readByChunks$2":I
    .local p0, "$i$a$-let-IONFILEInputStreamExtensionsKt$readByChunks$2":I
    :goto_1
    nop

    .line 83
    nop

    .line 80
    .end local p0    # "$i$a$-let-IONFILEInputStreamExtensionsKt$readByChunks$2":I
    nop

    .line 84
    :cond_3
    iget p0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez p0, :cond_4

    iget p0, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->getLength()I

    move-result v6

    if-lt p0, v6, :cond_1

    .line 85
    .end local v2    # "chunkBytesRead":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v3    # "onChunkRead":Lkotlin/jvm/functions/Function2;
    .end local v4    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;
    .end local v5    # "$this$readByChunks":Ljava/io/InputStream;
    .end local p1    # "chunkSize":I
    .end local p2    # "bufferSize":I
    .end local p3    # "totalBytesRead":Lkotlin/jvm/internal/Ref$IntRef;
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final readChunk(Ljava/io/InputStream;[BI)I
    .locals 3
    .param p0, "$this$readChunk"    # Ljava/io/InputStream;
    .param p1, "byteArray"    # [B
    .param p2, "bufferSize"    # I

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "totalBytesRead":I
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 100
    .local v1, "len":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 101
    .local v2, "bytesRead":I
    if-lez v2, :cond_1

    .line 102
    add-int/2addr v0, v2

    .line 104
    .end local v1    # "len":I
    :cond_1
    if-lez v2, :cond_2

    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 105
    .end local v2    # "bytesRead":I
    :cond_2
    return v0
.end method

.method public static final readFull(Ljava/io/InputStream;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;)Ljava/lang/String;
    .locals 9
    .param p0, "$this$readFull"    # Ljava/io/InputStream;
    .param p1, "options"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->getOffset()I

    move-result v0

    invoke-static {p0, v0}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt;->applyOffset(Ljava/io/InputStream;I)V

    .line 24
    invoke-virtual {p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->getLength()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v2, v0, :cond_0

    const v3, 0x7fffffff

    if-ge v0, v3, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "chunkBytesRead":I
    const/4 v1, 0x0

    .local v1, "readFile":Ljava/lang/Object;
    const-string v1, ""

    .line 27
    const/4 v2, 0x0

    .line 29
    .local v2, "totalBytesRead":I
    :cond_1
    invoke-virtual {p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->getLength()I

    move-result v3

    sub-int/2addr v3, v2

    .line 30
    .local v3, "remainingBytesToRead":I
    nop

    .line 31
    invoke-virtual {p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->getEncoding()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-static {v4, v5}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt;->convertChunkSize(Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;I)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 30
    nop

    .line 34
    .local v4, "bufferSize":I
    new-array v5, v4, [B

    .line 35
    .local v5, "byteArray":[B
    invoke-static {p0, v5, v4}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt;->readChunk(Ljava/io/InputStream;[BI)I

    move-result v0

    .line 36
    invoke-virtual {p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->getEncoding()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt;->processReadChunk([BILio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .local v6, "it":Ljava/lang/String;
    const/4 v7, 0x0

    .line 37
    .local v7, "$i$a$-let-IONFILEInputStreamExtensionsKt$readFull$1":I
    add-int/2addr v2, v0

    .line 38
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    nop

    .line 36
    .end local v6    # "it":Ljava/lang/String;
    .end local v7    # "$i$a$-let-IONFILEInputStreamExtensionsKt$readFull$1":I
    nop

    .line 40
    .end local v3    # "remainingBytesToRead":I
    .end local v4    # "bufferSize":I
    .end local v5    # "byteArray":[B
    :cond_2
    if-lez v0, :cond_3

    invoke-virtual {p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 41
    :cond_3
    return-object v1

    .line 44
    .end local v0    # "chunkBytesRead":I
    .end local v1    # "readFile":Ljava/lang/Object;
    .end local v2    # "totalBytesRead":I
    :cond_4
    invoke-virtual {p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->getEncoding()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    move-result-object v0

    instance-of v0, v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;

    if-eqz v0, :cond_5

    .line 45
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->getEncoding()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    move-result-object v1

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;

    invoke-virtual {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/InputStreamReader;

    .local v1, "it":Ljava/io/InputStreamReader;
    const/4 v2, 0x0

    .line 46
    .local v2, "$i$a$-use-IONFILEInputStreamExtensionsKt$readFull$2":I
    move-object v3, v1

    check-cast v3, Ljava/io/Reader;

    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v1    # "it":Ljava/io/InputStreamReader;
    .end local v2    # "$i$a$-use-IONFILEInputStreamExtensionsKt$readFull$2":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .end local p0    # "$this$readFull":Ljava/io/InputStream;
    .end local p1    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p0    # "$this$readFull":Ljava/io/InputStream;
    .restart local p1    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 49
    :cond_5
    invoke-static {p0}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    :goto_0
    return-object v3
.end method
