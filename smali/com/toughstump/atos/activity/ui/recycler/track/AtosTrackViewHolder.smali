.class public final Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosTrackViewHolder"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private batteryVoltageTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private broadcastToggleButton:Landroid/widget/ToggleButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private callsignTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private elevationTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private expandedView:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private expanderToggleImageView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private headingTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private locationTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private manifestNameTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ownshipBearingTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ownshipRangeTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rangeBearingButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rootLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private speedTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private statusImageView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private statusTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tagIdTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private timeTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private trackTypeImageView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private verticalSpeedTextView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public viewModel:Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->Companion:Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
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
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ll_track_item_root:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/LinearLayout;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_track_item_type:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/ImageView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->trackTypeImageView:Landroid/widget/ImageView;

    .line 28
    .line 29
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->tv_track_item_tag_id:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->tagIdTextView:Landroid/widget/TextView;

    .line 38
    .line 39
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->tv_track_item_callsign:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->callsignTextView:Landroid/widget/TextView;

    .line 48
    .line 49
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->tv_track_item_time:I

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 58
    .line 59
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->tv_track_item_location:I

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/TextView;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->locationTextView:Landroid/widget/TextView;

    .line 68
    .line 69
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_track_item_connection_status:I

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->statusTextView:Landroid/widget/TextView;

    .line 78
    .line 79
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_track_item_connection_status:I

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/ImageView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->statusImageView:Landroid/widget/ImageView;

    .line 88
    .line 89
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_track_item_extras:I

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/widget/ImageView;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 98
    .line 99
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ll_track_item_extras:I

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/widget/LinearLayout;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->expandedView:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ib_track_item_rab:I

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroid/widget/ImageButton;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->rangeBearingButton:Landroid/widget/ImageButton;

    .line 118
    .line 119
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->btn_track_item_broadcast_tag:I

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/ToggleButton;

    .line 126
    .line 127
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->broadcastToggleButton:Landroid/widget/ToggleButton;

    .line 128
    .line 129
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->tv_track_item_ownship_distance:I

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/widget/TextView;

    .line 136
    .line 137
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->ownshipRangeTextView:Landroid/widget/TextView;

    .line 138
    .line 139
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->tv_track_item_ownship_heading:I

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/widget/TextView;

    .line 146
    .line 147
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->ownshipBearingTextView:Landroid/widget/TextView;

    .line 148
    .line 149
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_track_item_manifest_name:I

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroid/widget/TextView;

    .line 156
    .line 157
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->manifestNameTextView:Landroid/widget/TextView;

    .line 158
    .line 159
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->tv_track_item_elevation:I

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Landroid/widget/TextView;

    .line 166
    .line 167
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->elevationTextView:Landroid/widget/TextView;

    .line 168
    .line 169
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->tv_track_item_speed:I

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Landroid/widget/TextView;

    .line 176
    .line 177
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->speedTextView:Landroid/widget/TextView;

    .line 178
    .line 179
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->tv_track_item_track_heading:I

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Landroid/widget/TextView;

    .line 186
    .line 187
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->headingTextView:Landroid/widget/TextView;

    .line 188
    .line 189
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->tv_track_item_vert_speed:I

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Landroid/widget/TextView;

    .line 196
    .line 197
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->verticalSpeedTextView:Landroid/widget/TextView;

    .line 198
    .line 199
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->tv_track_item_voltage:I

    .line 200
    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Landroid/widget/TextView;

    .line 206
    .line 207
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->batteryVoltageTextView:Landroid/widget/TextView;

    .line 208
    .line 209
    return-void
.end method

.method private final panMap()V
    .locals 4

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->INSTANCE:Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/atak/plugin/AtosAtakLifecycle;->getMapInteractions()Lcom/toughstump/atos/atak/map/IAtakMapInteractions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getPoint()Lkot/KotPoint;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x2

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v0, v1, v3, v2, v3}, Lcom/toughstump/atos/atak/map/IAtakMapInteractions$DefaultImpls;->panMap$default(Lcom/toughstump/atos/atak/map/IAtakMapInteractions;Lkot/KotPoint;Ljava/lang/Double;ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private final setBroadcastColor(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const v0, -0xff0100

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/high16 v0, -0x10000

    .line 8
    .line 9
    :goto_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->broadcastToggleButton:Landroid/widget/ToggleButton;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    if-eqz p1, :cond_2

    .line 17
    .line 18
    const-string p1, "SENDING"

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const-string p1, "SEND"

    .line 22
    .line 23
    :goto_1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->broadcastToggleButton:Landroid/widget/ToggleButton;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_3
    return-void
.end method

.method private final setRangeBearingColor(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const p1, -0xff0100

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, -0x1

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->rangeBearingButton:Landroid/widget/ImageButton;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method private final toggleBroadcast()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getBroadcastEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v8, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getTagState()Lcom/toughstump/atos/state/model/AtosTagState;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/16 v6, 0xd

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    move v3, v8

    .line 34
    invoke-static/range {v1 .. v7}, Lcom/toughstump/atos/state/model/AtosTagState;->copy$default(Lcom/toughstump/atos/state/model/AtosTagState;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/toughstump/atos/state/model/AtosTagState;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Lcom/toughstump/atos/state/AtosStateProvider;->updateTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V

    .line 41
    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    sget-object v0, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->INSTANCE:Lcom/toughstump/atos/net/AtosNetworkSwitchboard;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const/4 v2, 0x2

    .line 60
    const/4 v3, 0x0

    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-static {v0, v1, v4, v2, v3}, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->sendExternalKotEvent$default(Lcom/toughstump/atos/net/AtosNetworkSwitchboard;Lcom/toughstump/atos/kot/AtosKotEvent;ZILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-direct {p0, v8}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->setBroadcastColor(Z)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private final toggleExpansion()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->isExpanded()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->setExpanded(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->expandedView:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_caret_down:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v2}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->setExpanded(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->expandedView:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_caret_up:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_0
    return-void
.end method

.method private final toggleRangeBearing()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getRangeAndBearingEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->getViewModel()Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getTagState()Lcom/toughstump/atos/state/model/AtosTagState;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/16 v6, 0xb

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    move v4, v0

    .line 34
    invoke-static/range {v1 .. v7}, Lcom/toughstump/atos/state/model/AtosTagState;->copy$default(Lcom/toughstump/atos/state/model/AtosTagState;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/toughstump/atos/state/model/AtosTagState;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Lcom/toughstump/atos/state/AtosStateProvider;->updateTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->setRangeBearingColor(Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final getBatteryVoltageTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->batteryVoltageTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBroadcastToggleButton()Landroid/widget/ToggleButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->broadcastToggleButton:Landroid/widget/ToggleButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallsignTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->callsignTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getElevationTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->elevationTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExpandedView()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->expandedView:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExpanderToggleImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHeadingTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->headingTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLocationTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->locationTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getManifestNameTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->manifestNameTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOwnshipBearingTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->ownshipBearingTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOwnshipRangeTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->ownshipRangeTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRangeBearingButton()Landroid/widget/ImageButton;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->rangeBearingButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRootLayout()Landroid/widget/LinearLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSpeedTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->speedTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatusImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->statusImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatusTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->statusTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagIdTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->tagIdTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTimeTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrackTypeImageView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->trackTypeImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVerticalSpeedTextView()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->verticalSpeedTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewModel()Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->viewModel:Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

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

.method public final init(Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;)V
    .locals 4
    .param p1    # Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;
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
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->setViewModel(Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->isVisible()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 30
    .line 31
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 44
    .line 45
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    .line 47
    const/4 v2, -0x1

    .line 48
    const/4 v3, -0x2

    .line 49
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->tagIdTextView:Landroid/widget/TextView;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTagId()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->callsignTextView:Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getCallsign()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTime()Lkot/KotTime;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;->getDisplay(Lkot/KotTime;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->trackTypeImageView:Landroid/widget/ImageView;

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTrackType()Lcom/toughstump/atos/AtosTrackType;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;->getIconId(Lcom/toughstump/atos/AtosTrackType;)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    .line 110
    .line 111
    :cond_4
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->trackTypeImageView:Landroid/widget/ImageView;

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;->getColorInt(Lcom/toughstump/atos/AtosColor;)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 124
    .line 125
    .line 126
    :cond_5
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->trackTypeImageView:Landroid/widget/ImageView;

    .line 127
    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 134
    .line 135
    if-eqz v0, :cond_7

    .line 136
    .line 137
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    :cond_7
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->rangeBearingButton:Landroid/widget/ImageButton;

    .line 141
    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .line 146
    .line 147
    :cond_8
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getRangeAndBearingEnabled()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-direct {p0, v0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->setRangeBearingColor(Z)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->broadcastToggleButton:Landroid/widget/ToggleButton;

    .line 159
    .line 160
    if-eqz v0, :cond_9

    .line 161
    .line 162
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getBroadcastEnabled()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-direct {p0, v0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->setBroadcastColor(Z)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->ownshipBearingTextView:Landroid/widget/TextView;

    .line 177
    .line 178
    if-eqz v0, :cond_a

    .line 179
    .line 180
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getOwnshipHeadingDisplay()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    :cond_a
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->ownshipRangeTextView:Landroid/widget/TextView;

    .line 188
    .line 189
    if-eqz v0, :cond_b

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getOwnshipRangeDisplay()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    :cond_b
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->manifestNameTextView:Landroid/widget/TextView;

    .line 199
    .line 200
    if-eqz v0, :cond_c

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getManifestName()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    .line 216
    .line 217
    :cond_c
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->locationTextView:Landroid/widget/TextView;

    .line 218
    .line 219
    if-eqz v0, :cond_d

    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getCoordinateDisplay()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    :cond_d
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->isStale()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_12

    .line 233
    .line 234
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->statusTextView:Landroid/widget/TextView;

    .line 235
    .line 236
    if-eqz v0, :cond_e

    .line 237
    .line 238
    const-string v1, "Not Active"

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    :cond_e
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->statusImageView:Landroid/widget/ImageView;

    .line 244
    .line 245
    if-eqz v0, :cond_f

    .line 246
    .line 247
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->light_grey:I

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    .line 251
    .line 252
    :cond_f
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    .line 253
    .line 254
    if-eqz v0, :cond_10

    .line 255
    .line 256
    sget v1, Lcom/atakmap/android/atos/plugin/R$color;->darker_gray:I

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 259
    .line 260
    .line 261
    :cond_10
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->expandedView:Landroid/widget/LinearLayout;

    .line 262
    .line 263
    if-eqz v0, :cond_11

    .line 264
    .line 265
    sget v1, Lcom/atakmap/android/atos/plugin/R$color;->darker_gray:I

    .line 266
    .line 267
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 268
    .line 269
    .line 270
    :cond_11
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 271
    .line 272
    if-eqz v0, :cond_17

    .line 273
    .line 274
    const v1, -0x333334

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    .line 279
    .line 280
    goto :goto_0

    .line 281
    :cond_12
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->statusTextView:Landroid/widget/TextView;

    .line 282
    .line 283
    if-eqz v0, :cond_13

    .line 284
    .line 285
    const-string v1, "Connected"

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .line 289
    .line 290
    :cond_13
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->statusImageView:Landroid/widget/ImageView;

    .line 291
    .line 292
    if-eqz v0, :cond_14

    .line 293
    .line 294
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->light_green:I

    .line 295
    .line 296
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    .line 298
    .line 299
    :cond_14
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    .line 300
    .line 301
    if-eqz v0, :cond_15

    .line 302
    .line 303
    sget v1, Lcom/atakmap/android/atos/plugin/R$color;->black:I

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 306
    .line 307
    .line 308
    :cond_15
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->expandedView:Landroid/widget/LinearLayout;

    .line 309
    .line 310
    if-eqz v0, :cond_16

    .line 311
    .line 312
    sget v1, Lcom/atakmap/android/atos/plugin/R$color;->black:I

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 315
    .line 316
    .line 317
    :cond_16
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 318
    .line 319
    if-eqz v0, :cond_17

    .line 320
    .line 321
    const v1, -0xff0100

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    .line 326
    .line 327
    :cond_17
    :goto_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->elevationTextView:Landroid/widget/TextView;

    .line 328
    .line 329
    if-eqz v0, :cond_18

    .line 330
    .line 331
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getAltitudeDisplay()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    :cond_18
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->speedTextView:Landroid/widget/TextView;

    .line 339
    .line 340
    if-eqz v0, :cond_19

    .line 341
    .line 342
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolderKt;->getTrackSpeedDisplay(Lcom/toughstump/atos/kot/AtosKotEvent;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    .line 356
    .line 357
    :cond_19
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->headingTextView:Landroid/widget/TextView;

    .line 358
    .line 359
    if-eqz v0, :cond_1a

    .line 360
    .line 361
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTagHeadingDisplay()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    .line 367
    .line 368
    :cond_1a
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->batteryVoltageTextView:Landroid/widget/TextView;

    .line 369
    .line 370
    if-eqz v0, :cond_1b

    .line 371
    .line 372
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolderKt;->getVoltageDisplay(Lcom/toughstump/atos/kot/AtosKotEvent;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    .line 386
    .line 387
    :cond_1b
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->verticalSpeedTextView:Landroid/widget/TextView;

    .line 388
    .line 389
    if-eqz v0, :cond_1c

    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolderKt;->getVerticalSpeedDisplay(Lcom/toughstump/atos/kot/AtosKotEvent;)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    .line 405
    .line 406
    :cond_1c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
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
    move-result p1

    .line 10
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_track_item_extras:I

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->toggleExpansion()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->ib_track_item_rab:I

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->toggleRangeBearing()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->btn_track_item_broadcast_tag:I

    .line 27
    .line 28
    if-ne p1, v0, :cond_2

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->toggleBroadcast()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_track_item_type:I

    .line 35
    .line 36
    if-ne p1, v0, :cond_3

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->panMap()V

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_0
    return-void
.end method

.method public final setBatteryVoltageTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->batteryVoltageTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setBroadcastToggleButton(Landroid/widget/ToggleButton;)V
    .locals 0
    .param p1    # Landroid/widget/ToggleButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->broadcastToggleButton:Landroid/widget/ToggleButton;

    .line 2
    .line 3
    return-void
.end method

.method public final setCallsignTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->callsignTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setElevationTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->elevationTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpandedView(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->expandedView:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpanderToggleImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->expanderToggleImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-void
.end method

.method public final setHeadingTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->headingTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setLocationTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->locationTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setManifestNameTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->manifestNameTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setOwnshipBearingTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->ownshipBearingTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setOwnshipRangeTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->ownshipRangeTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setRangeBearingButton(Landroid/widget/ImageButton;)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->rangeBearingButton:Landroid/widget/ImageButton;

    .line 2
    .line 3
    return-void
.end method

.method public final setRootLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1    # Landroid/widget/LinearLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-void
.end method

.method public final setSpeedTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->speedTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatusImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->statusImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatusTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->statusTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setTagIdTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->tagIdTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setTimeTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->timeTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setTrackTypeImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->trackTypeImageView:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-void
.end method

.method public final setVerticalSpeedTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->verticalSpeedTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-void
.end method

.method public final setViewModel(Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;
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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/AtosTrackViewHolder;->viewModel:Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;

    .line 7
    .line 8
    return-void
.end method
