.class public final Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private callsignTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private greenLight:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

.field private final parent:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private redLight:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private settingsImageView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private statusTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tagIdTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tagTypeImageView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "itemView"

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
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->itemView:Landroid/view/View;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->parent:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;

    .line 17
    .line 18
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->tv_manifest_tag_item_id:I

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "findViewById(...)"

    .line 25
    .line 26
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast p2, Landroid/widget/TextView;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->tagIdTextView:Landroid/widget/TextView;

    .line 32
    .line 33
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->tv_manifest_tag_item_callsign:I

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast p2, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->callsignTextView:Landroid/widget/TextView;

    .line 45
    .line 46
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->tv_manifest_tag_item_status:I

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    check-cast p2, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->statusTextView:Landroid/widget/TextView;

    .line 58
    .line 59
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->iv_manifest_tag_item_type:I

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    check-cast p2, Landroid/widget/ImageView;

    .line 69
    .line 70
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->tagTypeImageView:Landroid/widget/ImageView;

    .line 71
    .line 72
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->iv_manifest_tag_item_status_red:I

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    check-cast p2, Landroid/widget/ImageView;

    .line 82
    .line 83
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->redLight:Landroid/widget/ImageView;

    .line 84
    .line 85
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->iv_manifest_tag_item_status_green:I

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    check-cast p2, Landroid/widget/ImageView;

    .line 95
    .line 96
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->greenLight:Landroid/widget/ImageView;

    .line 97
    .line 98
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->iv_manifest_tag_item_settings:I

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    check-cast p1, Landroid/widget/ImageView;

    .line 108
    .line 109
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->settingsImageView:Landroid/widget/ImageView;

    .line 110
    .line 111
    return-void
.end method


# virtual methods
.method public final getCallsignTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->callsignTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGreenLight()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->greenLight:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getManifestTag()Lcom/toughstump/atos/manifest/AtosManifestTag;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "manifestTag"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getParent()Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->parent:Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagRecyclerAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRedLight()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->redLight:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSettingsImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->settingsImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatusTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->statusTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagIdTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->tagIdTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagTypeImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->tagTypeImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCallsignTextView(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->callsignTextView:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setGreenLight(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->greenLight:Landroid/widget/ImageView;

    .line 7
    .line 8
    return-void
.end method

.method public final setManifestTag(Lcom/toughstump/atos/manifest/AtosManifestTag;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifestTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 7
    .line 8
    return-void
.end method

.method public final setRedLight(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->redLight:Landroid/widget/ImageView;

    .line 7
    .line 8
    return-void
.end method

.method public final setSettingsImageView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->settingsImageView:Landroid/widget/ImageView;

    .line 7
    .line 8
    return-void
.end method

.method public final setStatusTextView(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->statusTextView:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTagIdTextView(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->tagIdTextView:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method

.method public final setTagTypeImageView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/manifest/tag/AtosManifestTagViewHolder;->tagTypeImageView:Landroid/widget/ImageView;

    .line 7
    .line 8
    return-void
.end method
