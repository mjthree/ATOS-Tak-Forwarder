.class final Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder$init$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->init(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $parent:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

.field final synthetic $viewModel:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder$init$4;->$parent:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder$init$4;->$viewModel:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder$init$4;->$parent:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder$init$4;->$viewModel:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->getDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;->showDetails(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
