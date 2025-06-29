.class public final Lcom/toughstump/atos/activity/ui/frag/track/map/AtosHistoryMapProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosHistoryMapProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAP_GROUP:Ljava/lang/String; = "atos_track_history"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mapGroup:Lcom/atakmap/android/maps/ak;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosHistoryMapProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosHistoryMapProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosHistoryMapProvider;->INSTANCE:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosHistoryMapProvider;

    .line 7
    .line 8
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/atakmap/android/maps/MapView;->getRootGroup()Lcom/atakmap/android/maps/bb;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/atakmap/android/maps/MapView;->getRootGroup()Lcom/atakmap/android/maps/bb;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "atos_track_history"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/atakmap/android/maps/bb;->c(Ljava/lang/String;)Lcom/atakmap/android/maps/ak;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    new-instance v0, Lcom/atakmap/android/maps/q;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/atakmap/android/maps/q;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v1, "overlay"

    .line 37
    .line 38
    const-string v2, "trackhistory"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/atakmap/android/maps/q;->setMetaString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/atakmap/android/maps/MapView;->getRootGroup()Lcom/atakmap/android/maps/bb;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Lcom/atakmap/android/maps/bb;->a(Lcom/atakmap/android/maps/ak;)Lcom/atakmap/android/maps/ak;

    .line 52
    .line 53
    .line 54
    :cond_0
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosHistoryMapProvider;->mapGroup:Lcom/atakmap/android/maps/ak;

    .line 55
    .line 56
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
.method public final getMapGroup(Ljava/lang/String;)Lcom/atakmap/android/maps/ak;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object p1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosHistoryMapProvider;->mapGroup:Lcom/atakmap/android/maps/ak;

    .line 2
    .line 3
    return-object p1
.end method
