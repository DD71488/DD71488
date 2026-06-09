.class public Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;
.super Lcom/getcapacitor/Plugin;
.source "KeepAwakePlugin.java"


# annotations
.annotation runtime Lcom/getcapacitor/annotation/CapacitorPlugin;
    name = "KeepAwake"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Wsd6DRLm_UU7gajROQj-WaD4ugM(Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;->lambda$keepAwake$0(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b8BJl8LyOsvGEHD3ZVBvOhAsMWw(Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;->lambda$isKeptAwake$2(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ibX0kj3_1dy9bmINdmOxgsCExLo(Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;->lambda$allowSleep$1(Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/getcapacitor/Plugin;-><init>()V

    return-void
.end method

.method private synthetic lambda$allowSleep$1(Lcom/getcapacitor/PluginCall;)V
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;

    .line 26
    invoke-virtual {p0}, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 27
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 28
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 29
    return-void
.end method

.method private synthetic lambda$isKeptAwake$2(Lcom/getcapacitor/PluginCall;)V
    .locals 4
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;

    .line 44
    invoke-virtual {p0}, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 45
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 47
    .local v1, "isKeptAwake":Z
    :goto_0
    new-instance v2, Lcom/getcapacitor/JSObject;

    invoke-direct {v2}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 48
    .local v2, "ret":Lcom/getcapacitor/JSObject;
    const-string v3, "isKeptAwake"

    invoke-virtual {v2, v3, v1}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Z)Lcom/getcapacitor/JSObject;

    .line 49
    invoke-virtual {p1, v2}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 50
    return-void
.end method

.method private synthetic lambda$keepAwake$0(Lcom/getcapacitor/PluginCall;)V
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;

    .line 17
    invoke-virtual {p0}, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 18
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 19
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 20
    return-void
.end method


# virtual methods
.method public allowSleep(Lcom/getcapacitor/PluginCall;)V
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    new-instance v1, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin$$ExternalSyntheticLambda1;-><init>(Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;Lcom/getcapacitor/PluginCall;)V

    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method

.method public isKeptAwake(Lcom/getcapacitor/PluginCall;)V
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    new-instance v1, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin$$ExternalSyntheticLambda2;-><init>(Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;Lcom/getcapacitor/PluginCall;)V

    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public isSupported(Lcom/getcapacitor/PluginCall;)V
    .locals 3
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 34
    new-instance v0, Lcom/getcapacitor/JSObject;

    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 35
    .local v0, "ret":Lcom/getcapacitor/JSObject;
    const-string v1, "isSupported"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Z)Lcom/getcapacitor/JSObject;

    .line 36
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 37
    return-void
.end method

.method public keepAwake(Lcom/getcapacitor/PluginCall;)V
    .locals 2
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    new-instance v1, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/getcapacitor/community/keepawake/KeepAwakePlugin$$ExternalSyntheticLambda0;-><init>(Lcom/getcapacitor/community/keepawake/KeepAwakePlugin;Lcom/getcapacitor/PluginCall;)V

    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 21
    return-void
.end method
