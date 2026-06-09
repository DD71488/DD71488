.class public final synthetic Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda1;->f$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin$$ExternalSyntheticLambda1;->f$0:Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;

    invoke-static {v0}, Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;->$r8$lambda$ApUKa4ER8WcXeEi2ddb4MUQH-9E(Lcom/capacitorjs/plugins/filesystem/FilesystemPlugin;)Lio/ionic/libs/ionfilesystemlib/IONFILEController;

    move-result-object v0

    return-object v0
.end method
