.class final Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->setUpSpinners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$2;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$2;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$setUserInteraction$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$2;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$getTypeSpinner$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string p1, "typeSpinner"

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;->performClick()Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
