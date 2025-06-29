.class final Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onNewTagList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->onNewTagList(Ljava/lang/Object;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $atosTags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onNewTagList$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;

    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onNewTagList$1;->$atosTags:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onNewTagList$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->access$getTrackAdapter$p(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onNewTagList$1;->$atosTags:Ljava/util/Collection;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->refresh(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
