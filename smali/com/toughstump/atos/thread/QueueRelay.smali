.class public final Lcom/toughstump/atos/thread/QueueRelay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private queueProcessEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Ljava/util/Collection<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private timer:Ljava/util/Timer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final updateTimeMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/toughstump/atos/thread/QueueRelay;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/toughstump/atos/thread/QueueRelay;->updateTimeMillis:J

    .line 2
    new-instance p1, Lcom/toughstump/event/Event;

    invoke-direct {p1}, Lcom/toughstump/event/Event;-><init>()V

    iput-object p1, p0, Lcom/toughstump/atos/thread/QueueRelay;->queueProcessEvent:Lcom/toughstump/event/Event;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/toughstump/atos/thread/QueueRelay;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x19

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/toughstump/atos/thread/QueueRelay;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public static final synthetic access$bulkUpdate(Lcom/toughstump/atos/thread/QueueRelay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/thread/QueueRelay;->bulkUpdate()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final declared-synchronized bulkUpdate()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    :goto_0
    iget-object v1, p0, Lcom/toughstump/atos/thread/QueueRelay;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/toughstump/atos/thread/QueueRelay;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/thread/QueueRelay;->queueProcessEvent:Lcom/toughstump/event/Event;

    .line 28
    .line 29
    invoke-virtual {v1, p0, v0}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw v0
.end method


# virtual methods
.method public final getQueue()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/thread/QueueRelay;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getQueueProcessEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Ljava/util/Collection<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/thread/QueueRelay;->queueProcessEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setQueue(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/ConcurrentLinkedQueue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/thread/QueueRelay;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    return-void
.end method

.method public final setQueueProcessEvent(Lcom/toughstump/event/Event;)V
    .locals 1
    .param p1    # Lcom/toughstump/event/Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/toughstump/event/Event<",
            "Ljava/util/Collection<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/thread/QueueRelay;->queueProcessEvent:Lcom/toughstump/event/Event;

    .line 7
    .line 8
    return-void
.end method

.method public final start()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/thread/QueueRelay;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v5, p0, Lcom/toughstump/atos/thread/QueueRelay;->updateTimeMillis:J

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v2, Lcom/toughstump/atos/thread/QueueRelay$start$$inlined$fixedRateTimer$default$1;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/toughstump/atos/thread/QueueRelay$start$$inlined$fixedRateTimer$default$1;-><init>(Lcom/toughstump/atos/thread/QueueRelay;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/toughstump/atos/thread/QueueRelay;->timer:Ljava/util/Timer;

    .line 22
    .line 23
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/thread/QueueRelay;->timer:Ljava/util/Timer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final declared-synchronized update(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/toughstump/atos/thread/QueueRelay;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p1
.end method
