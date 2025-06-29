.class public final Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Ljava/util/Map$Entry<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Lcom/toughstump/atos/record/db/RecordingTrackSummary;",
        ">;",
        "Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosTrackRecordingArchiveTagRecyclerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingArchiveTagRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1010#2,2:69\n*S KotlinDebug\n*F\n+ 1 AtosTrackRecordingArchiveTagRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter\n*L\n38#1:69,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosTrackRecordingArchiveTagRecyclerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingArchiveTagRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1010#2,2:69\n*S KotlinDebug\n*F\n+ 1 AtosTrackRecordingArchiveTagRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter\n*L\n38#1:69,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/record/db/RecordingTrackSummary;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "AtosArchiveTagRecyclerAdapter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parent:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/record/db/RecordingTrackSummary;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->Companion:Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter$Companion;

    .line 8
    .line 9
    new-instance v0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter$Companion$DIFF_CALLBACK$1;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter$Companion$DIFF_CALLBACK$1;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;
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
    sget-object v0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 17
    .line 18
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->pluginContext:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->activityContext:Landroid/content/Context;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 33
    .line 34
    return-void
.end method

.method public static final synthetic access$getDIFF_CALLBACK$cp()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method private final submitViewModelList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-le v1, v2, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter$submitViewModelList$$inlined$sortBy$1;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter$submitViewModelList$$inlined$sortBy$1;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final exportCsv(Ljava/lang/String;)V
    .locals 1
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
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->exportCsv(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final exportTakRoute(Ljava/lang/String;)V
    .locals 1
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
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->exportTakRoute(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getActivityContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->activityContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParent()Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPluginContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->onBindViewHolder(Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;I)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 3
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p0}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->init(Ljava/util/Map$Entry;Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;
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
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->pluginContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/atakmap/android/atos/plugin/R$layout;->atos_item_view_archive_tag:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final showDataPointOrHistoryMapFragment(Ljava/lang/String;)V
    .locals 1
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
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingDetailsFragment;->showDataPointOrHistoryMapFragment(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final updateNew(Ljava/util/Map;)V
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
            "Lcom/toughstump/atos/record/db/RecordingTrackSummary;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "trackSummaries"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;->submitViewModelList()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
