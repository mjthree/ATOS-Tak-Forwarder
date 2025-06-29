.class public final Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosActivityFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosActivityFragment.kt\ncom/toughstump/atos/activity/ui/frag/AtosActivityFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosActivityFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosActivityFragment.kt\ncom/toughstump/atos/activity/ui/frag/AtosActivityFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosActivityFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bodyFragmentContainer:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentFragment:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dataPointsFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDataPointListFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private homeFragment:Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final manifestFragment:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private root:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final trackHistoryFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->Companion:Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
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
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->pluginContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->activityContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance p1, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->pluginContext:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->activityContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {p1, p2, v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->manifestFragment:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;

    .line 28
    .line 29
    new-instance p1, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->pluginContext:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->activityContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-direct {p1, p2, v0, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;-><init>(Landroid/content/Context;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->trackHistoryFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 39
    .line 40
    new-instance p1, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->activityContext:Landroid/content/Context;

    .line 43
    .line 44
    invoke-direct {p1, p2, p0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;-><init>(Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->homeFragment:Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;

    .line 48
    .line 49
    return-void
.end method

.method private final showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->bodyFragmentContainer:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private final showHomeFragment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->homeFragment:Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleBackButton()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->homeFragment:Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;

    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->manifestFragment:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;

    .line 19
    .line 20
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->manifestFragment:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;->handleBackButton$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->showHomeFragment()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return v2

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->trackHistoryFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 42
    .line 43
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->trackHistoryFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->handleBackButton()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->showHomeFragment()V

    .line 58
    .line 59
    .line 60
    :cond_4
    return v2

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->dataPointsFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDataPointListFragment;

    .line 64
    .line 65
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->showTrackHistoryFragment()V

    .line 72
    .line 73
    .line 74
    return v2

    .line 75
    :cond_6
    return v1
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
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget p3, Lcom/atakmap/android/atos/plugin/R$layout;->atos_activity_frag:I

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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->root:Landroid/view/View;

    .line 20
    .line 21
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
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->root:Landroid/view/View;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->body_fragment_container:I

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->bodyFragmentContainer:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->showHomeFragment()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final showDataPointsFragment(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "dataPoints"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDataPointListFragment;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->pluginContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->activityContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDataPointListFragment;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->dataPointsFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDataPointListFragment;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final showManifestFragment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->manifestFragment:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final showTrackHistoryFragment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->trackHistoryFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toggleTagListView(Z)V
    .locals 0

    return-void
.end method
