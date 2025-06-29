.class public final Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;
    .locals 12
    .param p0    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 7
    .line 8
    invoke-virtual {p0}, Lkot/KotPoint;->getLatitude()D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {p0}, Lkot/KotPoint;->getLongitude()D

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    invoke-virtual {p0}, Lkot/KotPoint;->getAltitude()D

    .line 17
    .line 18
    .line 19
    move-result-wide v6

    .line 20
    invoke-virtual {p0}, Lkot/KotPoint;->getCircularError()D

    .line 21
    .line 22
    .line 23
    move-result-wide v8

    .line 24
    invoke-virtual {p0}, Lkot/KotPoint;->getLinearError()D

    .line 25
    .line 26
    .line 27
    move-result-wide v10

    .line 28
    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v11}, Lcom/atakmap/coremap/maps/coords/GeoPoint;-><init>(DDDDD)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static final toIGeoPoint(Lkot/KotPoint;)Lgov/tak/api/engine/map/coords/GeoPoint;
    .locals 12
    .param p0    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lgov/tak/api/engine/map/coords/GeoPoint;

    .line 7
    .line 8
    invoke-virtual {p0}, Lkot/KotPoint;->getLatitude()D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {p0}, Lkot/KotPoint;->getLongitude()D

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    invoke-virtual {p0}, Lkot/KotPoint;->getAltitude()D

    .line 17
    .line 18
    .line 19
    move-result-wide v6

    .line 20
    invoke-virtual {p0}, Lkot/KotPoint;->getCircularError()D

    .line 21
    .line 22
    .line 23
    move-result-wide v8

    .line 24
    invoke-virtual {p0}, Lkot/KotPoint;->getLinearError()D

    .line 25
    .line 26
    .line 27
    move-result-wide v10

    .line 28
    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v11}, Lgov/tak/api/engine/map/coords/GeoPoint;-><init>(DDDDD)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static final toKotPoint(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)Lkot/KotPoint;
    .locals 14
    .param p0    # Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkot/KotPoint;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;->get()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLatitude()D

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;->get()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLongitude()D

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;->get()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getAltitude()D

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    const/16 v12, 0x18

    .line 33
    .line 34
    const/4 v13, 0x0

    .line 35
    const-wide/16 v8, 0x0

    .line 36
    .line 37
    const-wide/16 v10, 0x0

    .line 38
    .line 39
    move-object v1, v0

    .line 40
    invoke-direct/range {v1 .. v13}, Lkot/KotPoint;-><init>(DDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public static final toMapPanGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;
    .locals 13
    .param p0    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkot/KotPoint;->getAltitude()D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x416312cfe0000000L    # 9999999.0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmpg-double v0, v0, v2

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    :goto_0
    move-wide v7, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p0}, Lkot/KotPoint;->getAltitude()D

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    goto :goto_0

    .line 28
    :goto_1
    new-instance v0, Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 29
    .line 30
    invoke-virtual {p0}, Lkot/KotPoint;->getLatitude()D

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-virtual {p0}, Lkot/KotPoint;->getLongitude()D

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    invoke-virtual {p0}, Lkot/KotPoint;->getCircularError()D

    .line 39
    .line 40
    .line 41
    move-result-wide v9

    .line 42
    invoke-virtual {p0}, Lkot/KotPoint;->getLinearError()D

    .line 43
    .line 44
    .line 45
    move-result-wide v11

    .line 46
    move-object v2, v0

    .line 47
    invoke-direct/range {v2 .. v12}, Lcom/atakmap/coremap/maps/coords/GeoPoint;-><init>(DDDDD)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method
