.class public final Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/toughstump/atos/record/db/TrackRecord;",
        "Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosTrackRecordingDataPointRecyclerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingDataPointRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n1863#2,2:54\n*S KotlinDebug\n*F\n+ 1 AtosTrackRecordingDataPointRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter\n*L\n31#1:54,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosTrackRecordingDataPointRecyclerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingDataPointRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,53:1\n1863#2,2:54\n*S KotlinDebug\n*F\n+ 1 AtosTrackRecordingDataPointRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter\n*L\n31#1:54,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activityContext:Landroid/content/Context;
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
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->Companion:Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter$Companion;

    .line 8
    .line 9
    new-instance v0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter$Companion$DIFF_CALLBACK$1;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter$Companion$DIFF_CALLBACK$1;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 15
    .line 16
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
    sget-object v0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->pluginContext:Landroid/content/Context;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->activityContext:Landroid/content/Context;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 26
    .line 27
    return-void
.end method

.method public static final synthetic access$getDIFF_CALLBACK$cp()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method private final submitViewModelList()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getActivityContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->activityContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPluginContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->onBindViewHolder(Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;I)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/toughstump/atos/record/db/TrackRecord;

    .line 3
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p0}, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->init(Lcom/toughstump/atos/record/db/TrackRecord;Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;
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
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->pluginContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/atakmap/android/atos/plugin/R$layout;->atos_item_view_track_archive_data_point:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final update(Ljava/util/Collection;)V
    .locals 2
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
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->viewModelList:Ljava/util/List;

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
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/toughstump/atos/record/db/TrackRecord;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->viewModelList:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;->submitViewModelList()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
