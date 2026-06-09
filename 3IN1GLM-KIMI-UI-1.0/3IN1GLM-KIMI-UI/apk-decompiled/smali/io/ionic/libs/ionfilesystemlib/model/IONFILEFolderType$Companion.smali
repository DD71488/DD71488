.class public final Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;
.super Ljava/lang/Object;
.source "IONFILEFolderType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIONFILEFolderType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IONFILEFolderType.kt\nio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,40:1\n295#2:41\n1755#2,3:42\n296#2:45\n434#3:46\n507#3,5:47\n*S KotlinDebug\n*F\n+ 1 IONFILEFolderType.kt\nio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion\n*L\n25#1:41\n26#1:42,3\n25#1:45\n37#1:46\n37#1:47,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0015\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;",
        "",
        "()V",
        "aliasMatches",
        "",
        "alias",
        "",
        "compare",
        "coerceFolderAlias",
        "coerceFolderAlias$IONFilesystemLib_release",
        "fromStringAlias",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;",
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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;-><init>()V

    return-void
.end method

.method private final aliasMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "compare"    # Ljava/lang/String;

    .line 33
    invoke-virtual {p0, p1}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;->coerceFolderAlias$IONFilesystemLib_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;->coerceFolderAlias$IONFilesystemLib_release(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final coerceFolderAlias$IONFilesystemLib_release(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "alias"    # Ljava/lang/String;

    const-string v0, "alias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    move-object v0, p1

    .local v0, "$this$filter$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 46
    .local v1, "$i$f$filter":I
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "$this$filterTo$iv$iv":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v3, Ljava/lang/Appendable;

    .local v3, "destination$iv$iv":Ljava/lang/Appendable;
    const/4 v4, 0x0

    .line 47
    .local v4, "$i$f$filterTo":I
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_1

    .line 48
    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 49
    .local v7, "element$iv$iv":C
    move v8, v7

    .local v8, "it":C
    const/4 v9, 0x0

    .line 37
    .local v9, "$i$a$-filter-IONFILEFolderType$Companion$coerceFolderAlias$1":I
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    .line 49
    .end local v8    # "it":C
    .end local v9    # "$i$a$-filter-IONFILEFolderType$Companion$coerceFolderAlias$1":I
    if-eqz v10, :cond_0

    invoke-interface {v3, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 47
    .end local v7    # "element$iv$iv":C
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 51
    .end local v5    # "index$iv$iv":I
    :cond_1
    nop

    .end local v2    # "$this$filterTo$iv$iv":Ljava/lang/CharSequence;
    .end local v3    # "destination$iv$iv":Ljava/lang/Appendable;
    .end local v4    # "$i$f$filterTo":I
    move-object v2, v3

    check-cast v2, Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .end local v0    # "$this$filter$iv":Ljava/lang/String;
    .end local v1    # "$i$f$filter":I
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final fromStringAlias(Ljava/lang/String;)Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;
    .locals 16
    .param p1, "alias"    # Ljava/lang/String;

    .line 22
    move-object/from16 v0, p1

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 23
    goto/16 :goto_6

    .line 25
    :cond_2
    invoke-static {}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 41
    .local v5, "$i$f$firstOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    .local v8, "it":Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;
    const/4 v9, 0x0

    .line 26
    .local v9, "$i$a$-firstOrNull-IONFILEFolderType$Companion$fromStringAlias$1":I
    sget-object v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->Companion:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;

    invoke-virtual {v8}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->name()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v0, v11}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;->aliasMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v8}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->getAlternateNames$IONFilesystemLib_release()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 42
    .local v11, "$i$f$any":I
    instance-of v12, v10, Ljava/util/Collection;

    if-eqz v12, :cond_4

    move-object v12, v10

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    move v2, v3

    goto :goto_2

    .line 43
    :cond_4
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    .local v14, "alternateName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 27
    .local v15, "$i$a$-any-IONFILEFolderType$Companion$fromStringAlias$1$1":I
    sget-object v2, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;->Companion:Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;

    invoke-direct {v2, v0, v14}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType$Companion;->aliasMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 43
    .end local v14    # "alternateName":Ljava/lang/String;
    .end local v15    # "$i$a$-any-IONFILEFolderType$Companion$fromStringAlias$1$1":I
    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    .line 44
    .end local v13    # "element$iv":Ljava/lang/Object;
    :cond_6
    move v2, v3

    .end local v10    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$any":I
    :goto_2
    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v2, 0x1

    .line 26
    :goto_4
    nop

    .line 41
    .end local v8    # "it":Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;
    .end local v9    # "$i$a$-firstOrNull-IONFILEFolderType$Companion$fromStringAlias$1":I
    if-eqz v2, :cond_3

    move-object v4, v7

    goto :goto_5

    .line 45
    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_9
    nop

    .end local v1    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$firstOrNull":I
    :goto_5
    check-cast v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEFolderType;

    .line 30
    :goto_6
    return-object v4
.end method
