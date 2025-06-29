.class public final Lcom/toughstump/atos/track/AtosKotEventAggregator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/track/AtosKotEventAggregator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final relay:Lcom/toughstump/atos/thread/QueueRelay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/atos/thread/QueueRelay<",
            "Lcom/toughstump/atos/kot/AtosKotEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/toughstump/atos/track/AtosKotEventAggregator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/track/AtosKotEventAggregator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/track/AtosKotEventAggregator;->INSTANCE:Lcom/toughstump/atos/track/AtosKotEventAggregator;

    .line 7
    .line 8
    new-instance v0, Lcom/toughstump/atos/thread/QueueRelay;

    .line 9
    .line 10
    const-string v1, "AtosKotEventAggregator"

    .line 11
    .line 12
    const-wide/16 v2, 0x64

    .line 13
    .line 14
    invoke-direct {v0, v1, v2, v3}, Lcom/toughstump/atos/thread/QueueRelay;-><init>(Ljava/lang/String;J)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/toughstump/atos/track/AtosKotEventAggregator;->relay:Lcom/toughstump/atos/thread/QueueRelay;

    .line 18
    .line 19
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
.method public final getAtosKotUpdateEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/kot/AtosKotEvent;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/track/AtosKotEventAggregator;->relay:Lcom/toughstump/atos/thread/QueueRelay;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/thread/QueueRelay;->getQueueProcessEvent()Lcom/toughstump/event/Event;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getRelay()Lcom/toughstump/atos/thread/QueueRelay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/atos/thread/QueueRelay<",
            "Lcom/toughstump/atos/kot/AtosKotEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/track/AtosKotEventAggregator;->relay:Lcom/toughstump/atos/thread/QueueRelay;

    .line 2
    .line 3
    return-object v0
.end method

.method public final start()V
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/track/AtosKotEventAggregator;->relay:Lcom/toughstump/atos/thread/QueueRelay;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/thread/QueueRelay;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/track/AtosKotEventAggregator;->relay:Lcom/toughstump/atos/thread/QueueRelay;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/thread/QueueRelay;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final updateKotEvent(Lcom/toughstump/atos/kot/AtosKotEvent;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/kot/AtosKotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "trackEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/toughstump/atos/track/AtosKotEventAggregator;->relay:Lcom/toughstump/atos/thread/QueueRelay;

    invoke-virtual {v0, p1}, Lcom/toughstump/atos/thread/QueueRelay;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateKotEvent(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cotXml"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkot/xml/KotXml;->kotParse(Ljava/lang/String;)Lkot/KotEvent;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/toughstump/atos/kot/AtosKotEventKt;->isAtosTrackEvent(Lkot/KotEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    sget-object v0, Lcom/toughstump/atos/kot/AtosKotEvent;->Companion:Lcom/toughstump/atos/kot/AtosKotEvent$Companion;

    invoke-virtual {v0, p1}, Lcom/toughstump/atos/kot/AtosKotEvent$Companion;->fromKotEvent(Lkot/KotEvent;)Lcom/toughstump/atos/kot/AtosKotEvent;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/track/AtosKotEventAggregator;->updateKotEvent(Lcom/toughstump/atos/kot/AtosKotEvent;)V

    const/4 p1, 0x1

    return p1
.end method
