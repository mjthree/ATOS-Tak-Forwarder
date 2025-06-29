.class public final Lcom/toughstump/atos/atak/observer/AtakAtosObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/atakmap/android/maps/aj$a;


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/atak/observer/AtakAtosObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final dispatcher:Lcom/atakmap/android/maps/aj;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/toughstump/atos/atak/observer/AtakAtosObserver;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/atak/observer/AtakAtosObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/atak/observer/AtakAtosObserver;->INSTANCE:Lcom/toughstump/atos/atak/observer/AtakAtosObserver;

    .line 7
    .line 8
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/atakmap/android/maps/MapView;->getMapEventDispatcher()Lcom/atakmap/android/maps/aj;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "getMapEventDispatcher(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/toughstump/atos/atak/observer/AtakAtosObserver;->dispatcher:Lcom/atakmap/android/maps/aj;

    .line 22
    .line 23
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
.method public onMapEvent(Lcom/atakmap/android/maps/ai;)V
    .locals 5
    .param p1    # Lcom/atakmap/android/maps/ai;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/atakmap/android/maps/ai;->b()Lcom/atakmap/android/maps/am;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    invoke-static {v1}, Lcom/atakmap/android/importexport/e;->a(Lcom/atakmap/android/maps/am;)Lcom/atakmap/coremap/cot/event/CotEvent;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    sget-object v2, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/toughstump/atos/state/AtosStateProvider;->getTrackMap()Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1}, Lcom/atakmap/coremap/cot/event/CotEvent;->getUID()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/atakmap/android/maps/ai;->a()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_3
    const-string p1, "item_removed"

    .line 45
    .line 46
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/atakmap/coremap/cot/event/CotEvent;->getUID()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "getUID(...)"

    .line 57
    .line 58
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1}, Lcom/toughstump/atos/state/AtosStateProvider;->deleteTag(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/observer/AtakAtosObserver;->dispatcher:Lcom/atakmap/android/maps/aj;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/atakmap/android/maps/aj;->a(Lcom/atakmap/android/maps/aj$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/observer/AtakAtosObserver;->dispatcher:Lcom/atakmap/android/maps/aj;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/atakmap/android/maps/aj;->b(Lcom/atakmap/android/maps/aj$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
