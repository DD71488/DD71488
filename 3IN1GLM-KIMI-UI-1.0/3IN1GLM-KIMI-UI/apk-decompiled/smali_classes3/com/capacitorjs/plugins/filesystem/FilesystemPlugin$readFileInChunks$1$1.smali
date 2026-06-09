.class final Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FilesystemPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "chunk",
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
    c = "com.capacitorjs.plugins.filesystem.FilesystemPlugin$readFileInChunks$1$1"
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
            "Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;->$call:Lcom/getcapacitor/PluginCall;

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

    new-instance v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;

    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;->$call:Lcom/getcapacitor/PluginCall;

    invoke-direct {v0, v1, p2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;-><init>(Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;->invoke(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, "chunk":Ljava/lang/String;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 91
    iget v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;->$call:Lcom/getcapacitor/PluginCall;

    invoke-static {v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->createReadResultObject(Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendSuccess(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/JSObject;Z)V

    .line 93
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
