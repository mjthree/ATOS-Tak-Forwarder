.class public final Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/atakmap/android/maps/ay$a;
.implements Lcom/atakmap/android/maps/ar$l;


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MIN_DISTANCE_M:D = 0.5

.field private static final TAG:Ljava/lang/String; = "AtosOwnshipObserver"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static lastLocation:Lcom/atakmap/coremap/maps/coords/GeoPoint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static setup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;

    invoke-direct {v0}, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;-><init>()V

    sput-object v0, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;->INSTANCE:Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;

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

.method private final handleOwnshipUpdate(Lcom/atakmap/android/maps/ar;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/atakmap/android/maps/ar;->getPoint()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;->lastLocation:Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->distanceTo(Lcom/atakmap/coremap/maps/coords/GeoPoint;)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 19
    .line 20
    cmpg-double v0, v0, v2

    .line 21
    .line 22
    if-gez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    sput-object p1, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;->lastLocation:Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 26
    .line 27
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver$handleOwnshipUpdate$1;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver$handleOwnshipUpdate$1;-><init>(Lcom/atakmap/coremap/maps/coords/GeoPoint;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/utilities/RunnableManager;->post(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onPointChanged(Lcom/atakmap/android/maps/ay;)V
    .locals 1
    .param p1    # Lcom/atakmap/android/maps/ay;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/atakmap/android/maps/ar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    check-cast p1, Lcom/atakmap/android/maps/ar;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;->handleOwnshipUpdate(Lcom/atakmap/android/maps/ar;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onTrackChanged(Lcom/atakmap/android/maps/ar;)V
    .locals 0
    .param p1    # Lcom/atakmap/android/maps/ar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;->handleOwnshipUpdate(Lcom/atakmap/android/maps/ar;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;->setup:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/atakmap/android/maps/MapView;->getSelfMarker()Lcom/atakmap/android/maps/ar;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {v0, p0}, Lcom/atakmap/android/maps/ar;->addOnPointChangedListener(Lcom/atakmap/android/maps/ay$a;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    sput-boolean v0, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;->setup:Z

    .line 22
    .line 23
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/toughstump/atos/atak/ownship/AtakOwnshipObserver;->setup:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/atakmap/android/maps/MapView;->getSelfMarker()Lcom/atakmap/android/maps/ar;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {v0, p0}, Lcom/atakmap/android/maps/ar;->removeOnPointChangedListener(Lcom/atakmap/android/maps/ay$a;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
