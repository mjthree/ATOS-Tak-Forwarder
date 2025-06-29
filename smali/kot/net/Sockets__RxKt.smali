.class final synthetic Lkot/net/Sockets__RxKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRx.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Rx.kt\nkot/net/Sockets__RxKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,170:1\n1#2:171\n*E\n"
.end annotation


# direct methods
.method private static final newRxSocket$Sockets__RxKt(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/net/DatagramSocket;",
            ">(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/SocketOptions;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkot/net/functions/Consumer<",
            "-[B>;",
            "Lkot/net/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lkot/net/sockets/DatagramRxSocket<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lkot/net/sockets/DatagramRxSocket;

    .line 2
    .line 3
    new-instance v2, Lkot/net/Sockets__RxKt$sam$kot_net_sockets_DatagramSocketFactory$0;

    .line 4
    .line 5
    invoke-direct {v2, p2}, Lkot/net/Sockets__RxKt$sam$kot_net_sockets_DatagramSocketFactory$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lkot/net/sockets/SocketOptions;->getBufferSize()I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    move-object v0, v6

    .line 13
    move-object v1, p0

    .line 14
    move-object v3, p3

    .line 15
    move-object v4, p4

    .line 16
    invoke-direct/range {v0 .. v5}, Lkot/net/sockets/DatagramRxSocket;-><init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v6}, Lkot/net/sockets/KotDatagramSocket;->start()V

    .line 20
    .line 21
    .line 22
    invoke-static {v6}, Lkot/net/Schedulers;->scheduleIndefinitely(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lkot/net/Schedulers;->managed(Ljava/util/concurrent/Future;)Z

    .line 27
    .line 28
    .line 29
    return-object v6
.end method

.method static synthetic newRxSocket$Sockets__RxKt$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x8

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lkot/net/functions/Consumers;->getNO_OP()Lkot/net/functions/Consumer;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    :cond_0
    and-int/lit8 p5, p5, 0x10

    .line 10
    .line 11
    if-eqz p5, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lkot/net/functions/Consumers;->getLOG_EXCEPTION()Lkot/net/functions/Consumer;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets__RxKt;->newRxSocket$Sockets__RxKt(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static final newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramRxSocket;
    .locals 8
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpBroadcastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramRxSocket;
    .locals 8
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/net/sockets/SocketOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/SocketOptions;",
            ")",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpBroadcastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramRxSocket;
    .locals 8
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/net/sockets/SocketOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/SocketOptions;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/net/DatagramSocket;",
            ">;)",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpBroadcastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;
    .locals 8
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/net/sockets/SocketOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkot/net/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/SocketOptions;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/net/DatagramSocket;",
            ">;",
            "Lkot/net/functions/Consumer<",
            "-[B>;)",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpBroadcastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;
    .locals 1
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/net/sockets/SocketOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkot/net/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkot/net/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/SocketOptions;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/net/DatagramSocket;",
            ">;",
            "Lkot/net/functions/Consumer<",
            "-[B>;",
            "Lkot/net/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lkot/net/Sockets__RxKt$newUdpBroadcastRxSocket$f$1;

    invoke-direct {p2, p1, p0}, Lkot/net/Sockets__RxKt$newUdpBroadcastRxSocket$f$1;-><init>(Lkot/net/sockets/SocketOptions;Ljava/net/InetSocketAddress;)V

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets__RxKt;->newRxSocket$Sockets__RxKt(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newUdpBroadcastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;
    .locals 7

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    new-instance p1, Lkot/net/sockets/SocketOptions;

    .line 6
    .line 7
    const/16 v5, 0xf

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v0, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Lkot/net/sockets/SocketOptions;-><init>(ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 19
    .line 20
    if-eqz p6, :cond_1

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    :cond_1
    and-int/lit8 p6, p5, 0x8

    .line 24
    .line 25
    if-eqz p6, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lkot/net/functions/Consumers;->getNO_OP()Lkot/net/functions/Consumer;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    :cond_2
    and-int/lit8 p5, p5, 0x10

    .line 32
    .line 33
    if-eqz p5, :cond_3

    .line 34
    .line 35
    invoke-static {}, Lkot/net/functions/Consumers;->getLOG_EXCEPTION()Lkot/net/functions/Consumer;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets;->newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static final newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramRxSocket;
    .locals 8
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/MulticastSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpMulticastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramRxSocket;
    .locals 8
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/net/sockets/SocketOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/SocketOptions;",
            ")",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/MulticastSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpMulticastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramRxSocket;
    .locals 8
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/net/sockets/SocketOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/SocketOptions;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/net/MulticastSocket;",
            ">;)",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/MulticastSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpMulticastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;
    .locals 8
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/net/sockets/SocketOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkot/net/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/SocketOptions;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/net/MulticastSocket;",
            ">;",
            "Lkot/net/functions/Consumer<",
            "-[B>;)",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/MulticastSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpMulticastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;
    .locals 1
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/net/sockets/SocketOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkot/net/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkot/net/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/SocketOptions;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/net/MulticastSocket;",
            ">;",
            "Lkot/net/functions/Consumer<",
            "-[B>;",
            "Lkot/net/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/MulticastSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lkot/net/Sockets__RxKt$newUdpMulticastRxSocket$f$1;

    invoke-direct {p2, p0, p1}, Lkot/net/Sockets__RxKt$newUdpMulticastRxSocket$f$1;-><init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)V

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets__RxKt;->newRxSocket$Sockets__RxKt(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newUdpMulticastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;
    .locals 7

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    new-instance p1, Lkot/net/sockets/SocketOptions;

    .line 6
    .line 7
    const/16 v5, 0xf

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v0, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Lkot/net/sockets/SocketOptions;-><init>(ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 19
    .line 20
    if-eqz p6, :cond_1

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    :cond_1
    and-int/lit8 p6, p5, 0x8

    .line 24
    .line 25
    if-eqz p6, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lkot/net/functions/Consumers;->getNO_OP()Lkot/net/functions/Consumer;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    :cond_2
    and-int/lit8 p5, p5, 0x10

    .line 32
    .line 33
    if-eqz p5, :cond_3

    .line 34
    .line 35
    invoke-static {}, Lkot/net/functions/Consumers;->getLOG_EXCEPTION()Lkot/net/functions/Consumer;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets;->newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static final newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramRxSocket;
    .locals 8
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpUnicastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramRxSocket;
    .locals 8
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/net/sockets/SocketOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/SocketOptions;",
            ")",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpUnicastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramRxSocket;
    .locals 8
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/net/sockets/SocketOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/SocketOptions;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/net/DatagramSocket;",
            ">;)",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpUnicastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;
    .locals 8
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/net/sockets/SocketOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkot/net/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/SocketOptions;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/net/DatagramSocket;",
            ">;",
            "Lkot/net/functions/Consumer<",
            "-[B>;)",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpUnicastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;
    .locals 1
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/net/sockets/SocketOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkot/net/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkot/net/functions/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/SocketOptions;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/net/DatagramSocket;",
            ">;",
            "Lkot/net/functions/Consumer<",
            "-[B>;",
            "Lkot/net/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lkot/net/Sockets__RxKt$newUdpUnicastRxSocket$f$1;

    invoke-direct {p2, p1, p0}, Lkot/net/Sockets__RxKt$newUdpUnicastRxSocket$f$1;-><init>(Lkot/net/sockets/SocketOptions;Ljava/net/InetSocketAddress;)V

    .line 6
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets__RxKt;->newRxSocket$Sockets__RxKt(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newUdpUnicastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;
    .locals 7

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    new-instance p1, Lkot/net/sockets/SocketOptions;

    .line 6
    .line 7
    const/16 v5, 0xf

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v0, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Lkot/net/sockets/SocketOptions;-><init>(ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 19
    .line 20
    if-eqz p6, :cond_1

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    :cond_1
    and-int/lit8 p6, p5, 0x8

    .line 24
    .line 25
    if-eqz p6, :cond_2

    .line 26
    .line 27
    invoke-static {}, Lkot/net/functions/Consumers;->getNO_OP()Lkot/net/functions/Consumer;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    :cond_2
    and-int/lit8 p5, p5, 0x10

    .line 32
    .line 33
    if-eqz p5, :cond_3

    .line 34
    .line 35
    invoke-static {}, Lkot/net/functions/Consumers;->getLOG_EXCEPTION()Lkot/net/functions/Consumer;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets;->newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
