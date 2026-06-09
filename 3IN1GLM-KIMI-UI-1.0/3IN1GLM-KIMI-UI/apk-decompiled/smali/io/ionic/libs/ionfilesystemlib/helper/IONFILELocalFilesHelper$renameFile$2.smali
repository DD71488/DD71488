.class final Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IONFILELocalFilesHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->renameFile-0E7RQCE(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nIONFILELocalFilesHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IONFILELocalFilesHelper.kt\nio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2\n+ 2 IONFILECommon.kt\nio/ionic/libs/ionfilesystemlib/helper/common/IONFILECommonKt\n*L\n1#1,226:1\n123#2,12:227\n*S KotlinDebug\n*F\n+ 1 IONFILELocalFilesHelper.kt\nio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2\n*L\n210#1:227,12\n*E\n"
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
    c = "io.ionic.libs.ionfilesystemlib.helper.IONFILELocalFilesHelper$renameFile$2"
    f = "IONFILELocalFilesHelper.kt"
    i = {}
    l = {
        0xd8,
        0xdb
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $destinationPath:Ljava/lang/String;

.field final synthetic $sourcePath:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->$sourcePath:Ljava/lang/String;

    iput-object p2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->$destinationPath:Ljava/lang/String;

    iput-object p3, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

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

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;

    iget-object v1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->$sourcePath:Ljava/lang/String;

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->$destinationPath:Ljava/lang/String;

    iget-object v3, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 208
    move-object/from16 v1, p0

    iget v2, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p0

    .local v2, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "$i$a$-runCatching-IONFILELocalFilesHelper$renameFile$2$1":I
    const/4 v4, 0x0

    .local v4, "$i$f$prepareForCopyOrRename":I
    const/4 v5, 0x0

    .local v5, "$i$a$-prepareForCopyOrRename-IONFILELocalFilesHelper$renameFile$2$1$1":I
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v3

    check-cast v6, Lkotlin/Result;

    invoke-virtual {v6}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 209
    .end local v0    # "$i$a$-runCatching-IONFILELocalFilesHelper$renameFile$2$1":I
    .end local v4    # "$i$f$prepareForCopyOrRename":I
    .end local v5    # "$i$a$-prepareForCopyOrRename-IONFILELocalFilesHelper$renameFile$2$1$1":I
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 208
    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    move-object/from16 v5, p1

    .local v5, "$result":Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "$i$a$-runCatching-IONFILELocalFilesHelper$renameFile$2$1":I
    const/4 v7, 0x0

    .local v7, "$i$f$prepareForCopyOrRename":I
    const/4 v8, 0x0

    .local v8, "$i$a$-prepareForCopyOrRename-IONFILELocalFilesHelper$renameFile$2$1$1":I
    iget-object v9, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->L$1:Ljava/lang/Object;

    check-cast v9, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    iget-object v10, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->L$0:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    :try_start_1
    invoke-static {v5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v5

    check-cast v11, Lkotlin/Result;

    invoke-virtual {v11}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$a$-runCatching-IONFILELocalFilesHelper$renameFile$2$1":I
    .end local v7    # "$i$f$prepareForCopyOrRename":I
    .end local v8    # "$i$a$-prepareForCopyOrRename-IONFILELocalFilesHelper$renameFile$2$1$1":I
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    move-object/from16 v5, p1

    .restart local v5    # "$result":Ljava/lang/Object;
    iget-object v6, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 209
    .local v6, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    iget-object v10, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->$sourcePath:Ljava/lang/String;

    iget-object v7, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->$destinationPath:Ljava/lang/String;

    iget-object v9, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    .end local v6    # "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    :try_start_2
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v6, 0x0

    .line 211
    .local v6, "$i$a$-runCatching-IONFILELocalFilesHelper$renameFile$2$1":I
    const/4 v8, 0x0

    .line 210
    .local v8, "forDirectories$iv":Z
    const/4 v11, 0x0

    .line 227
    .local v11, "$i$f$prepareForCopyOrRename":I
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v12, "sourceFileObj$iv":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v13, "destinationFileObj$iv":Ljava/io/File;
    nop

    .line 230
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 231
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 232
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_7

    .line 233
    nop

    .line 234
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    move/from16 v16, v15

    :cond_0
    if-nez v16, :cond_6

    .line 235
    nop

    .line 236
    .end local v8    # "forDirectories$iv":Z
    nop

    .local v12, "sourceFileObj":Ljava/io/File;
    .local v13, "destinationFileObj":Ljava/io/File;
    const/4 v8, 0x0

    .line 213
    .local v8, "$i$a$-prepareForCopyOrRename-IONFILELocalFilesHelper$renameFile$2$1$1":I
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 214
    invoke-virtual {v12, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    .line 215
    .end local v12    # "sourceFileObj":Ljava/io/File;
    .end local v13    # "destinationFileObj":Ljava/io/File;
    .local v14, "renameSuccessful":Z
    if-nez v14, :cond_5

    .line 216
    .end local v14    # "renameSuccessful":Z
    iput-object v10, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->L$1:Ljava/lang/Object;

    iput v15, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->label:I

    invoke-virtual {v9, v10, v7, v2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->copyFile-0E7RQCE(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_1

    .line 208
    return-object v0

    .line 216
    :cond_1
    move/from16 v17, v11

    move-object v11, v7

    move/from16 v7, v17

    .end local v11    # "$i$f$prepareForCopyOrRename":I
    .restart local v7    # "$i$f$prepareForCopyOrRename":I
    :goto_0
    invoke-static {v11}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    if-nez v11, :cond_4

    .line 219
    iput-object v4, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->L$1:Ljava/lang/Object;

    iput v3, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;->label:I

    invoke-virtual {v9, v10, v2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->deleteFile-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v3, v0, :cond_2

    .line 208
    return-object v0

    .line 219
    :cond_2
    move v0, v6

    move v4, v7

    move-object v6, v3

    move-object v3, v5

    move v5, v8

    .end local v6    # "$i$a$-runCatching-IONFILELocalFilesHelper$renameFile$2$1":I
    .end local v7    # "$i$f$prepareForCopyOrRename":I
    .end local v8    # "$i$a$-prepareForCopyOrRename-IONFILELocalFilesHelper$renameFile$2$1$1":I
    .restart local v0    # "$i$a$-runCatching-IONFILELocalFilesHelper$renameFile$2$1":I
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "$i$f$prepareForCopyOrRename":I
    .local v5, "$i$a$-prepareForCopyOrRename-IONFILELocalFilesHelper$renameFile$2$1$1":I
    :goto_1
    :try_start_3
    invoke-static {v6}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_3

    move v6, v0

    move v11, v4

    move v8, v5

    move-object v5, v3

    goto :goto_2

    .local v6, "it":Ljava/lang/Throwable;
    :cond_3
    const/4 v7, 0x0

    .line 220
    .local v7, "$i$a$-getOrElse-IONFILELocalFilesHelper$renameFile$2$1$1$2":I
    new-instance v8, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;

    invoke-direct {v8, v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 216
    .end local v0    # "$i$a$-runCatching-IONFILELocalFilesHelper$renameFile$2$1":I
    .end local v4    # "$i$f$prepareForCopyOrRename":I
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "$i$a$-runCatching-IONFILELocalFilesHelper$renameFile$2$1":I
    .local v7, "$i$f$prepareForCopyOrRename":I
    .restart local v8    # "$i$a$-prepareForCopyOrRename-IONFILELocalFilesHelper$renameFile$2$1$1":I
    .local v11, "it":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    .line 217
    .local v0, "$i$a$-getOrElse-IONFILELocalFilesHelper$renameFile$2$1$1$1":I
    :try_start_4
    new-instance v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;

    invoke-direct {v3, v11}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    .end local v5    # "$result":Ljava/lang/Object;
    throw v3

    .line 223
    .end local v0    # "$i$a$-getOrElse-IONFILELocalFilesHelper$renameFile$2$1$1$1":I
    .end local v7    # "$i$f$prepareForCopyOrRename":I
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    .restart local v5    # "$result":Ljava/lang/Object;
    .local v11, "$i$f$prepareForCopyOrRename":I
    :cond_5
    :goto_2
    nop

    .line 236
    .end local v8    # "$i$a$-prepareForCopyOrRename-IONFILELocalFilesHelper$renameFile$2$1$1":I
    nop

    .line 238
    move-object v3, v5

    goto :goto_3

    .line 234
    .local v8, "forDirectories$iv":Z
    .local v12, "sourceFileObj$iv":Ljava/io/File;
    .local v13, "destinationFileObj$iv":Ljava/io/File;
    :cond_6
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$NoParentDirectory;

    invoke-direct {v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$NoParentDirectory;-><init>()V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    .end local v5    # "$result":Ljava/lang/Object;
    throw v0

    .line 232
    .end local v8    # "forDirectories$iv":Z
    .end local v12    # "sourceFileObj$iv":Ljava/io/File;
    .end local v13    # "destinationFileObj$iv":Ljava/io/File;
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    .restart local v5    # "$result":Ljava/lang/Object;
    :cond_7
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$MixingFilesAndDirectories;

    invoke-direct {v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$MixingFilesAndDirectories;-><init>()V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    .end local v5    # "$result":Ljava/lang/Object;
    throw v0

    .line 231
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    .restart local v5    # "$result":Ljava/lang/Object;
    .restart local v8    # "forDirectories$iv":Z
    .restart local v12    # "sourceFileObj$iv":Ljava/io/File;
    .restart local v13    # "destinationFileObj$iv":Ljava/io/File;
    :cond_8
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;

    invoke-direct {v0, v10, v4, v3, v4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    .end local v5    # "$result":Ljava/lang/Object;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 230
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$2;
    .restart local v5    # "$result":Ljava/lang/Object;
    :cond_9
    move-object v3, v5

    .line 224
    .end local v5    # "$result":Ljava/lang/Object;
    .end local v8    # "forDirectories$iv":Z
    .end local v11    # "$i$f$prepareForCopyOrRename":I
    .end local v12    # "sourceFileObj$iv":Ljava/io/File;
    .end local v13    # "destinationFileObj$iv":Ljava/io/File;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_3
    nop

    .end local v6    # "$i$a$-runCatching-IONFILELocalFilesHelper$renameFile$2$1":I
    :try_start_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 209
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v5    # "$result":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    move-object v3, v5

    .end local v5    # "$result":Ljava/lang/Object;
    .restart local v3    # "$result":Ljava/lang/Object;
    :goto_4
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
