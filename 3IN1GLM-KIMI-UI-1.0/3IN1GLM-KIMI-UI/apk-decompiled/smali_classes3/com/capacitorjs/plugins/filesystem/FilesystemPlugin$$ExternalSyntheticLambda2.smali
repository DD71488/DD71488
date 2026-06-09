.class public final synthetic Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/getcapacitor/plugin/util/HttpRequestHandler$ProgressEmitter;


# instance fields
.field public final synthetic f$0:Lcom/getcapacitor/PluginCall;

.field public final synthetic f$1:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda2;->f$0:Lcom/getcapacitor/PluginCall;

    iput-object p2, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda2;->f$1:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda2;->f$0:Lcom/getcapacitor/PluginCall;

    iget-object v1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda2;->f$1:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    invoke-static {v0, v1, p1, p2}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->$r8$lambda$x6USKT_A6Sn0aEXoq6A1qtI_SsI(Lcom/getcapacitor/PluginCall;Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
