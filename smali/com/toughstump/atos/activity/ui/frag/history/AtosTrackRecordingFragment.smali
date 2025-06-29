.class public final Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosTrackRecordingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingFragment.kt\ncom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1#2:114\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosTrackRecordingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingFragment.kt\ncom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1#2:114\n*E\n"
    }
.end annotation


# instance fields
.field private final activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private archiveDetailsFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentFilter:Lcom/toughstump/atos/filter/AtosFilterCriteria;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentFragment:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fragmentContainer:Landroid/widget/FrameLayout;

.field private final listFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parent:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private root:Landroid/view/View;

.field private tempFilterEnabled:Z

.field private trackHistoryMapFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/Fragment;
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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->pluginContext:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->activityContext:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->parent:Landroidx/fragment/app/Fragment;

    .line 24
    .line 25
    new-instance p3, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    .line 26
    .line 27
    invoke-direct {p3, p1, p2, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;)V

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->listFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    .line 31
    .line 32
    return-void
.end method

.method private final showFragment(Landroidx/fragment/app/Fragment;Z)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iput-object v1, v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->fragmentContainer:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    const-string v3, "fragmentContainer"

    .line 21
    .line 22
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    move-object v3, v4

    .line 26
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v2, v3, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 35
    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v1, v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    iget-object v2, v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->trackHistoryMapFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 43
    .line 44
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    sget-object v1, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosStateProvider;->getFilter()Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    const/16 v14, 0xff

    .line 59
    .line 60
    const/4 v15, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v7, 0x0

    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v11, 0x0

    .line 67
    const/4 v12, 0x0

    .line 68
    const/4 v13, 0x0

    .line 69
    invoke-static/range {v5 .. v15}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->copy$default(Lcom/toughstump/atos/filter/AtosFilterCriteria;ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;ZILjava/lang/Object;)Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    :cond_2
    iput-object v4, v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->currentFilter:Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 74
    .line 75
    new-instance v1, Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 76
    .line 77
    const/16 v14, 0xfe

    .line 78
    .line 79
    const/4 v15, 0x0

    .line 80
    const/4 v6, 0x1

    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    const/4 v9, 0x0

    .line 84
    const/4 v10, 0x0

    .line 85
    const/4 v11, 0x0

    .line 86
    const/4 v12, 0x0

    .line 87
    const/4 v13, 0x0

    .line 88
    move-object v5, v1

    .line 89
    invoke-direct/range {v5 .. v15}, Lcom/toughstump/atos/filter/AtosFilterCriteria;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    .line 91
    .line 92
    sget-object v2, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/atakmap/android/atos/AtosLifecycle;->getTagStateRepository()Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2, v1}, Lcom/toughstump/atos/state/db/AtosStateRepository;->updateFilter(Lcom/toughstump/atos/filter/AtosFilterCriteria;)V

    .line 99
    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    iput-boolean v1, v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->tempFilterEnabled:Z

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    iget-boolean v1, v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->tempFilterEnabled:Z

    .line 106
    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    iget-object v1, v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->currentFilter:Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 110
    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    sget-object v2, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/atakmap/android/atos/AtosLifecycle;->getTagStateRepository()Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v2, v1}, Lcom/toughstump/atos/state/db/AtosStateRepository;->updateFilter(Lcom/toughstump/atos/filter/AtosFilterCriteria;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    const/4 v1, 0x0

    .line 123
    iput-boolean v1, v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->tempFilterEnabled:Z

    .line 124
    .line 125
    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic showFragment$default(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->showFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final showMapTrackHistoryFragment(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->pluginContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->activityContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v0, "getMapView(...)"

    .line 12
    .line 13
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object v0, v6

    .line 17
    move-object v4, p1

    .line 18
    move-object v5, p2

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/atakmap/android/maps/MapView;Ljava/lang/String;Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    iput-object v6, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->trackHistoryMapFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 23
    .line 24
    const/4 p1, 0x2

    .line 25
    const/4 p2, 0x0

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {p0, v6, v0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->showFragment$default(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final showTrackRecordingListFragment()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->listFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {p0, v0, v3, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->showFragment$default(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final handleBackButton()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->archiveDetailsFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->showTrackRecordingListFragment()V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->trackHistoryMapFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 19
    .line 20
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->archiveDetailsFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static {p0, v0, v2, v3, v4}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->showFragment$default(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    return v2
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
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget p3, Lcom/atakmap/android/atos/plugin/R$layout;->atos_frag_track_recording:I

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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->root:Landroid/view/View;

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
    .locals 1
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
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->root:Landroid/view/View;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "root"

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    :cond_0
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->frame_atos_track_recording_fragment_container:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/FrameLayout;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->fragmentContainer:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->showTrackRecordingListFragment()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->showFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public final showArchiveDetailsFragment$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)V
    .locals 3
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
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->pluginContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->activityContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p1, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->archiveDetailsFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;

    .line 16
    .line 17
    const/4 p1, 0x2

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {p0, v0, v2, p1, v1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->showFragment$default(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;Landroidx/fragment/app/Fragment;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final showDataPointOrHistoryMapFragment$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "uid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "trackRecords"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->parent:Landroidx/fragment/app/Fragment;

    .line 12
    .line 13
    instance-of v1, v0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->showMapTrackHistoryFragment(Ljava/lang/String;Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    instance-of p1, v0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    check-cast v0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->showDataPointsFragment(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method
