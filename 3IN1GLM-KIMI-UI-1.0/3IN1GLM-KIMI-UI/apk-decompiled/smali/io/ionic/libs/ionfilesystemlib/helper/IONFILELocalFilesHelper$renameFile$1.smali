.class final Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "IONFILELocalFilesHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->renameFile-0E7RQCE(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ionic.libs.ionfilesystemlib.helper.IONFILELocalFilesHelper"
    f = "IONFILELocalFilesHelper.kt"
    i = {}
    l = {
        0xd0
    }
    m = "renameFile-0E7RQCE"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;


# direct methods
.method constructor <init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$1;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$1;->result:Ljava/lang/Object;

    iget v0, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$1;->label:I

    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper$renameFile$1;->this$0:Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, v1, v1, v2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILELocalFilesHelper;->renameFile-0E7RQCE(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    return-object v0
.end method
