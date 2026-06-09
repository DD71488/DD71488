.class public final enum Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;
.super Ljava/lang/Enum;
.source "IONFILEUri.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;",
        "",
        "(Ljava/lang/String;I)V",
        "FILE",
        "DIRECTORY",
        "UNKNOWN",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

.field public static final enum DIRECTORY:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

.field public static final enum FILE:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

.field public static final enum UNKNOWN:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;


# direct methods
.method private static final synthetic $values()[Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;
    .locals 3

    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->FILE:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    sget-object v1, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->DIRECTORY:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    sget-object v2, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->UNKNOWN:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    filled-new-array {v0, v1, v2}, [Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    const-string v1, "FILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->FILE:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    .line 59
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    const-string v1, "DIRECTORY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->DIRECTORY:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    .line 60
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->UNKNOWN:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    invoke-static {}, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->$values()[Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v0

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->$VALUES:[Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->$VALUES:[Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;
    .locals 1

    const-class v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    return-object v0
.end method

.method public static values()[Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;
    .locals 1

    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->$VALUES:[Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    return-object v0
.end method
