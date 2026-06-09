.class public final enum Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;
.super Ljava/lang/Enum;
.source "IONFILEFolderType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0012B!\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007R\u001a\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;",
        "",
        "inExternalStorage",
        "",
        "alternateNames",
        "",
        "",
        "(Ljava/lang/String;IZLjava/util/List;)V",
        "getAlternateNames$IONFilesystemLib_release",
        "()Ljava/util/List;",
        "getInExternalStorage",
        "()Z",
        "INTERNAL_CACHE",
        "INTERNAL_FILES",
        "EXTERNAL_CACHE",
        "EXTERNAL_FILES",
        "EXTERNAL_STORAGE",
        "DOCUMENTS",
        "Companion",
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

.field private static final synthetic $VALUES:[Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

.field public static final Companion:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;

.field public static final enum DOCUMENTS:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

.field public static final enum EXTERNAL_CACHE:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

.field public static final enum EXTERNAL_FILES:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

.field public static final enum EXTERNAL_STORAGE:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

.field public static final enum INTERNAL_CACHE:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

.field public static final enum INTERNAL_FILES:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;


# instance fields
.field private final alternateNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inExternalStorage:Z


# direct methods
.method private static final synthetic $values()[Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;
    .locals 6

    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->INTERNAL_CACHE:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    sget-object v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->INTERNAL_FILES:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    sget-object v2, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->EXTERNAL_CACHE:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    sget-object v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->EXTERNAL_FILES:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    sget-object v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->EXTERNAL_STORAGE:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    sget-object v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->DOCUMENTS:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    filled-new-array/range {v0 .. v5}, [Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 14
    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    const/4 v7, 0x2

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "CACHE"

    const/4 v8, 0x0

    aput-object v2, v1, v8

    const-string v2, "TEMPORARY"

    const/4 v9, 0x1

    aput-object v2, v1, v9

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v1, "INTERNAL_CACHE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;-><init>(Ljava/lang/String;IZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->INTERNAL_CACHE:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    .line 15
    new-instance v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "DATA"

    aput-object v2, v1, v8

    const-string v2, "LIBRARY"

    aput-object v2, v1, v9

    const-string v2, "FILES"

    aput-object v2, v1, v7

    const/4 v2, 0x3

    const-string v3, "LIBRARY_NO_CLOUD"

    aput-object v3, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-string v11, "INTERNAL_FILES"

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {v10 .. v16}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;-><init>(Ljava/lang/String;IZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->INTERNAL_FILES:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    .line 16
    new-instance v11, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    const-string v1, "CACHE_EXTERNAL"

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v12, "EXTERNAL_CACHE"

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v17}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;-><init>(Ljava/lang/String;IZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v11, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->EXTERNAL_CACHE:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    .line 17
    new-instance v12, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "EXTERNAL"

    aput-object v2, v1, v8

    const-string v2, "FILES_EXTERNAL"

    aput-object v2, v1, v9

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v13, "EXTERNAL_FILES"

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v18}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;-><init>(Ljava/lang/String;IZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v12, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->EXTERNAL_FILES:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    .line 18
    new-instance v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    const-string v2, "sdcard"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "EXTERNAL_STORAGE"

    invoke-direct {v1, v3, v0, v9, v2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;-><init>(Ljava/lang/String;IZLjava/util/List;)V

    sput-object v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->EXTERNAL_STORAGE:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    .line 19
    new-instance v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    const/4 v15, 0x2

    const/16 v16, 0x0

    const-string v11, "DOCUMENTS"

    const/4 v12, 0x5

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;-><init>(Ljava/lang/String;IZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->DOCUMENTS:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    invoke-static {}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->$values()[Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    move-result-object v0

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->$VALUES:[Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->$VALUES:[Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->Companion:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/util/List;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "inExternalStorage"    # Z
    .param p4, "alternateNames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-boolean p3, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->inExternalStorage:Z

    .line 12
    iput-object p4, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->alternateNames:Ljava/util/List;

    .line 10
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 11
    const/4 p3, 0x0

    .line 10
    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    .line 12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;-><init>(Ljava/lang/String;IZLjava/util/List;)V

    .line 39
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;
    .locals 1

    const-class v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    return-object v0
.end method

.method public static values()[Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;
    .locals 1

    sget-object v0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->$VALUES:[Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    return-object v0
.end method


# virtual methods
.method public final getAlternateNames$IONFilesystemLib_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->alternateNames:Ljava/util/List;

    return-object v0
.end method

.method public final getInExternalStorage()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->inExternalStorage:Z

    return v0
.end method
