.class public final Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "AtosTrackRecordingFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private archiveAdapter:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private archiveAndStartNewButton:Landroid/widget/Button;

.field private buttonLayout:Landroid/widget/LinearLayout;

.field private currentRecordingHolder:Landroid/widget/LinearLayout;

.field private dataPointsNumberTextView:Landroid/widget/TextView;

.field private detailsButton:Landroid/widget/ImageButton;

.field private expanderToggleImageView:Landroid/widget/ImageView;

.field private firstEventTextView:Landroid/widget/TextView;

.field private isExpanded:Z

.field private lastEventTextView:Landroid/widget/TextView;

.field private final parent:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private root:Landroid/view/View;

.field private trackNumberTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->Companion:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pluginContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "activityContext"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->pluginContext:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->activityContext:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->parent:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 24
    .line 25
    new-instance p3, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

    .line 26
    .line 27
    invoke-direct {p3, p1, p2, p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)V

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->archiveAdapter:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic access$archiveAndStartNew(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->archiveAndStartNew()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$deleteArchive(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->deleteArchive(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getActivityContext$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->activityContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getArchiveAdapter$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->archiveAdapter:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getDataPointsNumberTextView$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->dataPointsNumberTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getFirstEventTextView$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->firstEventTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLastEventTextView$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->lastEventTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRecyclerView$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTrackNumberTextView$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->trackNumberTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$onTrackRecordingDatabaseUpdated(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;Ljava/lang/Object;Lkotlin/Unit;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->onTrackRecordingDatabaseUpdated(Ljava/lang/Object;Lkotlin/Unit;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$toggleExpansion(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->toggleExpansion()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final archiveAndStartNew()V
    .locals 3

    .line 1
    sget-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/history/TrackRecordingManager;->getTrackRecordingDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getSummary()Lcom/toughstump/atos/record/db/RecordingSummary;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/toughstump/atos/record/db/RecordingSummary;->getRecordCount()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "Current history recording is already empty, not starting a new recording."

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/utilities/RunnableManager;->toast(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/toughstump/atos/history/TrackRecordingManager;->archiveAndStartNewTrackRecordingDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->root:Landroid/view/View;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    const-string v1, "root"

    .line 40
    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    :cond_1
    new-instance v2, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$archiveAndStartNew$1;

    .line 46
    .line 47
    invoke-direct {v2, p0, v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$archiveAndStartNew$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final deleteArchive(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->archiveAdapter:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;->delete(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final enableSwipeToDelete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$enableSwipeToDelete$swipeToDeleteCallback$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$enableSwipeToDelete$swipeToDeleteCallback$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "recyclerView"

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final enableSwipeToOpen()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$enableSwipeToOpen$swipeToOpenCallback$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$enableSwipeToOpen$swipeToOpenCallback$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string v1, "recyclerView"

    .line 18
    .line 19
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private final onTrackRecordingDatabaseUpdated(Ljava/lang/Object;Lkotlin/Unit;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/toughstump/atos/history/TrackRecordingManager;->INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/toughstump/atos/history/TrackRecordingManager;->getTrackRecordingDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p2, "AtosTrackRecordingFragment"

    .line 11
    .line 12
    const-string v0, "Track Record DB Updated"

    .line 13
    .line 14
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getSummary()Lcom/toughstump/atos/record/db/RecordingSummary;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->root:Landroid/view/View;

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    const-string p2, "root"

    .line 26
    .line 27
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    :cond_1
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1;

    .line 32
    .line 33
    invoke-direct {v0, p1, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1;-><init>(Lcom/toughstump/atos/record/db/RecordingSummary;Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final toggleExpansion()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->isExpanded:Z

    .line 2
    .line 3
    const-string v1, "expanderToggleImageView"

    .line 4
    .line 5
    const-string v2, "buttonLayout"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iput-boolean v3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->isExpanded:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->buttonLayout:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    move-object v0, v4

    .line 21
    :cond_0
    const/16 v2, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v4, v0

    .line 35
    :goto_0
    sget v0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_caret_down:I

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->isExpanded:Z

    .line 43
    .line 44
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->buttonLayout:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    move-object v0, v4

    .line 52
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 56
    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    move-object v4, v0

    .line 64
    :goto_1
    sget v0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_caret_up:I

    .line 65
    .line 66
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    .line 68
    .line 69
    :goto_2
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget p3, Lcom/atakmap/android/atos/plugin/R$layout;->atos_frag_track_recording_list:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->root:Landroid/view/View;

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const-string p1, "root"

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    :cond_0
    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/toughstump/atos/history/TrackRecordingManager;->getTrackRecordingDatabaseUpdated()Lcom/toughstump/event/Event;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onPause$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onPause$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/toughstump/atos/history/TrackRecordingManager;->INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/toughstump/atos/history/TrackRecordingManager;->getTrackRecordingDatabaseUpdated()Lcom/toughstump/event/Event;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onResume$1;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onResume$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/toughstump/atos/history/TrackRecordingManager;->getArchiveDeleted()Lcom/toughstump/event/Event;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onResume$2;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onResume$2;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->archiveAdapter:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/toughstump/atos/history/TrackRecordingManager;->getAllArchives()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;->update(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->root:Landroid/view/View;

    .line 10
    .line 11
    const-string p2, "root"

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object p1, v0

    .line 20
    :cond_0
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_record_list_current_start_time:I

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->firstEventTextView:Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->root:Landroid/view/View;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object p1, v0

    .line 38
    :cond_1
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_record_list_current_end_time:I

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->lastEventTextView:Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->root:Landroid/view/View;

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    move-object p1, v0

    .line 56
    :cond_2
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_record_list_current_point_count:I

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->dataPointsNumberTextView:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->root:Landroid/view/View;

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    move-object p1, v0

    .line 74
    :cond_3
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_record_list_current_track_count:I

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/TextView;

    .line 81
    .line 82
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->trackNumberTextView:Landroid/widget/TextView;

    .line 83
    .line 84
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->root:Landroid/view/View;

    .line 85
    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    move-object p1, v0

    .line 92
    :cond_4
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->btn_archive_and_start_new_frag_recording_list:I

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/widget/Button;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->archiveAndStartNewButton:Landroid/widget/Button;

    .line 101
    .line 102
    if-nez p1, :cond_5

    .line 103
    .line 104
    const-string p1, "archiveAndStartNewButton"

    .line 105
    .line 106
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    move-object p1, v0

    .line 110
    :cond_5
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onViewCreated$1;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onViewCreated$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->root:Landroid/view/View;

    .line 119
    .line 120
    if-nez p1, :cond_6

    .line 121
    .line 122
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    move-object p1, v0

    .line 126
    :cond_6
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->current_recording_holder_frag_recording_list:I

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/widget/LinearLayout;

    .line 133
    .line 134
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->currentRecordingHolder:Landroid/widget/LinearLayout;

    .line 135
    .line 136
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->root:Landroid/view/View;

    .line 137
    .line 138
    if-nez p1, :cond_7

    .line 139
    .line 140
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    move-object p1, v0

    .line 144
    :cond_7
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_details_frag_recording_list:I

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Landroid/widget/ImageButton;

    .line 151
    .line 152
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->detailsButton:Landroid/widget/ImageButton;

    .line 153
    .line 154
    if-nez p1, :cond_8

    .line 155
    .line 156
    const-string p1, "detailsButton"

    .line 157
    .line 158
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move-object p1, v0

    .line 162
    :cond_8
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onViewCreated$2;

    .line 163
    .line 164
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onViewCreated$2;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->root:Landroid/view/View;

    .line 171
    .line 172
    if-nez p1, :cond_9

    .line 173
    .line 174
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    move-object p1, v0

    .line 178
    :cond_9
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->linear_item_extras_frag_recording_list:I

    .line 179
    .line 180
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Landroid/widget/LinearLayout;

    .line 185
    .line 186
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->buttonLayout:Landroid/widget/LinearLayout;

    .line 187
    .line 188
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->root:Landroid/view/View;

    .line 189
    .line 190
    if-nez p1, :cond_a

    .line 191
    .line 192
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    move-object p1, v0

    .line 196
    :cond_a
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->expanded_caret_frag_recording_list:I

    .line 197
    .line 198
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Landroid/widget/ImageView;

    .line 203
    .line 204
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 205
    .line 206
    if-nez p1, :cond_b

    .line 207
    .line 208
    const-string p1, "expanderToggleImageView"

    .line 209
    .line 210
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    move-object p1, v0

    .line 214
    :cond_b
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onViewCreated$3;

    .line 215
    .line 216
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onViewCreated$3;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->toggleExpansion()V

    .line 223
    .line 224
    .line 225
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->toggleExpansion()V

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->root:Landroid/view/View;

    .line 229
    .line 230
    if-nez p1, :cond_c

    .line 231
    .line 232
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    move-object p1, v0

    .line 236
    :cond_c
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->recycler_atos_frag_recording_list:I

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 243
    .line 244
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 245
    .line 246
    const-string p2, "recyclerView"

    .line 247
    .line 248
    if-nez p1, :cond_d

    .line 249
    .line 250
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    move-object p1, v0

    .line 254
    :cond_d
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 255
    .line 256
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->pluginContext:Landroid/content/Context;

    .line 257
    .line 258
    const/4 v3, 0x1

    .line 259
    const/4 v4, 0x0

    .line 260
    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 267
    .line 268
    if-nez p1, :cond_e

    .line 269
    .line 270
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    move-object p1, v0

    .line 274
    :cond_e
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->archiveAdapter:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

    .line 275
    .line 276
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 277
    .line 278
    .line 279
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->enableSwipeToOpen()V

    .line 280
    .line 281
    .line 282
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->enableSwipeToDelete()V

    .line 283
    .line 284
    .line 285
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 286
    .line 287
    invoke-direct {p0, v0, p1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->onTrackRecordingDatabaseUpdated(Ljava/lang/Object;Lkotlin/Unit;)V

    .line 288
    .line 289
    .line 290
    return-void
.end method

.method public final showDetails(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "database"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->parent:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->showArchiveDetailsFragment$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
