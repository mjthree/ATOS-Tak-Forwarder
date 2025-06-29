.class public final Lcom/atakmap/android/atos/calc/CoordinateCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/calc/ICoordinateCalculator;


# static fields
.field public static final INSTANCE:Lcom/atakmap/android/atos/calc/CoordinateCalculator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/atakmap/android/atos/calc/CoordinateCalculator;

    invoke-direct {v0}, Lcom/atakmap/android/atos/calc/CoordinateCalculator;-><init>()V

    sput-object v0, Lcom/atakmap/android/atos/calc/CoordinateCalculator;->INSTANCE:Lcom/atakmap/android/atos/calc/CoordinateCalculator;

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


# virtual methods
.method public bearingBetweenDegTrue(Lkot/KotPoint;Lkot/KotPoint;)D
    .locals 1
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "start"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "end"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p2}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->bearingTo(Lcom/atakmap/coremap/maps/coords/GeoPoint;)D

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    return-wide p1
.end method

.method public getMgrsDisplay(Lkot/KotPoint;)Ljava/lang/String;
    .locals 1
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "location"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Lcom/atakmap/coremap/conversions/CoordinateFormat;->MGRS:Lcom/atakmap/coremap/conversions/CoordinateFormat;

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/atakmap/coremap/conversions/CoordinateFormatUtilities;->formatToString(Lcom/atakmap/coremap/maps/coords/GeoPoint;Lcom/atakmap/coremap/conversions/CoordinateFormat;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "formatToString(...)"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method public rangeBetweenM(Lkot/KotPoint;Lkot/KotPoint;)D
    .locals 1
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "start"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "end"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p2}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->distanceTo(Lcom/atakmap/coremap/maps/coords/GeoPoint;)D

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    return-wide p1
.end method
