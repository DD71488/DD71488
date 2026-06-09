.class final Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FilesystemPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->rename(Lcom/getcapacitor/PluginCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilesystemPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilesystemPlugin.kt\ncom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,412:1\n1#2:413\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "source",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
        "destination"
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
    c = "com.capacitorjs.plugins.filesystem.FilesystemPlugin$rename$1"
    f = "FilesystemPlugin.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xe2
    }
    m = "invokeSuspend"
    n = {
        "source",
        "destination"
    }
    s = {
        "L$0",
        "L$1"
    }
    v = 0x1
.end annotation


# instance fields
.field final synthetic $call:Lcom/getcapacitor/PluginCall;

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;


# direct methods
.method constructor <init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;",
            "Lcom/getcapacitor/PluginCall;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    iput-object p2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->$call:Lcom/getcapacitor/PluginCall;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;

    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    iget-object v2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->$call:Lcom/getcapacitor/PluginCall;

    invoke-direct {v0, v1, v2, p3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    check-cast p2, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->invoke(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .local v0, "source":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .local v1, "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 225
    iget v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->label:I

    packed-switch v3, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 226
    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->this$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    invoke-static {v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->access$getController(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;

    move-object v5, v1

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->label:I

    invoke-virtual {v3, v4, v5, v6}, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->move-0E7RQCE(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_0

    .line 225
    return-object v2

    .line 226
    :cond_0
    move-object v2, v3

    :goto_0
    nop

    .line 227
    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->$call:Lcom/getcapacitor/PluginCall;

    invoke-static {v2}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Landroid/net/Uri;

    .line 413
    .local v4, "it":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 227
    .local v5, "$i$a$-onSuccess-FilesystemPlugin$rename$1$1":I
    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v3, v8, v6, v7, v8}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendSuccess$default(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/JSObject;ZILjava/lang/Object;)V

    .line 228
    .end local v4    # "it":Landroid/net/Uri;
    .end local v5    # "$i$a$-onSuccess-FilesystemPlugin$rename$1$1":I
    :cond_1
    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;->$call:Lcom/getcapacitor/PluginCall;

    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 413
    .local v2, "it":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 228
    .local v4, "$i$a$-onFailure-FilesystemPlugin$rename$1$2":I
    invoke-virtual {v3}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getMethodName(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrorsKt;->toFilesystemError(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 229
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v4    # "$i$a$-onFailure-FilesystemPlugin$rename$1$2":I
    :cond_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
