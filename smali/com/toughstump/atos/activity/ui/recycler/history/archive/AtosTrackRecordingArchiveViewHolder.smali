.class public final Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosTrackRecordingArchiveViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingArchiveViewHolder.kt\ncom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosTrackRecordingArchiveViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingArchiveViewHolder.kt\ncom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"
    }
.end annotation


# instance fields
.field private final archiveNameTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final buttonLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private csvImageButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dataPointsTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private deleteImageButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private detailsImageButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final expanderToggleImageView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private exportImageButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final firstEventTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lastEventTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public parent:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

.field private final trackNumberTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewModel:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;


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
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_record_archive_item_name:I

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
    check-cast v0, Landroid/widget/TextView;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->archiveNameTextView:Landroid/widget/TextView;

    .line 23
    .line 24
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_record_archive_item_first_time:I

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
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->firstEventTextView:Landroid/widget/TextView;

    .line 36
    .line 37
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_record_archive_item_last_time:I

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
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->lastEventTextView:Landroid/widget/TextView;

    .line 49
    .line 50
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_record_archive_item_point_count:I

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
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->dataPointsTextView:Landroid/widget/TextView;

    .line 62
    .line 63
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_record_archive_item_track_count:I

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
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->trackNumberTextView:Landroid/widget/TextView;

    .line 75
    .line 76
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->linear_atos_record_archive_item_extras:I

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
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

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
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 101
    .line 102
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_atos_record_archive_item_details:I

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/widget/ImageButton;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->detailsImageButton:Landroid/widget/ImageButton;

    .line 111
    .line 112
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_atos_record_archive_item_export:I

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/ImageButton;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->exportImageButton:Landroid/widget/ImageButton;

    .line 121
    .line 122
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_atos_record_archive_item_csv:I

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroid/widget/ImageButton;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->csvImageButton:Landroid/widget/ImageButton;

    .line 131
    .line 132
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ibtn_atos_record_archive_item_delete:I

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/widget/ImageButton;

    .line 139
    .line 140
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->deleteImageButton:Landroid/widget/ImageButton;

    .line 141
    .line 142
    return-void
.end method

.method public static final synthetic access$toggleExpansion(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->toggleExpansion()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final toggleExpansion()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->isExpanded()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->setExpanded(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 27
    .line 28
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_caret_down:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-virtual {v0, v2}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->setExpanded(Z)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 48
    .line 49
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_caret_up:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method


# virtual methods
.method public final getArchiveNameTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->archiveNameTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getButtonLayout()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCsvImageButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->csvImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDataPointsTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->dataPointsTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeleteImageButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->deleteImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDetailsImageButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->detailsImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExpanderToggleImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExportImageButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->exportImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFirstEventTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->firstEventTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastEventTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->lastEventTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParent()Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->parent:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "parent"

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

.method public final getTrackNumberTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->trackNumberTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewModel()Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->viewModel:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "viewModel"

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

.method public final init(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;)V
    .locals 4
    .param p1    # Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;
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
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->setViewModel(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->setParent(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->getFirstTrackTimeMillis()Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolderKt;->formatDate(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v0, v1

    .line 38
    :goto_0
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->firstEventTextView:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->getLastTrackTimeMillis()Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    invoke-static {v0, v1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolderKt;->formatDate(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_2
    if-eqz v1, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->lastEventTextView:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->archiveNameTextView:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolderKt;->access$getDisplayName(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->dataPointsTextView:Landroid/widget/TextView;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->getNumDataPoints()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->trackNumberTextView:Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->getNumTracks()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->buttonLayout:Landroid/widget/LinearLayout;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;->isExpanded()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    const/16 v1, 0x8

    .line 128
    .line 129
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 133
    .line 134
    new-instance v1, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder$init$3;

    .line 135
    .line 136
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder$init$3;-><init>(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->detailsImageButton:Landroid/widget/ImageButton;

    .line 143
    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    new-instance v1, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder$init$4;

    .line 147
    .line 148
    invoke-direct {v1, p2, p1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder$init$4;-><init>(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->deleteImageButton:Landroid/widget/ImageButton;

    .line 155
    .line 156
    if-eqz p2, :cond_6

    .line 157
    .line 158
    new-instance v0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder$init$5;

    .line 159
    .line 160
    invoke-direct {v0, p1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder$init$5;-><init>(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    :cond_6
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->csvImageButton:Landroid/widget/ImageButton;

    .line 167
    .line 168
    if-eqz p2, :cond_7

    .line 169
    .line 170
    new-instance v0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder$init$6;

    .line 171
    .line 172
    invoke-direct {v0, p1}, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder$init$6;-><init>(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    :cond_7
    return-void
.end method

.method public final setCsvImageButton(Landroid/widget/ImageButton;)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->csvImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeleteImageButton(Landroid/widget/ImageButton;)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->deleteImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-void
.end method

.method public final setDetailsImageButton(Landroid/widget/ImageButton;)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->detailsImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-void
.end method

.method public final setExportImageButton(Landroid/widget/ImageButton;)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->exportImageButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-void
.end method

.method public final setParent(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;
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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->parent:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveRecyclerAdapter;

    .line 7
    .line 8
    return-void
.end method

.method public final setViewModel(Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;
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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewHolder;->viewModel:Lcom/toughstump/atos/activity/ui/recycler/history/archive/AtosTrackRecordingArchiveViewModel;

    .line 7
    .line 8
    return-void
.end method
