.class public final Lio/ionic/libs/ionfilesystemlib/helper/common/IONFILEUriResolveExtensionsKt;
.super Ljava/lang/Object;
.source "IONFILEUriResolveExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIONFILEUriResolveExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IONFILEUriResolveExtensions.kt\nio/ionic/libs/ionfilesystemlib/helper/common/IONFILEUriResolveExtensionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n37#1:66\n60#1,3:67\n64#1:71\n38#1,6:72\n37#1:78\n60#1,3:79\n64#1:83\n38#1,6:84\n60#1,3:90\n64#1:94\n60#1,3:95\n64#1:99\n1#2:70\n1#2:82\n1#2:93\n1#2:98\n1#2:100\n*S KotlinDebug\n*F\n+ 1 IONFILEUriResolveExtensions.kt\nio/ionic/libs/ionfilesystemlib/helper/common/IONFILEUriResolveExtensionsKt\n*L\n11#1:66\n11#1:67,3\n11#1:71\n11#1:72,6\n24#1:78\n24#1:79,3\n24#1:83\n24#1:84,6\n37#1:90,3\n37#1:94\n48#1:95,3\n48#1:99\n11#1:70\n24#1:82\n37#1:93\n48#1:98\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001aB\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00010\u0007H\u0080H\u00a2\u0006\u0002\u0010\t\u001aB\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00010\u0007H\u0080H\u00a2\u0006\u0002\u0010\t\u001aB\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00010\u0007H\u0080H\u00a2\u0006\u0002\u0010\t\u001aB\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00010\u0007H\u0080H\u00a2\u0006\u0002\u0010\t\u001aB\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00010\u0007H\u0080H\u00a2\u0006\u0002\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "useUriIfResolved",
        "Lkotlin/Result;",
        "T",
        "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;",
        "uri",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
        "onResolved",
        "Lkotlin/Function1;",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
        "(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "useUriIfResolvedAsLocal",
        "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;",
        "useUriIfResolvedAsLocalDirectory",
        "useUriIfResolvedAsLocalFile",
        "useUriIfResolvedAsNonDirectory",
        "IONFilesystemLib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic useUriIfResolved(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$useUriIfResolved"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .param p1, "uri"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .param p2, "onResolved"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
            "+",
            "Lkotlin/Result<",
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    .line 60
    .local v0, "$i$f$useUriIfResolved":I
    nop

    .line 61
    instance-of v1, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    goto :goto_0

    .line 62
    :cond_0
    instance-of v1, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    invoke-virtual {p0, v1, p3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    check-cast v1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .line 60
    :goto_0
    nop

    .line 64
    .local v1, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 62
    .end local v1    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_1
    move-object v1, v2

    check-cast v1, Ljava/lang/Throwable;

    .line 100
    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 62
    .local v2, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1":I
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1":I
    :cond_2
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method

.method public static final synthetic useUriIfResolvedAsLocal(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$useUriIfResolvedAsLocal"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .param p1, "uri"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .param p2, "onResolved"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;",
            "+",
            "Lkotlin/Result<",
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    .local v0, "$i$f$useUriIfResolvedAsLocal":I
    move-object v1, p0

    .local v1, "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$f$useUriIfResolved":I
    nop

    .line 91
    instance-of v3, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    goto :goto_0

    .line 92
    :cond_0
    instance-of v3, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    invoke-virtual {v1, v3, p3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_2

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .line 90
    :goto_0
    nop

    .line 94
    .local v3, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    move-object v4, v3

    check-cast v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .local v4, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v5, 0x0

    .line 38
    .local v5, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2":I
    instance-of v6, v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v6, :cond_1

    .line 39
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Result;

    invoke-virtual {v6}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 41
    :cond_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;

    invoke-direct {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;-><init>()V

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v6}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 38
    :goto_1
    nop

    .end local v4    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local v5    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2":I
    invoke-static {v6}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v4

    .line 94
    move-object v5, v4

    check-cast v5, Lkotlin/Result;

    invoke-virtual {v4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 92
    .end local v3    # "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_2
    move-object v3, v4

    check-cast v3, Ljava/lang/Throwable;

    .line 93
    .local v3, "it$iv":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 92
    .local v4, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv":I
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 94
    .end local v1    # "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local v2    # "$i$f$useUriIfResolved":I
    .end local v3    # "it$iv":Ljava/lang/Throwable;
    .end local v4    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv":I
    :goto_2
    move-object v1, v4

    check-cast v1, Ljava/lang/Object;

    .line 43
    return-object v4

    .line 92
    .restart local v1    # "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .restart local v2    # "$i$f$useUriIfResolved":I
    :cond_3
    new-instance v3, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v3
.end method

.method public static final synthetic useUriIfResolvedAsLocalDirectory(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p0, "$this$useUriIfResolvedAsLocalDirectory"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .param p1, "uri"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .param p2, "onResolved"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;",
            "+",
            "Lkotlin/Result<",
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    .local v0, "$i$f$useUriIfResolvedAsLocalDirectory":I
    move-object v1, p0

    .local v1, "$this$useUriIfResolvedAsLocal$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v2, 0x0

    .line 66
    .local v2, "$i$f$useUriIfResolvedAsLocal":I
    move-object v3, v1

    .local v3, "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v4, 0x0

    .line 67
    .local v4, "$i$f$useUriIfResolved":I
    nop

    .line 68
    instance-of v5, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v5, :cond_0

    move-object v5, p1

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    goto :goto_0

    .line 69
    :cond_0
    instance-of v5, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v5, :cond_4

    move-object v5, p1

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    invoke-virtual {v3, v5, p3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Result;

    invoke-virtual {v5}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_3

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .line 67
    :goto_0
    nop

    .line 71
    .local v5, "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    move-object v6, v5

    check-cast v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .local v6, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v7, 0x0

    .line 72
    .local v7, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    instance-of v8, v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v8, :cond_2

    .line 73
    move-object v8, v6

    check-cast v8, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .local v8, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    const/4 v9, 0x0

    .line 14
    .local v9, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2":I
    invoke-virtual {v8}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getType()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v10

    sget-object v11, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->FILE:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    if-eq v10, v11, :cond_1

    .line 15
    invoke-interface {p2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/Result;

    invoke-virtual {v10}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v10

    goto :goto_1

    .line 17
    :cond_1
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForFiles;

    invoke-direct {v10}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForFiles;-><init>()V

    check-cast v10, Ljava/lang/Throwable;

    invoke-static {v10}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 14
    :goto_1
    nop

    .end local v8    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local v9    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalDirectory$2":I
    invoke-static {v10}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v8

    .line 73
    move-object v9, v8

    check-cast v9, Lkotlin/Result;

    invoke-virtual {v8}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    .line 75
    :cond_2
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v8, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;

    invoke-direct {v8}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;-><init>()V

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v8}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 72
    :goto_2
    nop

    .end local v6    # "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local v7    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    invoke-static {v8}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v6

    .line 71
    move-object v7, v6

    check-cast v7, Lkotlin/Result;

    invoke-virtual {v6}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v6

    goto :goto_3

    .line 69
    .end local v5    # "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_3
    move-object v5, v6

    check-cast v5, Ljava/lang/Throwable;

    .line 70
    .local v5, "it$iv$iv":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 69
    .local v6, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv":I
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 71
    .end local v3    # "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local v4    # "$i$f$useUriIfResolved":I
    .end local v5    # "it$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv":I
    :goto_3
    move-object v3, v6

    check-cast v3, Ljava/lang/Object;

    .line 77
    nop

    .end local v1    # "$this$useUriIfResolvedAsLocal$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local v2    # "$i$f$useUriIfResolvedAsLocal":I
    move-object v1, v6

    check-cast v1, Ljava/lang/Object;

    .line 19
    return-object v6

    .line 69
    .restart local v1    # "$this$useUriIfResolvedAsLocal$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .restart local v2    # "$i$f$useUriIfResolvedAsLocal":I
    .restart local v3    # "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .restart local v4    # "$i$f$useUriIfResolved":I
    :cond_4
    new-instance v5, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v5}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v5
.end method

.method public static final synthetic useUriIfResolvedAsLocalFile(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p0, "$this$useUriIfResolvedAsLocalFile"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .param p1, "uri"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .param p2, "onResolved"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;",
            "+",
            "Lkotlin/Result<",
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 24
    .local v0, "$i$f$useUriIfResolvedAsLocalFile":I
    move-object v1, p0

    .local v1, "$this$useUriIfResolvedAsLocal$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v2, 0x0

    .line 78
    .local v2, "$i$f$useUriIfResolvedAsLocal":I
    move-object v3, v1

    .local v3, "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v4, 0x0

    .line 79
    .local v4, "$i$f$useUriIfResolved":I
    nop

    .line 80
    instance-of v5, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v5, :cond_0

    move-object v5, p1

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    goto :goto_0

    .line 81
    :cond_0
    instance-of v5, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v5, :cond_4

    move-object v5, p1

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    invoke-virtual {v3, v5, p3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Result;

    invoke-virtual {v5}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_3

    check-cast v5, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .line 79
    :goto_0
    nop

    .line 83
    .local v5, "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    move-object v6, v5

    check-cast v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .local v6, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v7, 0x0

    .line 84
    .local v7, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    instance-of v8, v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v8, :cond_2

    .line 85
    move-object v8, v6

    check-cast v8, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    .local v8, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    const/4 v9, 0x0

    .line 27
    .local v9, "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2":I
    invoke-virtual {v8}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getType()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v10

    sget-object v11, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->DIRECTORY:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    if-eq v10, v11, :cond_1

    .line 28
    invoke-interface {p2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/Result;

    invoke-virtual {v10}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v10

    goto :goto_1

    .line 30
    :cond_1
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v10, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;

    invoke-direct {v10}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;-><init>()V

    check-cast v10, Ljava/lang/Throwable;

    invoke-static {v10}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 27
    :goto_1
    nop

    .end local v8    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;
    .end local v9    # "$i$a$-useUriIfResolvedAsLocal-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocalFile$2":I
    invoke-static {v10}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v8

    .line 85
    move-object v9, v8

    check-cast v9, Lkotlin/Result;

    invoke-virtual {v8}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    .line 87
    :cond_2
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v8, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;

    invoke-direct {v8}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForContentScheme;-><init>()V

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v8}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 84
    :goto_2
    nop

    .end local v6    # "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local v7    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsLocal$2$iv":I
    invoke-static {v8}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v6

    .line 83
    move-object v7, v6

    check-cast v7, Lkotlin/Result;

    invoke-virtual {v6}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v6

    goto :goto_3

    .line 81
    .end local v5    # "resolvedUri$iv$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_3
    move-object v5, v6

    check-cast v5, Ljava/lang/Throwable;

    .line 82
    .local v5, "it$iv$iv":Ljava/lang/Throwable;
    const/4 v6, 0x0

    .line 81
    .local v6, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv":I
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 83
    .end local v3    # "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local v4    # "$i$f$useUriIfResolved":I
    .end local v5    # "it$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv$iv":I
    :goto_3
    move-object v3, v6

    check-cast v3, Ljava/lang/Object;

    .line 89
    nop

    .end local v1    # "$this$useUriIfResolvedAsLocal$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local v2    # "$i$f$useUriIfResolvedAsLocal":I
    move-object v1, v6

    check-cast v1, Ljava/lang/Object;

    .line 32
    return-object v6

    .line 81
    .restart local v1    # "$this$useUriIfResolvedAsLocal$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .restart local v2    # "$i$f$useUriIfResolvedAsLocal":I
    .restart local v3    # "$this$useUriIfResolved$iv$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .restart local v4    # "$i$f$useUriIfResolved":I
    :cond_4
    new-instance v5, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v5}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v5
.end method

.method public static final synthetic useUriIfResolvedAsNonDirectory(Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p0, "$this$useUriIfResolvedAsNonDirectory"    # Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .param p1, "uri"    # Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;
    .param p2, "onResolved"    # Lkotlin/jvm/functions/Function1;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;",
            "+",
            "Lkotlin/Result<",
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    .local v0, "$i$f$useUriIfResolvedAsNonDirectory":I
    move-object v1, p0

    .local v1, "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    const/4 v2, 0x0

    .line 95
    .local v2, "$i$f$useUriIfResolved":I
    nop

    .line 96
    instance-of v3, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    goto :goto_0

    .line 97
    :cond_0
    instance-of v3, p1, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    if-eqz v3, :cond_4

    move-object v3, p1

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;

    invoke-virtual {v1, v3, p3}, Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;->resolveUri-gIAlu-s(Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Unresolved;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_3

    check-cast v3, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .line 95
    :goto_0
    nop

    .line 99
    .local v3, "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    move-object v4, v3

    check-cast v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;

    .local v4, "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    const/4 v5, 0x0

    .line 49
    .local v5, "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2":I
    instance-of v6, v4, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;

    invoke-virtual {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved$Local;->getType()Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    move-result-object v6

    sget-object v7, Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;->DIRECTORY:Lio/ionic/libs/ionfilesystemlib/model/LocalUriType;

    if-eq v6, v7, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v6, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;

    invoke-direct {v6}, Lio/ionic/libs/ionfilesystemlib/model/IONFILEExceptions$NotSupportedForDirectory;-><init>()V

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v6}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 50
    :cond_2
    :goto_1
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Result;

    invoke-virtual {v6}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v6

    .line 49
    :goto_2
    nop

    .end local v4    # "resolvedUri":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    .end local v5    # "$i$a$-useUriIfResolved-IONFILEUriResolveExtensionsKt$useUriIfResolvedAsNonDirectory$2":I
    invoke-static {v6}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v4

    .line 99
    move-object v5, v4

    check-cast v5, Lkotlin/Result;

    invoke-virtual {v4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    .line 97
    .end local v3    # "resolvedUri$iv":Lio/ionic/libs/ionfilesystemlib/model/IONFILEUri$Resolved;
    :cond_3
    move-object v3, v4

    check-cast v3, Ljava/lang/Throwable;

    .line 98
    .local v3, "it$iv":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 97
    .local v4, "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv":I
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 99
    .end local v1    # "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .end local v2    # "$i$f$useUriIfResolved":I
    .end local v3    # "it$iv":Ljava/lang/Throwable;
    .end local v4    # "$i$a$-getOrElse-IONFILEUriResolveExtensionsKt$useUriIfResolved$resolvedUri$1$iv":I
    :goto_3
    move-object v1, v4

    check-cast v1, Ljava/lang/Object;

    .line 54
    return-object v4

    .line 97
    .restart local v1    # "$this$useUriIfResolved$iv":Lio/ionic/libs/ionfilesystemlib/helper/IONFILEUriHelper;
    .restart local v2    # "$i$f$useUriIfResolved":I
    :cond_4
    new-instance v3, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v3
.end method
