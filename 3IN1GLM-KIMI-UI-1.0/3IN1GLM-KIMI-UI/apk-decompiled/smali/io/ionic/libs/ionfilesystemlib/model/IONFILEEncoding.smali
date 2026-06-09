.class public abstract Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;
.super Ljava/lang/Object;
.source "IONFILEEncoding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;,
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Companion;,
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00042\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0006\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;",
        "",
        "()V",
        "Base64",
        "Companion",
        "WithCharset",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;",
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


# static fields
.field public static final Companion:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Companion;

.field private static final Default:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;

.field private static final DefaultCharset:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;->Companion:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Companion;

    .line 11
    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;->INSTANCE:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;->Default:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;

    .line 12
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;-><init>(Ljava/nio/charset/Charset;)V

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;->DefaultCharset:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;
    .locals 1

    .line 5
    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;->Default:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$Base64;

    return-object v0
.end method

.method public static final synthetic access$getDefaultCharset$cp()Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;
    .locals 1

    .line 5
    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding;->DefaultCharset:Lio/ionic/libs/ionfilesystemlib/model/IONFILEEncoding$WithCharset;

    return-object v0
.end method
