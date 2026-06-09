.class final Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FilesystemPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->readFileInChunks(Lcom/getcapacitor/PluginCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "uri",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;"
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
    c = "com.capacitorjs.plugins.filesystem.FilesystemPlugin$readFileInChunks$1"
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

.field final synthetic $input:Lcom/capacitorjs/plugins/filesystem/ReadFileInChunksOptions;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;


# direct methods
.method constructor <init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/capacitorjs/plugins/filesystem/ReadFileInChunksOptions;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;",
            "Lcom/capacitorjs/plugins/filesystem/ReadFileInChunksOptions;",
            "Lcom/getcapacitor/PluginCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    iput-object p2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->$input:Lcom/capacitorjs/plugins/filesystem/ReadFileInChunksOptions;

    iput-object p3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->$call:Lcom/getcapacitor/PluginCall;

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

    new-instance v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;

    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    iget-object v2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->$input:Lcom/capacitorjs/plugins/filesystem/ReadFileInChunksOptions;

    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->$call:Lcom/getcapacitor/PluginCall;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/capacitorjs/plugins/filesystem/ReadFileInChunksOptions;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->invoke(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .local v0, "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 89
    iget v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    invoke-static {v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->access$getController(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;

    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->$input:Lcom/capacitorjs/plugins/filesystem/ReadFileInChunksOptions;

    invoke-virtual {v3}, Lcom/capacitorjs/plugins/filesystem/ReadFileInChunksOptions;->getOptions()Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->readFileInChunks(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;

    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->$call:Lcom/getcapacitor/PluginCall;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$1;-><init>(Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 94
    new-instance v2, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$2;

    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->$call:Lcom/getcapacitor/PluginCall;

    invoke-direct {v2, v3, v4}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$2;-><init>(Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->onCompletion(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 99
    new-instance v2, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;

    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->$call:Lcom/getcapacitor/PluginCall;

    invoke-direct {v2, v3, v4}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1$3;-><init>(Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    invoke-static {v2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->access$getCoroutineScope(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    .line 103
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
