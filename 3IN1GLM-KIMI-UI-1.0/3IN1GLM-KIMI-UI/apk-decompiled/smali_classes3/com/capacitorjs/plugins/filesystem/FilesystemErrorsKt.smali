.class public final Lcom/capacitorjs/plugins/filesystem/FilesystemErrorsKt;
.super Ljava/lang/Object;
.source "FilesystemErrors.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "toFilesystemError",
        "Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;",
        "",
        "methodName",
        "",
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


# direct methods
.method public static final toFilesystemError(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;
    .locals 2
    .param p0, "$this$toFilesystemError"    # Ljava/lang/Throwable;
    .param p1, "methodName"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    nop

    .line 63
    instance-of v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnresolvableUri;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    move-object v1, p0

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnresolvableUri;

    invoke-virtual {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$UnresolvableUri;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->invalidPath(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    goto/16 :goto_1

    .line 65
    :cond_0
    instance-of v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    move-object v1, p0

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;

    invoke-virtual {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DoesNotExist;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->doesNotExist(Ljava/lang/String;Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    goto/16 :goto_1

    .line 67
    :cond_1
    instance-of v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    .line 68
    nop

    .line 69
    nop

    .line 67
    const-string v1, "content:// URIs"

    invoke-virtual {v0, p1, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->notAllowed(Ljava/lang/String;Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    goto/16 :goto_1

    .line 72
    :cond_2
    instance-of v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    .line 73
    nop

    .line 74
    nop

    .line 72
    const-string v1, "directories"

    invoke-virtual {v0, p1, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->notAllowed(Ljava/lang/String;Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    goto/16 :goto_1

    .line 77
    :cond_3
    instance-of v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForFiles;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    .line 78
    nop

    .line 79
    nop

    .line 77
    const-string v1, "files, only directories are supported"

    invoke-virtual {v0, p1, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->notAllowed(Ljava/lang/String;Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    goto/16 :goto_1

    .line 82
    :cond_4
    instance-of v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CreateFailed$AlreadyExists;

    if-eqz v0, :cond_5

    .line 83
    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    move-object v1, p0

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CreateFailed$AlreadyExists;

    invoke-virtual {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CreateFailed$AlreadyExists;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->directoryCreationAlreadyExists(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    goto :goto_1

    .line 85
    :cond_5
    instance-of v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CreateFailed$NoParentDirectory;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->getMissingParentDirectories()Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    goto :goto_1

    .line 87
    :cond_6
    instance-of v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$DeleteFailed$CannotDeleteChildren;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->getCannotDeleteChildren()Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    goto :goto_1

    .line 89
    :cond_7
    instance-of v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$MixingFilesAndDirectories;

    if-nez v0, :cond_d

    .line 90
    instance-of v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$LocalToContent;

    if-nez v0, :cond_d

    .line 91
    instance-of v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$SourceAndDestinationContent;

    if-eqz v0, :cond_8

    goto :goto_0

    .line 94
    :cond_8
    instance-of v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$DestinationDirectoryExists;

    if-eqz v0, :cond_9

    .line 95
    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    move-object v1, p0

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$DestinationDirectoryExists;

    invoke-virtual {v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$DestinationDirectoryExists;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->directoryCreationAlreadyExists(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    goto :goto_1

    .line 97
    :cond_9
    instance-of v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$CopyRenameFailed$NoParentDirectory;

    if-eqz v0, :cond_a

    .line 98
    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->getMissingParentDirectories()Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    goto :goto_1

    .line 100
    :cond_a
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {v0, p1}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->invalidInputMethod(Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    goto :goto_1

    .line 102
    :cond_b
    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v1, ""

    :cond_c
    invoke-virtual {v0, p1, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->operationFailed(Ljava/lang/String;Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    goto :goto_1

    .line 92
    :cond_d
    :goto_0
    sget-object v0, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->INSTANCE:Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;

    const-string v1, "the provided source and destinations"

    invoke-virtual {v0, p1, v1}, Lcom/capacitorjs/plugins/filesystem/FilesystemErrors;->notAllowed(Ljava/lang/String;Ljava/lang/String;)Lcom/capacitorjs/plugins/filesystem/FilesystemErrors$ErrorInfo;

    move-result-object v0

    .line 103
    :goto_1
    return-object v0
.end method
