.class public final Lcom/toughstump/atos/net/AtosNetworkSwitchboard;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/net/AtosNetworkSwitchboard;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosSwitchboard"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;

    invoke-direct {v0}, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;-><init>()V

    sput-object v0, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->INSTANCE:Lcom/toughstump/atos/net/AtosNetworkSwitchboard;

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

.method public static final synthetic access$onAtosEventBusReady(Lcom/toughstump/atos/net/AtosNetworkSwitchboard;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->onAtosEventBusReady(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onTrackUpdated(Lcom/toughstump/atos/net/AtosNetworkSwitchboard;Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->onTrackUpdated(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final onAtosEventBusReady(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/kot/AtosKotEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, p2, v0}, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->sendExternalKotEvent(Lcom/toughstump/atos/kot/AtosKotEvent;Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method private final onTrackUpdated(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->isMyTrack()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getShouldBroadcast()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->isStale()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    const-string p1, "AtosSwitchboard"

    .line 26
    .line 27
    const-string p2, "attempting to send a stale event, no thank you"

    .line 28
    .line 29
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x2

    .line 38
    const/4 v0, 0x0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {p0, p1, v1, p2, v0}, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->sendExternalKotEvent$default(Lcom/toughstump/atos/net/AtosNetworkSwitchboard;Lcom/toughstump/atos/kot/AtosKotEvent;ZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static synthetic sendExternalKotEvent$default(Lcom/toughstump/atos/net/AtosNetworkSwitchboard;Lcom/toughstump/atos/kot/AtosKotEvent;ZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/net/AtosNetworkSwitchboard;->sendExternalKotEvent(Lcom/toughstump/atos/kot/AtosKotEvent;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->INSTANCE:Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->onDestroy()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->INSTANCE:Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->stop()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->getAtosEventBusReadyEvent()Lcom/toughstump/event/Event;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/toughstump/atos/net/AtosNetworkSwitchboard$onDestroy$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/toughstump/atos/net/AtosNetworkSwitchboard$onDestroy$1;-><init>(Lcom/toughstump/atos/net/AtosNetworkSwitchboard;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final sendExternalKotEvent(Lcom/toughstump/atos/kot/AtosKotEvent;Z)V
    .locals 3
    .param p1    # Lcom/toughstump/atos/kot/AtosKotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "atosKotEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    sget-object p2, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->INSTANCE:Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->shouldEventBeTransmitted(Lcom/toughstump/atos/kot/AtosKotEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    :cond_0
    sget-object p2, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->INSTANCE:Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {p2, p1, v2, v0, v1}, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->broadcast$default(Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;Lcom/toughstump/atos/kot/AtosKotEvent;IILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v0, "Tag "

    .line 30
    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTagId()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, " is being sent over gotenna"

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string v0, "AtosSwitchboard"

    .line 51
    .line 52
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/toughstump/atos/atak/cot/AtosCotUtilsKt;->toCotEvent(Lcom/toughstump/atos/kot/AtosKotEvent;)Lcom/atakmap/coremap/cot/event/CotEvent;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {}, Lcom/atakmap/android/cot/CotMapComponent;->h()Lcom/atakmap/comms/e;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2, p1}, Lcom/atakmap/comms/e;->a(Lcom/atakmap/coremap/cot/event/CotEvent;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/atakmap/android/cot/CotMapComponent;->h()Lcom/atakmap/comms/e;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2, p1}, Lcom/atakmap/comms/e;->b(Lcom/atakmap/coremap/cot/event/CotEvent;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :catch_0
    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    sget-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->INSTANCE:Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaConnection;->start()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->INSTANCE:Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->start()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagTrackUpdateEvent()Lcom/toughstump/event/Event;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/toughstump/atos/net/AtosNetworkSwitchboard$start$1;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/toughstump/atos/net/AtosNetworkSwitchboard$start$1;-><init>(Lcom/toughstump/atos/net/AtosNetworkSwitchboard;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/toughstump/atos/net/gotenna/AtosGotennaThrottler;->getAtosEventBusReadyEvent()Lcom/toughstump/event/Event;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/toughstump/atos/net/AtosNetworkSwitchboard$start$2;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/toughstump/atos/net/AtosNetworkSwitchboard$start$2;-><init>(Lcom/toughstump/atos/net/AtosNetworkSwitchboard;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "AtosSwitchboard"

    .line 38
    .line 39
    const-string v1, "Starting Switchboard"

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void
.end method
