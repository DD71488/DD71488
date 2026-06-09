.class final Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IONFILEContentHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->copyFile-0E7RQCE(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
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
    c = "io.ionic.libs.ionfilesystemlib.helper.IONFILEContentHelper$copyFile$2"
    f = "IONFILEContentHelper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $destinationPath:Ljava/lang/String;

.field final synthetic $sourceUri:Landroid/net/Uri;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;


# direct methods
.method constructor <init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    iput-object p2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->$sourceUri:Landroid/net/Uri;

    iput-object p3, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->$destinationPath:Ljava/lang/String;

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

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;

    iget-object v1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->$sourceUri:Landroid/net/Uri;

    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->$destinationPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 134
    move-object/from16 v1, p0

    iget v0, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v0, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 149
    .local v0, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    iget-object v4, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    .line 135
    iget-object v5, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->$destinationPath:Ljava/lang/String;

    iget-object v6, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    iget-object v7, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->$sourceUri:Landroid/net/Uri;

    .end local v0    # "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v8, 0x0

    .line 136
    .local v8, "$i$a$-runCatching-IONFILEContentHelper$copyFile$2$1":I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "destinationFileObj":Ljava/io/File;
    nop

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_5

    .line 139
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v9

    goto :goto_0

    :cond_0
    move v5, v10

    :goto_0
    if-nez v5, :cond_4

    .line 141
    invoke-static {v6}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->access$getContentResolver$p(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    check-cast v5, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    move-object v7, v5

    check-cast v7, Ljava/io/InputStream;

    .local v7, "inputStream":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 142
    .local v11, "$i$a$-use-IONFILEContentHelper$copyFile$2$1$1":I
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v12, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local v0    # "destinationFileObj":Ljava/io/File;
    :try_start_2
    move-object v0, v12

    check-cast v0, Ljava/io/FileOutputStream;

    .local v0, "outputStream":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 143
    .local v13, "$i$a$-use-IONFILEContentHelper$copyFile$2$1$1$1":I
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v0

    check-cast v14, Ljava/io/OutputStream;

    const/4 v15, 0x2

    invoke-static {v7, v14, v10, v15, v6}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    move-result-wide v14

    .line 144
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .local v14, "bytesWritten":J
    const-wide/16 v16, 0x0

    cmp-long v7, v14, v16

    if-lez v7, :cond_1

    .line 147
    nop

    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .end local v13    # "$i$a$-use-IONFILEContentHelper$copyFile$2$1$1$1":I
    .end local v14    # "bytesWritten":J
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :try_start_3
    invoke-static {v12, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 148
    nop

    .end local v11    # "$i$a$-use-IONFILEContentHelper$copyFile$2$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 141
    :try_start_4
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_1

    .line 145
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "$i$a$-use-IONFILEContentHelper$copyFile$2$1$1":I
    .restart local v13    # "$i$a$-use-IONFILEContentHelper$copyFile$2$1$1$1":I
    .restart local v14    # "bytesWritten":J
    :cond_1
    :try_start_5
    new-instance v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;

    invoke-direct {v7, v6, v9, v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;-><init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$a$-runCatching-IONFILEContentHelper$copyFile$2$1":I
    .end local v11    # "$i$a$-use-IONFILEContentHelper$copyFile$2$1$1":I
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .end local v13    # "$i$a$-use-IONFILEContentHelper$copyFile$2$1$1$1":I
    .end local v14    # "bytesWritten":J
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v8    # "$i$a$-runCatching-IONFILEContentHelper$copyFile$2$1":I
    .restart local v11    # "$i$a$-use-IONFILEContentHelper$copyFile$2$1$1":I
    :catchall_0
    move-exception v0

    move-object v6, v0

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$a$-runCatching-IONFILEContentHelper$copyFile$2$1":I
    .end local v11    # "$i$a$-use-IONFILEContentHelper$copyFile$2$1$1":I
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v8    # "$i$a$-runCatching-IONFILEContentHelper$copyFile$2$1":I
    .restart local v11    # "$i$a$-use-IONFILEContentHelper$copyFile$2$1$1":I
    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {v12, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$a$-runCatching-IONFILEContentHelper$copyFile$2$1":I
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 141
    .end local v11    # "$i$a$-use-IONFILEContentHelper$copyFile$2$1$1":I
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v8    # "$i$a$-runCatching-IONFILEContentHelper$copyFile$2$1":I
    :catchall_2
    move-exception v0

    move-object v6, v0

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$a$-runCatching-IONFILEContentHelper$copyFile$2$1":I
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v8    # "$i$a$-runCatching-IONFILEContentHelper$copyFile$2$1":I
    :catchall_3
    move-exception v0

    :try_start_9
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    throw v0

    .local v0, "destinationFileObj":Ljava/io/File;
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_2
    move-object v0, v6

    .end local v0    # "destinationFileObj":Ljava/io/File;
    :goto_1
    if-eqz v0, :cond_3

    .line 149
    nop

    .end local v8    # "$i$a$-runCatching-IONFILEContentHelper$copyFile$2$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 135
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 148
    .restart local v8    # "$i$a$-runCatching-IONFILEContentHelper$copyFile$2$1":I
    :cond_3
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;

    invoke-direct {v0, v6, v9, v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;-><init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    throw v0

    .line 139
    .restart local v0    # "destinationFileObj":Ljava/io/File;
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_4
    new-instance v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$NoParentDirectory;

    invoke-direct {v5}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$NoParentDirectory;-><init>()V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    throw v5

    .line 138
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_5
    new-instance v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$MixingFilesAndDirectories;

    invoke-direct {v5}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$MixingFilesAndDirectories;-><init>()V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 135
    .end local v0    # "destinationFileObj":Ljava/io/File;
    .end local v8    # "$i$a$-runCatching-IONFILEContentHelper$copyFile$2$1":I
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    :goto_2
    iget-object v5, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;->$sourceUri:Landroid/net/Uri;

    invoke-static {v4, v0, v5}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->access$mapError-KWTtemM(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Ljava/lang/Object;Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
