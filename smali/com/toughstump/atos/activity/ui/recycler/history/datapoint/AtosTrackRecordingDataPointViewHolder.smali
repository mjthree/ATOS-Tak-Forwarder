.class public final Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private final altitudeTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callsignTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final headingTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final latitudeTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final longitudeTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private parent:Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final speedTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final timeTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewModel:Lcom/toughstump/atos/record/db/TrackRecord;
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
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_data_point_time:I

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
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 23
    .line 24
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_data_point_callsign:I

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
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->callsignTextView:Landroid/widget/TextView;

    .line 36
    .line 37
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_data_point_latitude:I

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
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->latitudeTextView:Landroid/widget/TextView;

    .line 49
    .line 50
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_data_point_longitude:I

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
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->longitudeTextView:Landroid/widget/TextView;

    .line 62
    .line 63
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_data_point_altitude:I

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
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->altitudeTextView:Landroid/widget/TextView;

    .line 75
    .line 76
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_data_point_heading:I

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
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->headingTextView:Landroid/widget/TextView;

    .line 88
    .line 89
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_data_point_speed:I

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    check-cast p1, Landroid/widget/TextView;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->speedTextView:Landroid/widget/TextView;

    .line 101
    .line 102
    return-void
.end method


# virtual methods
.method public final getAltitudeTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->altitudeTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallsignTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->callsignTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHeadingTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->headingTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLatitudeTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->latitudeTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLongitudeTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->longitudeTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSpeedTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->speedTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTimeTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final init(Lcom/toughstump/atos/record/db/TrackRecord;Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;)V
    .locals 3
    .param p1    # Lcom/toughstump/atos/record/db/TrackRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointRecyclerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "trackRecord"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parentAdapter"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->viewModel:Lcom/toughstump/atos/record/db/TrackRecord;

    .line 12
    .line 13
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 14
    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 16
    .line 17
    const-string v1, "hh:mm:ss"

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->callsignTextView:Landroid/widget/TextView;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getLabel()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->latitudeTextView:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lkot/KotPoint;->getLatitude()D

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->longitudeTextView:Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lkot/KotPoint;->getLongitude()D

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->altitudeTextView:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lkot/KotPoint;->getAltitude()D

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->headingTextView:Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getHeadingDegTrue()D

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/recycler/history/datapoint/AtosTrackRecordingDataPointViewHolder;->speedTextView:Landroid/widget/TextView;

    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getSpeedMps()D

    .line 118
    .line 119
    .line 120
    move-result-wide v1

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, " mps"

    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method
