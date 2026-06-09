.class public final Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;
.super Ljava/lang/Object;
.source "FilesystemMethodResults.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilesystemMethodResults.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilesystemMethodResults.kt\ncom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n1#2:66\n1563#3:67\n1634#3,3:68\n*S KotlinDebug\n*F\n+ 1 FilesystemMethodResults.kt\ncom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt\n*L\n41#1:67\n41#1:68,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0001\u001a\u0018\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010\u001a\u0014\u0010\u0011\u001a\u00020\n2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u001a\n\u0010\u0015\u001a\u00020\n*\u00020\u0014\u001a\n\u0010\u0015\u001a\u00020\n*\u00020\u0016\u001a\u000e\u0010\u0017\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "OUTPUT_DATA",
        "",
        "OUTPUT_NAME",
        "OUTPUT_TYPE",
        "OUTPUT_SIZE",
        "OUTPUT_MODIFIED_TIME",
        "OUTPUT_CREATED_TIME",
        "OUTPUT_URI",
        "OUTPUT_FILES",
        "createReadResultObject",
        "Lcom/getcapacitor/JSObject;",
        "readData",
        "createWriteResultObject",
        "uri",
        "Landroid/net/Uri;",
        "mode",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;",
        "createReadDirResultObject",
        "list",
        "",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
        "toResultObject",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
        "createUriResultObject",
        "capacitor-filesystem_debug"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final OUTPUT_CREATED_TIME:Ljava/lang/String;

.field private static final OUTPUT_DATA:Ljava/lang/String;

.field private static final OUTPUT_FILES:Ljava/lang/String;

.field private static final OUTPUT_MODIFIED_TIME:Ljava/lang/String;

.field private static final OUTPUT_NAME:Ljava/lang/String;

.field private static final OUTPUT_SIZE:Ljava/lang/String;

.field private static final OUTPUT_TYPE:Ljava/lang/String;

.field private static final OUTPUT_URI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "data"

    sput-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_DATA:Ljava/lang/String;

    .line 12
    const-string v0, "name"

    sput-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_NAME:Ljava/lang/String;

    .line 13
    const-string v0, "type"

    sput-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_TYPE:Ljava/lang/String;

    .line 14
    const-string v0, "size"

    sput-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_SIZE:Ljava/lang/String;

    .line 15
    const-string v0, "mtime"

    sput-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_MODIFIED_TIME:Ljava/lang/String;

    .line 16
    const-string v0, "ctime"

    sput-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_CREATED_TIME:Ljava/lang/String;

    .line 17
    const-string v0, "uri"

    sput-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_URI:Ljava/lang/String;

    .line 18
    const-string v0, "files"

    sput-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_FILES:Ljava/lang/String;

    return-void
.end method

.method public static final createReadDirResultObject(Ljava/util/List;)Lcom/getcapacitor/JSObject;
    .locals 13
    .param p0, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;",
            ">;)",
            "Lcom/getcapacitor/JSObject;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    move-object v1, v0

    .local v1, "it":Lcom/getcapacitor/JSObject;
    const/4 v2, 0x0

    .line 41
    .local v2, "$i$a$-also-FilesystemMethodResultsKt$createReadDirResultObject$1":I
    sget-object v3, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_FILES:Ljava/lang/String;

    move-object v4, p0

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 67
    .local v5, "$i$f$map":I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 68
    .local v8, "$i$f$mapTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 69
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;

    .local v11, "child":Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;
    const/4 v12, 0x0

    .line 41
    .local v12, "$i$a$-map-FilesystemMethodResultsKt$createReadDirResultObject$1$1":I
    invoke-static {v11}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->toResultObject(Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;)Lcom/getcapacitor/JSObject;

    move-result-object v11

    .line 69
    .end local v11    # "child":Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;
    .end local v12    # "$i$a$-map-FilesystemMethodResultsKt$createReadDirResultObject$1$1":I
    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo":I
    check-cast v6, Ljava/util/List;

    .line 67
    nop

    .end local v4    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$map":I
    check-cast v6, Ljava/util/Collection;

    .line 41
    new-instance v4, Lcom/getcapacitor/JSArray;

    invoke-direct {v4, v6}, Lcom/getcapacitor/JSArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3, v4}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 42
    nop

    .line 40
    .end local v1    # "it":Lcom/getcapacitor/JSObject;
    .end local v2    # "$i$a$-also-FilesystemMethodResultsKt$createReadDirResultObject$1":I
    nop

    .line 42
    return-object v0
.end method

.method public static final createReadResultObject(Ljava/lang/String;)Lcom/getcapacitor/JSObject;
    .locals 4
    .param p0, "readData"    # Ljava/lang/String;

    const-string v0, "readData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    move-object v1, v0

    .line 66
    .local v1, "it":Lcom/getcapacitor/JSObject;
    const/4 v2, 0x0

    .line 24
    .local v2, "$i$a$-also-FilesystemMethodResultsKt$createReadResultObject$1":I
    sget-object v3, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_DATA:Ljava/lang/String;

    invoke-virtual {v1, v3, p0}, Lcom/getcapacitor/JSObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .end local v1    # "it":Lcom/getcapacitor/JSObject;
    .end local v2    # "$i$a$-also-FilesystemMethodResultsKt$createReadResultObject$1":I
    return-object v0
.end method

.method public static final createUriResultObject(Landroid/net/Uri;)Lcom/getcapacitor/JSObject;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    const-string v0, "uri"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    move-object v1, v0

    .line 66
    .local v1, "it":Lcom/getcapacitor/JSObject;
    const/4 v2, 0x0

    .line 65
    .local v2, "$i$a$-also-FilesystemMethodResultsKt$createUriResultObject$1":I
    sget-object v3, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_URI:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .end local v1    # "it":Lcom/getcapacitor/JSObject;
    .end local v2    # "$i$a$-also-FilesystemMethodResultsKt$createUriResultObject$1":I
    return-object v0
.end method

.method public static final createWriteResultObject(Landroid/net/Uri;Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;)Lcom/getcapacitor/JSObject;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "mode"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    const-string v0, "uri"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;->APPEND:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    if-ne p1, v0, :cond_0

    .line 32
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p0}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->createUriResultObject(Landroid/net/Uri;)Lcom/getcapacitor/JSObject;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0
.end method

.method public static final toResultObject(Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;)Lcom/getcapacitor/JSObject;
    .locals 6
    .param p0, "$this$toResultObject"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    move-object v1, v0

    .local v1, "$this$toResultObject_u24lambda_u240":Lcom/getcapacitor/JSObject;
    const/4 v2, 0x0

    .line 48
    .local v2, "$i$a$-apply-FilesystemMethodResultsKt$toResultObject$1":I
    sget-object v3, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 49
    sget-object v3, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_TYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;->getType()Lio/ionic/libs/ionfilesystemlib/model/IONFILEFileType;

    move-result-object v4

    instance-of v4, v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFileType$Directory;

    if-eqz v4, :cond_0

    const-string v4, "directory"

    goto :goto_0

    :cond_0
    const-string v4, "file"

    :goto_0
    invoke-virtual {v1, v3, v4}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 50
    sget-object v3, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_SIZE:Ljava/lang/String;

    invoke-virtual {p0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;->getSize()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;J)Lcom/getcapacitor/JSObject;

    .line 51
    sget-object v3, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_MODIFIED_TIME:Ljava/lang/String;

    invoke-virtual {p0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;->getLastModifiedTimestamp()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;J)Lcom/getcapacitor/JSObject;

    .line 52
    sget-object v3, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_CREATED_TIME:Ljava/lang/String;

    invoke-virtual {p0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;->getCreatedTimestamp()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 53
    sget-object v3, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->OUTPUT_URI:Ljava/lang/String;

    invoke-virtual {p0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEMetadataResult;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 54
    nop

    .line 47
    .end local v1    # "$this$toResultObject_u24lambda_u240":Lcom/getcapacitor/JSObject;
    .end local v2    # "$i$a$-apply-FilesystemMethodResultsKt$toResultObject$1":I
    nop

    .line 54
    return-object v0
.end method

.method public static final toResultObject(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;)Lcom/getcapacitor/JSObject;
    .locals 1
    .param p0, "$this$toResultObject"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodResultsKt;->createUriResultObject(Landroid/net/Uri;)Lcom/getcapacitor/JSObject;

    move-result-object v0

    return-object v0
.end method
