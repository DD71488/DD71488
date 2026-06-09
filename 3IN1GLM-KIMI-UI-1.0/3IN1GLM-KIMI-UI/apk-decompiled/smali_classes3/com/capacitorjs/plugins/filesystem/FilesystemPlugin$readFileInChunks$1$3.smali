.class final Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FilesystemPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Throwable;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "",
        "it",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.capacitorjs.plugins.filesystem.FilesystemPlugin$readFileInChunks$1$3"
    f = "FilesystemPlugin.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
    v = 0x1
.end annotation


# instance fields
.field final synthetic $call:Lcom/getcapacitor/PluginCall;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getcapacitor/PluginCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;->$call:Lcom/getcapacitor/PluginCall;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Ljava/lang/Throwable;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;

    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;->$call:Lcom/getcapacitor/PluginCall;

    invoke-direct {v0, v1, p3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;-><init>(Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;->L$0:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    .local v0, "it":Ljava/lang/Throwable;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 99
    iget v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;->$call:Lcom/getcapacitor/PluginCall;

    iget-object v2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;->$call:Lcom/getcapacitor/PluginCall;

    invoke-virtual {v2}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getMethodName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrorsKt;->toFilesystemError(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 101
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
