.class public final Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosGotennaThrottler"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static atosBusTimer:Ljava/util/Timer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final atosEventBusReadyEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/kot/AtosKotEvent;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static distanceThresholdMeters:I

.field private static final throttledEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static timeThresholdSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->INSTANCE:Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;

    .line 7
    .line 8
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getGoTennaRefreshRate()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sput v1, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->timeThresholdSeconds:I

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getGoTennaDistanceThreshold()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sput v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->distanceThresholdMeters:I

    .line 29
    .line 30
    new-instance v0, Lcom/toughstump/event/Event;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->atosEventBusReadyEvent:Lcom/toughstump/event/Event;

    .line 36
    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->throttledEventMap:Ljava/util/Map;

    .line 43
    .line 44
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

.method public static final synthetic access$onGoTennaLongDistanceThresholdUpdated(Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->onGoTennaLongDistanceThresholdUpdated(Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onGoTennaRefreshRateUpdated(Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->onGoTennaRefreshRateUpdated(Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$runBus(Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->runBus()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final atosBusArrived()Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/kot/AtosKotEvent;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    sget-object v3, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->throttledEventMap:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_4

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "next(...)"

    .line 31
    .line 32
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    check-cast v4, Ljava/lang/String;

    .line 36
    .line 37
    sget-object v5, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->throttledEventMap:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    invoke-virtual {v6}, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->getMostRecentKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move-object v6, v7

    .line 54
    :goto_1
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;

    .line 59
    .line 60
    if-eqz v8, :cond_2

    .line 61
    .line 62
    invoke-virtual {v8}, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->getLastTxTime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v8

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    move-wide v8, v1

    .line 68
    :goto_2
    sub-long v8, v1, v8

    .line 69
    .line 70
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v8

    .line 74
    long-to-double v8, v8

    .line 75
    const-wide v10, 0x408f400000000000L    # 1000.0

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    div-double/2addr v8, v10

    .line 81
    sget v10, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->timeThresholdSeconds:I

    .line 82
    .line 83
    int-to-double v10, v10

    .line 84
    cmpl-double v8, v8, v10

    .line 85
    .line 86
    if-ltz v8, :cond_3

    .line 87
    .line 88
    const/4 v8, 0x1

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    const/4 v8, 0x0

    .line 91
    :goto_3
    if-eqz v6, :cond_0

    .line 92
    .line 93
    if-eqz v8, :cond_0

    .line 94
    .line 95
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Lcom/toughstump/atos/kot/AtosKotEvent;->getPoint()Lkot/KotPoint;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    new-instance v8, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;

    .line 103
    .line 104
    invoke-direct {v8, v1, v2, v6, v7}, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;-><init>(JLkot/KotPoint;Lcom/toughstump/atos/kot/AtosKotEvent;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v5, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    return-object v0
.end method

.method private final declared-synchronized onGoTennaLongDistanceThresholdUpdated(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sput p2, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->distanceThresholdMeters:I

    .line 3
    .line 4
    const-string p1, "AtosGotennaThrottler"

    .line 5
    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "Distance threshold "

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->distanceThresholdMeters:I

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method private final declared-synchronized onGoTennaRefreshRateUpdated(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sput p2, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->timeThresholdSeconds:I

    .line 3
    .line 4
    const-string p1, "AtosGotennaThrottler"

    .line 5
    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "Refresh rate "

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->timeThresholdSeconds:I

    .line 17
    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw p1
.end method

.method private final declared-synchronized runBus()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->atosBusArrived()Ljava/util/Collection;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sget-object v1, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->atosEventBusReadyEvent:Lcom/toughstump/event/Event;

    .line 7
    .line 8
    invoke-virtual {v1, p0, v0}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw v0
.end method


# virtual methods
.method public final getAtosEventBusReadyEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/kot/AtosKotEvent;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->atosEventBusReadyEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized shouldEventBeTransmitted(Lcom/toughstump/atos/kot/AtosKotEvent;)Z
    .locals 11
    .param p1    # Lcom/toughstump/atos/kot/AtosKotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "atosKotEvent"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    sget-object v2, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->throttledEventMap:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getUid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    move-object v4, v3

    .line 22
    check-cast v4, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getPoint()Lkot/KotPoint;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-static {v5}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v4}, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->getLastTxLocation()Lkot/KotPoint;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-static {v6}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v5, v6}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->distanceTo(Lcom/atakmap/coremap/maps/coords/GeoPoint;)D

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    sget v7, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->distanceThresholdMeters:I

    .line 53
    .line 54
    int-to-double v7, v7

    .line 55
    cmpl-double v7, v5, v7

    .line 56
    .line 57
    if-ltz v7, :cond_1

    .line 58
    .line 59
    const-string v7, "AtosGotennaThrottler"

    .line 60
    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v9, "Tag "

    .line 67
    .line 68
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTagId()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v9, " distance difference "

    .line 79
    .line 80
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v5, " time elapsed "

    .line 87
    .line 88
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->getLastTxTime()J

    .line 92
    .line 93
    .line 94
    move-result-wide v5

    .line 95
    sub-long v5, v0, v5

    .line 96
    .line 97
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move v5, v3

    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    goto :goto_3

    .line 111
    :cond_1
    const/4 v5, 0x0

    .line 112
    :goto_0
    invoke-virtual {v4}, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->getLastTxTime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v6

    .line 116
    sub-long v6, v0, v6

    .line 117
    .line 118
    sget v8, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->timeThresholdSeconds:I

    .line 119
    .line 120
    mul-int/lit16 v8, v8, 0x3e8

    .line 121
    .line 122
    int-to-long v8, v8

    .line 123
    cmp-long v6, v6, v8

    .line 124
    .line 125
    if-ltz v6, :cond_2

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    move v3, v5

    .line 129
    :goto_1
    if-nez v3, :cond_3

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getUid()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    const/4 v9, 0x3

    .line 139
    const/4 v10, 0x0

    .line 140
    const-wide/16 v5, 0x0

    .line 141
    .line 142
    const/4 v7, 0x0

    .line 143
    move-object v8, p1

    .line 144
    invoke-static/range {v4 .. v10}, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;->copy$default(Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;JLkot/KotPoint;Lcom/toughstump/atos/kot/AtosKotEvent;ILjava/lang/Object;)Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getUid()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getPoint()Lkot/KotPoint;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    new-instance v5, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;

    .line 161
    .line 162
    const/4 v6, 0x0

    .line 163
    invoke-direct {v5, v0, v1, p1, v6}, Lcom/toughstump/atos/net/gotenna/AtosThrottledEventModel;-><init>(JLkot/KotPoint;Lcom/toughstump/atos/kot/AtosKotEvent;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .line 168
    .line 169
    :goto_2
    monitor-exit p0

    .line 170
    return v3

    .line 171
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    throw p1
.end method

.method public final declared-synchronized start()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getGoTennaRefreshRateEvent()Lcom/toughstump/event/Event;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler$start$1;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler$start$1;-><init>(Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getGoTennaDistanceThresholdEvent()Lcom/toughstump/event/Event;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler$start$2;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler$start$2;-><init>(Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "AtosGotennaThrottler"

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {v0, v1}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v3, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler$start$$inlined$fixedRateTimer$default$1;

    .line 44
    .line 45
    invoke-direct {v3}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler$start$$inlined$fixedRateTimer$default$1;-><init>()V

    .line 46
    .line 47
    .line 48
    const-wide/16 v6, 0x3e8

    .line 49
    .line 50
    const-wide/16 v4, 0x0

    .line 51
    .line 52
    move-object v2, v0

    .line 53
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->atosBusTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw v0
.end method

.method public final declared-synchronized stop()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->atosBusTimer:Ljava/util/Timer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    sget-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->atosBusTimer:Ljava/util/Timer;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->atosBusTimer:Ljava/util/Timer;

    .line 21
    .line 22
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getGoTennaRefreshRateEvent()Lcom/toughstump/event/Event;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler$stop$1;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler$stop$1;-><init>(Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getGoTennaDistanceThresholdEvent()Lcom/toughstump/event/Event;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler$stop$2;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler$stop$2;-><init>(Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw v0
.end method
