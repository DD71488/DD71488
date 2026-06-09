.class public final Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;
.super Ljava/lang/Object;
.source "IONFILEDirectoriesHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\nJ,\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J,\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0012H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J*\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u00042\u0006\u0010\u000c\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J,\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\n\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;",
        "",
        "()V",
        "copyDirectory",
        "Lkotlin/Result;",
        "",
        "sourcePath",
        "",
        "destinationPath",
        "copyDirectory-0E7RQCE",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createDirectory",
        "fullPath",
        "options",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;",
        "createDirectory-0E7RQCE",
        "(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteDirectory",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;",
        "deleteDirectory-0E7RQCE",
        "(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "listDirectory",
        "",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
        "listDirectory-gIAlu-s",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "moveDirectory",
        "moveDirectory-0E7RQCE",
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
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final copyDirectory-0E7RQCE(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$copyDirectory$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$copyDirectory$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$copyDirectory$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$copyDirectory$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$copyDirectory$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$copyDirectory$1;

    invoke-direct {v0, p0, p3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$copyDirectory$1;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$copyDirectory$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 66
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$copyDirectory$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p3

    goto :goto_1

    :pswitch_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 69
    .local p1, "sourcePath":Ljava/lang/String;
    .local p2, "destinationPath":Ljava/lang/String;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$copyDirectory$2;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$copyDirectory$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    iput v4, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$copyDirectory$1;->label:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "sourcePath":Ljava/lang/String;
    .end local p2    # "destinationPath":Ljava/lang/String;
    if-ne p1, v1, :cond_1

    .line 66
    return-object v1

    .line 69
    :cond_1
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 81
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createDirectory-0E7RQCE(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$createDirectory$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$createDirectory$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$createDirectory$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$createDirectory$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$createDirectory$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$createDirectory$1;

    invoke-direct {v0, p0, p3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$createDirectory$1;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$createDirectory$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 42
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$createDirectory$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p3

    goto :goto_1

    :pswitch_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .local p1, "fullPath":Ljava/lang/String;
    .local p2, "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$createDirectory$2;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$createDirectory$2;-><init>(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    iput v4, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$createDirectory$1;->label:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "fullPath":Ljava/lang/String;
    .end local p2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;
    if-ne p1, v1, :cond_1

    .line 42
    return-object v1

    .line 45
    :cond_1
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 47
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final deleteDirectory-0E7RQCE(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$deleteDirectory$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$deleteDirectory$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$deleteDirectory$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$deleteDirectory$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$deleteDirectory$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$deleteDirectory$1;

    invoke-direct {v0, p0, p3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$deleteDirectory$1;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$deleteDirectory$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$deleteDirectory$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p3

    goto :goto_1

    :pswitch_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .local p1, "fullPath":Ljava/lang/String;
    .local p2, "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$deleteDirectory$2;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$deleteDirectory$2;-><init>(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    iput v4, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$deleteDirectory$1;->label:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "fullPath":Ljava/lang/String;
    .end local p2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;
    if-ne p1, v1, :cond_1

    .line 56
    return-object v1

    .line 57
    :cond_1
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final listDirectory-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$listDirectory$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$listDirectory$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$listDirectory$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$listDirectory$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$listDirectory$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$listDirectory$1;

    invoke-direct {v0, p0, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$listDirectory$1;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$listDirectory$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 23
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$listDirectory$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p2

    goto :goto_1

    :pswitch_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .local p1, "fullPath":Ljava/lang/String;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$listDirectory$2;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$listDirectory$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    iput v4, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$listDirectory$1;->label:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "fullPath":Ljava/lang/String;
    if-ne p1, v1, :cond_1

    .line 23
    return-object v1

    .line 24
    :cond_1
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 33
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final moveDirectory-0E7RQCE(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$moveDirectory$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$moveDirectory$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$moveDirectory$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$moveDirectory$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$moveDirectory$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$moveDirectory$1;

    invoke-direct {v0, p0, p3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$moveDirectory$1;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$moveDirectory$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 92
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$moveDirectory$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p3

    goto :goto_1

    :pswitch_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 95
    .local v2, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;
    .local p1, "sourcePath":Ljava/lang/String;
    .local p2, "destinationPath":Ljava/lang/String;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$moveDirectory$2;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v2, v5}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$moveDirectory$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    iput v5, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper$moveDirectory$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;
    .end local p1    # "sourcePath":Ljava/lang/String;
    .end local p2    # "destinationPath":Ljava/lang/String;
    if-ne p1, v1, :cond_1

    .line 92
    return-object v1

    .line 95
    :cond_1
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 111
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
