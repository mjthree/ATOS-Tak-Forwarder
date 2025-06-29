.class public final Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosManifestTagRecyclerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosManifestTagRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n295#2,2:115\n1010#2,2:117\n230#2,2:119\n1863#2,2:121\n1010#2,2:123\n230#2,2:125\n*S KotlinDebug\n*F\n+ 1 AtosManifestTagRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter\n*L\n62#1:115,2\n67#1:117,2\n71#1:119,2\n79#1:121,2\n80#1:123,2\n87#1:125,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosManifestTagRecyclerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosManifestTagRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n295#2,2:115\n1010#2,2:117\n230#2,2:119\n1863#2,2:121\n1010#2,2:123\n230#2,2:125\n*S KotlinDebug\n*F\n+ 1 AtosManifestTagRecyclerAdapter.kt\ncom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter\n*L\n62#1:115,2\n67#1:117,2\n71#1:119,2\n79#1:121,2\n80#1:123,2\n87#1:125,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosManifestTagRecyclerAdapter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activeManifestTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->Companion:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;
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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->pluginContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

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

.method public final getParent()Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->parent:Lcom/toughstump/atos/activity/ui/frag/manifest/AtosManifestDetailsFragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPluginContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->onBindViewHolder(Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;I)V
    .locals 2
    .param p1    # Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;

    .line 3
    invoke-virtual {p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->getManifestTag()Lcom/toughstump/atos/manifest/AtosManifestTag;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->setManifestTag(Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 4
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->getTagIdTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->getTagId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->getCallsignTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->getCallsign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->getTrackType()Lcom/toughstump/atos/AtosTrackType;

    .line 7
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->getSettingsImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$onBindViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$onBindViewHolder$1;-><init>(Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->getTagTypeImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->getTrackType()Lcom/toughstump/atos/AtosTrackType;

    move-result-object v1

    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;->getIconId(Lcom/toughstump/atos/AtosTrackType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->getTagTypeImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->getColor()Lcom/toughstump/atos/AtosColor;

    move-result-object v1

    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;->getColorInt(Lcom/toughstump/atos/AtosColor;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 10
    invoke-virtual {p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->isActive()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->getRedLight()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->getGreenLight()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->getStatusTextView()Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "Active"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->getRedLight()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->getGreenLight()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->getStatusTextView()Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "Disconnected"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;
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
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->pluginContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 3
    sget v0, Lcom/atakmap/android/atos/plugin/R$layout;->atos_item_view_inactive_tag:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1, p0}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;-><init>(Landroid/view/View;Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;)V

    return-object p2
.end method

.method public final update(Lcom/toughstump/atos/manifest/AtosManifestTag;)V
    .locals 5
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifestTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "manifestTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getTagId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;

    .line 4
    invoke-virtual {v3}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->getTagId()I

    move-result v3

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 5
    new-instance v0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;

    invoke-direct {v0, p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;-><init>(Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 6
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v1, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$update$$inlined$sortBy$1;

    invoke-direct {v1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$update$$inlined$sortBy$1;-><init>()V

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;

    .line 12
    invoke-virtual {v4}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->getTagId()I

    move-result v4

    if-ne v4, v0, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;

    invoke-virtual {v1, p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->setManifestTag(Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 14
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_1
    return-void

    .line 15
    :cond_5
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Collection contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final update(Lcom/toughstump/atos/state/AtosTag;)V
    .locals 6
    .param p1    # Lcom/toughstump/atos/state/AtosTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "AtosManifestTagRecyclerAdapter"

    const-string v1, "atosTag"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;

    .line 18
    invoke-virtual {v4}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->getTagId()I

    move-result v4

    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 19
    const-string p1, "why was index -1?"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 20
    :cond_1
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;

    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->isStale()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;->setActive(Z)V

    .line 21
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 22
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {p1, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    const-string p1, "why did looking in the list fail?"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final updateAll(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/toughstump/atos/manifest/AtosManifestTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "newManifestTagList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

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
    check-cast v0, Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

    .line 28
    .line 29
    new-instance v2, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/ManifestTagViewModel;-><init>(Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;->activeManifestTagList:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x1

    .line 45
    if-le v0, v1, :cond_1

    .line 46
    .line 47
    new-instance v0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$updateAll$$inlined$sortBy$1;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter$updateAll$$inlined$sortBy$1;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 56
    .line 57
    .line 58
    return-void
.end method
