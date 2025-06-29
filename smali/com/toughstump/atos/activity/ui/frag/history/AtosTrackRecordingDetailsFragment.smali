.class public final Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "AtosTrackRecordingDetailsFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private adapter:Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final archiveDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private archiveNameText:Landroid/widget/TextView;

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->Companion:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;
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
    const-string v0, "archiveDatabase"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "parent"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->pluginContext:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->activityContext:Landroid/content/Context;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->archiveDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->parent:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 31
    .line 32
    new-instance p3, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;

    .line 33
    .line 34
    invoke-direct {p3, p1, p2, p0}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;)V

    .line 35
    .line 36
    .line 37
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->adapter:Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;

    .line 38
    .line 39
    return-void
.end method

.method public static final synthetic access$getArchiveDatabase$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;)Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->archiveDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getParent$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;)Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->parent:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 2
    .line 3
    return-object p0
.end method

.method private final enableSwipeToOpen()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment$enableSwipeToOpen$swipeToOpenCallback$1;

    .line 4
    .line 5
    invoke-direct {v1, p0, v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment$enableSwipeToOpen$swipeToOpenCallback$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;Landroid/content/Context;)V

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
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

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


# virtual methods
.method public final exportCsv(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "uid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->pluginContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->activityContext:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->archiveDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/dialog/history/ConfirmArchiveCsvSingleTrackDialog;->show()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final exportTakRoute(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "uid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->archiveDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getAllTracksByUid(Ljava/lang/String;)Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/toughstump/atos/record/route/TrackRecordRouteBuilderKt;->buildTakRoute(Ljava/util/Collection;)Lcom/toughstump/atos/record/route/TakRoute;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    sget-object v1, Lcom/toughstump/atos/record/route/TakRoute;->Companion:Lcom/toughstump/atos/record/route/TakRoute$Companion;

    .line 17
    .line 18
    new-instance v2, Lkot/KotTime;

    .line 19
    .line 20
    invoke-direct {v2}, Lkot/KotTime;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lkot/KotTime;

    .line 24
    .line 25
    invoke-direct {v3}, Lkot/KotTime;-><init>()V

    .line 26
    .line 27
    .line 28
    const-wide/16 v4, 0x1

    .line 29
    .line 30
    invoke-virtual {v3, v4, v5}, Lkot/KotTime;->plusYears(J)Lkot/KotTime;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, p1, v2, v3}, Lcom/toughstump/atos/record/route/TakRoute$Companion;->toKotEvent(Lcom/toughstump/atos/record/route/TakRoute;Lkot/KotTime;Lkot/KotTime;)Lkot/KotEvent;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v1, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->INSTANCE:Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->send(Lkot/KotEvent;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/atakmap/android/ipc/AtakBroadcast;->a()Lcom/atakmap/android/ipc/AtakBroadcast;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Landroid/content/Intent;

    .line 48
    .line 49
    const-string v3, "com.atakmap.android.maps.FOCUS"

    .line 50
    .line 51
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Lkot/KotEvent;->getUid()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v1, p1}, Lcom/atakmap/android/ipc/AtakBroadcast;->a(Landroid/content/Intent;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

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
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget p3, Lcom/atakmap/android/atos/plugin/R$layout;->atos_frag_archive_details:I

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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->root:Landroid/view/View;

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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
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
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->root:Landroid/view/View;

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
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_archive_details_archive_name:I

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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->archiveNameText:Landroid/widget/TextView;

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    const-string p1, "archiveNameText"

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object p1, v0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->archiveDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolderKt;->getDisplayName(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v6, 0x4

    .line 45
    const/4 v7, 0x0

    .line 46
    const-string v3, "atos history"

    .line 47
    .line 48
    const-string v4, ""

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->root:Landroid/view/View;

    .line 59
    .line 60
    if-nez p1, :cond_2

    .line 61
    .line 62
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move-object p1, v0

    .line 66
    :cond_2
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->recycler_atos_archive_details_tags:I

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    .line 76
    const-string p2, "recyclerView"

    .line 77
    .line 78
    if-nez p1, :cond_3

    .line 79
    .line 80
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    move-object p1, v0

    .line 84
    :cond_3
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->pluginContext:Landroid/content/Context;

    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    .line 98
    if-nez p1, :cond_4

    .line 99
    .line 100
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    move-object v0, p1

    .line 105
    :goto_0
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->adapter:Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    .line 109
    .line 110
    :try_start_0
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->adapter:Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;

    .line 111
    .line 112
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->archiveDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getTrackSummaries()Ljava/util/Map;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->updateNew(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :catch_0
    move-exception p1

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v0, "Failed to show recording details: "

    .line 129
    .line 130
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string p2, "AtosTrackRecordingDetailsFragment"

    .line 145
    .line 146
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    const-string p2, "Failed to show recording details"

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Lcom/atakmap/android/atos/utilities/RunnableManager;->toast(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :goto_1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->enableSwipeToOpen()V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public final showDataPointOrHistoryMapFragment(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "uid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->archiveDatabase:Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;->getAllTracksByUid(Ljava/lang/String;)Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->parent:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 13
    .line 14
    invoke-virtual {v1, p1, v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->showDataPointOrHistoryMapFragment$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease(Ljava/lang/String;Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
