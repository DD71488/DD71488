.class public final Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEBuildConfig;
.super Ljava/lang/Object;
.source "IONFILEBuildConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEBuildConfig;",
        "",
        "()V",
        "getAndroidSdkVersionCode",
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


# static fields
.field public static final INSTANCE:Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEBuildConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEBuildConfig;

    invoke-direct {v0}, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEBuildConfig;-><init>()V

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEBuildConfig;->INSTANCE:Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEBuildConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAndroidSdkVersionCode()I
    .locals 1

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
