.class public final Lcom/toughstump/atos/activity/ui/frag/track/map/CrumbProviderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrumbProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrumbProvider.kt\ncom/toughstump/atos/activity/ui/frag/track/map/CrumbProviderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,50:1\n1863#2,2:51\n1863#2,2:53\n37#3:55\n36#3,3:56\n*S KotlinDebug\n*F\n+ 1 CrumbProvider.kt\ncom/toughstump/atos/activity/ui/frag/track/map/CrumbProviderKt\n*L\n17#1:51,2\n27#1:53,2\n30#1:55\n30#1:56,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCrumbProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrumbProvider.kt\ncom/toughstump/atos/activity/ui/frag/track/map/CrumbProviderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,50:1\n1863#2,2:51\n1863#2,2:53\n37#3:55\n36#3,3:56\n*S KotlinDebug\n*F\n+ 1 CrumbProvider.kt\ncom/toughstump/atos/activity/ui/frag/track/map/CrumbProviderKt\n*L\n17#1:51,2\n27#1:53,2\n30#1:55\n30#1:56,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final getCrumbs(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;)",
            "Ljava/util/List<",
            "Latak/core/sn;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "trackRecords"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/toughstump/atos/record/db/TrackRecord;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/frag/track/map/CrumbProviderKt;->toCrumb(Lcom/toughstump/atos/record/db/TrackRecord;)Latak/core/sn;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static final getTrackPolyline(Ljava/util/Collection;)Latak/core/sp;
    .locals 4
    .param p0    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Latak/core/sn;",
            ">;)",
            "Latak/core/sp;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "crumbs"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Latak/core/sp;

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Latak/core/sn;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-wide v1, v1, Latak/core/sn;->c:J

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide/16 v1, -0x1

    .line 20
    .line 21
    :goto_0
    invoke-direct {v0, v1, v2}, Latak/core/sp;-><init>(J)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Latak/core/sn;

    .line 44
    .line 45
    iget-object v2, v2, Latak/core/sn;->d:Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 46
    .line 47
    const-string v3, "gpm"

    .line 48
    .line 49
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    new-array p0, p0, [Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 58
    .line 59
    invoke-interface {v1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, [Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Latak/core/sp;->setPoints([Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)V

    .line 66
    .line 67
    .line 68
    const p0, -0xff0100

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p0}, Latak/core/sp;->setColor(I)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method private static final toCrumb(Lcom/toughstump/atos/record/db/TrackRecord;)Latak/core/sn;
    .locals 19

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v18, Latak/core/sn;

    .line 6
    .line 7
    move-object/from16 v1, v18

    .line 8
    .line 9
    invoke-virtual {v0}, Lkot/KotPoint;->getLatitude()D

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-virtual {v0}, Lkot/KotPoint;->getLongitude()D

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    invoke-virtual {v0}, Lkot/KotPoint;->getAltitude()D

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    invoke-static {v0}, Lkot/KotPointKt;->getCe(Lkot/KotPoint;)D

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    invoke-static {v0}, Lkot/KotPointKt;->getLe(Lkot/KotPoint;)D

    .line 26
    .line 27
    .line 28
    move-result-wide v10

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/record/db/TrackRecord;->getSpeedMps()D

    .line 30
    .line 31
    .line 32
    move-result-wide v12

    .line 33
    double-to-float v12, v12

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/record/db/TrackRecord;->getHeadingDegTrue()D

    .line 35
    .line 36
    .line 37
    move-result-wide v13

    .line 38
    double-to-float v13, v13

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/toughstump/atos/record/db/TrackRecord;->getTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v14

    .line 43
    const-string v16, "GPS"

    .line 44
    .line 45
    const-string v17, "GPS"

    .line 46
    .line 47
    invoke-direct/range {v1 .. v17}, Latak/core/sn;-><init>(DDDDDFFJLjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v18
.end method
