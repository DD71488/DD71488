.class public final Lio/ionic/libs/ionfilesystemlib/IONFILEController;
.super Ljava/lang/Object;
.source "IONFILEController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIONFILEController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IONFILEController.kt\nio/ionic/libs/ionfilesystemlib/IONFILEController\n+ 2 IONFILEUriResolveExtensions.kt\nio/ionic/libs/ionfilesystemlib/helper/common/IONFILEUriResolveExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,295:1\n24#2:296\n37#2:297\n60#2,3:298\n64#2:302\n38#2,2:303\n27#2,2:305\n30#2:308\n41#2,3:309\n32#2:312\n11#2:313\n37#2:314\n60#2,3:315\n64#2:319\n38#2,2:320\n14#2,2:322\n17#2:325\n41#2,3:326\n19#2:329\n48#2:330\n60#2,3:331\n64#2:335\n49#2,2:336\n52#2,3:339\n60#2,3:342\n64#2:346\n24#2:347\n37#2:348\n60#2,3:349\n64#2:353\n38#2,2:354\n27#2,2:356\n30#2:359\n41#2,3:360\n32#2:363\n11#2:364\n37#2:365\n60#2,3:366\n64#2:370\n38#2,2:371\n14#2,4:373\n41#2,3:377\n19#2:380\n60#2,3:381\n64#2:385\n60#2,3:386\n64#2:390\n60#2,3:391\n64#2:395\n37#2:397\n60#2,3:398\n64#2:402\n38#2,2:403\n37#2:405\n60#2,3:406\n64#2:410\n38#2,2:411\n41#2,3:414\n41#2,3:417\n1#3:301\n1#3:307\n1#3:318\n1#3:324\n1#3:334\n1#3:338\n1#3:345\n1#3:352\n1#3:358\n1#3:369\n1#3:384\n1#3:389\n1#3:394\n1#3:396\n1#3:401\n1#3:409\n1#3:413\n*S KotlinDebug\n*F\n+ 1 IONFILEController.kt\nio/ionic/libs/ionfilesystemlib/IONFILEController\n*L\n69#1:296\n69#1:297\n69#1:298,3\n69#1:302\n69#1:303,2\n69#1:305,2\n69#1:308\n69#1:309,3\n69#1:312\n83#1:313\n83#1:314\n83#1:315,3\n83#1:319\n83#1:320,2\n83#1:322,2\n83#1:325\n83#1:326,3\n83#1:329\n100#1:330\n100#1:331,3\n100#1:335\n100#1:336,2\n100#1:339,3\n167#1:342,3\n167#1:346\n187#1:347\n187#1:348\n187#1:349,3\n187#1:353\n187#1:354,2\n187#1:356,2\n187#1:359\n187#1:360,3\n187#1:363\n203#1:364\n203#1:365\n203#1:366,3\n203#1:370\n203#1:371,2\n203#1:373,4\n203#1:377,3\n203#1:380\n215#1:381,3\n215#1:385\n241#1:386,3\n241#1:390\n242#1:391,3\n242#1:395\n283#1:397\n283#1:398,3\n283#1:402\n283#1:403,2\n284#1:405\n284#1:406,3\n284#1:410\n284#1:411,2\n284#1:414,3\n283#1:417,3\n69#1:301\n83#1:318\n100#1:334\n167#1:345\n187#1:352\n203#1:369\n215#1:384\n241#1:389\n242#1:394\n283#1:401\n284#1:409\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\'\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ,\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J,\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ,\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u001bJ,\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u000f2\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020 H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008!\u0010\"J$\u0010#\u001a\u0008\u0012\u0004\u0012\u00020$0\u000f2\u0006\u0010\u0017\u001a\u00020%H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008&\u0010\'J$\u0010(\u001a\u0008\u0012\u0004\u0012\u00020)0\u000f2\u0006\u0010\u0017\u001a\u00020\u0012H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008*\u0010+J*\u0010,\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020)0-0\u000f2\u0006\u0010\u0017\u001a\u00020\u0012H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008.\u0010+J,\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00080\u0010\u0015J,\u00101\u001a\u0008\u0012\u0004\u0012\u0002020\u000f2\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u000203H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00084\u00105J\u001c\u00106\u001a\u0008\u0012\u0004\u0012\u000202072\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u000208J,\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020:H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008;\u0010<R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006="
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/IONFILEController;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "uriHelper",
        "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;",
        "localFilesHelper",
        "Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;",
        "directoriesHelper",
        "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;",
        "contentResolverHelper",
        "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;",
        "(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;)V",
        "copy",
        "Lkotlin/Result;",
        "Landroid/net/Uri;",
        "source",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
        "destination",
        "copy-0E7RQCE",
        "(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createDirectory",
        "uri",
        "options",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;",
        "createDirectory-0E7RQCE",
        "(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createFile",
        "createFile-0E7RQCE",
        "delete",
        "",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;",
        "delete-0E7RQCE",
        "(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getFileUri",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;",
        "getFileUri-gIAlu-s",
        "(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getMetadata",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
        "getMetadata-gIAlu-s",
        "(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "listDirectory",
        "",
        "listDirectory-gIAlu-s",
        "move",
        "move-0E7RQCE",
        "readFile",
        "",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;",
        "readFile-0E7RQCE",
        "(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readFileInChunks",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;",
        "saveFile",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;",
        "saveFile-0E7RQCE",
        "(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "IONFilesystemLib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final contentResolverHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

.field private final directoriesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;

.field private final localFilesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

.field private final uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    nop

    .line 44
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    invoke-direct {v0, p1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v1, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    invoke-direct {v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;-><init>()V

    .line 46
    new-instance v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;

    invoke-direct {v2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;-><init>()V

    .line 47
    new-instance v3, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "getContentResolver(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;-><init>(Landroid/content/ContentResolver;)V

    .line 43
    invoke-direct {p0, v0, v1, v2, v3}, Lio/ionic/libs/ionfilesystemlib/IONFILEController;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;)V
    .locals 1
    .param p1, "uriHelper"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .param p2, "localFilesHelper"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;
    .param p3, "directoriesHelper"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;
    .param p4, "contentResolverHelper"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    const-string v0, "uriHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localFilesHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directoriesHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolverHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    .line 38
    iput-object p2, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->localFilesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    .line 39
    iput-object p3, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->directoriesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;

    .line 40
    iput-object p4, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->contentResolverHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    .line 36
    return-void
.end method

.method public static final synthetic access$getContentResolverHelper$p(Lio/ionic/libs/ionfilesystemlib/IONFILEController;)Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .locals 1
    .param p0, "$this"    # Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .line 36
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->contentResolverHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    return-object v0
.end method

.method public static final synthetic access$getLocalFilesHelper$p(Lio/ionic/libs/ionfilesystemlib/IONFILEController;)Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;
    .locals 1
    .param p0, "$this"    # Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .line 36
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->localFilesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    return-object v0
.end method

.method public static final synthetic access$getUriHelper$p(Lio/ionic/libs/ionfilesystemlib/IONFILEController;)Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .locals 1
    .param p0, "$this"    # Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .line 36
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    return-object v0
.end method


# virtual methods
.method public final copy-0E7RQCE(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;

    invoke-direct {v0, p0, p3}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;-><init>(Lio/ionic/libs/ionfilesystemlib/IONFILEController;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 240
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$useUriIfResolved":I
    const/4 p2, 0x0

    .local p2, "$i$a$-useUriIfResolved-IONFILEController$copy$2":I
    const/4 v1, 0x0

    .local v1, "$i$f$useUriIfResolved":I
    const/4 v2, 0x0

    .local v2, "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .local v3, "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p3

    check-cast v4, Lkotlin/Result;

    invoke-virtual {v4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_7

    .end local v1    # "$i$f$useUriIfResolved":I
    .end local v2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    .end local v3    # "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local p1    # "$i$f$useUriIfResolved":I
    .end local p2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2":I
    :pswitch_1
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolved":I
    const/4 p2, 0x0

    .restart local p2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2":I
    const/4 v1, 0x0

    .restart local v1    # "$i$f$useUriIfResolved":I
    const/4 v2, 0x0

    .restart local v2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .restart local v3    # "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p3

    check-cast v4, Lkotlin/Result;

    invoke-virtual {v4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_6

    .end local v1    # "$i$f$useUriIfResolved":I
    .end local v2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    .end local v3    # "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local p1    # "$i$f$useUriIfResolved":I
    .end local p2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2":I
    :pswitch_2
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolved":I
    const/4 p2, 0x0

    .restart local p2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2":I
    const/4 v1, 0x0

    .restart local v1    # "$i$f$useUriIfResolved":I
    const/4 v2, 0x0

    .restart local v2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .restart local v3    # "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p3

    check-cast v4, Lkotlin/Result;

    invoke-virtual {v4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_5

    .end local v1    # "$i$f$useUriIfResolved":I
    .end local v2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    .end local v3    # "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local p1    # "$i$f$useUriIfResolved":I
    .end local p2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2":I
    :pswitch_3
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolved":I
    const/4 p2, 0x0

    .restart local p2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2":I
    const/4 v2, 0x0

    .local v2, "$i$f$useUriIfResolved":I
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .local v3, "resolvedSourceUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    iget-object v4, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .local v4, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p3

    check-cast v5, Lkotlin/Result;

    invoke-virtual {v5}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_3

    .end local v2    # "$i$f$useUriIfResolved":I
    .end local v3    # "resolvedSourceUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local p1    # "$i$f$useUriIfResolved":I
    .end local p2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2":I
    :pswitch_4
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolved":I
    iget-object p2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;

    .local p2, "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    iget-object v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .local v2, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p3

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local p1    # "$i$f$useUriIfResolved":I
    .end local p2    # "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    :pswitch_5
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 241
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .local p1, "source":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .restart local p2    # "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    iget-object v3, v2, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    .local v3, "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v4, 0x0

    .line 386
    .local v4, "$i$f$useUriIfResolved":I
    nop

    .line 387
    instance-of v5, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v5, :cond_1

    move-object v5, p1

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move p1, v4

    move-object v4, v2

    goto :goto_2

    .line 388
    :cond_1
    instance-of v5, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v5, :cond_10

    move-object v5, p1

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iput-object v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->label:I

    invoke-virtual {v3, v5, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local p1    # "source":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    if-ne v3, v1, :cond_2

    .line 240
    return-object v1

    .line 388
    :cond_2
    move p1, v4

    .end local v4    # "$i$f$useUriIfResolved":I
    .local p1, "$i$f$useUriIfResolved":I
    :goto_1
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_f

    move-object v5, v3

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move-object v4, v2

    .line 386
    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .local v4, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    :goto_2
    nop

    .line 390
    .local v5, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    move-object v3, v5

    .end local v5    # "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .local v3, "resolvedSourceUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v2, 0x0

    .line 242
    .local v2, "$i$a$-useUriIfResolved-IONFILEController$copy$2":I
    iget-object v5, v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    .local v5, "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    move-object v6, v0

    .local v6, "$completion$iv":Lkotlin/coroutines/Continuation;
    const/4 v7, 0x0

    .line 391
    .local v7, "$i$f$useUriIfResolved":I
    nop

    .line 392
    instance-of v8, p2, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v8, :cond_3

    move-object v8, p2

    check-cast v8, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move p2, v2

    move v2, v7

    goto :goto_4

    .line 393
    :cond_3
    instance-of v8, p2, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v8, :cond_e

    move-object v8, p2

    check-cast v8, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iput-object v4, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$1:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->label:I

    invoke-virtual {v5, v8, v6}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local v6    # "$completion$iv":Lkotlin/coroutines/Continuation;
    .end local p2    # "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    if-ne v5, v1, :cond_4

    .line 240
    return-object v1

    .line 393
    :cond_4
    move p2, v2

    move v2, v7

    .end local v7    # "$i$f$useUriIfResolved":I
    .local v2, "$i$f$useUriIfResolved":I
    .local p2, "$i$a$-useUriIfResolved-IONFILEController$copy$2":I
    :goto_3
    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_d

    move-object v8, v5

    check-cast v8, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .line 391
    :goto_4
    nop

    .line 395
    .local v8, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    nop

    .local v8, "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v5, 0x0

    .line 243
    .local v5, "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    nop

    .line 244
    instance-of v6, v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v6, :cond_5

    instance-of v6, v8, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Content;

    if-eqz v6, :cond_5

    .line 245
    .end local v3    # "resolvedSourceUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$LocalToContent;

    invoke-direct {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$LocalToContent;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move v1, v2

    move v2, v5

    move-object v3, v8

    goto/16 :goto_7

    .line 247
    .restart local v3    # "resolvedSourceUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .restart local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    :cond_5
    instance-of v6, v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Content;

    if-eqz v6, :cond_6

    instance-of v6, v8, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Content;

    if-eqz v6, :cond_6

    .line 248
    .end local v3    # "resolvedSourceUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$SourceAndDestinationContent;

    invoke-direct {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$SourceAndDestinationContent;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move v1, v2

    move v2, v5

    move-object v3, v8

    goto/16 :goto_7

    .line 250
    .restart local v3    # "resolvedSourceUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .restart local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    :cond_6
    instance-of v6, v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    const-string v7, "null cannot be cast to non-null type io.ionic.libs.ionfilesystemlib.model.IONFILEUri.Resolved.Local"

    const/4 v9, 0x0

    if-eqz v6, :cond_a

    .line 251
    move-object v6, v3

    check-cast v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getFullPath()Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "sourcePath":Ljava/lang/String;
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v8

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    invoke-virtual {v7}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getFullPath()Ljava/lang/String;

    move-result-object v7

    .line 252
    nop

    .line 254
    .local v7, "destinationPath":Ljava/lang/String;
    move-object v10, v3

    check-cast v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    invoke-virtual {v10}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getType()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v10

    sget-object v11, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->DIRECTORY:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    .end local v3    # "resolvedSourceUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    if-ne v10, v11, :cond_8

    .line 255
    iget-object v3, v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->directoriesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;

    iput-object v8, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$1:Ljava/lang/Object;

    const/4 v9, 0x3

    iput v9, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->label:I

    invoke-virtual {v3, v6, v7, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;->copyDirectory-0E7RQCE(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v6    # "sourcePath":Ljava/lang/String;
    .end local v7    # "destinationPath":Ljava/lang/String;
    if-ne v3, v1, :cond_7

    .line 240
    return-object v1

    .line 255
    :cond_7
    move v1, v2

    move-object v4, v3

    move v2, v5

    move-object v3, v8

    .end local v5    # "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    .end local v8    # "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .restart local v1    # "$i$f$useUriIfResolved":I
    .local v2, "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    .local v3, "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :goto_5
    goto :goto_7

    .line 257
    .end local v1    # "$i$f$useUriIfResolved":I
    .end local v3    # "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .local v2, "$i$f$useUriIfResolved":I
    .restart local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .restart local v5    # "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    .restart local v6    # "sourcePath":Ljava/lang/String;
    .restart local v7    # "destinationPath":Ljava/lang/String;
    .restart local v8    # "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_8
    iget-object v3, v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->localFilesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    iput-object v8, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$1:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->label:I

    invoke-virtual {v3, v6, v7, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->copyFile-0E7RQCE(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v6    # "sourcePath":Ljava/lang/String;
    .end local v7    # "destinationPath":Ljava/lang/String;
    if-ne v3, v1, :cond_9

    .line 240
    return-object v1

    .line 257
    :cond_9
    move v1, v2

    move-object v4, v3

    move v2, v5

    move-object v3, v8

    .end local v5    # "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    .end local v8    # "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .restart local v1    # "$i$f$useUriIfResolved":I
    .local v2, "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    .restart local v3    # "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :goto_6
    goto :goto_7

    .line 262
    .end local v1    # "$i$f$useUriIfResolved":I
    .local v2, "$i$f$useUriIfResolved":I
    .local v3, "resolvedSourceUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .restart local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .restart local v5    # "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    .restart local v8    # "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_a
    invoke-virtual {v3}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 264
    .local v3, "sourceUri":Landroid/net/Uri;
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v8

    check-cast v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getFullPath()Ljava/lang/String;

    move-result-object v6

    .line 263
    nop

    .line 265
    .local v6, "destinationPath":Ljava/lang/String;
    iget-object v7, v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->contentResolverHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    iput-object v8, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->L$1:Ljava/lang/Object;

    const/4 v9, 0x5

    iput v9, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$copy$1;->label:I

    invoke-virtual {v7, v3, v6, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->copyFile-0E7RQCE(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v6    # "destinationPath":Ljava/lang/String;
    if-ne v4, v1, :cond_b

    .line 240
    return-object v1

    .line 265
    :cond_b
    move v1, v2

    move v2, v5

    move-object v3, v8

    .end local v5    # "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    .end local v8    # "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .restart local v1    # "$i$f$useUriIfResolved":I
    .local v2, "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    .local v3, "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :goto_7
    nop

    .line 243
    nop

    .line 268
    .local v4, "result":Ljava/lang/Object;
    nop

    .end local v4    # "result":Ljava/lang/Object;
    invoke-static {v4}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v4, Lkotlin/Unit;

    .line 396
    const/4 v4, 0x0

    .line 268
    .local v4, "$i$a$-map-IONFILEController$copy$2$1$1":I
    invoke-virtual {v3}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;->getUri()Landroid/net/Uri;

    move-result-object v3

    .end local v3    # "resolvedDestinationUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local v4    # "$i$a$-map-IONFILEController$copy$2$1$1":I
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_8

    :cond_c
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 395
    .end local v2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2$1":I
    :goto_8
    goto :goto_9

    .line 394
    .end local v1    # "$i$f$useUriIfResolved":I
    .local v2, "$i$f$useUriIfResolved":I
    .local v6, "it$iv":Ljava/lang/Throwable;
    :cond_d
    const/4 v1, 0x0

    .line 393
    .local v1, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv":I
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 242
    .end local v1    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv":I
    .end local v2    # "$i$f$useUriIfResolved":I
    .end local v6    # "it$iv":Ljava/lang/Throwable;
    :goto_9
    nop

    .line 390
    .end local p2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2":I
    goto :goto_a

    .line 393
    .local v2, "$i$a$-useUriIfResolved-IONFILEController$copy$2":I
    .local v7, "$i$f$useUriIfResolved":I
    :cond_e
    new-instance p2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p2

    .line 389
    .end local v2    # "$i$a$-useUriIfResolved-IONFILEController$copy$2":I
    .end local v7    # "$i$f$useUriIfResolved":I
    .local v4, "it$iv":Ljava/lang/Throwable;
    :cond_f
    const/4 p2, 0x0

    .line 388
    .local p2, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv":I
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 270
    .end local v4    # "it$iv":Ljava/lang/Throwable;
    .end local p1    # "$i$f$useUriIfResolved":I
    .end local p2    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv":I
    :goto_a
    return-object v3

    .line 388
    .local v4, "$i$f$useUriIfResolved":I
    :cond_10
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createDirectory-0E7RQCE(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;

    invoke-direct {v0, p0, p3}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;-><init>(Lio/ionic/libs/ionfilesystemlib/IONFILEController;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 82
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$useUriIfResolvedAsLocalDirectory":I
    const/4 p2, 0x0

    .local p2, "$i$f$useUriIfResolvedAsLocal":I
    const/4 v1, 0x0

    .local v1, "$i$f$useUriIfResolved":I
    const/4 v2, 0x0

    .local v2, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    const/4 v3, 0x0

    .local v3, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    const/4 v4, 0x0

    .local v4, "$i$a$-useUriIfResolvedAsLocalDirectory-IONFILEController$createDirectory$2":I
    iget-object v5, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .local v5, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p3

    check-cast v6, Lkotlin/Result;

    invoke-virtual {v6}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_3

    .end local v1    # "$i$f$useUriIfResolved":I
    .end local v2    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    .end local v3    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    .end local v4    # "$i$a$-useUriIfResolvedAsLocalDirectory-IONFILEController$createDirectory$2":I
    .end local v5    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local p1    # "$i$f$useUriIfResolvedAsLocalDirectory":I
    .end local p2    # "$i$f$useUriIfResolvedAsLocal":I
    :pswitch_1
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolvedAsLocalDirectory":I
    const/4 p2, 0x0

    .restart local p2    # "$i$f$useUriIfResolvedAsLocal":I
    const/4 v2, 0x0

    .local v2, "$i$f$useUriIfResolved":I
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;

    .local v3, "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;
    iget-object v4, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .local v4, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p3

    check-cast v5, Lkotlin/Result;

    invoke-virtual {v5}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .end local v2    # "$i$f$useUriIfResolved":I
    .end local v3    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;
    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local p1    # "$i$f$useUriIfResolvedAsLocalDirectory":I
    .end local p2    # "$i$f$useUriIfResolvedAsLocal":I
    :pswitch_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    .restart local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    move-object v3, p2

    .line 83
    .restart local v3    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;
    .local p1, "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    iget-object p2, v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    .local p2, "$this$useUriIfResolvedAsLocalDirectory$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v2, 0x0

    .line 313
    .local v2, "$i$f$useUriIfResolvedAsLocalDirectory":I
    nop

    .local p2, "$this$useUriIfResolvedAsLocal$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v5, 0x0

    .line 314
    .local v5, "$i$f$useUriIfResolvedAsLocal":I
    nop

    .local p2, "$this$useUriIfResolved$iv$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v6, 0x0

    .line 315
    .local v6, "$i$f$useUriIfResolved":I
    nop

    .line 316
    instance-of v7, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v7, :cond_1

    move-object v7, p1

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move p1, v2

    move p2, v5

    move v2, v6

    goto :goto_2

    .line 317
    :cond_1
    instance-of v7, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v7, :cond_8

    move-object v7, p1

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iput-object v4, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->label:I

    invoke-virtual {p2, v7, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .end local p2    # "$this$useUriIfResolved$iv$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    if-ne p1, v1, :cond_2

    .line 82
    return-object v1

    .line 317
    :cond_2
    move p2, v5

    move-object v5, p1

    move p1, v2

    move v2, v6

    .end local v5    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v6    # "$i$f$useUriIfResolved":I
    .local v2, "$i$f$useUriIfResolved":I
    .local p1, "$i$f$useUriIfResolvedAsLocalDirectory":I
    .local p2, "$i$f$useUriIfResolvedAsLocal":I
    :goto_1
    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_7

    move-object v7, v5

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .line 315
    :goto_2
    nop

    .line 319
    .local v7, "resolvedUri$iv$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    nop

    .local v7, "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v5, 0x0

    .line 320
    .local v5, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    instance-of v6, v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v6, :cond_6

    .line 321
    move-object v6, v7

    check-cast v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .end local v7    # "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .local v6, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    const/4 v7, 0x0

    .line 322
    .local v7, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getType()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v8

    sget-object v9, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->FILE:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    if-eq v8, v9, :cond_5

    .line 323
    nop

    .local v6, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    const/4 v8, 0x0

    .line 84
    .local v8, "$i$a$-useUriIfResolvedAsLocalDirectory-IONFILEController$createDirectory$2":I
    iget-object v9, v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->directoriesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;

    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getFullPath()Ljava/lang/String;

    move-result-object v10

    iput-object v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->L$0:Ljava/lang/Object;

    const/4 v11, 0x0

    iput-object v11, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->L$1:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createDirectory$1;->label:I

    invoke-virtual {v9, v10, v3, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;->createDirectory-0E7RQCE(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;
    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    if-ne v3, v1, :cond_3

    .line 82
    return-object v1

    .line 84
    :cond_3
    move v1, v2

    move v2, v5

    move-object v5, v6

    move v4, v8

    move-object v6, v3

    move v3, v7

    .end local v6    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    .end local v8    # "$i$a$-useUriIfResolvedAsLocalDirectory-IONFILEController$createDirectory$2":I
    .restart local v1    # "$i$f$useUriIfResolved":I
    .local v2, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    .local v3, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    .local v4, "$i$a$-useUriIfResolvedAsLocalDirectory-IONFILEController$createDirectory$2":I
    .local v5, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    :goto_3
    invoke-static {v6}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v6, Lkotlin/Unit;

    .line 324
    const/4 v6, 0x0

    .line 84
    .local v6, "$i$a$-map-IONFILEController$createDirectory$2$1":I
    invoke-virtual {v5}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getUri()Landroid/net/Uri;

    move-result-object v5

    .end local v5    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local v6    # "$i$a$-map-IONFILEController$createDirectory$2$1":I
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    :cond_4
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 323
    .end local v4    # "$i$a$-useUriIfResolvedAsLocalDirectory-IONFILEController$createDirectory$2":I
    :goto_4
    move v7, v2

    move v2, v1

    move-object v1, v5

    move v5, v7

    move v7, v3

    goto :goto_5

    .line 325
    .end local v1    # "$i$f$useUriIfResolved":I
    .end local v3    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    .local v2, "$i$f$useUriIfResolved":I
    .local v5, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    .restart local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    :cond_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForFiles;

    invoke-direct {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForFiles;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 322
    :goto_5
    nop

    .line 321
    .end local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    goto :goto_6

    .line 326
    :cond_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;

    invoke-direct {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 320
    :goto_6
    nop

    .line 319
    .end local v5    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    goto :goto_7

    .line 318
    .local v6, "it$iv$iv$iv":Ljava/lang/Throwable;
    :cond_7
    const/4 v1, 0x0

    .line 317
    .local v1, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv$iv":I
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 328
    .end local v1    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv$iv":I
    .end local v2    # "$i$f$useUriIfResolved":I
    .end local v6    # "it$iv$iv$iv":Ljava/lang/Throwable;
    :goto_7
    nop

    .line 329
    .end local p2    # "$i$f$useUriIfResolvedAsLocal":I
    nop

    .line 85
    .end local p1    # "$i$f$useUriIfResolvedAsLocalDirectory":I
    return-object v1

    .line 317
    .local v2, "$i$f$useUriIfResolvedAsLocalDirectory":I
    .local v5, "$i$f$useUriIfResolvedAsLocal":I
    .local v6, "$i$f$useUriIfResolved":I
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createFile-0E7RQCE(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;

    invoke-direct {v0, p0, p3}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;-><init>(Lio/ionic/libs/ionfilesystemlib/IONFILEController;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 68
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$useUriIfResolvedAsLocalFile":I
    const/4 p2, 0x0

    .local p2, "$i$f$useUriIfResolvedAsLocal":I
    const/4 v1, 0x0

    .local v1, "$i$f$useUriIfResolved":I
    const/4 v2, 0x0

    .local v2, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    const/4 v3, 0x0

    .local v3, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    const/4 v4, 0x0

    .local v4, "$i$a$-useUriIfResolvedAsLocalFile-IONFILEController$createFile$2":I
    iget-object v5, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .local v5, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p3

    check-cast v6, Lkotlin/Result;

    invoke-virtual {v6}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_3

    .end local v1    # "$i$f$useUriIfResolved":I
    .end local v2    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    .end local v3    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    .end local v4    # "$i$a$-useUriIfResolvedAsLocalFile-IONFILEController$createFile$2":I
    .end local v5    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local p1    # "$i$f$useUriIfResolvedAsLocalFile":I
    .end local p2    # "$i$f$useUriIfResolvedAsLocal":I
    :pswitch_1
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolvedAsLocalFile":I
    const/4 p2, 0x0

    .restart local p2    # "$i$f$useUriIfResolvedAsLocal":I
    const/4 v2, 0x0

    .local v2, "$i$f$useUriIfResolved":I
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;

    .local v3, "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;
    iget-object v4, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .local v4, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p3

    check-cast v5, Lkotlin/Result;

    invoke-virtual {v5}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .end local v2    # "$i$f$useUriIfResolved":I
    .end local v3    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;
    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local p1    # "$i$f$useUriIfResolvedAsLocalFile":I
    .end local p2    # "$i$f$useUriIfResolvedAsLocal":I
    :pswitch_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    .restart local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    move-object v3, p2

    .line 69
    .restart local v3    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;
    .local p1, "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    iget-object p2, v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    .local p2, "$this$useUriIfResolvedAsLocalFile$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v2, 0x0

    .line 296
    .local v2, "$i$f$useUriIfResolvedAsLocalFile":I
    nop

    .local p2, "$this$useUriIfResolvedAsLocal$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v5, 0x0

    .line 297
    .local v5, "$i$f$useUriIfResolvedAsLocal":I
    nop

    .local p2, "$this$useUriIfResolved$iv$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v6, 0x0

    .line 298
    .local v6, "$i$f$useUriIfResolved":I
    nop

    .line 299
    instance-of v7, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v7, :cond_1

    move-object v7, p1

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move p1, v2

    move p2, v5

    move v2, v6

    goto :goto_2

    .line 300
    :cond_1
    instance-of v7, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v7, :cond_8

    move-object v7, p1

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iput-object v4, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->label:I

    invoke-virtual {p2, v7, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .end local p2    # "$this$useUriIfResolved$iv$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    if-ne p1, v1, :cond_2

    .line 68
    return-object v1

    .line 300
    :cond_2
    move p2, v5

    move-object v5, p1

    move p1, v2

    move v2, v6

    .end local v5    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v6    # "$i$f$useUriIfResolved":I
    .local v2, "$i$f$useUriIfResolved":I
    .local p1, "$i$f$useUriIfResolvedAsLocalFile":I
    .local p2, "$i$f$useUriIfResolvedAsLocal":I
    :goto_1
    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_7

    move-object v7, v5

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .line 298
    :goto_2
    nop

    .line 302
    .local v7, "resolvedUri$iv$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    nop

    .local v7, "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v5, 0x0

    .line 303
    .local v5, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    instance-of v6, v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v6, :cond_6

    .line 304
    move-object v6, v7

    check-cast v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .end local v7    # "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .local v6, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    const/4 v7, 0x0

    .line 305
    .local v7, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getType()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v8

    sget-object v9, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->DIRECTORY:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    if-eq v8, v9, :cond_5

    .line 306
    nop

    .local v6, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    const/4 v8, 0x0

    .line 70
    .local v8, "$i$a$-useUriIfResolvedAsLocalFile-IONFILEController$createFile$2":I
    iget-object v9, v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->localFilesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getFullPath()Ljava/lang/String;

    move-result-object v10

    iput-object v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->L$0:Ljava/lang/Object;

    const/4 v11, 0x0

    iput-object v11, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->L$1:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$createFile$1;->label:I

    invoke-virtual {v9, v10, v3, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->createFile-0E7RQCE(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILECreateOptions;
    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    if-ne v3, v1, :cond_3

    .line 68
    return-object v1

    .line 70
    :cond_3
    move v1, v2

    move v2, v5

    move-object v5, v6

    move v4, v8

    move-object v6, v3

    move v3, v7

    .end local v6    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    .end local v8    # "$i$a$-useUriIfResolvedAsLocalFile-IONFILEController$createFile$2":I
    .restart local v1    # "$i$f$useUriIfResolved":I
    .local v2, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    .local v3, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    .local v4, "$i$a$-useUriIfResolvedAsLocalFile-IONFILEController$createFile$2":I
    .local v5, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    :goto_3
    invoke-static {v6}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v6, Lkotlin/Unit;

    .line 307
    const/4 v6, 0x0

    .line 70
    .local v6, "$i$a$-map-IONFILEController$createFile$2$1":I
    invoke-virtual {v5}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getUri()Landroid/net/Uri;

    move-result-object v5

    .end local v5    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local v6    # "$i$a$-map-IONFILEController$createFile$2$1":I
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    :cond_4
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 306
    .end local v4    # "$i$a$-useUriIfResolvedAsLocalFile-IONFILEController$createFile$2":I
    :goto_4
    move v7, v2

    move v2, v1

    move-object v1, v5

    move v5, v7

    move v7, v3

    goto :goto_5

    .line 308
    .end local v1    # "$i$f$useUriIfResolved":I
    .end local v3    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    .local v2, "$i$f$useUriIfResolved":I
    .local v5, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    .restart local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    :cond_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;

    invoke-direct {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 305
    :goto_5
    nop

    .line 304
    .end local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    goto :goto_6

    .line 309
    :cond_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;

    invoke-direct {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 303
    :goto_6
    nop

    .line 302
    .end local v5    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    goto :goto_7

    .line 301
    .local v6, "it$iv$iv$iv":Ljava/lang/Throwable;
    :cond_7
    const/4 v1, 0x0

    .line 300
    .local v1, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv$iv":I
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 311
    .end local v1    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv$iv":I
    .end local v2    # "$i$f$useUriIfResolved":I
    .end local v6    # "it$iv$iv$iv":Ljava/lang/Throwable;
    :goto_7
    nop

    .line 312
    .end local p2    # "$i$f$useUriIfResolvedAsLocal":I
    nop

    .line 71
    .end local p1    # "$i$f$useUriIfResolvedAsLocalFile":I
    return-object v1

    .line 300
    .local v2, "$i$f$useUriIfResolvedAsLocalFile":I
    .local v5, "$i$f$useUriIfResolvedAsLocal":I
    .local v6, "$i$f$useUriIfResolved":I
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final delete-0E7RQCE(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;

    invoke-direct {v0, p0, p3}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;-><init>(Lio/ionic/libs/ionfilesystemlib/IONFILEController;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 214
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$useUriIfResolved":I
    const/4 p2, 0x0

    .local p2, "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p3

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_5

    .end local p1    # "$i$f$useUriIfResolved":I
    .end local p2    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    :pswitch_1
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolved":I
    const/4 p2, 0x0

    .restart local p2    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p3

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_4

    .end local p1    # "$i$f$useUriIfResolved":I
    .end local p2    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    :pswitch_2
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolved":I
    const/4 p2, 0x0

    .restart local p2    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p3

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_3

    .end local p1    # "$i$f$useUriIfResolved":I
    .end local p2    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    :pswitch_3
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolved":I
    iget-object p2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;

    .local p2, "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;
    iget-object v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .local v2, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p3

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local p1    # "$i$f$useUriIfResolved":I
    .end local p2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;
    :pswitch_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 215
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .local p1, "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .restart local p2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;
    iget-object v3, v2, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    .local v3, "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v4, 0x0

    .line 381
    .local v4, "$i$f$useUriIfResolved":I
    nop

    .line 382
    instance-of v5, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v5, :cond_1

    move-object v5, p1

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move p1, v4

    goto :goto_2

    .line 383
    :cond_1
    instance-of v5, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v5, :cond_9

    move-object v5, p1

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iput-object v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->label:I

    invoke-virtual {v3, v5, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local p1    # "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    if-ne v3, v1, :cond_2

    .line 214
    return-object v1

    .line 383
    :cond_2
    move p1, v4

    .end local v4    # "$i$f$useUriIfResolved":I
    .local p1, "$i$f$useUriIfResolved":I
    :goto_1
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_8

    move-object v5, v3

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .line 381
    :goto_2
    nop

    .line 385
    .local v5, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    nop

    .local v5, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v3, 0x0

    .line 216
    .local v3, "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    nop

    .line 217
    instance-of v4, v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    .line 218
    move-object v4, v5

    check-cast v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    invoke-virtual {v4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getFullPath()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "path":Ljava/lang/String;
    move-object v7, v5

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    invoke-virtual {v7}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getType()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v7

    sget-object v8, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->DIRECTORY:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    if-ne v7, v8, :cond_4

    .line 220
    .end local v5    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    iget-object v5, v2, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->directoriesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;

    iput-object v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->label:I

    invoke-virtual {v5, v4, p2, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;->deleteDirectory-0E7RQCE(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v4    # "path":Ljava/lang/String;
    .end local p2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEDeleteOptions;
    if-ne p2, v1, :cond_3

    .line 214
    return-object v1

    .line 220
    :cond_3
    move-object v1, p2

    move p2, v3

    .end local v3    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    .local p2, "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    :goto_3
    goto :goto_5

    .line 222
    .end local p2    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .restart local v3    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    .restart local v4    # "path":Ljava/lang/String;
    :cond_4
    iget-object p2, v2, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->localFilesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    iput-object v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->label:I

    invoke-virtual {p2, v4, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->deleteFile-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v4    # "path":Ljava/lang/String;
    if-ne p2, v1, :cond_5

    .line 214
    return-object v1

    .line 222
    :cond_5
    move-object v1, p2

    move p2, v3

    .end local v3    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    .restart local p2    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    :goto_4
    goto :goto_5

    .line 226
    .end local p2    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .restart local v3    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    .restart local v5    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_6
    iget-object p2, v2, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->contentResolverHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    invoke-virtual {v5}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;->getUri()Landroid/net/Uri;

    move-result-object v4

    iput-object v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$delete$1;->label:I

    invoke-virtual {p2, v4, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->deleteFile-gIAlu-s(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v5    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    if-ne p2, v1, :cond_7

    .line 214
    return-object v1

    .line 226
    :cond_7
    move-object v1, p2

    move p2, v3

    .end local v3    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    .restart local p2    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    :goto_5
    nop

    .line 216
    nop

    .line 385
    .end local p2    # "$i$a$-useUriIfResolved-IONFILEController$delete$2":I
    goto :goto_6

    .line 384
    .local v4, "it$iv":Ljava/lang/Throwable;
    :cond_8
    const/4 p2, 0x0

    .line 383
    .local p2, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv":I
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 228
    .end local v4    # "it$iv":Ljava/lang/Throwable;
    .end local p1    # "$i$f$useUriIfResolved":I
    .end local p2    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv":I
    :goto_6
    return-object v1

    .line 383
    .local v4, "$i$f$useUriIfResolved":I
    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getFileUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getFileUri$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getFileUri$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getFileUri$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getFileUri$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getFileUri$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getFileUri$1;

    invoke-direct {v0, p0, p2}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getFileUri$1;-><init>(Lio/ionic/libs/ionfilesystemlib/IONFILEController;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getFileUri$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getFileUri$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p2

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 57
    .local v2, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .local p1, "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    iget-object v3, v2, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    const/4 v4, 0x1

    iput v4, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getFileUri$1;->label:I

    invoke-virtual {v3, p1, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local p1    # "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    if-ne p1, v1, :cond_1

    .line 56
    return-object v1

    .line 57
    :cond_1
    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getMetadata-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;

    invoke-direct {v0, p0, p2}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;-><init>(Lio/ionic/libs/ionfilesystemlib/IONFILEController;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 166
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$useUriIfResolved":I
    const/4 v1, 0x0

    .local v1, "$i$a$-useUriIfResolved-IONFILEController$getMetadata$2":I
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p2

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_4

    .end local v1    # "$i$a$-useUriIfResolved-IONFILEController$getMetadata$2":I
    .end local p1    # "$i$f$useUriIfResolved":I
    :pswitch_1
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolved":I
    const/4 v1, 0x0

    .restart local v1    # "$i$a$-useUriIfResolved-IONFILEController$getMetadata$2":I
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p2

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .end local v1    # "$i$a$-useUriIfResolved-IONFILEController$getMetadata$2":I
    .end local p1    # "$i$f$useUriIfResolved":I
    :pswitch_2
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolved":I
    iget-object v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .local v2, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p2

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local p1    # "$i$f$useUriIfResolved":I
    :pswitch_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 167
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .local p1, "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    iget-object v3, v2, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    .local v3, "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v4, 0x0

    .line 342
    .local v4, "$i$f$useUriIfResolved":I
    nop

    .line 343
    instance-of v5, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v5, :cond_1

    move-object v5, p1

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move p1, v4

    goto :goto_2

    .line 344
    :cond_1
    instance-of v5, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v5, :cond_7

    move-object v5, p1

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iput-object v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;->label:I

    invoke-virtual {v3, v5, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local p1    # "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    if-ne v3, v1, :cond_2

    .line 166
    return-object v1

    .line 344
    :cond_2
    move p1, v4

    .end local v4    # "$i$f$useUriIfResolved":I
    .local p1, "$i$f$useUriIfResolved":I
    :goto_1
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v5, v3

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .line 342
    :goto_2
    nop

    .line 346
    .local v5, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    nop

    .local v5, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v3, 0x0

    .line 168
    .local v3, "$i$a$-useUriIfResolved-IONFILEController$getMetadata$2":I
    instance-of v4, v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 169
    iget-object v4, v2, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->localFilesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    move-object v7, v5

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    invoke-virtual {v7}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getFullPath()Ljava/lang/String;

    move-result-object v7

    iput-object v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;->label:I

    invoke-virtual {v4, v7, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->getFileMetadata-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v5    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    if-ne v2, v1, :cond_3

    .line 166
    return-object v1

    .line 169
    :cond_3
    move v1, v3

    .end local v3    # "$i$a$-useUriIfResolved-IONFILEController$getMetadata$2":I
    .restart local v1    # "$i$a$-useUriIfResolved-IONFILEController$getMetadata$2":I
    :goto_3
    goto :goto_4

    .line 171
    .end local v1    # "$i$a$-useUriIfResolved-IONFILEController$getMetadata$2":I
    .restart local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .restart local v3    # "$i$a$-useUriIfResolved-IONFILEController$getMetadata$2":I
    .restart local v5    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_4
    iget-object v4, v2, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->contentResolverHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    invoke-virtual {v5}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;->getUri()Landroid/net/Uri;

    move-result-object v7

    iput-object v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$getMetadata$1;->label:I

    invoke-virtual {v4, v7, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->getFileMetadata-gIAlu-s(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v5    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    if-ne v2, v1, :cond_5

    .line 166
    return-object v1

    .line 171
    :cond_5
    move v1, v3

    .end local v3    # "$i$a$-useUriIfResolved-IONFILEController$getMetadata$2":I
    .restart local v1    # "$i$a$-useUriIfResolved-IONFILEController$getMetadata$2":I
    :goto_4
    nop

    .line 168
    nop

    .line 346
    .end local v1    # "$i$a$-useUriIfResolved-IONFILEController$getMetadata$2":I
    goto :goto_5

    .line 345
    .local v4, "it$iv":Ljava/lang/Throwable;
    :cond_6
    const/4 v1, 0x0

    .line 344
    .local v1, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv":I
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v4}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 173
    .end local v1    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv":I
    .end local v4    # "it$iv":Ljava/lang/Throwable;
    .end local p1    # "$i$f$useUriIfResolved":I
    :goto_5
    return-object v2

    .line 344
    .local v4, "$i$f$useUriIfResolved":I
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final listDirectory-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;

    invoke-direct {v0, p0, p2}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;-><init>(Lio/ionic/libs/ionfilesystemlib/IONFILEController;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 202
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$useUriIfResolvedAsLocalDirectory":I
    const/4 v1, 0x0

    .local v1, "$i$f$useUriIfResolvedAsLocal":I
    const/4 v2, 0x0

    .local v2, "$i$f$useUriIfResolved":I
    const/4 v3, 0x0

    .local v3, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    const/4 v4, 0x0

    .local v4, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    const/4 v5, 0x0

    .local v5, "$i$a$-useUriIfResolvedAsLocalDirectory-IONFILEController$listDirectory$2":I
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p2

    check-cast v6, Lkotlin/Result;

    invoke-virtual {v6}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_3

    .end local v1    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v2    # "$i$f$useUriIfResolved":I
    .end local v3    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    .end local v4    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    .end local v5    # "$i$a$-useUriIfResolvedAsLocalDirectory-IONFILEController$listDirectory$2":I
    .end local p1    # "$i$f$useUriIfResolvedAsLocalDirectory":I
    :pswitch_1
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolvedAsLocalDirectory":I
    const/4 v2, 0x0

    .local v2, "$i$f$useUriIfResolvedAsLocal":I
    const/4 v3, 0x0

    .local v3, "$i$f$useUriIfResolved":I
    iget-object v4, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .local v4, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p2

    check-cast v5, Lkotlin/Result;

    invoke-virtual {v5}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .end local v2    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v3    # "$i$f$useUriIfResolved":I
    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local p1    # "$i$f$useUriIfResolvedAsLocalDirectory":I
    :pswitch_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    .line 203
    .restart local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .local p1, "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    iget-object v2, v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    .local v2, "$this$useUriIfResolvedAsLocalDirectory$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v3, 0x0

    .line 364
    .local v3, "$i$f$useUriIfResolvedAsLocalDirectory":I
    nop

    .local v2, "$this$useUriIfResolvedAsLocal$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v5, 0x0

    .line 365
    .local v5, "$i$f$useUriIfResolvedAsLocal":I
    nop

    .local v2, "$this$useUriIfResolved$iv$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v6, 0x0

    .line 366
    .local v6, "$i$f$useUriIfResolved":I
    nop

    .line 367
    instance-of v7, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v7, :cond_1

    move-object v7, p1

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move p1, v3

    move v2, v5

    move v3, v6

    goto :goto_2

    .line 368
    :cond_1
    instance-of v7, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v7, :cond_7

    move-object v7, p1

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iput-object v4, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;->label:I

    invoke-virtual {v2, v7, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "$this$useUriIfResolved$iv$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local p1    # "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    if-ne p1, v1, :cond_2

    .line 202
    return-object v1

    .line 368
    :cond_2
    move v2, v5

    move-object v5, p1

    move p1, v3

    move v3, v6

    .end local v5    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v6    # "$i$f$useUriIfResolved":I
    .local v2, "$i$f$useUriIfResolvedAsLocal":I
    .local v3, "$i$f$useUriIfResolved":I
    .local p1, "$i$f$useUriIfResolvedAsLocalDirectory":I
    :goto_1
    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_6

    move-object v7, v5

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .line 366
    :goto_2
    nop

    .line 370
    .local v7, "resolvedUri$iv$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    nop

    .local v7, "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v5, 0x0

    .line 371
    .local v5, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    instance-of v6, v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v6, :cond_5

    .line 372
    move-object v6, v7

    check-cast v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .end local v7    # "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .local v6, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    const/4 v7, 0x0

    .line 373
    .local v7, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getType()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v8

    sget-object v9, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->FILE:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    if-eq v8, v9, :cond_4

    .line 374
    nop

    .local v6, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    const/4 v8, 0x0

    .line 204
    .local v8, "$i$a$-useUriIfResolvedAsLocalDirectory-IONFILEController$listDirectory$2":I
    iget-object v9, v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->directoriesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;

    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getFullPath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    iput-object v11, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;->L$0:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$listDirectory$1;->label:I

    invoke-virtual {v9, v10, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;->listDirectory-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v6    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    if-ne v6, v1, :cond_3

    .line 202
    return-object v1

    .line 204
    :cond_3
    move v1, v2

    move v2, v3

    move v3, v5

    move v4, v7

    move v5, v8

    .end local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    .end local v8    # "$i$a$-useUriIfResolvedAsLocalDirectory-IONFILEController$listDirectory$2":I
    .restart local v1    # "$i$f$useUriIfResolvedAsLocal":I
    .local v2, "$i$f$useUriIfResolved":I
    .local v3, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    .local v4, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    .local v5, "$i$a$-useUriIfResolvedAsLocalDirectory-IONFILEController$listDirectory$2":I
    :goto_3
    nop

    .line 374
    .end local v5    # "$i$a$-useUriIfResolvedAsLocalDirectory-IONFILEController$listDirectory$2":I
    move v5, v3

    move v7, v4

    move v3, v2

    move v2, v1

    goto :goto_4

    .line 376
    .end local v1    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v4    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    .local v2, "$i$f$useUriIfResolvedAsLocal":I
    .local v3, "$i$f$useUriIfResolved":I
    .local v5, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    .restart local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    :cond_4
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForFiles;

    invoke-direct {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForFiles;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 373
    :goto_4
    nop

    .line 372
    .end local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2$iv":I
    goto :goto_5

    .line 377
    :cond_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;

    invoke-direct {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 371
    :goto_5
    nop

    .line 370
    .end local v5    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    goto :goto_6

    .line 369
    .local v6, "it$iv$iv$iv":Ljava/lang/Throwable;
    :cond_6
    const/4 v1, 0x0

    .line 368
    .local v1, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv$iv":I
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    .line 379
    .end local v1    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv$iv":I
    .end local v3    # "$i$f$useUriIfResolved":I
    .end local v6    # "it$iv$iv$iv":Ljava/lang/Throwable;
    :goto_6
    nop

    .line 380
    .end local v2    # "$i$f$useUriIfResolvedAsLocal":I
    nop

    .line 205
    .end local p1    # "$i$f$useUriIfResolvedAsLocalDirectory":I
    return-object v6

    .line 368
    .local v3, "$i$f$useUriIfResolvedAsLocalDirectory":I
    .local v5, "$i$f$useUriIfResolvedAsLocal":I
    .local v6, "$i$f$useUriIfResolved":I
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final move-0E7RQCE(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;

    iget v2, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;-><init>(Lio/ionic/libs/ionfilesystemlib/IONFILEController;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v0, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 282
    iget v4, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->label:I

    packed-switch v4, :pswitch_data_0

    move-object/from16 p3, v0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    const/4 v3, 0x0

    .local v3, "$i$f$useUriIfResolvedAsLocal":I
    const/4 v4, 0x0

    .local v4, "$i$f$useUriIfResolved":I
    const/4 v5, 0x0

    .local v5, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    const/4 v6, 0x0

    .local v6, "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    const/4 v7, 0x0

    .local v7, "$i$f$useUriIfResolvedAsLocal":I
    const/4 v8, 0x0

    .local v8, "$i$f$useUriIfResolved":I
    const/4 v9, 0x0

    .local v9, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    const/4 v10, 0x0

    .local v10, "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2$1":I
    iget-object v11, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .local v11, "resolvedDestination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v0

    check-cast v12, Lkotlin/Result;

    invoke-virtual {v12}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 p3, v0

    goto/16 :goto_6

    .end local v3    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v4    # "$i$f$useUriIfResolved":I
    .end local v5    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    .end local v6    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    .end local v7    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v8    # "$i$f$useUriIfResolved":I
    .end local v9    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    .end local v10    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2$1":I
    .end local v11    # "resolvedDestination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    :pswitch_1
    const/4 v3, 0x0

    .restart local v3    # "$i$f$useUriIfResolvedAsLocal":I
    const/4 v4, 0x0

    .restart local v4    # "$i$f$useUriIfResolved":I
    const/4 v5, 0x0

    .restart local v5    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    const/4 v6, 0x0

    .restart local v6    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    const/4 v7, 0x0

    .restart local v7    # "$i$f$useUriIfResolvedAsLocal":I
    const/4 v8, 0x0

    .restart local v8    # "$i$f$useUriIfResolved":I
    const/4 v9, 0x0

    .restart local v9    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    const/4 v10, 0x0

    .restart local v10    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2$1":I
    iget-object v11, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .restart local v11    # "resolvedDestination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v0

    check-cast v12, Lkotlin/Result;

    invoke-virtual {v12}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 p3, v0

    goto/16 :goto_5

    .end local v3    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v4    # "$i$f$useUriIfResolved":I
    .end local v5    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    .end local v6    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    .end local v7    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v8    # "$i$f$useUriIfResolved":I
    .end local v9    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    .end local v10    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2$1":I
    .end local v11    # "resolvedDestination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    :pswitch_2
    const/4 v4, 0x0

    .local v4, "$i$f$useUriIfResolvedAsLocal":I
    const/4 v5, 0x0

    .local v5, "$i$f$useUriIfResolved":I
    const/4 v6, 0x0

    .local v6, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    const/4 v7, 0x0

    .local v7, "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    const/4 v8, 0x0

    .local v8, "$i$f$useUriIfResolvedAsLocal":I
    const/4 v9, 0x0

    .local v9, "$i$f$useUriIfResolved":I
    iget-object v10, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .local v10, "resolvedSource":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    iget-object v11, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .local v11, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v0

    check-cast v12, Lkotlin/Result;

    invoke-virtual {v12}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 p3, v0

    goto/16 :goto_3

    .end local v4    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v5    # "$i$f$useUriIfResolved":I
    .end local v6    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    .end local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    .end local v8    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v9    # "$i$f$useUriIfResolved":I
    .end local v10    # "resolvedSource":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local v11    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    :pswitch_3
    const/4 v4, 0x0

    .restart local v4    # "$i$f$useUriIfResolvedAsLocal":I
    const/4 v5, 0x0

    .restart local v5    # "$i$f$useUriIfResolved":I
    iget-object v6, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;

    .local v6, "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    iget-object v7, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .local v7, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v0

    check-cast v8, Lkotlin/Result;

    invoke-virtual {v8}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .end local v4    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v5    # "$i$f$useUriIfResolved":I
    .end local v6    # "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .end local v7    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    :pswitch_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v7, p0

    .restart local v7    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    move-object/from16 v6, p2

    .restart local v6    # "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    move-object/from16 v4, p1

    .line 283
    .local v4, "source":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    iget-object v5, v7, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    .local v5, "$this$useUriIfResolvedAsLocal$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v8, 0x0

    .line 397
    .restart local v8    # "$i$f$useUriIfResolvedAsLocal":I
    nop

    .local v5, "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v9, 0x0

    .line 398
    .restart local v9    # "$i$f$useUriIfResolved":I
    nop

    .line 399
    instance-of v10, v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v10, :cond_1

    move-object v10, v4

    check-cast v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move v4, v8

    move v5, v9

    move-object v11, v7

    goto :goto_2

    .line 400
    :cond_1
    instance-of v10, v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v10, :cond_e

    move-object v10, v4

    check-cast v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iput-object v7, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$1:Ljava/lang/Object;

    const/4 v11, 0x1

    iput v11, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->label:I

    invoke-virtual {v5, v10, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "source":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .end local v5    # "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    if-ne v4, v3, :cond_2

    .line 282
    return-object v3

    .line 400
    :cond_2
    move v5, v8

    move-object v8, v4

    move v4, v5

    move v5, v9

    .end local v8    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v9    # "$i$f$useUriIfResolved":I
    .local v4, "$i$f$useUriIfResolvedAsLocal":I
    .local v5, "$i$f$useUriIfResolved":I
    :goto_1
    invoke-static {v8}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-nez v9, :cond_d

    move-object v10, v8

    check-cast v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move-object v11, v7

    .line 398
    .end local v7    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .restart local v11    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    :goto_2
    nop

    .line 402
    .local v10, "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    nop

    .local v10, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v7, 0x0

    .line 403
    .local v7, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    instance-of v8, v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v8, :cond_c

    .line 404
    check-cast v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .local v10, "resolvedSource":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    const/4 v8, 0x0

    .line 284
    .local v8, "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    iget-object v9, v11, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    .local v9, "$this$useUriIfResolvedAsLocal$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    move-object v12, v1

    .local v12, "$completion$iv":Lkotlin/coroutines/Continuation;
    const/4 v13, 0x0

    .line 405
    .local v13, "$i$f$useUriIfResolvedAsLocal":I
    nop

    .local v9, "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v14, 0x0

    .line 406
    .local v14, "$i$f$useUriIfResolved":I
    nop

    .line 407
    instance-of v15, v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v15, :cond_3

    move-object v15, v6

    check-cast v15, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move-object/from16 p3, v0

    move v6, v7

    move v7, v8

    move v8, v14

    goto :goto_4

    .line 408
    :cond_3
    instance-of v15, v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v15, :cond_b

    move-object v15, v6

    check-cast v15, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iput-object v11, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$1:Ljava/lang/Object;

    move-object/from16 p3, v0

    .end local v0    # "$result":Ljava/lang/Object;
    .local p3, "$result":Ljava/lang/Object;
    const/4 v0, 0x2

    iput v0, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->label:I

    invoke-virtual {v9, v15, v12}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    .end local v6    # "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .end local v9    # "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local v12    # "$completion$iv":Lkotlin/coroutines/Continuation;
    if-ne v12, v3, :cond_4

    .line 282
    return-object v3

    .line 408
    :cond_4
    move v6, v7

    move v7, v8

    move v8, v13

    move v9, v14

    .end local v13    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v14    # "$i$f$useUriIfResolved":I
    .local v6, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    .local v7, "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    .local v8, "$i$f$useUriIfResolvedAsLocal":I
    .local v9, "$i$f$useUriIfResolved":I
    :goto_3
    invoke-static {v12}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a

    move-object v15, v12

    check-cast v15, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move v13, v8

    move v8, v9

    .line 406
    .end local v9    # "$i$f$useUriIfResolved":I
    .local v8, "$i$f$useUriIfResolved":I
    .restart local v13    # "$i$f$useUriIfResolvedAsLocal":I
    :goto_4
    nop

    .line 410
    .local v15, "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    nop

    .local v15, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v9, 0x0

    .line 411
    .local v9, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    instance-of v0, v15, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v0, :cond_9

    .line 412
    move-object v0, v15

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .end local v15    # "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .local v0, "resolvedDestination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    const/4 v12, 0x0

    .line 285
    .local v12, "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2$1":I
    invoke-virtual {v10}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getFullPath()Ljava/lang/String;

    move-result-object v14

    .line 286
    .local v14, "sourcePath":Ljava/lang/String;
    invoke-virtual {v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getFullPath()Ljava/lang/String;

    move-result-object v15

    .line 287
    .local v15, "destinationPath":Ljava/lang/String;
    invoke-virtual {v10}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getType()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v2

    move/from16 p1, v4

    .end local v4    # "$i$f$useUriIfResolvedAsLocal":I
    .local p1, "$i$f$useUriIfResolvedAsLocal":I
    sget-object v4, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->DIRECTORY:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move/from16 p2, v5

    .end local v5    # "$i$f$useUriIfResolved":I
    .local p2, "$i$f$useUriIfResolved":I
    const/4 v5, 0x0

    .end local v10    # "resolvedSource":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    if-ne v2, v4, :cond_6

    .line 288
    iget-object v2, v11, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->directoriesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;

    iput-object v0, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->label:I

    invoke-virtual {v2, v14, v15, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEDirectoriesHelper;->moveDirectory-0E7RQCE(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v11    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v14    # "sourcePath":Ljava/lang/String;
    .end local v15    # "destinationPath":Ljava/lang/String;
    if-ne v2, v3, :cond_5

    .line 282
    return-object v3

    .line 288
    :cond_5
    move/from16 v3, p1

    move/from16 v4, p2

    move-object v11, v0

    move v5, v6

    move v6, v7

    move v10, v12

    move v7, v13

    move-object v12, v2

    .end local v0    # "resolvedDestination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local v12    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2$1":I
    .end local v13    # "$i$f$useUriIfResolvedAsLocal":I
    .end local p1    # "$i$f$useUriIfResolvedAsLocal":I
    .end local p2    # "$i$f$useUriIfResolved":I
    .restart local v3    # "$i$f$useUriIfResolvedAsLocal":I
    .local v4, "$i$f$useUriIfResolved":I
    .local v5, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    .local v6, "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    .local v7, "$i$f$useUriIfResolvedAsLocal":I
    .local v10, "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2$1":I
    .local v11, "resolvedDestination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    :goto_5
    goto :goto_6

    .line 290
    .end local v3    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v4    # "$i$f$useUriIfResolved":I
    .end local v5    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    .end local v10    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2$1":I
    .restart local v0    # "resolvedDestination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .local v6, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    .local v7, "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    .local v11, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .restart local v12    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2$1":I
    .restart local v13    # "$i$f$useUriIfResolvedAsLocal":I
    .restart local v14    # "sourcePath":Ljava/lang/String;
    .restart local v15    # "destinationPath":Ljava/lang/String;
    .restart local p1    # "$i$f$useUriIfResolvedAsLocal":I
    .restart local p2    # "$i$f$useUriIfResolved":I
    :cond_6
    iget-object v2, v11, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->localFilesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    iput-object v0, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v1, Lio/ionic/libs/ionfilesystemlib/IONFILEController$move$1;->label:I

    invoke-virtual {v2, v14, v15, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->renameFile-0E7RQCE(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v11    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v14    # "sourcePath":Ljava/lang/String;
    .end local v15    # "destinationPath":Ljava/lang/String;
    if-ne v2, v3, :cond_7

    .line 282
    return-object v3

    .line 290
    :cond_7
    move/from16 v3, p1

    move/from16 v4, p2

    move-object v11, v0

    move v5, v6

    move v6, v7

    move v10, v12

    move v7, v13

    move-object v12, v2

    .end local v0    # "resolvedDestination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local v12    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2$1":I
    .end local v13    # "$i$f$useUriIfResolvedAsLocal":I
    .end local p1    # "$i$f$useUriIfResolvedAsLocal":I
    .end local p2    # "$i$f$useUriIfResolved":I
    .restart local v3    # "$i$f$useUriIfResolvedAsLocal":I
    .restart local v4    # "$i$f$useUriIfResolved":I
    .restart local v5    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    .local v6, "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    .local v7, "$i$f$useUriIfResolvedAsLocal":I
    .restart local v10    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2$1":I
    .local v11, "resolvedDestination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    :goto_6
    nop

    .line 287
    nop

    .line 292
    .local v12, "result":Ljava/lang/Object;
    nop

    .end local v12    # "result":Ljava/lang/Object;
    invoke-static {v12}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v12

    check-cast v0, Lkotlin/Unit;

    .line 413
    const/4 v0, 0x0

    .line 292
    .local v0, "$i$a$-map-IONFILEController$move$2$1$1":I
    invoke-virtual {v11}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getUri()Landroid/net/Uri;

    move-result-object v0

    .end local v0    # "$i$a$-map-IONFILEController$move$2$1$1":I
    .end local v11    # "resolvedDestination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    :cond_8
    invoke-static {v12}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 412
    .end local v10    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2$1":I
    :goto_7
    move v13, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    goto :goto_8

    .line 411
    .end local v3    # "$i$f$useUriIfResolvedAsLocal":I
    .local v4, "$i$f$useUriIfResolvedAsLocal":I
    .local v5, "$i$f$useUriIfResolved":I
    .local v6, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    .local v7, "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    .local v10, "resolvedSource":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .local v11, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .restart local v13    # "$i$f$useUriIfResolvedAsLocal":I
    .local v15, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_9
    move/from16 p1, v4

    move/from16 p2, v5

    .line 414
    .end local v4    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v5    # "$i$f$useUriIfResolved":I
    .end local v10    # "resolvedSource":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local v11    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v15    # "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .restart local p1    # "$i$f$useUriIfResolvedAsLocal":I
    .restart local p2    # "$i$f$useUriIfResolved":I
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;

    invoke-direct {v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 411
    .end local p1    # "$i$f$useUriIfResolvedAsLocal":I
    .end local p2    # "$i$f$useUriIfResolved":I
    .restart local v4    # "$i$f$useUriIfResolvedAsLocal":I
    .restart local v5    # "$i$f$useUriIfResolved":I
    :goto_8
    nop

    .line 410
    .end local v9    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    move v8, v13

    goto :goto_9

    .line 409
    .end local v13    # "$i$f$useUriIfResolvedAsLocal":I
    .local v0, "it$iv$iv":Ljava/lang/Throwable;
    .local v8, "$i$f$useUriIfResolvedAsLocal":I
    .local v9, "$i$f$useUriIfResolved":I
    :cond_a
    const/4 v2, 0x0

    .line 408
    .local v2, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv":I
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 416
    .end local v0    # "it$iv$iv":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv":I
    .end local v9    # "$i$f$useUriIfResolved":I
    :goto_9
    nop

    .line 284
    .end local v8    # "$i$f$useUriIfResolvedAsLocal":I
    nop

    .line 404
    .end local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    move v7, v6

    goto :goto_a

    .line 408
    .end local p3    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v6, "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .local v7, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    .local v8, "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    .local v9, "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .restart local v10    # "resolvedSource":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .restart local v11    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .local v12, "$completion$iv":Lkotlin/coroutines/Continuation;
    .restart local v13    # "$i$f$useUriIfResolvedAsLocal":I
    .local v14, "$i$f$useUriIfResolved":I
    :cond_b
    move-object/from16 p3, v0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .end local v9    # "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local v10    # "resolvedSource":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local v11    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v12    # "$completion$iv":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 403
    .end local v8    # "$i$a$-useUriIfResolvedAsLocal-IONFILEController$move$2":I
    .end local v13    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v14    # "$i$f$useUriIfResolved":I
    .end local p3    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v6    # "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .local v10, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .restart local v11    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    :cond_c
    move-object/from16 p3, v0

    .line 417
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .end local v10    # "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local v11    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .restart local p3    # "$result":Ljava/lang/Object;
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;

    invoke-direct {v0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 403
    :goto_a
    nop

    .line 402
    .end local v7    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    goto :goto_b

    .line 400
    .end local p3    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v6    # "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .local v7, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    :cond_d
    move-object/from16 p3, v0

    .line 401
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .end local v7    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .local v9, "it$iv$iv":Ljava/lang/Throwable;
    .restart local p3    # "$result":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 400
    .local v0, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv":I
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v9}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 419
    .end local v0    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv":I
    .end local v5    # "$i$f$useUriIfResolved":I
    .end local v9    # "it$iv$iv":Ljava/lang/Throwable;
    :goto_b
    nop

    .line 294
    .end local v4    # "$i$f$useUriIfResolvedAsLocal":I
    return-object v0

    .line 400
    .end local p3    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v4, "source":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .local v5, "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .restart local v6    # "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .restart local v7    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .local v8, "$i$f$useUriIfResolvedAsLocal":I
    .local v9, "$i$f$useUriIfResolved":I
    :cond_e
    move-object/from16 p3, v0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v4    # "source":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .end local v5    # "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local v6    # "destination":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .end local v7    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .restart local p3    # "$result":Ljava/lang/Object;
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readFile-0E7RQCE(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;

    invoke-direct {v0, p0, p3}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;-><init>(Lio/ionic/libs/ionfilesystemlib/IONFILEController;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 97
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$useUriIfResolvedAsNonDirectory":I
    const/4 p2, 0x0

    .local p2, "$i$f$useUriIfResolved":I
    const/4 v1, 0x0

    .local v1, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    const/4 v2, 0x0

    .local v2, "$i$a$-useUriIfResolvedAsNonDirectory-IONFILEController$readFile$2":I
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p3

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_6

    .end local v1    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    .end local v2    # "$i$a$-useUriIfResolvedAsNonDirectory-IONFILEController$readFile$2":I
    .end local p1    # "$i$f$useUriIfResolvedAsNonDirectory":I
    .end local p2    # "$i$f$useUriIfResolved":I
    :pswitch_1
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolvedAsNonDirectory":I
    const/4 p2, 0x0

    .restart local p2    # "$i$f$useUriIfResolved":I
    const/4 v1, 0x0

    .restart local v1    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    const/4 v2, 0x0

    .restart local v2    # "$i$a$-useUriIfResolvedAsNonDirectory-IONFILEController$readFile$2":I
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p3

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_5

    .end local v1    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    .end local v2    # "$i$a$-useUriIfResolvedAsNonDirectory-IONFILEController$readFile$2":I
    .end local p1    # "$i$f$useUriIfResolvedAsNonDirectory":I
    .end local p2    # "$i$f$useUriIfResolved":I
    :pswitch_2
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolvedAsNonDirectory":I
    const/4 p2, 0x0

    .restart local p2    # "$i$f$useUriIfResolved":I
    iget-object v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;

    .local v2, "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .local v3, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p3

    check-cast v4, Lkotlin/Result;

    invoke-virtual {v4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .end local v2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    .end local v3    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local p1    # "$i$f$useUriIfResolvedAsNonDirectory":I
    .end local p2    # "$i$f$useUriIfResolved":I
    :pswitch_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .restart local v3    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    move-object v2, p2

    .line 100
    .restart local v2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    .local p1, "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    iget-object p2, v3, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    .local p2, "$this$useUriIfResolvedAsNonDirectory$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v4, 0x0

    .line 330
    .local v4, "$i$f$useUriIfResolvedAsNonDirectory":I
    nop

    .local p2, "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v5, 0x0

    .line 331
    .local v5, "$i$f$useUriIfResolved":I
    nop

    .line 332
    instance-of v6, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v6, :cond_1

    move-object v6, p1

    check-cast v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move p1, v4

    move p2, v5

    goto :goto_2

    .line 333
    :cond_1
    instance-of v6, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v6, :cond_a

    move-object v6, p1

    check-cast v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iput-object v3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->label:I

    invoke-virtual {p2, v6, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .end local p2    # "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    if-ne p1, v1, :cond_2

    .line 97
    return-object v1

    .line 333
    :cond_2
    move p2, v4

    move-object v4, p1

    move p1, p2

    move p2, v5

    .end local v4    # "$i$f$useUriIfResolvedAsNonDirectory":I
    .end local v5    # "$i$f$useUriIfResolved":I
    .local p1, "$i$f$useUriIfResolvedAsNonDirectory":I
    .local p2, "$i$f$useUriIfResolved":I
    :goto_1
    invoke-static {v4}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_9

    move-object v6, v4

    check-cast v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .line 331
    :goto_2
    nop

    .line 335
    .local v6, "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    nop

    .local v6, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v4, 0x0

    .line 336
    .local v4, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    instance-of v5, v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v5, :cond_4

    move-object v5, v6

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    invoke-virtual {v5}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getType()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v5

    sget-object v7, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->DIRECTORY:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    if-eq v5, v7, :cond_3

    goto :goto_3

    .line 339
    .end local v2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    .end local v3    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v6    # "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;

    invoke-direct {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_8

    .line 337
    .restart local v2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    .restart local v3    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .restart local v6    # "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_4
    :goto_3
    nop

    .local v6, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v5, 0x0

    .line 101
    .local v5, "$i$a$-useUriIfResolvedAsNonDirectory-IONFILEController$readFile$2":I
    :try_start_0
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v7, v3

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .line 338
    const/4 v7, 0x0

    .line 101
    .local v7, "$i$a$-runCatching-IONFILEController$readFile$2$1":I
    invoke-virtual {v2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->getOffset()I

    move-result v8

    invoke-virtual {v2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;->getLength()I

    move-result v9

    invoke-static {v8, v9}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILECommonKt;->validateOffsetAndLength(II)V

    .end local v7    # "$i$a$-runCatching-IONFILEController$readFile$2$1":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v7

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v7}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 102
    :goto_4
    invoke-static {v7}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 338
    .end local v2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    .end local v3    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v6    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .local v7, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 102
    .local v1, "$i$a$-onFailure-IONFILEController$readFile$2$2":I
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v7}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    goto :goto_7

    .line 103
    .end local v1    # "$i$a$-onFailure-IONFILEController$readFile$2$2":I
    .end local v7    # "it":Ljava/lang/Throwable;
    .restart local v2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    .restart local v3    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .restart local v6    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_5
    instance-of v7, v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    .line 104
    iget-object v7, v3, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->localFilesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    move-object v9, v6

    check-cast v9, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    invoke-virtual {v9}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getFullPath()Ljava/lang/String;

    move-result-object v9

    iput-object v8, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->label:I

    invoke-virtual {v7, v9, v2, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->readFile-0E7RQCE(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    .end local v3    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v6    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    if-ne v2, v1, :cond_6

    .line 97
    return-object v1

    .line 104
    :cond_6
    move-object v3, v2

    move v1, v4

    move v2, v5

    .end local v4    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    .end local v5    # "$i$a$-useUriIfResolvedAsNonDirectory-IONFILEController$readFile$2":I
    .local v1, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    .local v2, "$i$a$-useUriIfResolvedAsNonDirectory-IONFILEController$readFile$2":I
    :goto_5
    goto :goto_6

    .line 106
    .end local v1    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    .local v2, "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    .restart local v3    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .restart local v4    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    .restart local v5    # "$i$a$-useUriIfResolvedAsNonDirectory-IONFILEController$readFile$2":I
    .restart local v6    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_7
    iget-object v7, v3, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->contentResolverHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;->getUri()Landroid/net/Uri;

    move-result-object v9

    iput-object v8, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFile$1;->label:I

    invoke-virtual {v7, v9, v2, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->readFile-0E7RQCE(Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    .end local v3    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local v6    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    if-ne v3, v1, :cond_8

    .line 97
    return-object v1

    .line 106
    :cond_8
    move v1, v4

    move v2, v5

    .end local v4    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    .end local v5    # "$i$a$-useUriIfResolvedAsNonDirectory-IONFILEController$readFile$2":I
    .restart local v1    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    .local v2, "$i$a$-useUriIfResolvedAsNonDirectory-IONFILEController$readFile$2":I
    :goto_6
    nop

    .line 103
    move v4, v1

    move-object v1, v3

    .line 337
    .end local v1    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    .end local v2    # "$i$a$-useUriIfResolvedAsNonDirectory-IONFILEController$readFile$2":I
    .restart local v4    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    :goto_7
    nop

    .line 336
    :goto_8
    nop

    .line 335
    .end local v4    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2$iv":I
    goto :goto_9

    .line 334
    .local v5, "it$iv$iv":Ljava/lang/Throwable;
    :cond_9
    const/4 v1, 0x0

    .line 333
    .local v1, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv":I
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 341
    .end local v1    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv":I
    .end local v5    # "it$iv$iv":Ljava/lang/Throwable;
    .end local p2    # "$i$f$useUriIfResolved":I
    :goto_9
    nop

    .line 108
    .end local p1    # "$i$f$useUriIfResolvedAsNonDirectory":I
    return-object v1

    .line 333
    .local v4, "$i$f$useUriIfResolvedAsNonDirectory":I
    .local v5, "$i$f$useUriIfResolved":I
    :cond_a
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readFileInChunks(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p1, "uri"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .param p2, "options"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, p1, v1}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$readFileInChunks$1;-><init>(Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;Lio/ionic/libs/ionfilesystemlib/IONFILEController;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 158
    return-object v0
.end method

.method public final saveFile-0E7RQCE(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Landroid/net/Uri;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;

    invoke-direct {v0, p0, p3}, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;-><init>(Lio/ionic/libs/ionfilesystemlib/IONFILEController;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 184
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p3    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$useUriIfResolvedAsLocalFile":I
    const/4 p2, 0x0

    .local p2, "$i$f$useUriIfResolvedAsLocal":I
    const/4 v1, 0x0

    .local v1, "$i$f$useUriIfResolved":I
    const/4 v2, 0x0

    .local v2, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    const/4 v3, 0x0

    .local v3, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    const/4 v4, 0x0

    .local v4, "$i$a$-useUriIfResolvedAsLocalFile-IONFILEController$saveFile$2":I
    iget-object v5, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .local v5, "resolvedLocalFile":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p3

    check-cast v6, Lkotlin/Result;

    invoke-virtual {v6}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_3

    .end local v1    # "$i$f$useUriIfResolved":I
    .end local v2    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    .end local v3    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    .end local v4    # "$i$a$-useUriIfResolvedAsLocalFile-IONFILEController$saveFile$2":I
    .end local v5    # "resolvedLocalFile":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local p1    # "$i$f$useUriIfResolvedAsLocalFile":I
    .end local p2    # "$i$f$useUriIfResolvedAsLocal":I
    :pswitch_1
    const/4 p1, 0x0

    .restart local p1    # "$i$f$useUriIfResolvedAsLocalFile":I
    const/4 p2, 0x0

    .restart local p2    # "$i$f$useUriIfResolvedAsLocal":I
    const/4 v2, 0x0

    .local v2, "$i$f$useUriIfResolved":I
    iget-object v3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;

    .local v3, "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;
    iget-object v4, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    .local v4, "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p3

    check-cast v5, Lkotlin/Result;

    invoke-virtual {v5}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .end local v2    # "$i$f$useUriIfResolved":I
    .end local v3    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;
    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .end local p1    # "$i$f$useUriIfResolvedAsLocalFile":I
    .end local p2    # "$i$f$useUriIfResolvedAsLocal":I
    :pswitch_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p0

    .restart local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    move-object v3, p2

    .line 187
    .restart local v3    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;
    .local p1, "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    iget-object p2, v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->uriHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;

    .local p2, "$this$useUriIfResolvedAsLocalFile$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v2, 0x0

    .line 347
    .local v2, "$i$f$useUriIfResolvedAsLocalFile":I
    nop

    .local p2, "$this$useUriIfResolvedAsLocal$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v5, 0x0

    .line 348
    .local v5, "$i$f$useUriIfResolvedAsLocal":I
    nop

    .local p2, "$this$useUriIfResolved$iv$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v6, 0x0

    .line 349
    .local v6, "$i$f$useUriIfResolved":I
    nop

    .line 350
    instance-of v7, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v7, :cond_1

    move-object v7, p1

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    move p1, v2

    move p2, v5

    move v2, v6

    goto :goto_2

    .line 351
    :cond_1
    instance-of v7, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v7, :cond_8

    move-object v7, p1

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    iput-object v4, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->label:I

    invoke-virtual {p2, v7, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .end local p2    # "$this$useUriIfResolved$iv$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    if-ne p1, v1, :cond_2

    .line 184
    return-object v1

    .line 351
    :cond_2
    move p2, v5

    move-object v5, p1

    move p1, v2

    move v2, v6

    .end local v5    # "$i$f$useUriIfResolvedAsLocal":I
    .end local v6    # "$i$f$useUriIfResolved":I
    .local v2, "$i$f$useUriIfResolved":I
    .local p1, "$i$f$useUriIfResolvedAsLocalFile":I
    .local p2, "$i$f$useUriIfResolvedAsLocal":I
    :goto_1
    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_7

    move-object v7, v5

    check-cast v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .line 349
    :goto_2
    nop

    .line 353
    .local v7, "resolvedUri$iv$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    nop

    .local v7, "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v5, 0x0

    .line 354
    .local v5, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    instance-of v6, v7, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v6, :cond_6

    .line 355
    move-object v6, v7

    check-cast v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .end local v7    # "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .local v6, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    const/4 v7, 0x0

    .line 356
    .local v7, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getType()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v8

    sget-object v9, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->DIRECTORY:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    if-eq v8, v9, :cond_5

    .line 357
    nop

    .local v6, "resolvedLocalFile":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    const/4 v8, 0x0

    .line 188
    .local v8, "$i$a$-useUriIfResolvedAsLocalFile-IONFILEController$saveFile$2":I
    iget-object v9, v4, Lio/ionic/libs/ionfilesystemlib/IONFILEController;->localFilesHelper:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getFullPath()Ljava/lang/String;

    move-result-object v10

    iput-object v6, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->L$0:Ljava/lang/Object;

    const/4 v11, 0x0

    iput-object v11, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->L$1:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController$saveFile$1;->label:I

    invoke-virtual {v9, v10, v3, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->saveFile-0E7RQCE(Ljava/lang/String;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveOptions;
    .end local v4    # "this":Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    if-ne v3, v1, :cond_3

    .line 184
    return-object v1

    .line 188
    :cond_3
    move v1, v2

    move v2, v5

    move-object v5, v6

    move v4, v8

    move-object v6, v3

    move v3, v7

    .end local v6    # "resolvedLocalFile":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    .end local v8    # "$i$a$-useUriIfResolvedAsLocalFile-IONFILEController$saveFile$2":I
    .restart local v1    # "$i$f$useUriIfResolved":I
    .local v2, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    .local v3, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    .local v4, "$i$a$-useUriIfResolvedAsLocalFile-IONFILEController$saveFile$2":I
    .local v5, "resolvedLocalFile":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    :goto_3
    nop

    .line 189
    invoke-static {v6}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v6, Lkotlin/Unit;

    .line 358
    const/4 v6, 0x0

    .line 189
    .local v6, "$i$a$-map-IONFILEController$saveFile$2$1":I
    invoke-virtual {v5}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getUri()Landroid/net/Uri;

    move-result-object v5

    .end local v5    # "resolvedLocalFile":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local v6    # "$i$a$-map-IONFILEController$saveFile$2$1":I
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    :cond_4
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 357
    .end local v4    # "$i$a$-useUriIfResolvedAsLocalFile-IONFILEController$saveFile$2":I
    :goto_4
    move v7, v2

    move v2, v1

    move-object v1, v5

    move v5, v7

    move v7, v3

    goto :goto_5

    .line 359
    .end local v1    # "$i$f$useUriIfResolved":I
    .end local v3    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    .local v2, "$i$f$useUriIfResolved":I
    .local v5, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    .restart local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    :cond_5
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;

    invoke-direct {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 356
    :goto_5
    nop

    .line 355
    .end local v7    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2$iv":I
    goto :goto_6

    .line 360
    :cond_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;

    invoke-direct {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 354
    :goto_6
    nop

    .line 353
    .end local v5    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv$iv":I
    goto :goto_7

    .line 352
    .local v6, "it$iv$iv$iv":Ljava/lang/Throwable;
    :cond_7
    const/4 v1, 0x0

    .line 351
    .local v1, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv$iv":I
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    .line 362
    .end local v1    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv$iv":I
    .end local v2    # "$i$f$useUriIfResolved":I
    .end local v6    # "it$iv$iv$iv":Ljava/lang/Throwable;
    :goto_7
    nop

    .line 363
    .end local p2    # "$i$f$useUriIfResolvedAsLocal":I
    nop

    .line 190
    .end local p1    # "$i$f$useUriIfResolvedAsLocalFile":I
    return-object v1

    .line 351
    .local v2, "$i$f$useUriIfResolvedAsLocalFile":I
    .local v5, "$i$f$useUriIfResolvedAsLocal":I
    .local v6, "$i$f$useUriIfResolved":I
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
