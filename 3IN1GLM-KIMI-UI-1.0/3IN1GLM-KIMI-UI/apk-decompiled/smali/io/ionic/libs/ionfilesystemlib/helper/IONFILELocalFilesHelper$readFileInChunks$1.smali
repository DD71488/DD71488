.class final Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IONFILELocalFilesHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->readFileInChunks$IONFilesystemLib_release(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;I)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ionic.libs.ionfilesystemlib.helper.IONFILELocalFilesHelper$readFileInChunks$1"
    f = "IONFILELocalFilesHelper.kt"
    i = {}
    l = {
        0x5c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bufferSize:I

.field final synthetic $fullPath:Ljava/lang/String;

.field final synthetic $options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;ILkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->$fullPath:Ljava/lang/String;

    iput-object p2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    iput p3, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->$bufferSize:I

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;

    iget-object v1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->$fullPath:Ljava/lang/String;

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    iget v3, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->$bufferSize:I

    invoke-direct {v0, v1, v2, v3, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;-><init>(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;ILkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 86
    iget v1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-use-IONFILELocalFilesHelper$readFileInChunks$1$1":I
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    .end local v1    # "$i$a$-use-IONFILELocalFilesHelper$readFileInChunks$1$1":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 86
    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    .line 87
    .local v3, "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->$fullPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v5, Ljava/io/Closeable;

    iget-object v6, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    iget v7, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->$bufferSize:I

    .end local v4    # "file":Ljava/io/File;
    :try_start_1
    move-object v4, v5

    check-cast v4, Ljava/io/FileInputStream;

    .local v4, "inputStream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 92
    .local v8, "$i$a$-use-IONFILELocalFilesHelper$readFileInChunks$1$1":I
    move-object v9, v4

    check-cast v9, Ljava/io/InputStream;

    .line 93
    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    nop

    .line 94
    nop

    .line 92
    new-instance v4, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1$1$1;

    invoke-direct {v4, v3, v2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v5, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->L$0:Ljava/lang/Object;

    const/4 v10, 0x1

    iput v10, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->label:I

    invoke-static {v9, v6, v7, v4, v1}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt;->readByChunks(Ljava/io/InputStream;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;ILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v3    # "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    if-ne v4, v0, :cond_0

    .line 86
    return-object v0

    .line 92
    :cond_0
    move-object v0, v1

    move-object v3, v5

    move v1, v8

    .line 97
    .end local v8    # "$i$a$-use-IONFILELocalFilesHelper$readFileInChunks$1$1":I
    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;
    .local v1, "$i$a$-use-IONFILELocalFilesHelper$readFileInChunks$1$1":I
    :goto_0
    :try_start_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .end local v1    # "$i$a$-use-IONFILELocalFilesHelper$readFileInChunks$1$1":I
    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 98
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 91
    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;
    .local v1, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;
    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v5

    .end local v1    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v2

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 89
    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;
    .restart local v1    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;
    :cond_1
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;

    iget-object v3, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$readFileInChunks$1;->$fullPath:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v0, v3, v2, v4, v2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
