.class public final Lcom/toughstump/atos/atak/geo/AtakElevationProviderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final deg360(D)D
    .locals 2

    const/16 v0, 0x168

    int-to-double v0, v0

    rem-double/2addr p0, v0

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p0, v0

    :cond_0
    return-wide p0
.end method

.method public static final getDTM_FILTER()Lcom/atakmap/map/elevation/ElevationManager$b;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/atakmap/map/elevation/ElevationManager$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/atakmap/map/elevation/ElevationManager$b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput v1, v0, Lcom/atakmap/map/elevation/ElevationManager$b;->e:I

    .line 8
    .line 9
    return-object v0
.end method

.method public static final getDeclination(Lcom/atakmap/coremap/maps/coords/GeoPoint;)D
    .locals 7
    .param p0    # Lcom/atakmap/coremap/maps/coords/GeoPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "point"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->isAltitudeValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/toughstump/atos/atak/geo/AtakElevationProviderKt;->getPointWithAltitude(Lcom/atakmap/coremap/maps/coords/GeoPoint;)Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;->get()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    move-result-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->isAltitudeValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 10
    new-instance v0, Lcom/atakmap/coremap/maps/conversion/GeomagneticField;

    .line 11
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLatitude()D

    move-result-wide v1

    double-to-float v2, v1

    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLongitude()D

    move-result-wide v5

    double-to-float v3, v5

    .line 12
    new-instance p0, Lcom/atakmap/coremap/maps/time/CoordinatedTime;

    invoke-direct {p0}, Lcom/atakmap/coremap/maps/time/CoordinatedTime;-><init>()V

    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/time/CoordinatedTime;->getMilliseconds()J

    move-result-wide v5

    move-object v1, v0

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/atakmap/coremap/maps/conversion/GeomagneticField;-><init>(FFFJ)V

    .line 14
    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/conversion/GeomagneticField;->getDeclination()F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method public static final getDeclination(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)D
    .locals 7
    .param p0    # Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "point"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;->get()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->isAltitudeValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/toughstump/atos/atak/geo/AtakElevationProviderKt;->getPointWithAltitude(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    move-result-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;->get()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->isAltitudeValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;->get()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 3
    new-instance v0, Lcom/atakmap/coremap/maps/conversion/GeomagneticField;

    .line 4
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;->get()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLatitude()D

    move-result-wide v1

    double-to-float v2, v1

    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;->get()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLongitude()D

    move-result-wide v5

    double-to-float v3, v5

    .line 5
    new-instance p0, Lcom/atakmap/coremap/maps/time/CoordinatedTime;

    invoke-direct {p0}, Lcom/atakmap/coremap/maps/time/CoordinatedTime;-><init>()V

    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/time/CoordinatedTime;->getMilliseconds()J

    move-result-wide v5

    move-object v1, v0

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/atakmap/coremap/maps/conversion/GeomagneticField;-><init>(FFFJ)V

    .line 7
    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/conversion/GeomagneticField;->getDeclination()F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method public static final getDisplayDistance(Ljava/lang/Double;)Ljava/lang/String;
    .locals 9
    .param p0    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "n/a"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x408f380000000000L    # 999.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmpl-double v0, v0, v2

    .line 16
    .line 17
    const-string v1, "%.0000fkm"

    .line 18
    .line 19
    const/16 v2, 0x3e8

    .line 20
    .line 21
    const-string v3, "format(...)"

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    int-to-double v7, v2

    .line 31
    div-double/2addr v5, v7

    .line 32
    sget-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 33
    .line 34
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    const-wide v7, 0x40c3878000000000L    # 9999.0

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    cmpl-double v0, v5, v7

    .line 64
    .line 65
    if-lez v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    int-to-double v7, v2

    .line 72
    div-double/2addr v5, v7

    .line 73
    sget-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 74
    .line 75
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_2
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 96
    .line 97
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const-string v0, "%.0fm"

    .line 106
    .line 107
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object p0
.end method

.method public static final getElevationProvider()Lcom/toughstump/atos/elev/IAtosElevationManager;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1, v0, v1}, Lcom/atakmap/map/elevation/ElevationManager;->getGeoidHeight(DD)D

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/toughstump/atos/atak/geo/AtakElevationProvider;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/toughstump/atos/atak/geo/AtakElevationProvider;-><init>()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    new-instance v0, Lcom/toughstump/atos/atak/geo/FakeElevationProvider;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/toughstump/atos/atak/geo/FakeElevationProvider;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-object v0
.end method

.method public static final getMagAngle(DLcom/atakmap/coremap/maps/coords/GeoPoint;)D
    .locals 2
    .param p2    # Lcom/atakmap/coremap/maps/coords/GeoPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "point"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lcom/toughstump/atos/atak/geo/AtakElevationProviderKt;->getDeclination(Lcom/atakmap/coremap/maps/coords/GeoPoint;)D

    move-result-wide v0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Lcom/toughstump/atos/atak/geo/AtakElevationProviderKt;->deg360(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final getMagAngle(DLcom/atakmap/coremap/maps/coords/GeoPointMetaData;)D
    .locals 2
    .param p2    # Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "point"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/toughstump/atos/atak/geo/AtakElevationProviderKt;->getDeclination(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)D

    move-result-wide v0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Lcom/toughstump/atos/atak/geo/AtakElevationProviderKt;->deg360(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final getMagBearingDisplay(Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;)Ljava/lang/String;
    .locals 13
    .param p0    # Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "viewModel"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getOwnshipBearingDegTrue()Ljava/lang/Double;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "n/a"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getPoint()Lkot/KotPoint;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toIGeoPoint(Lkot/KotPoint;)Lgov/tak/api/engine/map/coords/GeoPoint;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/atakmap/android/maps/MapView;->getSelfMarker()Lcom/atakmap/android/maps/ar;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/atakmap/android/maps/MapView;->getSelfMarker()Lcom/atakmap/android/maps/ar;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/atakmap/android/maps/ar;->getPoint()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v12, Lgov/tak/api/engine/map/coords/GeoPoint;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLatitude()D

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLongitude()D

    .line 64
    .line 65
    .line 66
    move-result-wide v4

    .line 67
    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getAltitude()D

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getCE()D

    .line 72
    .line 73
    .line 74
    move-result-wide v8

    .line 75
    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLE()D

    .line 76
    .line 77
    .line 78
    move-result-wide v10

    .line 79
    move-object v1, v12

    .line 80
    invoke-direct/range {v1 .. v11}, Lgov/tak/api/engine/map/coords/GeoPoint;-><init>(DDDDD)V

    .line 81
    .line 82
    .line 83
    move-object v0, v12

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->getTag()Lcom/toughstump/atos/state/AtosTag;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lcom/toughstump/atos/state/AtosTag;->getOwnshipBearingDegTrue()Ljava/lang/Double;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    invoke-static {v0, v1, v2}, Lgov/tak/api/engine/map/coords/GeoCalculations;->b(Lgov/tak/api/engine/map/coords/a;D)D

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    sget-object p0, Lcom/atakmap/coremap/maps/coords/NorthReference;->MAGNETIC:Lcom/atakmap/coremap/maps/coords/NorthReference;

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    sget-object v3, Lcom/atakmap/coremap/conversions/Angle;->DEGREE:Lcom/atakmap/coremap/conversions/Angle;

    .line 111
    .line 112
    const/4 v4, 0x1

    .line 113
    invoke-static {v0, v1, v3, v4}, Lcom/atakmap/coremap/conversions/AngleUtilities;->format(DLcom/atakmap/coremap/conversions/Angle;Z)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/NorthReference;->getAbbrev()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0
.end method

.method public static final getPointWithAltitude(Lcom/atakmap/coremap/maps/coords/GeoPoint;)Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;
    .locals 7
    .param p0    # Lcom/atakmap/coremap/maps/coords/GeoPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "gp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;->wrap(Lcom/atakmap/coremap/maps/coords/GeoPoint;)Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLongitude()D

    move-result-wide v3

    .line 3
    invoke-static {}, Lcom/toughstump/atos/atak/geo/AtakElevationProviderKt;->getDTM_FILTER()Lcom/atakmap/map/elevation/ElevationManager$b;

    move-result-object v5

    move-object v6, v0

    .line 4
    invoke-static/range {v1 .. v6}, Lcom/atakmap/map/elevation/ElevationManager;->a(DDLcom/atakmap/map/elevation/ElevationManager$b;Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)D

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final getPointWithAltitude(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;
    .locals 1
    .param p0    # Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "gp"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;->get()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    move-result-object p0

    const-string v0, "get(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/toughstump/atos/atak/geo/AtakElevationProviderKt;->getPointWithAltitude(Lcom/atakmap/coremap/maps/coords/GeoPoint;)Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    move-result-object p0

    return-object p0
.end method
