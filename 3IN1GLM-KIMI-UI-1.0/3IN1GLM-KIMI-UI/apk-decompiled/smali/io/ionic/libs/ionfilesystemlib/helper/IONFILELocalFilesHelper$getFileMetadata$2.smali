.class final Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IONFILELocalFilesHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->getFileMetadata-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "io.ionic.libs.ionfilesystemlib.helper.IONFILELocalFilesHelper$getFileMetadata$2"
    f = "IONFILELocalFilesHelper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $fullPath:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;->$fullPath:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;

    iget-object v1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;->$fullPath:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 107
    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 108
    .local v1, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    iget-object v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;->$fullPath:Ljava/lang/String;

    .end local v1    # "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v1, 0x0

    .line 109
    .local v1, "$i$a$-runCatching-IONFILELocalFilesHelper$getFileMetadata$2$1":I
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-static {v3}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILECommonKt;->getMetadata(Ljava/io/File;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;

    move-result-object v2

    .line 108
    .end local v1    # "$i$a$-runCatching-IONFILELocalFilesHelper$getFileMetadata$2$1":I
    .end local v3    # "file":Ljava/io/File;
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 111
    .restart local v1    # "$i$a$-runCatching-IONFILELocalFilesHelper$getFileMetadata$2$1":I
    .restart local v3    # "file":Ljava/io/File;
    :cond_0
    new-instance v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v4, v2, v6, v5, v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v1    # "$i$a$-runCatching-IONFILELocalFilesHelper$getFileMetadata$2$1":I
    .end local v3    # "file":Ljava/io/File;
    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$getFileMetadata$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
