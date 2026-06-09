.class final Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FilesystemPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function3;)V
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
        "resolvedSourceUri",
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
    c = "com.capacitorjs.plugins.filesystem.FilesystemPlugin$runWithPermission$2"
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

.field final synthetic $onPermissionGranted:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toUri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;


# direct methods
.method constructor <init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;",
            "Lcom/getcapacitor/PluginCall;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    iput-object p2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->$toUri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iput-object p3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->$call:Lcom/getcapacitor/PluginCall;

    iput-object p4, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->$onPermissionGranted:Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;

    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    iget-object v2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->$toUri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->$call:Lcom/getcapacitor/PluginCall;

    iget-object v4, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->$onPermissionGranted:Lkotlin/jvm/functions/Function3;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->invoke(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .local v0, "resolvedSourceUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 390
    iget v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 391
    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    iget-object v2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->$toUri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->$call:Lcom/getcapacitor/PluginCall;

    new-instance v4, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2$1;

    iget-object v5, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;->$onPermissionGranted:Lkotlin/jvm/functions/Function3;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2$1;-><init>(Lkotlin/jvm/functions/Function3;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, v3, v4}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->access$runWithPermission(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V

    .line 394
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
