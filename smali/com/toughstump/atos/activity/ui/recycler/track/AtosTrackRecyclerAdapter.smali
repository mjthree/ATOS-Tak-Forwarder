.class public final Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosTrackRecyclerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n1863#2,2:119\n*S KotlinDebug\n*F\n+ 1 AtosTrackRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter\n*L\n52#1:119,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosTrackRecyclerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n1863#2,2:119\n*S KotlinDebug\n*F\n+ 1 AtosTrackRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter\n*L\n52#1:119,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosTrackRecycler"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private inflater:Landroid/view/LayoutInflater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parent:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->Companion:Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;
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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->pluginContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;

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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 28
    .line 29
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 35
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->clear()V

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
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getParent()Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPluginContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

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
            "Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final insertTag(ILcom/toughstump/atos/state/AtosTag;)V
    .locals 2
    .param p2    # Lcom/toughstump/atos/state/AtosTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "atosTag"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->setTag(Lcom/toughstump/atos/state/AtosTag;)V

    .line 21
    .line 22
    .line 23
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 30
    .line 31
    invoke-direct {v0, p2}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;-><init>(Lcom/toughstump/atos/state/AtosTag;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :try_start_0
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p2

    .line 52
    const-string v0, "AtosTrackRecycler"

    .line 53
    .line 54
    invoke-static {p2}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->onBindViewHolder(Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;I)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 3
    invoke-virtual {p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->init(Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;
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
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/atakmap/android/atos/plugin/R$layout;->atos_item_view_track:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final refresh(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "values"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/toughstump/atos/state/AtosTag;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 38
    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->setTag(Lcom/toughstump/atos/state/AtosTag;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;-><init>(Lcom/toughstump/atos/state/AtosTag;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final remove(ILcom/toughstump/atos/state/AtosTag;)V
    .locals 1
    .param p2    # Lcom/toughstump/atos/state/AtosTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setViewModelList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;",
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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 7
    .line 8
    return-void
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
            "Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;",
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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public final update(ILcom/toughstump/atos/state/AtosTag;)V
    .locals 2
    .param p2    # Lcom/toughstump/atos/state/AtosTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->setTag(Lcom/toughstump/atos/state/AtosTag;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 30
    .line 31
    invoke-virtual {v0, p2}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->setTag(Lcom/toughstump/atos/state/AtosTag;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
