.class public final Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/activity/ui/frag/toolbar/IToolbarFragmentInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/atak/ui/AtosDropDownFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/atak/ui/AtosDropDownFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosDropDownFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final atosHomeFragment:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentFragment:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentManifestDetailsFragment:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fragmentFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

.field private toolbarFragment:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private toolbarFrameLayout:Landroid/widget/FrameLayout;
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

    new-instance v0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->Companion:Lcom/toughstump/atos/atak/ui/AtosDropDownFragment$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 2
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
    iput-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->pluginContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->activityContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance p1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;

    .line 19
    .line 20
    iget-object p2, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->pluginContext:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->activityContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {p1, p2, v0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->atosHomeFragment:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;

    .line 28
    .line 29
    new-instance p1, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;

    .line 30
    .line 31
    iget-object p2, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->pluginContext:Landroid/content/Context;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->activityContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-direct {p1, p2, v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->manifestFragment:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;

    .line 39
    .line 40
    new-instance p1, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->pluginContext:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->activityContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-direct {p1, p2, v0, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;-><init>(Landroid/content/Context;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->trackHistoryFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 50
    .line 51
    new-instance p1, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;

    .line 52
    .line 53
    iget-object p2, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->pluginContext:Landroid/content/Context;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->activityContext:Landroid/content/Context;

    .line 56
    .line 57
    const-string v1, ""

    .line 58
    .line 59
    invoke-direct {p1, p2, v0, v1}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->currentManifestDetailsFragment:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;

    .line 63
    .line 64
    return-void
.end method

.method private final showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->fragmentFrameLayout:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 24
    .line 25
    .line 26
    :cond_0
    instance-of p1, p1, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->toolbarFrameLayout:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->toolbarFrameLayout:Landroid/widget/FrameLayout;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final handleBackButton()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->currentFragment:Landroidx/fragment/app/Fragment;

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
    iget-object v2, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->manifestFragment:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;

    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->manifestFragment:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;->handleBackButton$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->showHomeFragment()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return v2

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->currentManifestDetailsFragment:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;

    .line 31
    .line 32
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->showHomeFragment()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->toolbarFragment:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->restoreDefaultTagListState()V

    .line 46
    .line 47
    .line 48
    :cond_3
    return v2

    .line 49
    :cond_4
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->trackHistoryFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 52
    .line 53
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->trackHistoryFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;->handleBackButton()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->showHomeFragment()V

    .line 68
    .line 69
    .line 70
    :cond_5
    return v2

    .line 71
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
    iget-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget p3, Lcom/atakmap/android/atos/plugin/R$layout;->atos_frag_dropdown:I

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
    iput-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->root:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
.end method

.method public final onDropDownVisible(Z)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    new-instance p1, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->pluginContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->activityContext:Landroid/content/Context;

    .line 14
    .line 15
    sget-object v1, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;->MAP:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 16
    .line 17
    invoke-direct {p1, p2, v0, p0, v1}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/toolbar/IToolbarFragmentInterface;Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->toolbarFragment:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->root:Landroid/view/View;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->frame_atos_toolbar:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/FrameLayout;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object p1, p2

    .line 37
    :goto_0
    iput-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->toolbarFrameLayout:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iget-object v1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->toolbarFragment:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;

    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->root:Landroid/view/View;

    .line 66
    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->frame_atos_dropdown:I

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    move-object p2, p1

    .line 76
    check-cast p2, Landroid/widget/FrameLayout;

    .line 77
    .line 78
    :cond_2
    iput-object p2, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->fragmentFrameLayout:Landroid/widget/FrameLayout;

    .line 79
    .line 80
    iget-object p1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 81
    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->showHomeFragment()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-void
.end method

.method public showHomeFragment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->atosHomeFragment:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public showManifestFragment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->manifestFragment:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public showTrackHistoryFragment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->trackHistoryFragment:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingFragment;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toggleTagListView(Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->showHomeFragment()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    sget-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_0
    if-nez p1, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "Invalid Current Manifest"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/atakmap/android/atos/utilities/RunnableManager;->toast(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->showHomeFragment()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->pluginContext:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->activityContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-direct {v0, v1, v2, p1}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->currentManifestDetailsFragment:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;

    .line 50
    .line 51
    invoke-direct {p0, v0}, Lcom/toughstump/atos/atak/ui/AtosDropDownFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
