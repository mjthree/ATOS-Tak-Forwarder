.class public final Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosTrackRecordingArchiveTagViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingArchiveTagViewHolder.kt\ncom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n1#2:87\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosTrackRecordingArchiveTagViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingArchiveTagViewHolder.kt\ncom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n1#2:87\n*E\n"
    }
.end annotation


# instance fields
.field private final buttonLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final csvExportButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final detailsImageButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final expanderToggleImageView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isExpanded:Z

.field private final manifestNameTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final numDataPointsTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final routeExportButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tagCallsignTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tagIdTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final typeImageView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewModel:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/record/db/RecordingTrackSummary;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
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
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_atos_record_archive_tag_item_type_image:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "findViewById(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Landroid/widget/ImageView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->typeImageView:Landroid/widget/ImageView;

    .line 23
    .line 24
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_record_archive_tag_item_id:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->tagIdTextView:Landroid/widget/TextView;

    .line 36
    .line 37
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_record_archive_tag_item_callsign:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->tagCallsignTextView:Landroid/widget/TextView;

    .line 49
    .line 50
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_record_archive_tag_item_manifest_name:I

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    check-cast v0, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->manifestNameTextView:Landroid/widget/TextView;

    .line 62
    .line 63
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_record_archive_tag_item_point_count:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast v0, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->numDataPointsTextView:Landroid/widget/TextView;

    .line 75
    .line 76
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->linear_atos_record_archive_tag_item_extras:I

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    check-cast v0, Landroid/widget/LinearLayout;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_atos_record_archive_tag_item_expanded_caret:I

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    check-cast v0, Landroid/widget/ImageView;

    .line 99
    .line 100
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 101
    .line 102
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_atos_record_archive_tag_item_details:I

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    check-cast v0, Landroid/widget/ImageButton;

    .line 112
    .line 113
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->detailsImageButton:Landroid/widget/ImageButton;

    .line 114
    .line 115
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_atos_record_archive_tag_item_csv:I

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    check-cast v0, Landroid/widget/ImageButton;

    .line 125
    .line 126
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->csvExportButton:Landroid/widget/ImageButton;

    .line 127
    .line 128
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_atos_record_archive_tag_item_route:I

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    check-cast p1, Landroid/widget/ImageButton;

    .line 138
    .line 139
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->routeExportButton:Landroid/widget/ImageButton;

    .line 140
    .line 141
    return-void
.end method

.method public static final synthetic access$toggleExpansion(Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->toggleExpansion()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final toggleExpansion()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->isExpanded:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->isExpanded:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 16
    .line 17
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_caret_down:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->isExpanded:Z

    .line 25
    .line 26
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 32
    .line 33
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_caret_up:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method


# virtual methods
.method public final getButtonLayout()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCsvExportButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->csvExportButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDetailsImageButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->detailsImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExpanderToggleImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getManifestNameTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->manifestNameTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNumDataPointsTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->numDataPointsTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRouteExportButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->routeExportButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagCallsignTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->tagCallsignTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagIdTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->tagIdTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTypeImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->typeImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewModel()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/record/db/RecordingTrackSummary;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->viewModel:Ljava/util/Map$Entry;

    .line 2
    .line 3
    return-object v0
.end method

.method public final init(Ljava/util/Map$Entry;Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;)V
    .locals 9
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/record/db/RecordingTrackSummary;",
            ">;",
            "Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "viewModel"

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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->viewModel:Ljava/util/Map$Entry;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/toughstump/atos/record/db/RecordingTrackSummary;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/toughstump/atos/record/db/RecordingTrackSummary;->getCotType()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    move-object v3, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v3, v0

    .line 31
    :goto_0
    if-eqz v3, :cond_1

    .line 32
    .line 33
    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->Companion:Lcom/toughstump/atos/AtosTrackType$Companion;

    .line 34
    .line 35
    new-instance v8, Lkot/KotType;

    .line 36
    .line 37
    const/4 v6, 0x6

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    move-object v2, v8

    .line 42
    invoke-direct/range {v2 .. v7}, Lkot/KotType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v8}, Lcom/toughstump/atos/AtosTrackType$Companion;->fromKotType(Lkot/KotType;)Lcom/toughstump/atos/AtosTrackType;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v1, v0

    .line 51
    :goto_1
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;->getIconId(Lcom/toughstump/atos/AtosTrackType;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->typeImageView:Landroid/widget/ImageView;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/toughstump/atos/record/db/RecordingTrackSummary;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/toughstump/atos/record/db/RecordingTrackSummary;->getColor()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/toughstump/atos/AtosColor;->valueOf(Ljava/lang/String;)Lcom/toughstump/atos/AtosColor;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->typeImageView:Landroid/widget/ImageView;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;->getColorInt(Lcom/toughstump/atos/AtosColor;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->tagIdTextView:Landroid/widget/TextView;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->viewModel:Ljava/util/Map$Entry;

    .line 88
    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lcom/toughstump/atos/record/db/RecordingTrackSummary;

    .line 96
    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/toughstump/atos/record/db/RecordingTrackSummary;->getTagId()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    move-object v2, v0

    .line 109
    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->tagCallsignTextView:Landroid/widget/TextView;

    .line 117
    .line 118
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->viewModel:Ljava/util/Map$Entry;

    .line 119
    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Lcom/toughstump/atos/record/db/RecordingTrackSummary;

    .line 127
    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/toughstump/atos/record/db/RecordingTrackSummary;->getLabel()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    goto :goto_3

    .line 135
    :cond_4
    move-object v2, v0

    .line 136
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->manifestNameTextView:Landroid/widget/TextView;

    .line 140
    .line 141
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->viewModel:Ljava/util/Map$Entry;

    .line 142
    .line 143
    if-eqz v2, :cond_5

    .line 144
    .line 145
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Lcom/toughstump/atos/record/db/RecordingTrackSummary;

    .line 150
    .line 151
    if-eqz v2, :cond_5

    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/toughstump/atos/record/db/RecordingTrackSummary;->getManifestName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    goto :goto_4

    .line 158
    :cond_5
    move-object v2, v0

    .line 159
    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->numDataPointsTextView:Landroid/widget/TextView;

    .line 163
    .line 164
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->viewModel:Ljava/util/Map$Entry;

    .line 165
    .line 166
    if-eqz v2, :cond_6

    .line 167
    .line 168
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Lcom/toughstump/atos/record/db/RecordingTrackSummary;

    .line 173
    .line 174
    if-eqz v2, :cond_6

    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/toughstump/atos/record/db/RecordingTrackSummary;->getTrackRecordCount()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

    .line 192
    .line 193
    iget-boolean v1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->isExpanded:Z

    .line 194
    .line 195
    if-eqz v1, :cond_7

    .line 196
    .line 197
    const/4 v1, 0x0

    .line 198
    goto :goto_5

    .line 199
    :cond_7
    const/16 v1, 0x8

    .line 200
    .line 201
    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 205
    .line 206
    new-instance v1, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder$init$2;

    .line 207
    .line 208
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder$init$2;-><init>(Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->detailsImageButton:Landroid/widget/ImageButton;

    .line 215
    .line 216
    new-instance v1, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder$init$3;

    .line 217
    .line 218
    invoke-direct {v1, p2, p1}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder$init$3;-><init>(Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;Ljava/util/Map$Entry;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->csvExportButton:Landroid/widget/ImageButton;

    .line 225
    .line 226
    new-instance v1, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder$init$4;

    .line 227
    .line 228
    invoke-direct {v1, p2, p1}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder$init$4;-><init>(Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;Ljava/util/Map$Entry;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->routeExportButton:Landroid/widget/ImageButton;

    .line 235
    .line 236
    new-instance v1, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder$init$5;

    .line 237
    .line 238
    invoke-direct {v1, p2, p1}, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder$init$5;-><init>(Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagRecyclerAdapter;Ljava/util/Map$Entry;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public final isExpanded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->isExpanded:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setExpanded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->isExpanded:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setViewModel(Ljava/util/Map$Entry;)V
    .locals 0
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/record/db/RecordingTrackSummary;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/tag/AtosTrackRecordingArchiveTagViewHolder;->viewModel:Ljava/util/Map$Entry;

    .line 2
    .line 3
    return-void
.end method
