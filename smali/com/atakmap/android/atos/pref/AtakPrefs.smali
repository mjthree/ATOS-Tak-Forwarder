.class public final Lcom/atakmap/android/atos/pref/AtakPrefs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final INSTANCE:Lcom/atakmap/android/atos/pref/AtakPrefs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_ALT_UNITS:Ljava/lang/String; = "alt_unit_pref"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_BEARING_UNITS:Ljava/lang/String; = "rab_brg_units_pref"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_COORD_DISPLAY:Ljava/lang/String; = "coord_display_pref"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_NORTH_REF:Ljava/lang/String; = "rab_north_ref_pref"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_RANGE_UNITS:Ljava/lang/String; = "rab_rng_units_pref"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_SELF_COT_TYPE:Ljava/lang/String; = "locationUnitType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static sharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/atakmap/android/atos/pref/AtakPrefs;

    invoke-direct {v0}, Lcom/atakmap/android/atos/pref/AtakPrefs;-><init>()V

    sput-object v0, Lcom/atakmap/android/atos/pref/AtakPrefs;->INSTANCE:Lcom/atakmap/android/atos/pref/AtakPrefs;

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

.method private final getBoolPref(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/pref/AtakPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    :cond_0
    return p2
.end method

.method static synthetic getBoolPref$default(Lcom/atakmap/android/atos/pref/AtakPrefs;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getBoolPref(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private final getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/pref/AtakPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p2, p1

    .line 13
    :cond_1
    :goto_0
    return-object p2
.end method

.method static synthetic getStringPref$default(Lcom/atakmap/android/atos/pref/AtakPrefs;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-string p2, ""

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final formatAltitude(Lkot/KotPoint;)Ljava/lang/String;
    .locals 3
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "kotPoint"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getAltitudeUnit()Lcom/atakmap/coremap/conversions/Span;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->isValid()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string p1, "n/a"

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    const-string v1, "alt_display_agl"

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, v1, v2}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getBoolPref(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-static {p1}, Lcom/atakmap/map/elevation/ElevationManager;->a(Lcom/atakmap/coremap/maps/coords/GeoPoint;)Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;->get()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->isValid()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;->get()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getAltitude()D

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-static {p1, v1, v2}, Lcom/atakmap/coremap/maps/conversion/EGM96;->getAGL(Lcom/atakmap/coremap/maps/coords/GeoPoint;D)D

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    invoke-static {v1, v2, v0}, Lcom/atakmap/coremap/maps/conversion/EGM96;->formatAGL(DLcom/atakmap/coremap/conversions/Span;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const-string p1, "-- ft AGL"

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const-string v1, "alt_display_pref"

    .line 70
    .line 71
    const-string v2, "MSL"

    .line 72
    .line 73
    invoke-direct {p0, v1, v2}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-static {p1, v0}, Lcom/atakmap/coremap/maps/conversion/EGM96;->formatMSL(Lcom/atakmap/coremap/maps/coords/GeoPoint;Lcom/atakmap/coremap/conversions/Span;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-static {p1, v0}, Lcom/atakmap/coremap/maps/conversion/EGM96;->formatHAE(Lcom/atakmap/coremap/maps/coords/GeoPoint;Lcom/atakmap/coremap/conversions/Span;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    return-object p1
.end method

.method public final formatCoordinate(Lkot/KotPoint;)Ljava/lang/String;
    .locals 13
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "point"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getCoordinateFormat()Lcom/atakmap/coremap/conversions/CoordinateFormat;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, v0}, Lcom/atakmap/coremap/conversions/CoordinateFormatUtilities;->formatToString(Lcom/atakmap/coremap/maps/coords/GeoPoint;Lcom/atakmap/coremap/conversions/CoordinateFormat;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object p1, Lcom/atakmap/coremap/conversions/CoordinateFormat;->MGRS:Lcom/atakmap/coremap/conversions/CoordinateFormat;

    .line 19
    .line 20
    if-eq v0, p1, :cond_0

    .line 21
    .line 22
    sget-object p1, Lcom/atakmap/coremap/conversions/CoordinateFormat;->UTM:Lcom/atakmap/coremap/conversions/CoordinateFormat;

    .line 23
    .line 24
    if-eq v0, p1, :cond_0

    .line 25
    .line 26
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    const-string v2, "W"

    .line 32
    .line 33
    const-string v3, "\nW"

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    const/4 v11, 0x4

    .line 41
    const/4 v12, 0x0

    .line 42
    const-string v8, "E"

    .line 43
    .line 44
    const-string v9, "\nE"

    .line 45
    .line 46
    const/4 v10, 0x0

    .line 47
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-object v1
.end method

.method public final formatHeading(Ljava/lang/Double;Lkot/KotPoint;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "kotPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1
    const-string p1, "n/a"

    return-object p1

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getNorthReference()Lcom/atakmap/coremap/maps/coords/NorthReference;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getBearingUnits()Lcom/atakmap/coremap/conversions/Angle;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/atakmap/coremap/maps/coords/NorthReference;->MAGNETIC:Lcom/atakmap/coremap/maps/coords/NorthReference;

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lcom/toughstump/atos/atak/geo/AtakElevationProviderKt;->getMagAngle(DLcom/atakmap/coremap/maps/coords/GeoPoint;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sget-object p1, Lcom/atakmap/coremap/conversions/Angle;->DEGREE:Lcom/atakmap/coremap/conversions/Angle;

    const/4 v4, 0x1

    invoke-static {v2, v3, p1, v1, v4}, Lcom/atakmap/coremap/conversions/AngleUtilities;->format(DLcom/atakmap/coremap/conversions/Angle;Lcom/atakmap/coremap/conversions/Angle;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/coords/NorthReference;->getAbbrev()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatHeading(Lkot/KotPoint;Lkot/KotPoint;)Ljava/lang/String;
    .locals 2
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p1}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;

    move-result-object v0

    .line 10
    invoke-static {p2}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;

    move-result-object p2

    .line 11
    invoke-virtual {v0, p2}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->bearingTo(Lcom/atakmap/coremap/maps/coords/GeoPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/atakmap/android/atos/pref/AtakPrefs;->formatHeading(Ljava/lang/Double;Lkot/KotPoint;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatRange(Ljava/lang/Double;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "n/a"

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getRangeUnits()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    sget-object p1, Lcom/atakmap/coremap/conversions/Span;->METER:Lcom/atakmap/coremap/conversions/Span;

    .line 15
    .line 16
    const-string v3, "#,###,###,##0"

    .line 17
    .line 18
    invoke-static {v0, v1, v2, p1, v3}, Lcom/atakmap/coremap/conversions/SpanUtilities;->formatType(IDLcom/atakmap/coremap/conversions/Span;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "formatType(...)"

    .line 23
    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public final formatSpeed(D)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/atakmap/android/util/as;->a()Lcom/atakmap/android/util/as;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/atakmap/android/util/as;->a(D)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "getSpeedFormatted(...)"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public final getAltitudeUnit()Lcom/atakmap/coremap/conversions/Span;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/atakmap/coremap/conversions/Span;->FOOT:Lcom/atakmap/coremap/conversions/Span;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, "alt_unit_pref"

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p0, v0, v2, v1, v2}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getStringPref$default(Lcom/atakmap/android/atos/pref/AtakPrefs;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    sget-object v0, Lcom/atakmap/coremap/conversions/Span;->FOOT:Lcom/atakmap/coremap/conversions/Span;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lcom/atakmap/coremap/conversions/Span;->METER:Lcom/atakmap/coremap/conversions/Span;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    sget-object v0, Lcom/atakmap/coremap/conversions/Span;->FOOT:Lcom/atakmap/coremap/conversions/Span;

    .line 34
    .line 35
    :goto_0
    return-object v0
.end method

.method public final getBearingUnits()Lcom/atakmap/coremap/conversions/Angle;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "rab_brg_units_pref"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getStringPref$default(Lcom/atakmap/android/atos/pref/AtakPrefs;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/atakmap/coremap/conversions/Angle;->findFromValue(I)Lcom/atakmap/coremap/conversions/Angle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/atakmap/coremap/conversions/Angle;->DEGREE:Lcom/atakmap/coremap/conversions/Angle;

    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public final getCoordinateFormat()Lcom/atakmap/coremap/conversions/CoordinateFormat;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "coord_display_pref"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getStringPref$default(Lcom/atakmap/android/atos/pref/AtakPrefs;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/atakmap/coremap/conversions/CoordinateFormat;->find(Ljava/lang/String;)Lcom/atakmap/coremap/conversions/CoordinateFormat;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "find(...)"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final getDeviceCallsign()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/atakmap/android/maps/MapView;->getDeviceCallsign()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getDeviceCallsign(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final getDeviceCotType()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "locationUnitType"

    .line 2
    .line 3
    const-string v1, "a-f-G-U-C-I"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getStringPref(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getDeviceKotType()Lkot/KotType;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lkot/KotType;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getDeviceCotType()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v4, 0x6

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lkot/KotType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    return-object v6
.end method

.method public final getDeviceUid()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getDeviceUid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getDeviceUid(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final getNorthReference()Lcom/atakmap/coremap/maps/coords/NorthReference;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "rab_north_ref_pref"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getStringPref$default(Lcom/atakmap/android/atos/pref/AtakPrefs;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Lcom/atakmap/coremap/maps/coords/NorthReference;->findFromValue(I)Lcom/atakmap/coremap/maps/coords/NorthReference;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/atakmap/coremap/maps/coords/NorthReference;->TRUE:Lcom/atakmap/coremap/maps/coords/NorthReference;

    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public final getRangeUnits()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "rab_rng_units_pref"

    .line 4
    .line 5
    invoke-static {p0, v2, v0, v1, v0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->getStringPref$default(Lcom/atakmap/android/atos/pref/AtakPrefs;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/atakmap/android/atos/pref/AtakPrefs;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final parseInt(Ljava/lang/String;)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "integer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/atakmap/coremap/filesystem/FileSystemUtils;->isEmpty(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, "null"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public final start()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/atakmap/android/atos/pref/AtakPrefs;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
