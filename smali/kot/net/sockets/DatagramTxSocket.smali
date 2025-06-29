.class public final Lkot/net/sockets/DatagramTxSocket;
.super Lkot/net/sockets/KotDatagramSocket;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/net/DatagramSocket;",
        ">",
        "Lkot/net/sockets/KotDatagramSocket;"
    }
.end annotation


# instance fields
.field private final onComplete:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transmitQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/net/sockets/DatagramSocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkot/net/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/DatagramSocketFactory<",
            "TT;>;",
            "Lkot/net/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socketFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2}, Lkot/net/sockets/DatagramSocketFactory;->createSocket()Ljava/net/DatagramSocket;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lkot/net/sockets/KotDatagramSocket;-><init>(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Lkot/net/functions/Consumer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    iput-object p4, p0, Lkot/net/sockets/DatagramTxSocket;->onComplete:Lkotlin/jvm/functions/Function0;

    .line 6
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lkot/net/sockets/DatagramTxSocket;->transmitQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 1
    invoke-static {}, Lkot/net/functions/Consumers;->getLOG_EXCEPTION()Lkot/net/functions/Consumer;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 2
    sget-object p4, Lkot/net/sockets/DatagramTxSocket$1;->INSTANCE:Lkot/net/sockets/DatagramTxSocket$1;

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lkot/net/sockets/DatagramTxSocket;-><init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lkot/net/sockets/DatagramTxSocket;->transmitQueue:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "transmitQueue.take()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    .line 14
    new-instance v1, Ljava/net/DatagramPacket;

    .line 15
    .line 16
    array-length v2, v0

    .line 17
    invoke-virtual {p0}, Lkot/net/sockets/KotDatagramSocket;->getAddress()Ljava/net/InetSocketAddress;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {p0}, Lkot/net/sockets/KotDatagramSocket;->getAddress()Ljava/net/InetSocketAddress;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getPort()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-direct {v1, v0, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 34
    .line 35
    .line 36
    :try_start_1
    invoke-virtual {p0}, Lkot/net/sockets/KotDatagramSocket;->getSocket()Ljava/net/DatagramSocket;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lkot/net/sockets/DatagramTxSocket;->onComplete:Lkotlin/jvm/functions/Function0;

    .line 44
    .line 45
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {p0}, Lkot/net/sockets/KotDatagramSocket;->getOnError()Lkot/net/functions/Consumer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v1, v0}, Lkot/net/functions/Consumer;->accept(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :catch_1
    move-exception v0

    .line 59
    invoke-virtual {p0, v0}, Lkot/net/sockets/KotDatagramSocket;->fatal(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final send(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(TD;",
            "Lkotlin/jvm/functions/Function1<",
            "-TD;[B>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "toBytes"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, [B

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lkot/net/sockets/DatagramTxSocket;->sendBytes([B)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final sendBytes([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkot/net/sockets/KotDatagramSocket;->getSocket()Ljava/net/DatagramSocket;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkot/net/ExtensionsKt;->isNotClosed(Ljava/net/DatagramSocket;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lkot/net/sockets/DatagramTxSocket;->transmitQueue:Ljava/util/concurrent/BlockingQueue;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
