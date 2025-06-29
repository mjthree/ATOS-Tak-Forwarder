.class public final Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$1;
.super Lcom/toughstump/atos/activity/ui/spin/AtosItemSelectedListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->setUpSpinners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$1;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/spin/AtosItemSelectedListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$1;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$getUserInteraction$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$1;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-static {p1, p2}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$setUserInteraction$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;Z)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/toughstump/atos/AtosTrackType;->values()[Lcom/toughstump/atos/AtosTrackType;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    add-int/lit8 p3, p3, -0x1

    .line 21
    .line 22
    aget-object v3, p1, p3

    .line 23
    .line 24
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$1;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$getManifestTag$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getType()Lcom/toughstump/atos/AtosTrackType;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-ne v3, p1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$1;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$getManifestTag$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/16 v6, 0x1b

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-static/range {v0 .. v7}, Lcom/toughstump/atos/manifest/AtosManifestTag;->copy$default(Lcom/toughstump/atos/manifest/AtosManifestTag;ILjava/lang/String;Lcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;Ljava/util/Map;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p1, p2}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$setManifestTag$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$1;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 58
    .line 59
    sget-object p2, Lcom/toughstump/atos/manifest/AtosManifestTag;->Companion:Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$getManifestTag$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {p2, p3}, Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;->restoreDefaultAttributes(Lcom/toughstump/atos/manifest/AtosManifestTag;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-static {p1, p2}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$setManifestTag$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$1;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$resetAttributes(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$1;->this$0:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->access$updateTypeButtonText(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
