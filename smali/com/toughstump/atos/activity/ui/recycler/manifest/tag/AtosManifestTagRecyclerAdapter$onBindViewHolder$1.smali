.class final Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->onBindViewHolder(Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $manifestTagViewModel:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;

.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$onBindViewHolder$1;->this$0:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;

    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$onBindViewHolder$1;->$manifestTagViewModel:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$onBindViewHolder$1;->this$0:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->getParent()Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$onBindViewHolder$1;->$manifestTagViewModel:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->getManifestTag()Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->showEditTagDialog$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease(Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
