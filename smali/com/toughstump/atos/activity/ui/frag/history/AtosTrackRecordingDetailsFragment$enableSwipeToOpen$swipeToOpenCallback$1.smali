.class public final Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment$enableSwipeToOpen$swipeToOpenCallback$1;
.super Lcom/toughstump/atos/activity/ui/recycler/swipe/SwipeToOpenCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->enableSwipeToOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment$enableSwipeToOpen$swipeToOpenCallback$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;

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
    instance-of p2, p1, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    check-cast p1, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->getViewModel()Ljava/util/Map$Entry;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment$enableSwipeToOpen$swipeToOpenCallback$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;

    .line 21
    .line 22
    invoke-static {p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->access$getArchiveDatabase$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;)Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getAllTracksByUid(Ljava/lang/String;)Ljava/util/Collection;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment$enableSwipeToOpen$swipeToOpenCallback$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->access$getParent$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;)Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->showDataPointOrHistoryMapFragment$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease(Ljava/lang/String;Ljava/util/Collection;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
