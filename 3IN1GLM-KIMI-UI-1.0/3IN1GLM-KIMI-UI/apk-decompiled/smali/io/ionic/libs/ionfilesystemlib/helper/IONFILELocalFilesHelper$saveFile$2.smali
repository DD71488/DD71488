.class final Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IONFILELocalFilesHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->saveFile-0E7RQCE(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIONFILELocalFilesHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IONFILELocalFilesHelper.kt\nio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,226:1\n1#2:227\n*E\n"
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
    c = "io.ionic.libs.ionfilesystemlib.helper.IONFILELocalFilesHelper$saveFile$2"
    f = "IONFILELocalFilesHelper.kt"
    i = {
        0x0
    }
    l = {
        0x8d
    }
    m = "invokeSuspend"
    n = {
        "file"
    }
    s = {
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $fullPath:Ljava/lang/String;

.field final synthetic $options:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->$fullPath:Ljava/lang/String;

    iput-object p2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    iput-object p3, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

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

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;

    iget-object v1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->$fullPath:Ljava/lang/String;

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;-><init>(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 137
    iget v1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .local p1, "$result":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    .local v3, "file":Ljava/io/File;
    iget-object v4, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p1

    check-cast v5, Lkotlin/Result;

    invoke-virtual {v5}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    .end local v1    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .end local v3    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    goto/16 :goto_4

    .line 137
    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 138
    .local v3, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    iget-object v4, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->$fullPath:Ljava/lang/String;

    iget-object v5, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    iget-object v6, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->$options:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    .end local v3    # "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v3, 0x0

    .line 139
    .local v3, "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 141
    nop

    .line 142
    nop

    .line 143
    new-instance v8, Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;

    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->getCreateFileRecursive()Z

    move-result v9

    invoke-direct {v8, v9}, Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;-><init>(Z)V

    .line 141
    iput-object v6, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->L$1:Ljava/lang/Object;

    iput v2, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;->label:I

    invoke-virtual {v5, v4, v8, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->createFile-0E7RQCE(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-ne v5, v0, :cond_0

    .line 137
    return-object v0

    .line 141
    :cond_0
    move-object v0, v1

    move v1, v3

    move-object v4, v6

    move-object v3, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .local v1, "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .local v3, "file":Ljava/io/File;
    :goto_0
    nop

    .line 145
    .local v5, "createFileResult":Ljava/lang/Object;
    :try_start_2
    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v7, v3

    move-object v6, v4

    move v3, v1

    goto :goto_1

    .line 227
    .end local v3    # "file":Ljava/io/File;
    .local v6, "it":Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x0

    .line 145
    .local v2, "$i$a$-let-IONFILELocalFilesHelper$saveFile$2$1$1":I
    nop

    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v6

    .line 140
    .end local v2    # "$i$a$-let-IONFILELocalFilesHelper$saveFile$2$1$1":I
    .end local v5    # "createFileResult":Ljava/lang/Object;
    .end local v6    # "it":Ljava/lang/Throwable;
    .local v1, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .local v3, "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .restart local v7    # "file":Ljava/io/File;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_2
    move-object v0, v1

    .line 147
    .end local v1    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    :goto_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->getMode()Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    move-result-object v4

    sget-object v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;->APPEND:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    if-ne v4, v5, :cond_3

    goto :goto_2

    .end local v7    # "file":Ljava/io/File;
    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-direct {v1, v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object v2, v1

    check-cast v2, Ljava/io/FileOutputStream;

    .local v2, "fileStream":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 148
    .local v4, "$i$a$-use-IONFILELocalFilesHelper$saveFile$2$1$2":I
    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->getEncoding()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    move-result-object v5

    instance-of v5, v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    .line 149
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    move-object v9, v2

    check-cast v9, Ljava/io/OutputStream;

    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->getEncoding()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    move-result-object v10

    check-cast v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;

    invoke-virtual {v10}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v8, Ljava/io/Writer;

    invoke-direct {v5, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    :try_start_4
    move-object v2, v5

    check-cast v2, Ljava/io/BufferedWriter;

    .local v2, "it":Ljava/io/BufferedWriter;
    const/4 v8, 0x0

    .line 150
    .local v8, "$i$a$-use-IONFILELocalFilesHelper$saveFile$2$1$2$1":I
    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 151
    nop

    .end local v2    # "it":Ljava/io/BufferedWriter;
    .end local v8    # "$i$a$-use-IONFILELocalFilesHelper$saveFile$2$1$2$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    :try_start_5
    invoke-static {v5, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_3

    :catchall_1
    move-exception v2

    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .end local v3    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .end local v4    # "$i$a$-use-IONFILELocalFilesHelper$saveFile$2$1$2":I
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .restart local v3    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .restart local v4    # "$i$a$-use-IONFILELocalFilesHelper$saveFile$2$1$2":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v6

    :try_start_7
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .end local v3    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    throw v6

    .line 154
    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .local v2, "fileStream":Ljava/io/FileOutputStream;
    .restart local v3    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;->getData()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    const/4 v8, 0x2

    invoke-static {v5, v6, v7, v8, v7}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "dataToDecode":Ljava/lang/String;
    invoke-static {v5, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 156
    .end local v5    # "dataToDecode":Ljava/lang/String;
    .local v6, "base64Data":[B
    new-instance v5, Ljava/io/BufferedOutputStream;

    move-object v8, v2

    check-cast v8, Ljava/io/OutputStream;

    invoke-direct {v5, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v5, Ljava/io/Closeable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    :try_start_8
    move-object v2, v5

    check-cast v2, Ljava/io/BufferedOutputStream;

    .line 227
    .local v2, "it":Ljava/io/BufferedOutputStream;
    const/4 v8, 0x0

    .line 156
    .local v8, "$i$a$-use-IONFILELocalFilesHelper$saveFile$2$1$2$2":I
    invoke-virtual {v2, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    .end local v2    # "it":Ljava/io/BufferedOutputStream;
    .end local v6    # "base64Data":[B
    .end local v8    # "$i$a$-use-IONFILELocalFilesHelper$saveFile$2$1$2$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-static {v5, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 158
    :goto_3
    nop

    .end local v4    # "$i$a$-use-IONFILELocalFilesHelper$saveFile$2$1$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 147
    :try_start_a
    invoke-static {v1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 159
    nop

    .end local v3    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 138
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 156
    .restart local v3    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .restart local v4    # "$i$a$-use-IONFILELocalFilesHelper$saveFile$2$1$2":I
    :catchall_3
    move-exception v2

    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .end local v3    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .end local v4    # "$i$a$-use-IONFILELocalFilesHelper$saveFile$2$1$2":I
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .restart local v3    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .restart local v4    # "$i$a$-use-IONFILELocalFilesHelper$saveFile$2$1$2":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_4
    move-exception v6

    :try_start_c
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .end local v3    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 147
    .end local v4    # "$i$a$-use-IONFILELocalFilesHelper$saveFile$2$1$2":I
    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .restart local v3    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_5
    move-exception v2

    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .end local v3    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .restart local v3    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_6
    move-exception v4

    :try_start_e
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .end local p1    # "$result":Ljava/lang/Object;
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 138
    .end local v3    # "$i$a$-runCatching-IONFILELocalFilesHelper$saveFile$2$1":I
    .restart local v1    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_7
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .end local v1    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    .restart local v0    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$saveFile$2;
    :goto_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_5
    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
