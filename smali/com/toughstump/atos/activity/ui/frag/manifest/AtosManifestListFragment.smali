.class public final Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;
.implements Lcom/toughstump/atos/activity/ui/dialog/manifest/DeleteManifestDialog$DeleteManifestInterface;
.implements Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog$ResetManifestInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosManifestListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosManifestListFragment.kt\ncom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n1863#2,2:164\n*S KotlinDebug\n*F\n+ 1 AtosManifestListFragment.kt\ncom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment\n*L\n95#1:164,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosManifestListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosManifestListFragment.kt\ncom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n1863#2,2:164\n*S KotlinDebug\n*F\n+ 1 AtosManifestListFragment.kt\ncom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment\n*L\n95#1:164,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosManifestListFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private addManifestButton:Landroid/widget/ImageButton;

.field private manifestAdapter:Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;
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

    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->Companion:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;
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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->pluginContext:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->activityContext:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;

    .line 24
    .line 25
    new-instance p2, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;

    .line 26
    .line 27
    invoke-direct {p2, p1, p0}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;-><init>(Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->manifestAdapter:Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic access$onManifestUpdated(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->onManifestUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$showAddManifestDialog(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->showAddManifestDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final onManifestUpdated(Ljava/lang/Object;Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->refreshManifestData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final refreshManifestData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->manifestAdapter:Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->clear()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifests()Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/toughstump/atos/manifest/AtosManifest;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const/4 v4, 0x0

    .line 56
    :goto_1
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    new-instance v4, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;

    .line 61
    .line 62
    invoke-direct {v4, v2, v3}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;-><init>(Lcom/toughstump/atos/manifest/AtosManifest;Z)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->manifestAdapter:Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->update(Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method

.method private final showAddManifestDialog()V
    .locals 7

    .line 1
    new-instance v6, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->pluginContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->activityContext:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v3, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;->ADD_NEW:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    move-object v0, v6

    .line 11
    move-object v5, p0

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;Lcom/toughstump/atos/manifest/AtosManifest;Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v6}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->show()V

    .line 16
    .line 17
    .line 18
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
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget p3, Lcom/atakmap/android/atos/plugin/R$layout;->atos_frag_manifest_manifests:I

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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->root:Landroid/view/View;

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

.method public onDeleteManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifestToDelete"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->deleteManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onManifestCreated(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "newManifest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->newCurrentManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onManifestRenamed(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->newCurrentManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestUpdated()Lcom/toughstump/event/Event;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment$onPause$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment$onPause$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onResetManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifestToReset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->resetManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifestUpdated()Lcom/toughstump/event/Event;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment$onResume$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment$onResume$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->refreshManifestData()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->root:Landroid/view/View;

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
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->btn_atos_manifest_add:I

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/widget/ImageButton;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->addManifestButton:Landroid/widget/ImageButton;

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    const-string p1, "addManifestButton"

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object p1, v0

    .line 38
    :cond_1
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment$onViewCreated$1;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment$onViewCreated$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->root:Landroid/view/View;

    .line 47
    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move-object p1, v0

    .line 54
    :cond_2
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->recycler_atos_manifest_manifests:I

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    .line 64
    const-string p2, "recyclerView"

    .line 65
    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move-object p1, v0

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->manifestAdapter:Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    if-nez p1, :cond_4

    .line 80
    .line 81
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    move-object v0, p1

    .line 86
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 87
    .line 88
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->pluginContext:Landroid/content/Context;

    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-direct {p1, p2, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final save(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 3
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/atakmap/android/atos/export/AtosCsvExporter;->exportManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->INSTANCE:Lcom/toughstump/atos/atak/export/MissionPackageExporter;

    .line 10
    .line 11
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "getMapView(...)"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->pluginContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1, v2}, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->saveManifest(Lcom/toughstump/atos/manifest/AtosManifest;Lcom/atakmap/android/maps/MapView;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    const-string p1, "AtosManifestListFragment"

    .line 27
    .line 28
    const-string v0, "failed to save data package with atak"

    .line 29
    .line 30
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final setCurrentManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->newCurrentManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/state/AtosStateProvider;->setCurrentManifestUid(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final showCopyDialog(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 7
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->pluginContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->activityContext:Landroid/content/Context;

    .line 11
    .line 12
    sget-object v4, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;->COPY:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;

    .line 13
    .line 14
    move-object v1, v0

    .line 15
    move-object v5, p1

    .line 16
    move-object v6, p0

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;Lcom/toughstump/atos/manifest/AtosManifest;Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->show()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final showDeleteDialog(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 3
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/DeleteManifestDialog;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->pluginContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->activityContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p1, p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/DeleteManifestDialog;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/manifest/AtosManifest;Lcom/toughstump/atos/activity/ui/dialog/manifest/DeleteManifestDialog$DeleteManifestInterface;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/DeleteManifestDialog;->show()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final showDetails(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestFragment;->showDetails$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final showRenameDialog(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 7
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->pluginContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->activityContext:Landroid/content/Context;

    .line 11
    .line 12
    sget-object v4, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;->RENAME:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;

    .line 13
    .line 14
    move-object v1, v0

    .line 15
    move-object v5, p1

    .line 16
    move-object v6, p0

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;Lcom/toughstump/atos/manifest/AtosManifest;Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->show()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final showResetDialog(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 3
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->pluginContext:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->activityContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p1, p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/manifest/AtosManifest;Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog$ResetManifestInterface;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;->show()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final showSendDialog(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 3
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v0, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->INSTANCE:Lcom/toughstump/atos/atak/export/MissionPackageExporter;

    .line 7
    .line 8
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->pluginContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1, v2}, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->sendManifest(Lcom/toughstump/atos/manifest/AtosManifest;Lcom/atakmap/android/maps/MapView;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    const-string p1, "AtosManifestListFragment"

    .line 19
    .line 20
    const-string v0, "failed to save data package with atak"

    .line 21
    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
