.class final Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IONFILEUriHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveAsLocalFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;",
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
    c = "io.ionic.libs.ionfilesystemlib.helper.IONFILEUriHelper$resolveAsLocalFile$2"
    f = "IONFILEUriHelper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $assumeExternalStorage:Ljava/lang/Boolean;

.field final synthetic $localPath:Ljava/lang/String;

.field final synthetic $parentFolderFileObject:Ljava/io/File;

.field label:I

.field final synthetic this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;


# direct methods
.method constructor <init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Ljava/io/File;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    iput-object p2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->$parentFolderFileObject:Ljava/io/File;

    iput-object p3, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->$localPath:Ljava/lang/String;

    iput-object p4, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->$assumeExternalStorage:Ljava/lang/Boolean;

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

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;

    iget-object v1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->$parentFolderFileObject:Ljava/io/File;

    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->$localPath:Ljava/lang/String;

    iget-object v4, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->$assumeExternalStorage:Ljava/lang/Boolean;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Ljava/io/File;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 92
    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 93
    .local v0, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    iget-object v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->$parentFolderFileObject:Ljava/io/File;

    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->$localPath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->access$getLocalFileObject(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 94
    .local v1, "localFileObject":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 96
    .local v2, "fileUri":Landroid/net/Uri;
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->$assumeExternalStorage:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getAbsolutePath(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->access$isInExternalStorage(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Ljava/lang/String;)Z

    move-result v3

    .line 95
    :goto_0
    nop

    .line 97
    .local v3, "isFileInExternalStorage":Z
    const-string v4, ""

    .line 98
    .local v4, "trailing":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getPath(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v7, "separator"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v6, v10, v8, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 99
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v1}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 101
    .end local v4    # "trailing":Ljava/lang/String;
    :cond_2
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .restart local v4    # "trailing":Ljava/lang/String;
    :cond_3
    new-instance v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .end local v2    # "fileUri":Landroid/net/Uri;
    .end local v4    # "trailing":Ljava/lang/String;
    const-string v2, "build(...)"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper$resolveAsLocalFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    invoke-static {v2, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->access$getLocalUriType(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Ljava/io/File;)Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v1

    .line 107
    .end local v1    # "localFileObject":Ljava/io/File;
    if-eqz v3, :cond_4

    const/4 v10, 0x1

    nop

    .line 103
    .end local v3    # "isFileInExternalStorage":Z
    :cond_4
    invoke-direct {v5, v6, v7, v1, v10}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;-><init>(Ljava/lang/String;Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;Z)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
