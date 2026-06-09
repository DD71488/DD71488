.class final Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IONFILEContentHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->readFile-0E7RQCE(Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "",
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
    c = "io.ionic.libs.ionfilesystemlib.helper.IONFILEContentHelper$readFile$2"
    f = "IONFILEContentHelper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;

.field final synthetic $uri:Landroid/net/Uri;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;


# direct methods
.method constructor <init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;",
            "Landroid/net/Uri;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    iput-object p2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->$uri:Landroid/net/Uri;

    iput-object p3, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;

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

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;

    iget-object v1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->$uri:Landroid/net/Uri;

    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 39
    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 45
    .local v1, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    iget-object v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    .line 40
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    iget-object v4, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->$uri:Landroid/net/Uri;

    iget-object v5, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;

    .end local v1    # "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v1, 0x0

    .line 41
    .local v1, "$i$a$-runCatching-IONFILEContentHelper$readFile$2$1":I
    invoke-static {v3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->access$getContentResolver$p(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v3, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v6, v3

    check-cast v6, Ljava/io/InputStream;

    .local v6, "inputStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 42
    .local v7, "$i$a$-use-IONFILEContentHelper$readFile$2$1$fileContents$1":I
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, v5}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEInputStreamExtensionsKt;->readFull(Ljava/io/InputStream;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "$i$a$-use-IONFILEContentHelper$readFile$2$1$fileContents$1":I
    :try_start_2
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v5, :cond_0

    .line 44
    .local v5, "fileContents":Ljava/lang/String;
    nop

    .line 40
    .end local v1    # "$i$a$-runCatching-IONFILEContentHelper$readFile$2$1":I
    .end local v5    # "fileContents":Ljava/lang/String;
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 41
    .restart local v1    # "$i$a$-runCatching-IONFILEContentHelper$readFile$2$1":I
    :catchall_0
    move-exception v4

    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;
    .end local v1    # "$i$a$-runCatching-IONFILEContentHelper$readFile$2$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;
    .restart local v1    # "$i$a$-runCatching-IONFILEContentHelper$readFile$2$1":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v5

    :try_start_4
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v5

    .line 43
    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_0
    new-instance v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;-><init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 40
    .end local v1    # "$i$a$-runCatching-IONFILEContentHelper$readFile$2$1":I
    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    :goto_0
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;->$uri:Landroid/net/Uri;

    invoke-static {v2, v1, v3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->access$mapError-KWTtemM(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Ljava/lang/Object;Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
