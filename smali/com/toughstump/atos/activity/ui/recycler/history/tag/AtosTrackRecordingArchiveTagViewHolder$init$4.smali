.class final Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder$init$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->init(Ljava/util/Map$Entry;Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $parent:Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;

.field final synthetic $viewModel:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/record/db/RecordingTrackSummary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/record/db/RecordingTrackSummary;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder$init$4;->$parent:Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;

    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder$init$4;->$viewModel:Ljava/util/Map$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder$init$4;->$parent:Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder$init$4;->$viewModel:Ljava/util/Map$Entry;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->exportCsv(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
