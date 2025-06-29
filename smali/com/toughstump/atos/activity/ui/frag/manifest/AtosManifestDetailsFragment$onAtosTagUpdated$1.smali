.class final Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onAtosTagUpdated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->onAtosTagUpdated(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $atosTag:Lcom/toughstump/atos/state/AtosTag;

.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onAtosTagUpdated$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;

    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onAtosTagUpdated$1;->$atosTag:Lcom/toughstump/atos/state/AtosTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onAtosTagUpdated$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;->access$getManifestTagAdapter$p(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment$onAtosTagUpdated$1;->$atosTag:Lcom/toughstump/atos/state/AtosTag;

    .line 8
    .line 9
    const/16 v8, 0x3f

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    invoke-static/range {v1 .. v9}, Lcom/toughstump/atos/state/AtosTag;->copy$default(Lcom/toughstump/atos/state/AtosTag;Lcom/toughstump/atos/kot/AtosKotEvent;Lcom/toughstump/atos/state/model/AtosTagState;ZZLjava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lcom/toughstump/atos/state/AtosTag;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->update(Lcom/toughstump/atos/state/AtosTag;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
