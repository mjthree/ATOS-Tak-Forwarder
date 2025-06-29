.class public final Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosCotDispatcher"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static isAtakEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;

    invoke-direct {v0}, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;-><init>()V

    sput-object v0, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->INSTANCE:Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;

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

.method public static final synthetic access$onTrackUpdated(Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;Ljava/lang/Object;Lcom/toughstump/atos/kot/AtosKotEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->onTrackUpdated(Ljava/lang/Object;Lcom/toughstump/atos/kot/AtosKotEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final onTrackUpdated(Ljava/lang/Object;Lcom/toughstump/atos/kot/AtosKotEvent;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Track Updated "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTagId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x20

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/toughstump/atos/kot/AtosKotEvent;->getUid()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "AtosCotDispatcher"

    .line 35
    .line 36
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    sget-boolean p1, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->isAtakEnabled:Z

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    :try_start_0
    invoke-static {}, Lcom/atakmap/android/cot/CotMapComponent;->i()Lcom/atakmap/comms/e;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p2}, Lcom/toughstump/atos/atak/cot/AtosCotUtilsKt;->toCotEvent(Lcom/toughstump/atos/kot/AtosKotEvent;)Lcom/atakmap/coremap/cot/event/CotEvent;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Lcom/atakmap/comms/e;->a(Lcom/atakmap/coremap/cot/event/CotEvent;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    sput-boolean p1, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->isAtakEnabled:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    const/4 p1, 0x0

    .line 59
    sput-boolean p1, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->isAtakEnabled:Z

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    sget-object p1, Lcom/toughstump/atos/track/AtosKotEventAggregator;->INSTANCE:Lcom/toughstump/atos/track/AtosKotEventAggregator;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/toughstump/atos/track/AtosKotEventAggregator;->updateKotEvent(Lcom/toughstump/atos/kot/AtosKotEvent;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->INSTANCE:Lcom/toughstump/atos/AtosPacketAggregator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/AtosPacketAggregator;->getAtosKotEventReceived()Lcom/toughstump/event/Event;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher$onDestroy$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher$onDestroy$1;-><init>(Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final send(Lcom/toughstump/atos/kot/AtosKotEvent;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/kot/AtosKotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "atosKotEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {}, Lcom/atakmap/android/cot/CotMapComponent;->i()Lcom/atakmap/comms/e;

    move-result-object v0

    invoke-static {p1}, Lcom/toughstump/atos/atak/cot/AtosCotUtilsKt;->toCotEvent(Lcom/toughstump/atos/kot/AtosKotEvent;)Lcom/atakmap/coremap/cot/event/CotEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/atakmap/comms/e;->a(Lcom/atakmap/coremap/cot/event/CotEvent;)V

    const/4 p1, 0x1

    .line 2
    sput-boolean p1, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->isAtakEnabled:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 3
    sput-boolean p1, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->isAtakEnabled:Z

    :goto_0
    return-void
.end method

.method public final send(Lkot/KotEvent;)V
    .locals 1
    .param p1    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "kotEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-static {}, Lcom/atakmap/android/cot/CotMapComponent;->i()Lcom/atakmap/comms/e;

    move-result-object v0

    invoke-static {p1}, Lcom/toughstump/atos/atak/cot/AtosCotUtilsKt;->toCotEvent(Lkot/KotEvent;)Lcom/atakmap/coremap/cot/event/CotEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/atakmap/comms/e;->a(Lcom/atakmap/coremap/cot/event/CotEvent;)V

    const/4 p1, 0x1

    .line 5
    sput-boolean p1, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->isAtakEnabled:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 6
    sput-boolean p1, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->isAtakEnabled:Z

    :goto_0
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->INSTANCE:Lcom/toughstump/atos/AtosPacketAggregator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/AtosPacketAggregator;->getAtosKotEventReceived()Lcom/toughstump/event/Event;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher$start$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher$start$1;-><init>(Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-static {}, Lcom/atakmap/android/cot/CotMapComponent;->i()Lcom/atakmap/comms/e;

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    sput-boolean v0, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->isAtakEnabled:Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const-string v0, "AtosCotDispatcher"

    .line 23
    .line 24
    const-string v1, "failed to send external event with atak"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/toughstump/atos/atak/cot/AtosInternalCotDispatcher;->isAtakEnabled:Z

    .line 31
    .line 32
    :goto_0
    return-void
.end method
