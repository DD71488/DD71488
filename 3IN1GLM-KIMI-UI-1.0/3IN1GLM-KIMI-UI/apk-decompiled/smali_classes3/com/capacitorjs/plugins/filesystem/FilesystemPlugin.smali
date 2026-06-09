.class public final Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
.super Lcom/getcapacitor/Plugin;
.source "FilesystemPlugin.kt"


# annotations
.annotation runtime Lcom/getcapacitor/annotation/CapacitorPlugin;
    name = "Filesystem"
    permissions = {
        .subannotation Lcom/getcapacitor/annotation/Permission;
            alias = "publicStorage"
            strings = {
                "android.permission.READ_EXTERNAL_STORAGE",
                "android.permission.WRITE_EXTERNAL_STORAGE"
            }
        .end subannotation,
        .subannotation Lcom/getcapacitor/annotation/Permission;
            alias = "publicStorageAboveAPI29"
            strings = {
                "android.permission.READ_EXTERNAL_STORAGE"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilesystemPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilesystemPlugin.kt\ncom/capacitorjs/plugins/filesystem/FilesystemPlugin\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,412:1\n1#2:413\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0014J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010 \u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010!\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\"\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010#\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0017J\u0010\u0010$\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0017J\u0010\u0010%\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0003JP\u0010&\u001a\u00020\u00122\u0006\u0010\'\u001a\u00020(2\u0006\u0010\u0015\u001a\u00020\u001621\u0010)\u001a-\u0008\u0001\u0012\u0013\u0012\u00110+\u00a2\u0006\u000c\u0008,\u0012\u0008\u0008-\u0012\u0004\u0008\u0008(.\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120/\u0012\u0006\u0012\u0004\u0018\u0001000*H\u0002\u00a2\u0006\u0002\u00101Jm\u0010&\u001a\u00020\u00122\u0006\u00102\u001a\u00020(2\u0006\u00103\u001a\u00020(2\u0006\u0010\u0015\u001a\u00020\u00162F\u0010)\u001aB\u0008\u0001\u0012\u0013\u0012\u00110+\u00a2\u0006\u000c\u0008,\u0012\u0008\u0008-\u0012\u0004\u0008\u0008(5\u0012\u0013\u0012\u00110+\u00a2\u0006\u000c\u0008,\u0012\u0008\u0008-\u0012\u0004\u0008\u0008(6\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120/\u0012\u0006\u0012\u0004\u0018\u00010004H\u0002\u00a2\u0006\u0002\u00107J\u0010\u00108\u001a\u0002092\u0006\u0010:\u001a\u000209H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006;"
    }
    d2 = {
        "Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;",
        "Lcom/getcapacitor/Plugin;",
        "<init>",
        "()V",
        "legacyImplementation",
        "Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope$delegate",
        "Lkotlin/Lazy;",
        "controller",
        "Lio/ionic/libs/ionfilesystemlib/IONFILEController;",
        "getController",
        "()Lio/ionic/libs/ionfilesystemlib/IONFILEController;",
        "controller$delegate",
        "load",
        "",
        "handleOnDestroy",
        "readFile",
        "call",
        "Lcom/getcapacitor/PluginCall;",
        "readFileInChunks",
        "writeFile",
        "appendFile",
        "deleteFile",
        "mkdir",
        "rmdir",
        "readdir",
        "getUri",
        "stat",
        "rename",
        "copy",
        "downloadFile",
        "checkPermissions",
        "requestPermissions",
        "permissionCallback",
        "runWithPermission",
        "uri",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;",
        "onPermissionGranted",
        "Lkotlin/Function2;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
        "Lkotlin/ParameterName;",
        "name",
        "resolvedUri",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V",
        "fromUri",
        "toUri",
        "Lkotlin/Function3;",
        "resolvedSourceUri",
        "resolvedDestinationUri",
        "(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function3;)V",
        "isStoragePermissionGranted",
        "",
        "shouldRequestAboveAndroid10",
        "capacitor-filesystem_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final controller$delegate:Lkotlin/Lazy;

.field private final coroutineScope$delegate:Lkotlin/Lazy;

.field private legacyImplementation:Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;


# direct methods
.method public static synthetic $r8$lambda$ApUKa4ER8WcXeEi2ddb4MUQH-9E(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .locals 0

    invoke-static {p0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->controller_delegate$lambda$0(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f-Sab4XSrRVJaO7GvgkXwp7YjR0()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    invoke-static {}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->coroutineScope_delegate$lambda$0()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$x6USKT_A6Sn0aEXoq6A1qtI_SsI(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->downloadFile$lambda$0(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/getcapacitor/Plugin;-><init>()V

    .line 57
    new-instance v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->coroutineScope$delegate:Lkotlin/Lazy;

    .line 58
    new-instance v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->controller$delegate:Lkotlin/Lazy;

    .line 36
    return-void
.end method

.method public static final synthetic access$getController(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .locals 1
    .param p0, "$this"    # Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .line 36
    invoke-direct {p0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->getController()Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getCoroutineScope(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)Lkotlinx/coroutines/CoroutineScope;
    .locals 1
    .param p0, "$this"    # Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .line 36
    invoke-direct {p0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getLegacyImplementation$p(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;
    .locals 1
    .param p0, "$this"    # Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .line 36
    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->legacyImplementation:Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;

    return-object v0
.end method

.method public static final synthetic access$isStoragePermissionGranted(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Z)Z
    .locals 1
    .param p0, "$this"    # Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .param p1, "shouldRequestAboveAndroid10"    # Z

    .line 36
    invoke-direct {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->isStoragePermissionGranted(Z)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$requestAllPermissions(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .param p1, "p0"    # Lcom/getcapacitor/PluginCall;
    .param p2, "p1"    # Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->requestAllPermissions(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$runWithPermission(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p0, "$this"    # Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .param p1, "uri"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .param p2, "call"    # Lcom/getcapacitor/PluginCall;
    .param p3, "onPermissionGranted"    # Lkotlin/jvm/functions/Function2;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final controller_delegate$lambda$0(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .locals 3
    .param p0, "this$0"    # Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .line 58
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    invoke-virtual {p0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/ionic/libs/ionfilesystemlib/IONFILEController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static final coroutineScope_delegate$lambda$0()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 57
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method private static final downloadFile$lambda$0(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "$call"    # Lcom/getcapacitor/PluginCall;
    .param p1, "this$0"    # Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .param p2, "bytes"    # Ljava/lang/Integer;
    .param p3, "contentLength"    # Ljava/lang/Integer;

    .line 259
    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 260
    .local v0, "ret":Lcom/getcapacitor/JSObject;
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 261
    const-string v1, "bytes"

    invoke-virtual {v0, v1, p2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 262
    const-string v1, "contentLength"

    invoke-virtual {v0, v1, p3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 263
    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->notifyListeners(Ljava/lang/String;Lcom/getcapacitor/JSObject;)V

    .line 264
    return-void
.end method

.method private final getController()Lio/ionic/libs/ionfilesystemlib/IONFILEController;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->controller$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    return-object v0
.end method

.method private final getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->coroutineScope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method private final isStoragePermissionGranted(Z)Z
    .locals 4
    .param p1, "shouldRequestAboveAndroid10"    # Z

    .line 404
    nop

    .line 405
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v3, 0x0

    if-lt v0, v1, :cond_2

    .line 408
    if-eqz p1, :cond_4

    const-string v0, "publicStorageAboveAPI29"

    invoke-virtual {p0, v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->getPermissionState(Ljava/lang/String;)Lcom/getcapacitor/PermissionState;

    move-result-object v0

    sget-object v1, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    .line 410
    :cond_2
    const-string v0, "publicStorage"

    invoke-virtual {p0, v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->getPermissionState(Ljava/lang/String;)Lcom/getcapacitor/PermissionState;

    move-result-object v0

    sget-object v1, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 411
    :cond_4
    :goto_0
    return v2
.end method

.method private final permissionCallback(Lcom/getcapacitor/PluginCall;)V
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/annotation/PermissionCallback;
    .end annotation

    .line 314
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->isStoragePermissionGranted(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User denied storage permission"

    invoke-static {v0, v1}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->getFilePermissionsDenied()Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 317
    return-void

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "deleteFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 325
    :cond_1
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->deleteFile(Lcom/getcapacitor/PluginCall;)V

    goto/16 :goto_0

    .line 320
    :sswitch_1
    const-string v1, "downloadFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 335
    :cond_2
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->downloadFile(Lcom/getcapacitor/PluginCall;)V

    goto/16 :goto_0

    .line 320
    :sswitch_2
    const-string v1, "readdir"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 332
    :cond_3
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->readdir(Lcom/getcapacitor/PluginCall;)V

    goto/16 :goto_0

    .line 320
    :sswitch_3
    const-string v1, "readFileInChunks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    .line 331
    :cond_4
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->readFileInChunks(Lcom/getcapacitor/PluginCall;)V

    goto/16 :goto_0

    .line 320
    :sswitch_4
    const-string v1, "rmdir"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    .line 327
    :cond_5
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->rmdir(Lcom/getcapacitor/PluginCall;)V

    goto/16 :goto_0

    .line 320
    :sswitch_5
    const-string v1, "mkdir"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 326
    :cond_6
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->mkdir(Lcom/getcapacitor/PluginCall;)V

    goto :goto_0

    .line 320
    :sswitch_6
    const-string v1, "stat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 334
    :cond_7
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->stat(Lcom/getcapacitor/PluginCall;)V

    goto :goto_0

    .line 320
    :sswitch_7
    const-string v1, "copy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    .line 329
    :cond_8
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->copy(Lcom/getcapacitor/PluginCall;)V

    goto :goto_0

    .line 320
    :sswitch_8
    const-string v1, "readFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    .line 330
    :cond_9
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->readFile(Lcom/getcapacitor/PluginCall;)V

    goto :goto_0

    .line 320
    :sswitch_9
    const-string v1, "rename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    .line 328
    :cond_a
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->rename(Lcom/getcapacitor/PluginCall;)V

    goto :goto_0

    .line 320
    :sswitch_a
    const-string v1, "getUri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    .line 333
    :cond_b
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->getUri(Lcom/getcapacitor/PluginCall;)V

    goto :goto_0

    .line 320
    :sswitch_b
    const-string v1, "writeFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :sswitch_c
    const-string v1, "appendFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    .line 324
    :cond_c
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->writeFile(Lcom/getcapacitor/PluginCall;)V

    .line 337
    :cond_d
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f8ae44a -> :sswitch_c
        -0x53d94605 -> :sswitch_b
        -0x4a7789ca -> :sswitch_a
        -0x37b4c8c2 -> :sswitch_9
        -0x33bbf7ce -> :sswitch_8
        0x2eaf75 -> :sswitch_7
        0x360654 -> :sswitch_6
        0x6322a2f -> :sswitch_5
        0x6798872 -> :sswitch_4
        0x33820f7d -> :sswitch_3
        0x4065bb37 -> :sswitch_2
        0x4214ae24 -> :sswitch_1
        0x692721c7 -> :sswitch_0
    .end sparse-switch
.end method

.method private final runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V
    .locals 7
    .param p1, "uri"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .param p2, "call"    # Lcom/getcapacitor/PluginCall;
    .param p3, "onPermissionGranted"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;",
            "Lcom/getcapacitor/PluginCall;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 355
    invoke-direct {p0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .end local p2    # "call":Lcom/getcapacitor/PluginCall;
    .end local p3    # "onPermissionGranted":Lkotlin/jvm/functions/Function2;
    .local v3, "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .local v4, "call":Lcom/getcapacitor/PluginCall;
    .local v5, "onPermissionGranted":Lkotlin/jvm/functions/Function2;
    invoke-direct/range {v1 .. v6}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .end local v3    # "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .end local v4    # "call":Lcom/getcapacitor/PluginCall;
    .end local v5    # "onPermissionGranted":Lkotlin/jvm/functions/Function2;
    .restart local p1    # "uri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .restart local p2    # "call":Lcom/getcapacitor/PluginCall;
    .restart local p3    # "onPermissionGranted":Lkotlin/jvm/functions/Function2;
    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 370
    return-void
.end method

.method private final runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function3;)V
    .locals 6
    .param p1, "fromUri"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .param p2, "toUri"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .param p3, "call"    # Lcom/getcapacitor/PluginCall;
    .param p4, "onPermissionGranted"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;",
            "Lcom/getcapacitor/PluginCall;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 390
    new-instance v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p2    # "toUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .end local p3    # "call":Lcom/getcapacitor/PluginCall;
    .end local p4    # "onPermissionGranted":Lkotlin/jvm/functions/Function3;
    .local v2, "toUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    .local v3, "call":Lcom/getcapacitor/PluginCall;
    .local v4, "onPermissionGranted":Lkotlin/jvm/functions/Function3;
    invoke-direct/range {v0 .. v5}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$runWithPermission$2;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, p1, v3, v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V

    .line 395
    return-void
.end method


# virtual methods
.method public final appendFile(Lcom/getcapacitor/PluginCall;)V
    .locals 4
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    nop

    .line 130
    :try_start_0
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    move-result-object v0

    const-string v1, "append"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/JSObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->writeFile(Lcom/getcapacitor/PluginCall;)V

    .line 139
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Lorg/json/JSONException;
    invoke-virtual {p0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tried to set `append` in `PluginCall`, but got exception"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    nop

    .line 134
    sget-object v1, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getMethodName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    invoke-virtual {v1, v2, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->operationFailed(Ljava/lang/String;Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v1

    .line 133
    invoke-static {p1, v1}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 136
    return-void
.end method

.method public checkPermissions(Lcom/getcapacitor/PluginCall;)V
    .locals 6
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->isStoragePermissionGranted(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    new-instance v1, Lcom/getcapacitor/JSObject;

    invoke-direct {v1}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 413
    move-object v2, v1

    .local v2, "it":Lcom/getcapacitor/JSObject;
    const/4 v3, 0x0

    .line 297
    .local v3, "$i$a$-also-FilesystemPlugin$checkPermissions$1":I
    const-string v4, "publicStorage"

    const-string v5, "granted"

    invoke-virtual {v2, v4, v5}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .end local v2    # "it":Lcom/getcapacitor/JSObject;
    .end local v3    # "$i$a$-also-FilesystemPlugin$checkPermissions$1":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendSuccess$default(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/JSObject;ZILjava/lang/Object;)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-super {p0, p1}, Lcom/getcapacitor/Plugin;->checkPermissions(Lcom/getcapacitor/PluginCall;)V

    .line 301
    :goto_0
    return-void
.end method

.method public final copy(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 234
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodOptionsKt;->getDoubleIONFILEUri(Lcom/getcapacitor/PluginCall;)Lcom/capacitorjs/plugins/filesystem/DoubleUri;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .local v0, "$this$copy_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    const/4 v1, 0x0

    .line 235
    .local v1, "$i$a$-run-FilesystemPlugin$copy$input$1":I
    sget-object v2, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMethodName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->invalidInputMethod(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 236
    return-void

    .end local v0    # "$this$copy_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .end local v1    # "$i$a$-run-FilesystemPlugin$copy$input$1":I
    :cond_0
    nop

    .line 238
    .local v0, "input":Lcom/capacitorjs/plugins/filesystem/DoubleUri;
    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/DoubleUri;->getFromUri()Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object v1

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/DoubleUri;->getToUri()Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object v2

    new-instance v3, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$copy$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$copy$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function3;)V

    .line 243
    return-void
.end method

.method public final deleteFile(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 143
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodOptionsKt;->getSingleIONFILEUri(Lcom/getcapacitor/PluginCall;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .local v0, "$this$deleteFile_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    const/4 v1, 0x0

    .line 144
    .local v1, "$i$a$-run-FilesystemPlugin$deleteFile$input$1":I
    sget-object v2, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMethodName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->invalidInputMethod(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 145
    return-void

    .end local v0    # "$this$deleteFile_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .end local v1    # "$i$a$-run-FilesystemPlugin$deleteFile$input$1":I
    :cond_0
    nop

    .line 147
    .local v0, "input":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    new-instance v1, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$deleteFile$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$deleteFile$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v0, p1, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V

    .line 152
    return-void
.end method

.method public final downloadFile(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use @capacitor/file-transfer plugin instead"
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    nop

    .line 249
    :try_start_0
    const-string v0, "directory"

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "directory":Ljava/lang/String;
    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->legacyImplementation:Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;->isPublicDirectory(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 252
    invoke-direct {p0, v2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->isStoragePermissionGranted(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    const-string v1, "permissionCallback"

    invoke-virtual {p0, p1, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->requestAllPermissions(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 255
    return-void

    .line 258
    :cond_1
    new-instance v1, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda2;-><init>(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)V

    .line 266
    .local v1, "emitter":Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;
    iget-object v2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->legacyImplementation:Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;

    if-eqz v2, :cond_2

    .line 267
    nop

    .line 268
    iget-object v3, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->bridge:Lcom/getcapacitor/Bridge;

    const-string v4, "bridge"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    nop

    .line 270
    new-instance v4, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$downloadFile$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$downloadFile$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    check-cast v4, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;

    .line 266
    invoke-virtual {v2, p1, v3, v1, v4}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;->downloadFile(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/Bridge;Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation$FilesystemDownloadCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 289
    .end local v0    # "directory":Ljava/lang/String;
    .end local v1    # "emitter":Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error downloading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 292
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public final getUri(Lcom/getcapacitor/PluginCall;)V
    .locals 7
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 195
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodOptionsKt;->getSingleIONFILEUri(Lcom/getcapacitor/PluginCall;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .local v0, "$this$getUri_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    const/4 v1, 0x0

    .line 196
    .local v1, "$i$a$-run-FilesystemPlugin$getUri$input$1":I
    sget-object v2, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMethodName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->invalidInputMethod(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 197
    return-void

    .end local v0    # "$this$getUri_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .end local v1    # "$i$a$-run-FilesystemPlugin$getUri$input$1":I
    :cond_0
    nop

    .line 199
    .local v0, "input":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    invoke-direct {p0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$getUri$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$getUri$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 204
    return-void
.end method

.method protected handleOnDestroy()V
    .locals 3

    .line 66
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->handleOnDestroy()V

    .line 67
    invoke-direct {p0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method public load()V
    .locals 3

    .line 61
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->load()V

    .line 62
    new-instance v0, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;

    invoke-virtual {p0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->legacyImplementation:Lcom/capacitorjs/plugins/filesystem/LegacyFilesystemImplementation;

    .line 63
    return-void
.end method

.method public final mkdir(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 156
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodOptionsKt;->getSingleUriWithRecursiveOptions(Lcom/getcapacitor/PluginCall;)Lcom/capacitorjs/plugins/filesystem/SingleUriWithRecursiveOptions;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .local v0, "$this$mkdir_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    const/4 v1, 0x0

    .line 157
    .local v1, "$i$a$-run-FilesystemPlugin$mkdir$input$1":I
    sget-object v2, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMethodName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->invalidInputMethod(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 158
    return-void

    .end local v0    # "$this$mkdir_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .end local v1    # "$i$a$-run-FilesystemPlugin$mkdir$input$1":I
    :cond_0
    nop

    .line 160
    .local v0, "input":Lcom/capacitorjs/plugins/filesystem/SingleUriWithRecursiveOptions;
    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/SingleUriWithRecursiveOptions;->getUri()Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object v1

    new-instance v2, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$mkdir$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$mkdir$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/capacitorjs/plugins/filesystem/SingleUriWithRecursiveOptions;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v1, p1, v2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V

    .line 165
    return-void
.end method

.method public final readFile(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 72
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodOptionsKt;->getReadFileOptions(Lcom/getcapacitor/PluginCall;)Lcom/capacitorjs/plugins/filesystem/ReadFileOptions;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .local v0, "$this$readFile_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    const/4 v1, 0x0

    .line 73
    .local v1, "$i$a$-run-FilesystemPlugin$readFile$input$1":I
    sget-object v2, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMethodName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->invalidInputMethod(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 74
    return-void

    .end local v0    # "$this$readFile_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .end local v1    # "$i$a$-run-FilesystemPlugin$readFile$input$1":I
    :cond_0
    nop

    .line 76
    .local v0, "input":Lcom/capacitorjs/plugins/filesystem/ReadFileOptions;
    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/ReadFileOptions;->getUri()Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object v1

    new-instance v2, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFile$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFile$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/capacitorjs/plugins/filesystem/ReadFileOptions;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v1, p1, v2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V

    .line 81
    return-void
.end method

.method public final readFileInChunks(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
        returnType = "callback"
    .end annotation

    .line 85
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodOptionsKt;->getReadFileInChunksOptions(Lcom/getcapacitor/PluginCall;)Lcom/capacitorjs/plugins/filesystem/ReadFileInChunksOptions;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .local v0, "$this$readFileInChunks_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    const/4 v1, 0x0

    .line 86
    .local v1, "$i$a$-run-FilesystemPlugin$readFileInChunks$input$1":I
    sget-object v2, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMethodName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->invalidInputMethod(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 87
    return-void

    .end local v0    # "$this$readFileInChunks_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .end local v1    # "$i$a$-run-FilesystemPlugin$readFileInChunks$input$1":I
    :cond_0
    nop

    .line 89
    .local v0, "input":Lcom/capacitorjs/plugins/filesystem/ReadFileInChunksOptions;
    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/ReadFileInChunksOptions;->getUri()Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object v1

    new-instance v2, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readFileInChunks$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/capacitorjs/plugins/filesystem/ReadFileInChunksOptions;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v1, p1, v2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V

    .line 104
    return-void
.end method

.method public final readdir(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 182
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodOptionsKt;->getSingleIONFILEUri(Lcom/getcapacitor/PluginCall;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .local v0, "$this$readdir_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    const/4 v1, 0x0

    .line 183
    .local v1, "$i$a$-run-FilesystemPlugin$readdir$input$1":I
    sget-object v2, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMethodName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->invalidInputMethod(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 184
    return-void

    .end local v0    # "$this$readdir_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .end local v1    # "$i$a$-run-FilesystemPlugin$readdir$input$1":I
    :cond_0
    nop

    .line 186
    .local v0, "input":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    new-instance v1, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readdir$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$readdir$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v0, p1, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V

    .line 191
    return-void
.end method

.method public final rename(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 221
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodOptionsKt;->getDoubleIONFILEUri(Lcom/getcapacitor/PluginCall;)Lcom/capacitorjs/plugins/filesystem/DoubleUri;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .local v0, "$this$rename_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    const/4 v1, 0x0

    .line 222
    .local v1, "$i$a$-run-FilesystemPlugin$rename$input$1":I
    sget-object v2, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMethodName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->invalidInputMethod(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 223
    return-void

    .end local v0    # "$this$rename_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .end local v1    # "$i$a$-run-FilesystemPlugin$rename$input$1":I
    :cond_0
    nop

    .line 225
    .local v0, "input":Lcom/capacitorjs/plugins/filesystem/DoubleUri;
    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/DoubleUri;->getFromUri()Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object v1

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/DoubleUri;->getToUri()Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object v2

    new-instance v3, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rename$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function3;)V

    .line 230
    return-void
.end method

.method public requestPermissions(Lcom/getcapacitor/PluginCall;)V
    .locals 6
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->isStoragePermissionGranted(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    new-instance v1, Lcom/getcapacitor/JSObject;

    invoke-direct {v1}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 413
    move-object v2, v1

    .local v2, "it":Lcom/getcapacitor/JSObject;
    const/4 v3, 0x0

    .line 306
    .local v3, "$i$a$-also-FilesystemPlugin$requestPermissions$1":I
    const-string v4, "publicStorage"

    const-string v5, "granted"

    invoke-virtual {v2, v4, v5}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .end local v2    # "it":Lcom/getcapacitor/JSObject;
    .end local v3    # "$i$a$-also-FilesystemPlugin$requestPermissions$1":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendSuccess$default(Lcom/getcapacitor/PluginCall;Lcom/getcapacitor/JSObject;ZILjava/lang/Object;)V

    goto :goto_0

    .line 308
    :cond_0
    invoke-super {p0, p1}, Lcom/getcapacitor/Plugin;->requestPermissions(Lcom/getcapacitor/PluginCall;)V

    .line 310
    :goto_0
    return-void
.end method

.method public final rmdir(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 169
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodOptionsKt;->getSingleUriWithRecursiveOptions(Lcom/getcapacitor/PluginCall;)Lcom/capacitorjs/plugins/filesystem/SingleUriWithRecursiveOptions;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .local v0, "$this$rmdir_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    const/4 v1, 0x0

    .line 170
    .local v1, "$i$a$-run-FilesystemPlugin$rmdir$input$1":I
    sget-object v2, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMethodName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->invalidInputMethod(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 171
    return-void

    .end local v0    # "$this$rmdir_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .end local v1    # "$i$a$-run-FilesystemPlugin$rmdir$input$1":I
    :cond_0
    nop

    .line 173
    .local v0, "input":Lcom/capacitorjs/plugins/filesystem/SingleUriWithRecursiveOptions;
    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/SingleUriWithRecursiveOptions;->getUri()Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object v1

    new-instance v2, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rmdir$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$rmdir$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/capacitorjs/plugins/filesystem/SingleUriWithRecursiveOptions;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v1, p1, v2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V

    .line 178
    return-void
.end method

.method public final stat(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 208
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodOptionsKt;->getSingleIONFILEUri(Lcom/getcapacitor/PluginCall;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .local v0, "$this$stat_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    const/4 v1, 0x0

    .line 209
    .local v1, "$i$a$-run-FilesystemPlugin$stat$input$1":I
    sget-object v2, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMethodName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->invalidInputMethod(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 210
    return-void

    .end local v0    # "$this$stat_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .end local v1    # "$i$a$-run-FilesystemPlugin$stat$input$1":I
    :cond_0
    nop

    .line 212
    .local v0, "input":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;
    new-instance v1, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$stat$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$stat$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v0, p1, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V

    .line 217
    return-void
.end method

.method public final writeFile(Lcom/getcapacitor/PluginCall;)V
    .locals 5
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 108
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemMethodOptionsKt;->getWriteFileOptions(Lcom/getcapacitor/PluginCall;)Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    .local v0, "$this$writeFile_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    const/4 v1, 0x0

    .line 109
    .local v1, "$i$a$-run-FilesystemPlugin$writeFile$input$1":I
    sget-object v2, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getMethodName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getMethodName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->invalidInputMethod(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/capacitorjs/plugins/filesystem/PluginResultExtensionsKt;->sendError(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;)V

    .line 110
    return-void

    .end local v0    # "$this$writeFile_u24lambda_u240":Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;
    .end local v1    # "$i$a$-run-FilesystemPlugin$writeFile$input$1":I
    :cond_0
    nop

    .line 112
    .local v0, "input":Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;
    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;->getUri()Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    move-result-object v1

    new-instance v2, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$writeFile$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$writeFile$1;-><init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Lcom/capacitorjs/plugins/filesystem/WriteFileOptions;Lcom/getcapacitor/PluginCall;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v1, p1, v2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->runWithPermission(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lcom/getcapacitor/PluginCall;Lkotlin/jvm/functions/Function2;)V

    .line 125
    return-void
.end method
