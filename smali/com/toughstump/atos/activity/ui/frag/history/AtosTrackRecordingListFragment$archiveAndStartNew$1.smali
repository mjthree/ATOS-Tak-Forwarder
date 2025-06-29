.class final Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$archiveAndStartNew$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->archiveAndStartNew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $oldDataBase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$archiveAndStartNew$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$archiveAndStartNew$1;->$oldDataBase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$archiveAndStartNew$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->access$getArchiveAdapter$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$archiveAndStartNew$1;->$oldDataBase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;->update(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$archiveAndStartNew$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->access$getRecyclerView$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "recyclerView"

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
