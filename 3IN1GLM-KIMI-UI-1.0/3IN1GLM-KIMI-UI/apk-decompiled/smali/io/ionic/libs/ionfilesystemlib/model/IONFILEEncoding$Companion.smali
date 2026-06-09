.class public final Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Companion;
.super Ljava/lang/Object;
.source "IONFILEEncoding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eR\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Companion;",
        "",
        "()V",
        "Default",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;",
        "getDefault$IONFilesystemLib_release",
        "()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;",
        "DefaultCharset",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;",
        "getDefaultCharset$IONFilesystemLib_release",
        "()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;",
        "fromEncodingName",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;",
        "encodingName",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromEncodingName(Ljava/lang/String;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;
    .locals 3
    .param p1, "encodingName"    # Ljava/lang/String;

    .line 15
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Companion;->getDefault$IONFilesystemLib_release()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    goto :goto_3

    .line 18
    :cond_2
    nop

    .line 19
    :try_start_0
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "forName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;-><init>(Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Companion;->getDefaultCharset$IONFilesystemLib_release()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    check-cast v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;

    .line 23
    :goto_3
    return-object v0
.end method

.method public final getDefault$IONFilesystemLib_release()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;
    .locals 1

    .line 11
    invoke-static {}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;->access$getDefault$cp()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultCharset$IONFilesystemLib_release()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;
    .locals 1

    .line 12
    invoke-static {}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;->access$getDefaultCharset$cp()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;

    move-result-object v0

    return-object v0
.end method
