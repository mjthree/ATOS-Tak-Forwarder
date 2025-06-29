.class final synthetic Lkot/net/Sockets__TxKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTx.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tx.kt\nkot/net/Sockets__TxKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n1#2:164\n*E\n"
.end annotation


# direct methods
.method private static final newTxSocket$Sockets__TxKt(Ljava/net/InetSocketAddress;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/net/DatagramSocket;",
            ">(",
            "Ljava/net/InetSocketAddress;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkot/net/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lkot/net/sockets/DatagramTxSocket<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkot/net/sockets/DatagramTxSocket;

    .line 2
    .line 3
    new-instance v1, Lkot/net/Sockets__TxKt$sam$kot_net_sockets_DatagramSocketFactory$0;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lkot/net/Sockets__TxKt$sam$kot_net_sockets_DatagramSocketFactory$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1, p2, p3}, Lkot/net/sockets/DatagramTxSocket;-><init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkot/net/sockets/KotDatagramSocket;->start()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkot/net/Schedulers;->scheduleIndefinitely(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lkot/net/Schedulers;->managed(Ljava/util/concurrent/Future;)Z

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static final newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramTxSocket;
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
            "Lkot/net/sockets/DatagramTxSocket<",
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

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpBroadcastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramTxSocket;
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
            "Lkot/net/sockets/DatagramTxSocket<",
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

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpBroadcastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
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
            "Lkot/net/sockets/DatagramTxSocket<",
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

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpBroadcastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramTxSocket;
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
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lkot/net/sockets/DatagramTxSocket<",
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

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpBroadcastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
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
    .param p4    # Lkotlin/jvm/functions/Function0;
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
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lkot/net/sockets/DatagramTxSocket<",
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

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lkot/net/Sockets__TxKt$newUdpBroadcastTxSocket$f$1;

    invoke-direct {p2, p1}, Lkot/net/Sockets__TxKt$newUdpBroadcastTxSocket$f$1;-><init>(Lkot/net/sockets/SocketOptions;)V

    .line 6
    :cond_0
    invoke-static {p0, p2, p3, p4}, Lkot/net/Sockets__TxKt;->newTxSocket$Sockets__TxKt(Ljava/net/InetSocketAddress;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newUdpBroadcastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;
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
    invoke-static {}, Lkot/net/functions/Consumers;->getLOG_EXCEPTION()Lkot/net/functions/Consumer;

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
    sget-object p4, Lkot/net/Sockets__TxKt$newUdpBroadcastTxSocket$1;->INSTANCE:Lkot/net/Sockets__TxKt$newUdpBroadcastTxSocket$1;

    .line 36
    .line 37
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets;->newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static final newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramTxSocket;
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
            "Lkot/net/sockets/DatagramTxSocket<",
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

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpMulticastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramTxSocket;
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
            "Lkot/net/sockets/DatagramTxSocket<",
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

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpMulticastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
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
            "Lkot/net/sockets/DatagramTxSocket<",
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

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpMulticastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramTxSocket;
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
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lkot/net/sockets/DatagramTxSocket<",
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

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpMulticastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
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
    .param p4    # Lkotlin/jvm/functions/Function0;
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
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lkot/net/sockets/DatagramTxSocket<",
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

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lkot/net/Sockets__TxKt$newUdpMulticastTxSocket$f$1;

    invoke-direct {p2, p0, p1}, Lkot/net/Sockets__TxKt$newUdpMulticastTxSocket$f$1;-><init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)V

    .line 6
    :cond_0
    invoke-static {p0, p2, p3, p4}, Lkot/net/Sockets__TxKt;->newTxSocket$Sockets__TxKt(Ljava/net/InetSocketAddress;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newUdpMulticastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;
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
    invoke-static {}, Lkot/net/functions/Consumers;->getLOG_EXCEPTION()Lkot/net/functions/Consumer;

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
    sget-object p4, Lkot/net/Sockets__TxKt$newUdpMulticastTxSocket$1;->INSTANCE:Lkot/net/Sockets__TxKt$newUdpMulticastTxSocket$1;

    .line 36
    .line 37
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets;->newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public static final newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramTxSocket;
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
            "Lkot/net/sockets/DatagramTxSocket<",
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

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpUnicastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramTxSocket;
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
            "Lkot/net/sockets/DatagramTxSocket<",
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

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpUnicastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
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
            "Lkot/net/sockets/DatagramTxSocket<",
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

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpUnicastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramTxSocket;
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
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lkot/net/sockets/DatagramTxSocket<",
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

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lkot/net/Sockets;->newUdpUnicastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
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
    .param p4    # Lkotlin/jvm/functions/Function0;
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
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lkot/net/sockets/DatagramTxSocket<",
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

    const-string v0, "onError"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Lkot/net/Sockets__TxKt$newUdpUnicastTxSocket$f$1;

    invoke-direct {p2, p1}, Lkot/net/Sockets__TxKt$newUdpUnicastTxSocket$f$1;-><init>(Lkot/net/sockets/SocketOptions;)V

    .line 6
    :cond_0
    invoke-static {p0, p2, p3, p4}, Lkot/net/Sockets__TxKt;->newTxSocket$Sockets__TxKt(Ljava/net/InetSocketAddress;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newUdpUnicastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;
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
    invoke-static {}, Lkot/net/functions/Consumers;->getLOG_EXCEPTION()Lkot/net/functions/Consumer;

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
    sget-object p4, Lkot/net/Sockets__TxKt$newUdpUnicastTxSocket$1;->INSTANCE:Lkot/net/Sockets__TxKt$newUdpUnicastTxSocket$1;

    .line 36
    .line 37
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets;->newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method
