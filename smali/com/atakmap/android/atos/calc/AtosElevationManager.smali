.class public final Lcom/atakmap/android/atos/calc/AtosElevationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/elev/IAtosElevationManager;


# static fields
.field public static final INSTANCE:Lcom/atakmap/android/atos/calc/AtosElevationManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/atakmap/android/atos/calc/AtosElevationManager;

    invoke-direct {v0}, Lcom/atakmap/android/atos/calc/AtosElevationManager;-><init>()V

    sput-object v0, Lcom/atakmap/android/atos/calc/AtosElevationManager;->INSTANCE:Lcom/atakmap/android/atos/calc/AtosElevationManager;

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
.method public getElevationHaeM(DDD)Ljava/lang/Double;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/atakmap/map/elevation/ElevationManager;->getGeoidHeight(DD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    add-double/2addr p5, p1

    .line 6
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public getElevationMslM(DDD)Ljava/lang/Double;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/atakmap/map/elevation/ElevationManager;->getGeoidHeight(DD)D

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    sub-double/2addr p5, p1

    .line 6
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
