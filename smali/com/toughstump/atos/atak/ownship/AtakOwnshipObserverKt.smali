.class public final Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserverKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final toKotPoint(Lcom/atakmap/coremap/maps/coords/GeoPoint;)Lkot/KotPoint;
    .locals 12
    .param p0    # Lcom/atakmap/coremap/maps/coords/GeoPoint;
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
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLatitude()D

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLongitude()D

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getAltitude()D

    .line 17
    .line 18
    .line 19
    move-result-wide v6

    .line 20
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getCE()D

    .line 21
    .line 22
    .line 23
    move-result-wide v8

    .line 24
    invoke-virtual {p0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLE()D

    .line 25
    .line 26
    .line 27
    move-result-wide v10

    .line 28
    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v11}, Lkot/KotPoint;-><init>(DDDDD)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method
