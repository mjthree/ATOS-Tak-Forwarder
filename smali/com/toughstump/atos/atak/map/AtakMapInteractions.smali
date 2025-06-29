.class public final Lcom/toughstump/atos/atak/map/AtakMapInteractions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/atak/map/IAtakMapInteractions;


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/atak/map/AtakMapInteractions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toughstump/atos/atak/map/AtakMapInteractions;

    invoke-direct {v0}, Lcom/toughstump/atos/atak/map/AtakMapInteractions;-><init>()V

    sput-object v0, Lcom/toughstump/atos/atak/map/AtakMapInteractions;->INSTANCE:Lcom/toughstump/atos/atak/map/AtakMapInteractions;

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
.method public panMap(Lkot/KotPoint;Ljava/lang/Double;)V
    .locals 4
    .param p1    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "point"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/atakmap/android/maps/MapView;->getRenderer3()Lcom/atakmap/map/g;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toMapPanGeoPoint(Lkot/KotPoint;)Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, p1, v1}, Lcom/atakmap/map/CameraController$c;->a(Lcom/atakmap/map/g;Lcom/atakmap/coremap/maps/coords/GeoPoint;Z)V

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/atakmap/android/maps/MapView;->getRenderer3()Lcom/atakmap/map/g;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-static {p1, v2, v3, v1}, Lcom/atakmap/map/CameraController$c;->c(Lcom/atakmap/map/g;DZ)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
