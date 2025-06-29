.class public final Lcom/toughstump/atos/atak/cot/AtosCotDetailManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final detailHandler:Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mapView:Lcom/atakmap/android/maps/MapView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/atakmap/android/maps/MapView;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/atakmap/android/maps/MapView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pluginContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mapView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/toughstump/atos/atak/cot/AtosCotDetailManager;->pluginContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/toughstump/atos/atak/cot/AtosCotDetailManager;->mapView:Lcom/atakmap/android/maps/MapView;

    .line 17
    .line 18
    new-instance p1, Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler;

    .line 19
    .line 20
    invoke-direct {p1}, Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/toughstump/atos/atak/cot/AtosCotDetailManager;->detailHandler:Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler;

    .line 24
    .line 25
    invoke-static {}, Latak/core/ao;->a()Latak/core/ao;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2, p1}, Latak/core/ao;->a(Latak/core/an;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final onTrackReceived(Ljava/lang/Object;Lcom/toughstump/atos/kot/AtosKotEvent;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final stop()V
    .locals 2

    .line 1
    invoke-static {}, Latak/core/ao;->a()Latak/core/ao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/toughstump/atos/atak/cot/AtosCotDetailManager;->detailHandler:Lcom/toughstump/atos/atak/cot/AtosCotDetailHandler;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Latak/core/ao;->b(Latak/core/an;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
