.class public final Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$enableSwipeToOpen$swipeToOpenCallback$1;
.super Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->enableSwipeToOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$enableSwipeToOpen$swipeToOpenCallback$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    const-string p2, "viewHolder"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of p2, p1, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    check-cast p1, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->getDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$enableSwipeToOpen$swipeToOpenCallback$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->showDetails(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$enableSwipeToOpen$swipeToOpenCallback$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->access$getArchiveAdapter$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
