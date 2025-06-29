.class public final Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosTrackListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackListFragment.kt\ncom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,217:1\n1#2:218\n1863#3,2:219\n*S KotlinDebug\n*F\n+ 1 AtosTrackListFragment.kt\ncom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment\n*L\n122#1:219,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosTrackListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackListFragment.kt\ncom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,217:1\n1#2:218\n1863#3,2:219\n*S KotlinDebug\n*F\n+ 1 AtosTrackListFragment.kt\ncom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment\n*L\n122#1:219,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosTrackListFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private allSendingState:Z

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private root:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sendAllToggleButton:Landroid/widget/ToggleButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tagCountTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private trackAdapter:Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private trackList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->Companion:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$Companion;

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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->pluginContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->activityContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance p2, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;

    .line 19
    .line 20
    invoke-direct {p2, p1, p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->trackAdapter:Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;

    .line 24
    .line 25
    new-instance p1, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 26
    .line 27
    invoke-direct {p1}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic access$getTagCountTextView$p(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagCountTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTrackAdapter$p(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->trackAdapter:Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$onDeleteTag(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Ljava/lang/Object;Lcom/toughstump/atos/sort/TagListEventArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->onDeleteTag(Ljava/lang/Object;Lcom/toughstump/atos/sort/TagListEventArgs;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onInsertTag(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Ljava/lang/Object;Lcom/toughstump/atos/sort/TagListEventArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->onInsertTag(Ljava/lang/Object;Lcom/toughstump/atos/sort/TagListEventArgs;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onManifestUpdated(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->onManifestUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onNewTagList(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->onNewTagList(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onTagCountUpdated(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->onTagCountUpdated(Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onTrackDeleted(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->onTrackDeleted(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onTrackUpdated(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->onTrackUpdated(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onUpdateTag(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Ljava/lang/Object;Lcom/toughstump/atos/sort/TagListEventArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->onUpdateTag(Ljava/lang/Object;Lcom/toughstump/atos/sort/TagListEventArgs;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$toggleAllVisibleSendState(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->toggleAllVisibleSendState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final ensureProviderVisibilityCorrect()V
    .locals 3

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getOnlyCurrentManifestVisible()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :cond_0
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/toughstump/atos/state/AtosStateProvider;->setCurrentManifestUid(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final declared-synchronized onDeleteTag(Ljava/lang/Object;Lcom/toughstump/atos/sort/TagListEventArgs;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->visible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->root:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onDeleteTag$1;

    .line 13
    .line 14
    invoke-direct {v0, p0, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onDeleteTag$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Lcom/toughstump/atos/sort/TagListEventArgs;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw p1
.end method

.method private final declared-synchronized onInsertTag(Ljava/lang/Object;Lcom/toughstump/atos/sort/TagListEventArgs;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->visible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->root:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onInsertTag$1;

    .line 13
    .line 14
    invoke-direct {v0, p0, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onInsertTag$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Lcom/toughstump/atos/sort/TagListEventArgs;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw p1
.end method

.method private final onManifestUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->visible:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 7
    .line 8
    sget-object p2, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p2, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1, p2}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->setCurrentManifestUid(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private final declared-synchronized onNewTagList(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->visible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->root:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onNewTagList$1;

    .line 13
    .line 14
    invoke-direct {v0, p0, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onNewTagList$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw p1
.end method

.method private final onTagCountUpdated(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->visible:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->root:Landroid/view/View;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onTagCountUpdated$1;

    .line 11
    .line 12
    invoke-direct {v0, p0, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onTagCountUpdated$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private final declared-synchronized onTrackDeleted(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 3
    .line 4
    invoke-virtual {p1, p2}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->removeTag(Lcom/toughstump/atos/state/AtosTag;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method private final declared-synchronized onTrackUpdated(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 3
    .line 4
    invoke-virtual {p1, p2}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->update(Lcom/toughstump/atos/state/AtosTag;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method

.method private final declared-synchronized onUpdateTag(Ljava/lang/Object;Lcom/toughstump/atos/sort/TagListEventArgs;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->visible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->root:Landroid/view/View;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onUpdateTag$1;

    .line 13
    .line 14
    invoke-direct {v0, p0, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onUpdateTag$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;Lcom/toughstump/atos/sort/TagListEventArgs;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    throw p1
.end method

.method private final setBroadcastColor()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->allSendingState:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, -0xff0100

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/high16 v0, -0x10000

    .line 10
    .line 11
    :goto_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->sendAllToggleButton:Landroid/widget/ToggleButton;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->allSendingState:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const-string v0, "STOP SENDING ALL"

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    const-string v0, "SEND ALL"

    .line 26
    .line 27
    :goto_1
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->sendAllToggleButton:Landroid/widget/ToggleButton;

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_3
    return-void
.end method

.method private final toggleAllVisibleSendState()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->allSendingState:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->allSendingState:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->getTagList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/toughstump/atos/state/AtosTag;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "setting send state Tag "

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "AtosTrackListFragment"

    .line 51
    .line 52
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getTagState()Lcom/toughstump/atos/state/model/AtosTagState;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-boolean v6, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->allSendingState:Z

    .line 60
    .line 61
    const/16 v9, 0xd

    .line 62
    .line 63
    const/4 v10, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    invoke-static/range {v4 .. v10}, Lcom/toughstump/atos/state/model/AtosTagState;->copy$default(Lcom/toughstump/atos/state/model/AtosTagState;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/toughstump/atos/state/model/AtosTagState;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    sget-object v3, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 72
    .line 73
    invoke-virtual {v3, v2}, Lcom/toughstump/atos/state/AtosStateProvider;->updateTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V

    .line 74
    .line 75
    .line 76
    iget-boolean v2, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->allSendingState:Z

    .line 77
    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    sget-object v2, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->INSTANCE:Lcom/toughstump/atos/net/AtosNetworkSwitchboard;

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const/4 v3, 0x2

    .line 87
    const/4 v4, 0x0

    .line 88
    const/4 v5, 0x0

    .line 89
    invoke-static {v2, v1, v5, v3, v4}, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->sendExternalKotEvent$default(Lcom/toughstump/atos/net/AtosNetworkSwitchboard;Lcom/toughstump/atos/kot/AtosKotEvent;ZILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->setBroadcastColor()V

    .line 94
    .line 95
    .line 96
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
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget p3, Lcom/atakmap/android/atos/plugin/R$layout;->atos_frag_home:I

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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->root:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagTrackUpdateEvent()Lcom/toughstump/event/Event;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onDestroy$1;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onDestroy$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagStateUpdateEvent()Lcom/toughstump/event/Event;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onDestroy$2;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onDestroy$2;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagDeletedEvent()Lcom/toughstump/event/Event;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onDestroy$3;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onDestroy$3;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    const-string v0, "AtosTrackListFragment"

    .line 2
    .line 3
    const-string v1, "pause"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->visible:Z

    .line 13
    .line 14
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestUpdated()Lcom/toughstump/event/Event;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onPause$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onPause$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->getInsertEvent()Lcom/toughstump/event/Event;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onPause$2;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onPause$2;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->getNewListEvent()Lcom/toughstump/event/Event;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onPause$3;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onPause$3;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->getRemoveEvent()Lcom/toughstump/event/Event;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onPause$4;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onPause$4;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->getUpdateEvent()Lcom/toughstump/event/Event;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onPause$5;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onPause$5;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->INSTANCE:Lcom/toughstump/atos/track/ActiveTrackCountProvider;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->getTagCountUpdatedEvent()Lcom/toughstump/event/Event;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onPause$6;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onPause$6;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    const-string v0, "AtosTrackListFragment"

    .line 2
    .line 3
    const-string v1, "resume"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->ensureProviderVisibilityCorrect()V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->visible:Z

    .line 16
    .line 17
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestUpdated()Lcom/toughstump/event/Event;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onResume$1;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onResume$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-virtual {v1, v0}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->setCurrentManifestUid(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->getInsertEvent()Lcom/toughstump/event/Event;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onResume$2;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onResume$2;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->getNewListEvent()Lcom/toughstump/event/Event;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onResume$3;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onResume$3;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->getRemoveEvent()Lcom/toughstump/event/Event;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onResume$4;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onResume$4;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->getUpdateEvent()Lcom/toughstump/event/Event;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onResume$5;

    .line 105
    .line 106
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onResume$5;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 110
    .line 111
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    sget-object v1, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosStateProvider;->getTrackMap()Ljava/util/Map;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagOrganizer:Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->refreshTagList(Ljava/util/Collection;)V

    .line 134
    .line 135
    .line 136
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    monitor-exit p0

    .line 139
    sget-object v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->INSTANCE:Lcom/toughstump/atos/track/ActiveTrackCountProvider;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->getTagCountUpdatedEvent()Lcom/toughstump/event/Event;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onResume$7;

    .line 146
    .line 147
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onResume$7;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->setBroadcastColor()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    monitor-exit p0

    .line 159
    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
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
    const-string p1, "AtosTrackListFragment"

    .line 10
    .line 11
    const-string p2, "view created"

    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->root:Landroid/view/View;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->recycle_track_list:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object p1, p2

    .line 31
    :goto_0
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->trackList:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->trackList:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->trackList:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->trackAdapter:Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->trackList:Landroidx/recyclerview/widget/RecyclerView;

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->pluginContext:Landroid/content/Context;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-direct {v1, v2, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->root:Landroid/view/View;

    .line 71
    .line 72
    if-eqz p1, :cond_5

    .line 73
    .line 74
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_track_count:I

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/TextView;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    move-object p1, p2

    .line 84
    :goto_1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->tagCountTextView:Landroid/widget/TextView;

    .line 85
    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    sget-object v0, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->INSTANCE:Lcom/toughstump/atos/track/ActiveTrackCountProvider;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/toughstump/atos/track/ActiveTrackCountProvider;->getActiveTagCount()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->root:Landroid/view/View;

    .line 102
    .line 103
    if-eqz p1, :cond_7

    .line 104
    .line 105
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->btn_toggle_all_send:I

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    move-object p2, p1

    .line 112
    check-cast p2, Landroid/widget/ToggleButton;

    .line 113
    .line 114
    :cond_7
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->sendAllToggleButton:Landroid/widget/ToggleButton;

    .line 115
    .line 116
    if-eqz p2, :cond_8

    .line 117
    .line 118
    new-instance p1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onViewCreated$1;

    .line 119
    .line 120
    invoke-direct {p1, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onViewCreated$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    :cond_8
    sget-object p1, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagTrackUpdateEvent()Lcom/toughstump/event/Event;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onViewCreated$2;

    .line 133
    .line 134
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onViewCreated$2;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, v0}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagStateUpdateEvent()Lcom/toughstump/event/Event;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onViewCreated$3;

    .line 145
    .line 146
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onViewCreated$3;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v0}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagDeletedEvent()Lcom/toughstump/event/Event;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    new-instance p2, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onViewCreated$4;

    .line 157
    .line 158
    invoke-direct {p2, p0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onViewCreated$4;-><init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, p2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 162
    .line 163
    .line 164
    return-void
.end method
