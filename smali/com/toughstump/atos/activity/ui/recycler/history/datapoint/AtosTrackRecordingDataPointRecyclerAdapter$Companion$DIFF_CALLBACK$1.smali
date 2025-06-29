.class public final Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter$Companion$DIFF_CALLBACK$1;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/toughstump/atos/record/db/TrackRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/toughstump/atos/record/db/TrackRecord;Lcom/toughstump/atos/record/db/TrackRecord;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/toughstump/atos/record/db/TrackRecord;

    check-cast p2, Lcom/toughstump/atos/record/db/TrackRecord;

    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter$Companion$DIFF_CALLBACK$1;->areContentsTheSame(Lcom/toughstump/atos/record/db/TrackRecord;Lcom/toughstump/atos/record/db/TrackRecord;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/toughstump/atos/record/db/TrackRecord;Lcom/toughstump/atos/record/db/TrackRecord;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getTagId()I

    move-result p1

    invoke-virtual {p2}, Lcom/toughstump/atos/record/db/TrackRecord;->getTagId()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/toughstump/atos/record/db/TrackRecord;

    check-cast p2, Lcom/toughstump/atos/record/db/TrackRecord;

    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter$Companion$DIFF_CALLBACK$1;->areItemsTheSame(Lcom/toughstump/atos/record/db/TrackRecord;Lcom/toughstump/atos/record/db/TrackRecord;)Z

    move-result p1

    return p1
.end method
