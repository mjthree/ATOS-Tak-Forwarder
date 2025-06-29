.class public final Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;
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
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->pluginContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "from(...)"

    .line 23
    .line 24
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 28
    .line 29
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 35
    .line 36
    return-void
.end method

.method private final getManifestTag(Landroid/view/View;)Lcom/toughstump/atos/manifest/AtosManifest;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v1, v1, Lcom/toughstump/atos/manifest/AtosManifest;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "null cannot be cast to non-null type com.toughstump.atos.manifest.AtosManifest"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object v0, p1

    .line 23
    check-cast v0, Lcom/toughstump/atos/manifest/AtosManifest;

    .line 24
    .line 25
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getParent()Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPluginContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewModelMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->onBindViewHolder(Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;I)V
    .locals 3
    .param p1    # Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AtosManifestViewHolder"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p1, v0, p0}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;->init(Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->getManifestTag(Landroid/view/View;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-ne p1, v1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->setCurrentManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_copy:I

    .line 40
    .line 41
    if-ne p1, v1, :cond_3

    .line 42
    .line 43
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->showCopyDialog(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_delete:I

    .line 50
    .line 51
    if-ne p1, v1, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->showDeleteDialog(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_details:I

    .line 60
    .line 61
    if-ne p1, v1, :cond_5

    .line 62
    .line 63
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->showDetails(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_5
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_rename:I

    .line 70
    .line 71
    if-ne p1, v1, :cond_6

    .line 72
    .line 73
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->showRenameDialog(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_6
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_send:I

    .line 80
    .line 81
    if-ne p1, v1, :cond_7

    .line 82
    .line 83
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->showSendDialog(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_7
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_save:I

    .line 90
    .line 91
    if-ne p1, v1, :cond_8

    .line 92
    .line 93
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->save(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_8
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_manifest_item_reset:I

    .line 100
    .line 101
    if-ne p1, v1, :cond_9

    .line 102
    .line 103
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestListFragment;->showResetDialog(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 106
    .line 107
    .line 108
    :cond_9
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/atakmap/android/atos/plugin/R$layout;->atos_item_view_manifest:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setViewModelMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public final update(Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;)V
    .locals 2
    .param p1    # Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "viewModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestViewModel;->getUid()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/AtosManifestRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
