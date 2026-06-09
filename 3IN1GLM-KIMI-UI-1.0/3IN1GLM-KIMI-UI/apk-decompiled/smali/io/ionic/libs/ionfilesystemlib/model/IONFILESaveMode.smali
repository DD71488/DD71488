.class public final enum Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;
.super Ljava/lang/Enum;
.source "IONFILESaveOptions.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;",
        "",
        "(Ljava/lang/String;I)V",
        "WRITE",
        "APPEND",
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

.field private static final synthetic $VALUES:[Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

.field public static final enum APPEND:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

.field public static final enum WRITE:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;


# direct methods
.method private static final synthetic $values()[Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;
    .locals 2

    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;->WRITE:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    sget-object v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;->APPEND:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    filled-new-array {v0, v1}, [Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    const-string v1, "WRITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;->WRITE:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    .line 32
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    const-string v1, "APPEND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;->APPEND:Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    invoke-static {}, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;->$values()[Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    move-result-object v0

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;->$VALUES:[Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;->$VALUES:[Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;
    .locals 1

    const-class v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    return-object v0
.end method

.method public static values()[Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;
    .locals 1

    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;->$VALUES:[Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ionic/libs/ionfilesystemlib/model/IONFILESaveMode;

    return-object v0
.end method
