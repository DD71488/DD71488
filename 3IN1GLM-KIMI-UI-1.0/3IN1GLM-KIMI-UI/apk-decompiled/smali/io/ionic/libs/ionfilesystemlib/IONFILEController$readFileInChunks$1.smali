.class final Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IONFILEController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ionic/libs/ionfilesystemlib/IONFILEController;->readFileInChunks(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;)Lkotlinx/coroutines/flow/Flow;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIONFILEController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IONFILEController.kt\nio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1\n+ 2 IONFILEUriResolveExtensions.kt\nio/ionic/libs/ionfilesystemlib/helper/common/IONFILEUriResolveExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,295:1\n48#2:296\n60#2,3:297\n64#2:301\n49#2,6:302\n1#3:300\n*S KotlinDebug\n*F\n+ 1 IONFILEController.kt\nio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1\n*L\n145#1:296\n145#1:297,3\n145#1:301\n145#1:302,6\n145#1:300\n*E\n"
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
    c = "io.ionic.libs.ionfilesystemlib.IONFILEController$readFileInChunks$1"
    f = "IONFILEController.kt"
    i = {
        0x0
    }
    l = {
        0x12b,
        0x9a
    }
    m = "invokeSuspend"
    n = {
        "$this$flow"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

.field final synthetic $uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ionic/libs/ionfilesystemlib/IONFILEController;


# direct methods
.method constructor <init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;Lio/ionic/libs/ionfilesystemlib/IONFILEController;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;",
            "Lio/ionic/libs/ionfilesystemlib/IONFILEController;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    iput-object p2, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->this$0:Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    iput-object p3, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->$uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;

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

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;

    iget-object v1, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->this$0:Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->$uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;-><init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;Lio/ionic/libs/ionfilesystemlib/IONFILEController;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 143
    iget v1, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-fold-IONFILEController$readFileInChunks$1$1":I
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;
    .end local v1    # "$i$a$-fold-IONFILEController$readFileInChunks$1$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "$i$f$useUriIfResolvedAsNonDirectory":I
    const/4 v3, 0x0

    .local v3, "$i$f$useUriIfResolved":I
    iget-object v4, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    .local v4, "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p1

    check-cast v5, Lkotlin/Result;

    invoke-virtual {v5}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .end local v1    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;
    .end local v2    # "$i$f$useUriIfResolvedAsNonDirectory":I
    .end local v3    # "$i$f$useUriIfResolved":I
    .end local v4    # "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->L$0:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    .line 144
    .restart local v4    # "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v2, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    invoke-virtual {v2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->getOffset()I

    move-result v2

    iget-object v3, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    invoke-virtual {v3}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;->getLength()I

    move-result v3

    invoke-static {v2, v3}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILECommonKt;->validateOffsetAndLength(II)V

    .line 145
    iget-object v2, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->this$0:Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    invoke-static {v2}, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->access$getUriHelper$p(Lio/ionic/libs/ionfilesystemlib/IONFILEController;)Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    move-result-object v2

    .local v2, "$this$useUriIfResolvedAsNonDirectory$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    iget-object v3, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->$uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;

    .local v3, "uri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    const/4 v5, 0x0

    .line 296
    .local v5, "$i$f$useUriIfResolvedAsNonDirectory":I
    nop

    .local v2, "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v6, 0x0

    .line 297
    .local v6, "$i$f$useUriIfResolved":I
    nop

    .line 298
    instance-of v7, v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v7, :cond_0

    move-object v7, v3

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    goto :goto_1

    .line 299
    :cond_0
    instance-of v7, v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v7, :cond_8

    move-object v7, v3

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->L$0:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->label:I

    invoke-virtual {v2, v7, v8}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local v3    # "uri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    if-ne v2, v0, :cond_1

    .line 143
    return-object v0

    .line 299
    :cond_1
    move v3, v5

    move-object v5, v2

    move v2, v3

    move v3, v6

    .end local v5    # "$i$f$useUriIfResolvedAsNonDirectory":I
    .end local v6    # "$i$f$useUriIfResolved":I
    .local v2, "$i$f$useUriIfResolvedAsNonDirectory":I
    .local v3, "$i$f$useUriIfResolved":I
    :goto_0
    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_4

    move-object v7, v5

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move v5, v2

    move v6, v3

    .line 297
    .end local v2    # "$i$f$useUriIfResolvedAsNonDirectory":I
    .end local v3    # "$i$f$useUriIfResolved":I
    .restart local v5    # "$i$f$useUriIfResolvedAsNonDirectory":I
    .restart local v6    # "$i$f$useUriIfResolved":I
    :goto_1
    nop

    .line 301
    .local v7, "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    nop

    .local v7, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v2, 0x0

    .line 302
    .local v2, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    instance-of v3, v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v3, :cond_3

    move-object v3, v7

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    invoke-virtual {v3}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getType()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v3

    sget-object v8, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->DIRECTORY:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    if-eq v3, v8, :cond_2

    goto :goto_2

    .line 305
    .end local v7    # "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;

    invoke-direct {v3}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;-><init>()V

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 303
    .restart local v7    # "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_3
    :goto_2
    nop

    .local v7, "it":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v3, 0x0

    .line 145
    .local v3, "$i$a$-useUriIfResolvedAsNonDirectory-IONFILEController$readFileInChunks$1$resolveResult$1":I
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 303
    .end local v3    # "$i$a$-useUriIfResolvedAsNonDirectory-IONFILEController$readFileInChunks$1$resolveResult$1":I
    .end local v7    # "it":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    move-object v3, v8

    .line 302
    :goto_3
    nop

    .line 301
    .end local v2    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    move v2, v5

    goto :goto_4

    .line 300
    .end local v5    # "$i$f$useUriIfResolvedAsNonDirectory":I
    .local v2, "$i$f$useUriIfResolvedAsNonDirectory":I
    .local v3, "$i$f$useUriIfResolved":I
    .local v6, "it$iv$iv":Ljava/lang/Throwable;
    :cond_4
    const/4 v5, 0x0

    .line 299
    .local v5, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv":I
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 307
    .end local v3    # "$i$f$useUriIfResolved":I
    .end local v5    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv":I
    .end local v6    # "it$iv$iv":Ljava/lang/Throwable;
    :goto_4
    nop

    .line 145
    .end local v2    # "$i$f$useUriIfResolvedAsNonDirectory":I
    nop

    .line 146
    .local v3, "resolveResult":Ljava/lang/Object;
    iget-object v2, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->this$0:Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    iget-object v5, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    .end local v3    # "resolveResult":Ljava/lang/Object;
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_7

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .local v3, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v6, 0x0

    .line 148
    .local v6, "$i$a$-fold-IONFILEController$readFileInChunks$1$1":I
    nop

    .line 149
    instance-of v7, v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v7, :cond_5

    .line 150
    invoke-static {v2}, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->access$getLocalFilesHelper$p(Lio/ionic/libs/ionfilesystemlib/IONFILEController;)Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    move-result-object v2

    move-object v7, v3

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    invoke-virtual {v7}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getFullPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->readFileInChunks(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    goto :goto_5

    .line 152
    :cond_5
    invoke-static {v2}, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->access$getContentResolverHelper$p(Lio/ionic/libs/ionfilesystemlib/IONFILEController;)Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    move-result-object v2

    invoke-virtual {v3}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->readFileInChunks(Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    .line 148
    .end local v3    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :goto_5
    nop

    .line 154
    .local v2, "readByChunksFlow":Lkotlinx/coroutines/flow/Flow;
    const/4 v3, 0x0

    iput-object v3, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;->label:I

    invoke-static {v4, v2, v1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "readByChunksFlow":Lkotlinx/coroutines/flow/Flow;
    .end local v4    # "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    if-ne v2, v0, :cond_6

    .line 143
    return-object v0

    .line 154
    :cond_6
    move-object v0, v1

    move v1, v6

    .line 155
    .end local v6    # "$i$a$-fold-IONFILEController$readFileInChunks$1$1":I
    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;
    .local v1, "$i$a$-fold-IONFILEController$readFileInChunks$1$1":I
    :goto_6
    nop

    .line 146
    .end local v1    # "$i$a$-fold-IONFILEController$readFileInChunks$1$1":I
    nop

    .line 158
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 146
    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;
    .local v1, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;
    .local v6, "it":Ljava/lang/Throwable;
    :cond_7
    const/4 v0, 0x0

    .line 156
    .local v0, "$i$a$-fold-IONFILEController$readFileInChunks$1$2":I
    throw v6

    .line 299
    .end local v0    # "$i$a$-fold-IONFILEController$readFileInChunks$1$2":I
    .local v5, "$i$f$useUriIfResolvedAsNonDirectory":I
    .local v6, "$i$f$useUriIfResolved":I
    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
