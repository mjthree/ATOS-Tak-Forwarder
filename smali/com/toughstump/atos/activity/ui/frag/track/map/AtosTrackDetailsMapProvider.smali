.class public final Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosTrackDetailsMapProvider"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static track:Lcom/atakmap/android/track/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;

    invoke-direct {v0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;-><init>()V

    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;->INSTANCE:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final findMaxAvgSpeed(Ljava/util/List;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Latak/core/sn;",
            ">;)",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;",
            ">;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/atakmap/coremap/filesystem/FileSystemUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AtosTrackDetailsMapProvider"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p1, "Cannot find speed values without crumbs"

    .line 11
    .line 12
    invoke-static {v1, p1}, Lcom/atakmap/coremap/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    move-object v7, v2

    .line 26
    move-wide v5, v3

    .line 27
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_4

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    check-cast v8, Latak/core/sn;

    .line 38
    .line 39
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget v9, v8, Latak/core/sn;->a:F

    .line 43
    .line 44
    const/4 v10, 0x0

    .line 45
    cmpg-float v10, v9, v10

    .line 46
    .line 47
    if-ltz v10, :cond_1

    .line 48
    .line 49
    float-to-double v9, v9

    .line 50
    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    .line 51
    .line 52
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Double;->compare(DD)I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    if-eqz v9, :cond_1

    .line 57
    .line 58
    iget v9, v8, Latak/core/sn;->a:F

    .line 59
    .line 60
    float-to-double v9, v9

    .line 61
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-nez v9, :cond_1

    .line 66
    .line 67
    iget v9, v8, Latak/core/sn;->a:F

    .line 68
    .line 69
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eqz v9, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    iget v9, v8, Latak/core/sn;->a:F

    .line 92
    .line 93
    float-to-double v10, v9

    .line 94
    add-double/2addr v5, v10

    .line 95
    float-to-double v10, v9

    .line 96
    cmpl-double v10, v10, v3

    .line 97
    .line 98
    if-lez v10, :cond_1

    .line 99
    .line 100
    float-to-double v3, v9

    .line 101
    iget-object v7, v8, Latak/core/sn;->d:Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    move-object v7, v2

    .line 105
    move-wide v5, v3

    .line 106
    :cond_4
    const/4 p1, 0x1

    .line 107
    if-ge v0, p1, :cond_5

    .line 108
    .line 109
    const-string p1, "No crumbs had speed information"

    .line 110
    .line 111
    invoke-static {v1, p1}, Lcom/atakmap/coremap/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    return-object v2

    .line 115
    :cond_5
    new-instance p1, Landroid/util/Pair;

    .line 116
    .line 117
    new-instance v1, Landroid/util/Pair;

    .line 118
    .line 119
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-direct {v1, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    int-to-double v2, v0

    .line 127
    div-double/2addr v5, v2

    .line 128
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    return-object p1
.end method


# virtual methods
.method public final getTrack(Ljava/util/Collection;)Lcom/atakmap/android/track/c;
    .locals 9
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;)",
            "Lcom/atakmap/android/track/c;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "trackRecords"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "Executing GetTrackPointsTask: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;->track:Lcom/atakmap/android/track/c;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string v1, "Current"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/atakmap/android/track/c;->g()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v1, v2

    .line 36
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "AtosTrackDetailsMapProvider"

    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/atakmap/coremap/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/frag/track/map/CrumbProviderKt;->getCrumbs(Ljava/util/Collection;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/atakmap/coremap/filesystem/FileSystemUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    const-string p1, "Cannot create tracks w/out crumbs for id: "

    .line 59
    .line 60
    invoke-static {v1, p1}, Lcom/atakmap/coremap/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_2
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/track/map/CrumbProviderKt;->getTrackPolyline(Ljava/util/Collection;)Latak/core/sp;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    const-string p1, "Unable to load Track points:"

    .line 71
    .line 72
    invoke-static {v1, p1}, Lcom/atakmap/coremap/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return-object v2

    .line 76
    :cond_3
    new-instance v4, Lcom/atakmap/android/track/c;

    .line 77
    .line 78
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-direct {v4, v5, v3}, Lcom/atakmap/android/track/c;-><init>(Lcom/atakmap/android/maps/MapView;Latak/core/sp;)V

    .line 83
    .line 84
    .line 85
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/toughstump/atos/record/db/TrackRecord;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getLabel()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    sget-object v6, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 96
    .line 97
    invoke-virtual {v6}, Lcom/atakmap/android/atos/AtosLifecycle;->getPluginContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v4, v5, v7}, Lcom/atakmap/android/track/c;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getColor()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/toughstump/atos/AtosColor;->valueOf(Ljava/lang/String;)Lcom/toughstump/atos/AtosColor;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;->getColorInt(Lcom/toughstump/atos/AtosColor;)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    invoke-virtual {v6}, Lcom/atakmap/android/atos/AtosLifecycle;->getPluginContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v4, p1, v5}, Lcom/atakmap/android/track/c;->a(ILandroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    const/4 v5, 0x1

    .line 128
    if-ne p1, v5, :cond_7

    .line 129
    .line 130
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Latak/core/sn;

    .line 135
    .line 136
    const-string v0, "Track has a single point"

    .line 137
    .line 138
    invoke-static {v1, v0}, Lcom/atakmap/coremap/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v3}, Lcom/atakmap/android/track/c;->d(Latak/core/sp;)V

    .line 142
    .line 143
    .line 144
    const-wide/16 v0, 0x0

    .line 145
    .line 146
    invoke-virtual {v4, v0, v1}, Lcom/atakmap/android/track/c;->a(D)V

    .line 147
    .line 148
    .line 149
    iget-object v3, p1, Latak/core/sn;->e:Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->isAltitudeValid()Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_4

    .line 156
    .line 157
    iget-object v3, p1, Latak/core/sn;->d:Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 158
    .line 159
    invoke-virtual {v4, v3}, Lcom/atakmap/android/track/c;->a(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)V

    .line 160
    .line 161
    .line 162
    iget-object v3, p1, Latak/core/sn;->d:Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 163
    .line 164
    invoke-virtual {v4, v3}, Lcom/atakmap/android/track/c;->b(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    invoke-virtual {v4, v2}, Lcom/atakmap/android/track/c;->a(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v2}, Lcom/atakmap/android/track/c;->b(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)V

    .line 172
    .line 173
    .line 174
    :goto_1
    iget v3, p1, Latak/core/sn;->a:F

    .line 175
    .line 176
    const/4 v5, 0x0

    .line 177
    cmpg-float v5, v3, v5

    .line 178
    .line 179
    if-ltz v5, :cond_6

    .line 180
    .line 181
    float-to-double v5, v3

    .line 182
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-nez v3, :cond_6

    .line 187
    .line 188
    iget v3, p1, Latak/core/sn;->a:F

    .line 189
    .line 190
    float-to-double v5, v3

    .line 191
    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Double;->compare(DD)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-nez v3, :cond_5

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_5
    iget v2, p1, Latak/core/sn;->a:F

    .line 204
    .line 205
    float-to-double v2, v2

    .line 206
    iget-object v5, p1, Latak/core/sn;->d:Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 207
    .line 208
    invoke-virtual {v4, v2, v3, v5}, Lcom/atakmap/android/track/c;->a(DLcom/atakmap/coremap/maps/coords/GeoPointMetaData;)V

    .line 209
    .line 210
    .line 211
    iget p1, p1, Latak/core/sn;->a:F

    .line 212
    .line 213
    float-to-double v2, p1

    .line 214
    invoke-virtual {v4, v2, v3}, Lcom/atakmap/android/track/c;->d(D)V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_6
    :goto_2
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 219
    .line 220
    invoke-virtual {v4, v5, v6, v2}, Lcom/atakmap/android/track/c;->a(DLcom/atakmap/coremap/maps/coords/GeoPointMetaData;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v5, v6}, Lcom/atakmap/android/track/c;->d(D)V

    .line 224
    .line 225
    .line 226
    :goto_3
    invoke-virtual {v4, v0, v1}, Lcom/atakmap/android/track/c;->b(D)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v0, v1}, Lcom/atakmap/android/track/c;->c(D)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_4

    .line 233
    .line 234
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    const-string v6, "Analyzing track with crumb count: "

    .line 240
    .line 241
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {v1, p1}, Lcom/atakmap/coremap/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Latak/core/sp;->getMetaDataPoints()[Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {v3}, Latak/core/sp;->getTotalDistance()D

    .line 263
    .line 264
    .line 265
    move-result-wide v6

    .line 266
    invoke-static {v6, v7}, Latak/core/pi;->a(D)I

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    invoke-static {p1, v6, v5}, Latak/core/pi;->a([Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;IZ)Latak/core/pd;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    if-nez p1, :cond_8

    .line 275
    .line 276
    const-string p1, "Unable to analyze Track points:"

    .line 277
    .line 278
    invoke-static {v1, p1}, Lcom/atakmap/coremap/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    return-object v2

    .line 282
    :cond_8
    invoke-virtual {p1}, Latak/core/pd;->l()[Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-static {v1}, Latak/core/ph;->a([Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)Landroid/util/Pair;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v2, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 293
    .line 294
    invoke-virtual {p1, v2}, Latak/core/pd;->b(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v1, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 300
    .line 301
    invoke-virtual {p1, v1}, Latak/core/pd;->a(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v4, v3}, Lcom/atakmap/android/track/c;->d(Latak/core/sp;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1}, Latak/core/pd;->m()[D

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    invoke-virtual {p1}, Latak/core/pd;->l()[Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-static {v1, v2}, Latak/core/ph;->a([D[Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)D

    .line 316
    .line 317
    .line 318
    move-result-wide v1

    .line 319
    invoke-virtual {v4, v1, v2}, Lcom/atakmap/android/track/c;->a(D)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1}, Latak/core/pd;->e()Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-virtual {v4, v1}, Lcom/atakmap/android/track/c;->a(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1}, Latak/core/pd;->d()Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v4, v1}, Lcom/atakmap/android/track/c;->b(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)V

    .line 334
    .line 335
    .line 336
    const/4 v1, -0x1

    .line 337
    invoke-static {p1, v5, v1}, Latak/core/ph;->a(Latak/core/pd;ZI)D

    .line 338
    .line 339
    .line 340
    move-result-wide v2

    .line 341
    invoke-virtual {v4, v2, v3}, Lcom/atakmap/android/track/c;->b(D)V

    .line 342
    .line 343
    .line 344
    const/4 v2, 0x0

    .line 345
    invoke-static {p1, v2, v1}, Latak/core/ph;->a(Latak/core/pd;ZI)D

    .line 346
    .line 347
    .line 348
    move-result-wide v1

    .line 349
    invoke-virtual {v4, v1, v2}, Lcom/atakmap/android/track/c;->c(D)V

    .line 350
    .line 351
    .line 352
    invoke-direct {p0, v0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;->findMaxAvgSpeed(Ljava/util/List;)Landroid/util/Pair;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    if-eqz p1, :cond_9

    .line 357
    .line 358
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast v0, Landroid/util/Pair;

    .line 361
    .line 362
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 363
    .line 364
    const-string v1, "first"

    .line 365
    .line 366
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    check-cast v0, Ljava/lang/Number;

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 372
    .line 373
    .line 374
    move-result-wide v0

    .line 375
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v2, Landroid/util/Pair;

    .line 378
    .line 379
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v2, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 382
    .line 383
    invoke-virtual {v4, v0, v1, v2}, Lcom/atakmap/android/track/c;->a(DLcom/atakmap/coremap/maps/coords/GeoPointMetaData;)V

    .line 384
    .line 385
    .line 386
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast p1, Ljava/lang/Number;

    .line 389
    .line 390
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 391
    .line 392
    .line 393
    move-result-wide v0

    .line 394
    invoke-virtual {v4, v0, v1}, Lcom/atakmap/android/track/c;->d(D)V

    .line 395
    .line 396
    .line 397
    :cond_9
    :goto_4
    return-object v4
.end method

.method public final onTrackChanged(Lcom/atakmap/android/track/c;)V
    .locals 1
    .param p1    # Lcom/atakmap/android/track/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "track"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
