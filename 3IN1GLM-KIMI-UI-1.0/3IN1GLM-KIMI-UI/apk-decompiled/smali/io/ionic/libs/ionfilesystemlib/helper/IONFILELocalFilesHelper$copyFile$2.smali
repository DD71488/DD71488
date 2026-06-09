.class final Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IONFILELocalFilesHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->copyFile-0E7RQCE(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nIONFILELocalFilesHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IONFILELocalFilesHelper.kt\nio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2\n+ 2 IONFILECommon.kt\nio/ionic/libs/ionfilesystemlib/helper/common/IONFILECommonKt\n*L\n1#1,226:1\n123#2,12:227\n*S KotlinDebug\n*F\n+ 1 IONFILELocalFilesHelper.kt\nio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2\n*L\n185#1:227,12\n*E\n"
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
    c = "io.ionic.libs.ionfilesystemlib.helper.IONFILELocalFilesHelper$copyFile$2"
    f = "IONFILELocalFilesHelper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $destinationPath:Ljava/lang/String;

.field final synthetic $sourcePath:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;->$sourcePath:Ljava/lang/String;

    iput-object p2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;->$destinationPath:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;

    iget-object v1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;->$sourcePath:Ljava/lang/String;

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;->$destinationPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 183
    move-object/from16 v1, p0

    iget v0, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v0, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 184
    .local v0, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    iget-object v4, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;->$sourcePath:Ljava/lang/String;

    iget-object v5, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;->$destinationPath:Ljava/lang/String;

    .end local v0    # "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v0, 0x0

    .line 186
    .local v0, "$i$a$-runCatching-IONFILELocalFilesHelper$copyFile$2$1":I
    const/4 v6, 0x0

    .line 185
    .local v6, "forDirectories$iv":Z
    const/4 v7, 0x0

    .line 227
    .local v7, "$i$f$prepareForCopyOrRename":I
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v8, "sourceFileObj$iv":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .local v9, "destinationFileObj$iv":Ljava/io/File;
    nop

    .line 230
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 231
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v10, 0x0

    if-eqz v5, :cond_4

    .line 232
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    .line 233
    nop

    .line 234
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move v11, v5

    :cond_0
    if-nez v11, :cond_2

    .line 235
    nop

    .line 236
    .end local v6    # "forDirectories$iv":Z
    move-object v4, v8

    .local v4, "sourceFileObj":Ljava/io/File;
    move-object v12, v9

    .local v12, "destinationFileObj":Ljava/io/File;
    move-object v11, v4

    .end local v4    # "sourceFileObj":Ljava/io/File;
    .local v11, "sourceFileObj":Ljava/io/File;
    const/4 v4, 0x0

    .line 188
    .local v4, "$i$a$-prepareForCopyOrRename-IONFILELocalFilesHelper$copyFile$2$1$1":I
    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    move-result-object v6

    .line 189
    .local v6, "copiedFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 192
    nop

    .line 236
    .end local v4    # "$i$a$-prepareForCopyOrRename-IONFILELocalFilesHelper$copyFile$2$1$1":I
    .end local v6    # "copiedFile":Ljava/io/File;
    .end local v11    # "sourceFileObj":Ljava/io/File;
    .end local v12    # "destinationFileObj":Ljava/io/File;
    nop

    .line 238
    goto :goto_0

    .line 190
    .restart local v4    # "$i$a$-prepareForCopyOrRename-IONFILELocalFilesHelper$copyFile$2$1$1":I
    .restart local v6    # "copiedFile":Ljava/io/File;
    .restart local v11    # "sourceFileObj":Ljava/io/File;
    .restart local v12    # "destinationFileObj":Ljava/io/File;
    :cond_1
    new-instance v13, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;

    invoke-direct {v13, v10, v5, v10}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;-><init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    throw v13

    .line 234
    .end local v4    # "$i$a$-prepareForCopyOrRename-IONFILELocalFilesHelper$copyFile$2$1$1":I
    .end local v11    # "sourceFileObj":Ljava/io/File;
    .end local v12    # "destinationFileObj":Ljava/io/File;
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v6, "forDirectories$iv":Z
    :cond_2
    new-instance v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$NoParentDirectory;

    invoke-direct {v4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$NoParentDirectory;-><init>()V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    throw v4

    .line 232
    .end local v6    # "forDirectories$iv":Z
    .end local v8    # "sourceFileObj$iv":Ljava/io/File;
    .end local v9    # "destinationFileObj$iv":Ljava/io/File;
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_3
    new-instance v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$MixingFilesAndDirectories;

    invoke-direct {v4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$MixingFilesAndDirectories;-><init>()V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    throw v4

    .line 231
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v6    # "forDirectories$iv":Z
    .restart local v8    # "sourceFileObj$iv":Ljava/io/File;
    .restart local v9    # "destinationFileObj$iv":Ljava/io/File;
    :cond_4
    new-instance v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;

    const/4 v11, 0x2

    invoke-direct {v5, v4, v10, v11, v10}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;
    .end local v3    # "$result":Ljava/lang/Object;
    throw v5

    .line 193
    .end local v6    # "forDirectories$iv":Z
    .end local v7    # "$i$f$prepareForCopyOrRename":I
    .end local v8    # "sourceFileObj$iv":Ljava/io/File;
    .end local v9    # "destinationFileObj$iv":Ljava/io/File;
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$copyFile$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_5
    :goto_0
    nop

    .end local v0    # "$i$a$-runCatching-IONFILELocalFilesHelper$copyFile$2$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 184
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
