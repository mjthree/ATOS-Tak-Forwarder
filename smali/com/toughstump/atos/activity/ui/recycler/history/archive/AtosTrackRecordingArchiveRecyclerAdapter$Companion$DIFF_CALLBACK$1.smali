.class public final Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter$Companion$DIFF_CALLBACK$1;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;",
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
.method public areContentsTheSame(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->getDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    move-result-object p1

    invoke-virtual {p2}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->getDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    check-cast p2, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter$Companion$DIFF_CALLBACK$1;->areContentsTheSame(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->getDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getDbFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->getDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getDbFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    check-cast p2, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter$Companion$DIFF_CALLBACK$1;->areItemsTheSame(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)Z

    move-result p1

    return p1
.end method
