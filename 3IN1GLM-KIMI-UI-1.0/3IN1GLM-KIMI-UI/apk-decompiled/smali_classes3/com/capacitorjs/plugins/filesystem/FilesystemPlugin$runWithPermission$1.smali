.class final Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FilesystemPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilesystemPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilesystemPlugin.kt\ncom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,412:1\n1#2:413\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.capacitorjs.plugins.filesystem.FilesystemPlugin$runWithPermission$1"
    f = "FilesystemPlugin.kt"
    i = {
        0x1,
        0x1
    }
    l = {
        0x164,
        0x16d
    }
    m = "invokeSuspend"
    n = {
        "resolvedUri",
        "$i$a$-onSuccess-FilesystemPlugin$runWithPermission$1$1"
    }
    s = {
        "L$1",
        "I$0"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $call:Lcom/getcapacitor/PluginCall;

.field final synthetic $onPermissionGranted:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field final synthetic $uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;


# direct methods
.method constructor <init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;",
            "Lcom/getcapacitor/PluginCall;",
            "Lkotlin/jvm/functions/Function2<",
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
            "Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    iput-object p2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->$uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iput-object p3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->$call:Lcom/getcapacitor/PluginCall;

    iput-object p4, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->$onPermissionGranted:Lkotlin/jvm/functions/Function2;

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

    new-instance v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;

    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    iget-object v2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->$uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->$call:Lcom/getcapacitor/PluginCall;

    iget-object v4, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->$onPermissionGranted:Lkotlin/jvm/functions/Function2;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 355
    iget v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->I$0:I

    .local v0, "$i$a$-onSuccess-FilesystemPlugin$runWithPermission$1$1":I
    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .local v1, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    iget-object v2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v0    # "$i$a$-onSuccess-FilesystemPlugin$runWithPermission$1$1":I
    .end local v1    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 356
    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    invoke-static {v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->access$getController(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    move-result-object v1

    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->$uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->label:I

    invoke-virtual {v1, v3, v4}, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->getFileUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 355
    return-object v0

    .line 356
    :cond_0
    :goto_0
    nop

    .line 357
    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    iget-object v4, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->$uri:Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iget-object v5, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->$call:Lcom/getcapacitor/PluginCall;

    iget-object v6, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->$onPermissionGranted:Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v1

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .local v7, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v8, 0x0

    .line 359
    .local v8, "$i$a$-onSuccess-FilesystemPlugin$runWithPermission$1$1":I
    nop

    .line 360
    invoke-virtual {v7}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;->getInExternalStorage()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 361
    invoke-virtual {v4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;->getParentFolder()Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v3, v2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->access$isStoragePermissionGranted(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 363
    const-string v0, "permissionCallback"

    invoke-static {v3, v5, v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->access$requestAllPermissions(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    goto :goto_3

    .line 365
    :cond_2
    iput-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->L$1:Ljava/lang/Object;

    iput v8, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->I$0:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->label:I

    invoke-interface {v6, v7, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    .line 355
    return-object v0

    .line 365
    :cond_3
    move-object v2, v1

    move-object v1, v7

    move v0, v8

    .end local v7    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local v8    # "$i$a$-onSuccess-FilesystemPlugin$runWithPermission$1$1":I
    .restart local v0    # "$i$a$-onSuccess-FilesystemPlugin$runWithPermission$1$1":I
    .restart local v1    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :goto_2
    move v8, v0

    move-object v7, v1

    move-object v1, v2

    .line 367
    .end local v0    # "$i$a$-onSuccess-FilesystemPlugin$runWithPermission$1$1":I
    .end local v1    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .restart local v7    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .restart local v8    # "$i$a$-onSuccess-FilesystemPlugin$runWithPermission$1$1":I
    :goto_3
    nop

    .line 357
    .end local v7    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local v8    # "$i$a$-onSuccess-FilesystemPlugin$runWithPermission$1$1":I
    :cond_4
    nop

    .line 368
    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;->$call:Lcom/getcapacitor/PluginCall;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 413
    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 368
    .local v2, "$i$a$-onFailure-FilesystemPlugin$runWithPermission$1$2":I
    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMethodName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrorsKt;->toFilesystemError(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 369
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-onFailure-FilesystemPlugin$runWithPermission$1$2":I
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
