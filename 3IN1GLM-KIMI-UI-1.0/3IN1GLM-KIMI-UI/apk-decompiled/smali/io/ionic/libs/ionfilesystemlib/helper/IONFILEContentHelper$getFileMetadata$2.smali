.class final Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IONFILEContentHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->getFileMetadata-gIAlu-s(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
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
    c = "io.ionic.libs.ionfilesystemlib.helper.IONFILEContentHelper$getFileMetadata$2"
    f = "IONFILEContentHelper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $uri:Landroid/net/Uri;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;


# direct methods
.method constructor <init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    iput-object p2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->$uri:Landroid/net/Uri;

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

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;

    iget-object v1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    iget-object v2, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->$uri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 79
    move-object/from16 v1, p0

    iget v0, v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .local v2, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    iget-object v0, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 103
    .local v0, "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    iget-object v4, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    .line 80
    iget-object v5, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    iget-object v7, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->$uri:Landroid/net/Uri;

    .end local v0    # "$this$withContext":Lkotlinx/coroutines/CoroutineScope;
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/16 v16, 0x0

    .line 81
    .local v16, "$i$a$-runCatching-IONFILEContentHelper$getFileMetadata$2$1":I
    invoke-static {v5}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->access$getContentResolver$p(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;)Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    .local v0, "cursor":Landroid/database/Cursor;
    move-object v8, v0

    check-cast v8, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    move-object v9, v8

    check-cast v9, Landroid/database/Cursor;

    const/16 v17, 0x0

    .line 84
    .local v17, "$i$a$-use-IONFILEContentHelper$getFileMetadata$2$1$1":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 87
    invoke-static {v5}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->access$getContentResolver$p(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;)Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    .line 88
    invoke-static {v5, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->access$getNameForContentUri(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "name":Ljava/lang/String;
    invoke-static {v5, v0, v7}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->access$getSizeForContentUri(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/database/Cursor;Landroid/net/Uri;)J

    move-result-wide v10

    .line 90
    .local v10, "size":J
    invoke-static {v5, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->access$getLastModifiedTimestampForContentUri(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/database/Cursor;)J

    move-result-wide v14

    .line 91
    .local v14, "lastModified":J
    invoke-static {v5, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->access$getCreatedTimestampForContentUri(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/database/Cursor;)J

    move-result-wide v12

    move-wide/from16 v18, v12

    .line 92
    .end local v0    # "cursor":Landroid/database/Cursor;
    .local v18, "created":J
    invoke-static {v5}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->access$getContentResolver$p(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v0, :cond_0

    :try_start_2
    const-string v0, "application/octet-binary"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 83
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "size":J
    .end local v14    # "lastModified":J
    .end local v17    # "$i$a$-use-IONFILEContentHelper$getFileMetadata$2$1$1":I
    .end local v18    # "created":J
    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v5, v8

    goto :goto_2

    .line 92
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "size":J
    .restart local v14    # "lastModified":J
    .restart local v17    # "$i$a$-use-IONFILEContentHelper$getFileMetadata$2$1$1":I
    .restart local v18    # "created":J
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    .local v0, "mimeType":Ljava/lang/String;
    move-object v5, v6

    new-instance v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;

    .line 94
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v12, :cond_1

    :try_start_4
    const-string v12, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :try_start_5
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    nop

    .line 96
    nop

    .line 97
    nop

    .line 98
    new-instance v13, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFileType$File;

    invoke-direct {v13, v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFileType$File;-><init>(Ljava/lang/String;)V

    check-cast v13, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFileType;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 99
    move-object/from16 v20, v8

    move-object v8, v9

    move-object v9, v7

    move-object v7, v12

    move-object v12, v13

    .end local v9    # "name":Ljava/lang/String;
    .local v8, "name":Ljava/lang/String;
    :try_start_6
    invoke-static/range {v18 .. v19}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 100
    nop

    .line 93
    move-object/from16 p1, v0

    move-object v0, v5

    move-object/from16 v5, v20

    .end local v0    # "mimeType":Ljava/lang/String;
    .local p1, "mimeType":Ljava/lang/String;
    :try_start_7
    invoke-direct/range {v6 .. v15}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JLio/ionic/libs/ionfilesystemlib/model/IONFILEFileType;Ljava/lang/Long;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 83
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "size":J
    .end local v14    # "lastModified":J
    .end local v17    # "$i$a$-use-IONFILEContentHelper$getFileMetadata$2$1$1":I
    .end local v18    # "created":J
    .end local p1    # "mimeType":Ljava/lang/String;
    :try_start_8
    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 80
    .end local v16    # "$i$a$-runCatching-IONFILEContentHelper$getFileMetadata$2$1":I
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_3

    .line 83
    .restart local v16    # "$i$a$-runCatching-IONFILEContentHelper$getFileMetadata$2$1":I
    :catchall_1
    move-exception v0

    move-object/from16 v5, v20

    goto :goto_1

    .line 84
    .local v0, "cursor":Landroid/database/Cursor;
    .restart local v17    # "$i$a$-use-IONFILEContentHelper$getFileMetadata$2$1$1":I
    :cond_2
    move-object v5, v6

    move-object v6, v0

    move-object v0, v5

    move-object v5, v8

    .line 85
    .end local v0    # "cursor":Landroid/database/Cursor;
    :try_start_9
    new-instance v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "toString(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-direct {v6, v7, v0, v8, v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v16    # "$i$a$-runCatching-IONFILEContentHelper$getFileMetadata$2$1":I
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 83
    .end local v17    # "$i$a$-use-IONFILEContentHelper$getFileMetadata$2$1$1":I
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v16    # "$i$a$-runCatching-IONFILEContentHelper$getFileMetadata$2$1":I
    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v5, v8

    :goto_1
    move-object v6, v0

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v16    # "$i$a$-runCatching-IONFILEContentHelper$getFileMetadata$2$1":I
    :goto_2
    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v16    # "$i$a$-runCatching-IONFILEContentHelper$getFileMetadata$2$1":I
    :catchall_4
    move-exception v0

    :try_start_b
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;
    .end local v3    # "$result":Ljava/lang/Object;
    throw v0

    .line 82
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    :cond_3
    move-object v0, v6

    new-instance v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6, v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;-><init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;
    .end local v3    # "$result":Ljava/lang/Object;
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 80
    .end local v16    # "$i$a$-runCatching-IONFILEContentHelper$getFileMetadata$2$1":I
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;
    .restart local v3    # "$result":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    :goto_3
    iget-object v5, v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;->$uri:Landroid/net/Uri;

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
