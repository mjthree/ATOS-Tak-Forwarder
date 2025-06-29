.class final Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onUpdateTag$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->onUpdateTag(Ljava/lang/Object;Lcom/toughstump/atos/sort/TagListEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $tagListEventArgs:Lcom/toughstump/atos/sort/TagListEventArgs;

.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Lcom/toughstump/atos/sort/TagListEventArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onUpdateTag$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;

    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onUpdateTag$1;->$tagListEventArgs:Lcom/toughstump/atos/sort/TagListEventArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onUpdateTag$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->access$getTrackAdapter$p(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onUpdateTag$1;->$tagListEventArgs:Lcom/toughstump/atos/sort/TagListEventArgs;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/toughstump/atos/sort/TagListEventArgs;->getIndex()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onUpdateTag$1;->$tagListEventArgs:Lcom/toughstump/atos/sort/TagListEventArgs;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/toughstump/atos/sort/TagListEventArgs;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->update(ILcom/toughstump/atos/state/AtosTag;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
