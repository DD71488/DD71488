.class public final Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
.super Ljava/lang/Object;
.source "IONFILEContentHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIONFILEContentHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IONFILEContentHelper.kt\nio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,236:1\n1#2:237\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J,\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ$\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000f\u001a\u00020\tH\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J$\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00062\u0006\u0010\u000f\u001a\u00020\tH\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0011J\u0010\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0010\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\tH\u0002J,\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00062\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001eH\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\"2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020#J!\u0010$\u001a\u0004\u0018\u00010%*\u00020\u00152\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\'H\u0002\u00a2\u0006\u0002\u0010(J3\u0010)\u001a\u0008\u0012\u0004\u0012\u0002H*0\u0006\"\u0004\u0008\u0000\u0010**\u0008\u0012\u0004\u0012\u0002H*0\u00062\u0006\u0010\u000f\u001a\u00020\tH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008+\u0010,J\u0014\u0010)\u001a\u00020-*\u00020-2\u0006\u0010\u000f\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006."
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;",
        "",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "(Landroid/content/ContentResolver;)V",
        "copyFile",
        "Lkotlin/Result;",
        "",
        "sourceUri",
        "Landroid/net/Uri;",
        "destinationPath",
        "",
        "copyFile-0E7RQCE",
        "(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteFile",
        "uri",
        "deleteFile-gIAlu-s",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getCreatedTimestampForContentUri",
        "",
        "cursor",
        "Landroid/database/Cursor;",
        "getFileMetadata",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
        "getFileMetadata-gIAlu-s",
        "getLastModifiedTimestampForContentUri",
        "getNameForContentUri",
        "getSizeForContentUri",
        "readFile",
        "options",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;",
        "readFile-0E7RQCE",
        "(Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readFileInChunks",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;",
        "getColumnIndexForNames",
        "",
        "columnNames",
        "",
        "(Landroid/database/Cursor;Ljava/util/List;)Ljava/lang/Integer;",
        "mapError",
        "T",
        "mapError-KWTtemM",
        "(Ljava/lang/Object;Landroid/net/Uri;)Ljava/lang/Object;",
        "",
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
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static final synthetic access$getContentResolver$p(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "$this"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;

    .line 27
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static final synthetic access$getCreatedTimestampForContentUri(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/database/Cursor;)J
    .locals 2
    .param p0, "$this"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 27
    invoke-direct {p0, p1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->getCreatedTimestampForContentUri(Landroid/database/Cursor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getLastModifiedTimestampForContentUri(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/database/Cursor;)J
    .locals 2
    .param p0, "$this"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 27
    invoke-direct {p0, p1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->getLastModifiedTimestampForContentUri(Landroid/database/Cursor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getNameForContentUri(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 27
    invoke-direct {p0, p1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->getNameForContentUri(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getSizeForContentUri(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/database/Cursor;Landroid/net/Uri;)J
    .locals 2
    .param p0, "$this"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 27
    invoke-direct {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->getSizeForContentUri(Landroid/database/Cursor;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$mapError(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Ljava/lang/Throwable;Landroid/net/Uri;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "$this"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .param p1, "$receiver"    # Ljava/lang/Throwable;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 27
    invoke-direct {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->mapError(Ljava/lang/Throwable;Landroid/net/Uri;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$mapError-KWTtemM(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Ljava/lang/Object;Landroid/net/Uri;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .param p1, "$receiver"    # Ljava/lang/Object;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 27
    invoke-direct {p0, p1, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->mapError-KWTtemM(Ljava/lang/Object;Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final getColumnIndexForNames(Landroid/database/Cursor;Ljava/util/List;)Ljava/lang/Integer;
    .locals 8
    .param p1, "$this$getColumnIndexForNames"    # Landroid/database/Cursor;
    .param p2, "columnNames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 226
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    .local v1, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 226
    .local v3, "$i$a$-firstNotNullOfOrNull-IONFILEContentHelper$getColumnIndexForNames$1":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 237
    .local v5, "index":I
    const/4 v6, 0x0

    .line 226
    .local v6, "$i$a$-takeIf-IONFILEContentHelper$getColumnIndexForNames$1$1":I
    if-ltz v5, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .end local v5    # "index":I
    .end local v6    # "$i$a$-takeIf-IONFILEContentHelper$getColumnIndexForNames$1$1":I
    :goto_0
    if-eqz v7, :cond_2

    move-object v2, v4

    .end local v1    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-firstNotNullOfOrNull-IONFILEContentHelper$getColumnIndexForNames$1":I
    :cond_2
    if-eqz v2, :cond_0

    :cond_3
    return-object v2
.end method

.method private final getCreatedTimestampForContentUri(Landroid/database/Cursor;)J
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 215
    nop

    .line 217
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    .line 218
    const-string v1, "date_added"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 217
    nop

    .line 216
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 215
    invoke-direct {p0, p1, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->getColumnIndexForNames(Landroid/database/Cursor;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    .line 221
    .local v0, "columnIndex":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 237
    .local v1, "it":I
    const/4 v2, 0x0

    .line 221
    .local v2, "$i$a$-let-IONFILEContentHelper$getCreatedTimestampForContentUri$1":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .end local v1    # "it":I
    .end local v2    # "$i$a$-let-IONFILEContentHelper$getCreatedTimestampForContentUri$1":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method private final getLastModifiedTimestampForContentUri(Landroid/database/Cursor;)J
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 197
    nop

    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    .line 200
    const-string v1, "last_modified"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 199
    nop

    .line 198
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-direct {p0, p1, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->getColumnIndexForNames(Landroid/database/Cursor;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    .line 203
    .local v0, "columnIndex":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 237
    .local v1, "it":I
    const/4 v2, 0x0

    .line 203
    .local v2, "$i$a$-let-IONFILEContentHelper$getLastModifiedTimestampForContentUri$1":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .end local v1    # "it":I
    .end local v2    # "$i$a$-let-IONFILEContentHelper$getLastModifiedTimestampForContentUri$1":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->getCreatedTimestampForContentUri(Landroid/database/Cursor;)J

    move-result-wide v1

    .line 203
    :goto_0
    return-wide v1
.end method

.method private final getNameForContentUri(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 159
    nop

    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    .line 162
    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 161
    nop

    .line 163
    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 161
    nop

    .line 160
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-direct {p0, p1, v0}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->getColumnIndexForNames(Landroid/database/Cursor;Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    .line 166
    .local v0, "columnIndex":Ljava/lang/Integer;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 237
    .local v3, "it":I
    const/4 v4, 0x0

    .line 166
    .local v4, "$i$a$-let-IONFILEContentHelper$getNameForContentUri$1":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "it":I
    .end local v4    # "$i$a$-let-IONFILEContentHelper$getNameForContentUri$1":I
    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    return-object v3

    .line 167
    :cond_1
    new-instance v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;

    invoke-direct {v3, v2, v1, v2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;-><init>(Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3
.end method

.method private final getSizeForContentUri(Landroid/database/Cursor;Landroid/net/Uri;)J
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 180
    const-string v0, "_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .local v0, "index":I
    const/4 v1, 0x0

    .line 181
    .local v1, "$i$a$-let-IONFILEContentHelper$getSizeForContentUri$1":I
    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 182
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 184
    :cond_0
    move-object v3, v2

    .line 181
    :goto_0
    nop

    .line 180
    .end local v0    # "index":I
    .end local v1    # "$i$a$-let-IONFILEContentHelper$getSizeForContentUri$1":I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    .line 186
    :cond_1
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->contentResolver:Landroid/content/ContentResolver;

    const-string v1, "r"

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/content/res/AssetFileDescriptor;

    .local v1, "it":Landroid/content/res/AssetFileDescriptor;
    const/4 v3, 0x0

    .line 187
    .local v3, "$i$a$-use-IONFILEContentHelper$getSizeForContentUri$2":I
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .end local v1    # "it":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "$i$a$-use-IONFILEContentHelper$getSizeForContentUri$2":I
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    .end local p1    # "cursor":Landroid/database/Cursor;
    .end local p2    # "uri":Landroid/net/Uri;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "cursor":Landroid/database/Cursor;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 180
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_2

    .line 188
    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method

.method private final mapError(Ljava/lang/Throwable;Landroid/net/Uri;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "$this$mapError"    # Ljava/lang/Throwable;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 231
    nop

    .line 232
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_0

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    .line 233
    :cond_0
    instance-of v0, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v0, :cond_1

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;

    invoke-direct {v0, p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnknownError;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    goto :goto_0

    .line 234
    :cond_1
    move-object v0, p1

    .line 235
    :goto_0
    return-object v0
.end method

.method private final mapError-KWTtemM(Ljava/lang/Object;Landroid/net/Uri;)Ljava/lang/Object;
    .locals 3
    .param p1, "$this$mapError_u2dKWTtemM"    # Ljava/lang/Object;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 229
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 229
    .local v1, "$i$a$-let-IONFILEContentHelper$mapError$1":I
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0, v0, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;->mapError(Ljava/lang/Throwable;Landroid/net/Uri;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-IONFILEContentHelper$mapError$1":I
    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    return-object v2
.end method


# virtual methods
.method public final copyFile-0E7RQCE(Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$1;

    invoke-direct {v0, p0, p3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$1;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 131
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$1;->label:I

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
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p3

    goto :goto_1

    :pswitch_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 134
    .local v2, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .local p1, "sourceUri":Landroid/net/Uri;
    .local p2, "destinationPath":Ljava/lang/String;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p1, p2, v5}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$2;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/net/Uri;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    iput v5, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$copyFile$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .end local p1    # "sourceUri":Landroid/net/Uri;
    .end local p2    # "destinationPath":Ljava/lang/String;
    if-ne p1, v1, :cond_1

    .line 131
    return-object v1

    .line 134
    :cond_1
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 150
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final deleteFile-gIAlu-s(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$deleteFile$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$deleteFile$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$deleteFile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$deleteFile$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$deleteFile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$deleteFile$1;

    invoke-direct {v0, p0, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$deleteFile$1;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$deleteFile$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 112
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$deleteFile$1;->label:I

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

    goto :goto_1

    :pswitch_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .local v2, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .local p1, "uri":Landroid/net/Uri;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$deleteFile$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p1, v5}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$deleteFile$2;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    iput v5, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$deleteFile$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .end local p1    # "uri":Landroid/net/Uri;
    if-ne p1, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 119
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getFileMetadata-gIAlu-s(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$1;

    invoke-direct {v0, p0, p2}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$1;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 78
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$1;->label:I

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

    goto :goto_1

    :pswitch_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 79
    .local v2, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .local p1, "uri":Landroid/net/Uri;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p1, v5}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$2;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    iput v5, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$getFileMetadata$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .end local p1    # "uri":Landroid/net/Uri;
    if-ne p1, v1, :cond_1

    .line 78
    return-object v1

    .line 79
    :cond_1
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 104
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readFile-0E7RQCE(Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$1;

    iget v1, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$1;

    invoke-direct {v0, p0, p3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$1;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object p3, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$1;->result:Ljava/lang/Object;

    .local p3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 36
    iget v2, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$1;->label:I

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
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p3

    goto :goto_1

    :pswitch_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 39
    .local v2, "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .local p1, "uri":Landroid/net/Uri;
    .local p2, "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p1, p2, v5}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$2;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    iput v5, v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFile$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v2    # "this":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "options":Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadOptions;
    if-ne p1, v1, :cond_1

    .line 36
    return-object v1

    .line 39
    :cond_1
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 46
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readFileInChunks(Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;)Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "options"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
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

    .line 61
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFileInChunks$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFileInChunks$1;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/IONFILEReadInChunksOptions;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 69
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 70
    new-instance v2, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFileInChunks$2;

    invoke-direct {v2, p0, p1, v1}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper$readFileInChunks$2;-><init>(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEContentHelper;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
