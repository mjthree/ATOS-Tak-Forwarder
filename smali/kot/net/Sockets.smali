.class public final Lkot/net/Sockets;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final defaultMulticastSocketFactory(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Ljava/net/MulticastSocket;
    .locals 0
    .param p0    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkot/net/sockets/SocketOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkot/net/Sockets__CommonKt;->defaultMulticastSocketFactory(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Ljava/net/MulticastSocket;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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
    invoke-static {p0}, Lkot/net/Sockets__RxKt;->newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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
    invoke-static {p0, p1}, Lkot/net/Sockets__RxKt;->newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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
    invoke-static {p0, p1, p2}, Lkot/net/Sockets__RxKt;->newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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
    invoke-static {p0, p1, p2, p3}, Lkot/net/Sockets__RxKt;->newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets__RxKt;->newUdpBroadcastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newUdpBroadcastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lkot/net/Sockets__RxKt;->newUdpBroadcastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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
    invoke-static {p0}, Lkot/net/Sockets__TxKt;->newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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
    invoke-static {p0, p1}, Lkot/net/Sockets__TxKt;->newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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
    invoke-static {p0, p1, p2}, Lkot/net/Sockets__TxKt;->newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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
    invoke-static {p0, p1, p2, p3}, Lkot/net/Sockets__TxKt;->newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets__TxKt;->newUdpBroadcastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newUdpBroadcastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lkot/net/Sockets__TxKt;->newUdpBroadcastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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
    invoke-static {p0}, Lkot/net/Sockets__RxKt;->newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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
    invoke-static {p0, p1}, Lkot/net/Sockets__RxKt;->newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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
    invoke-static {p0, p1, p2}, Lkot/net/Sockets__RxKt;->newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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
    invoke-static {p0, p1, p2, p3}, Lkot/net/Sockets__RxKt;->newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets__RxKt;->newUdpMulticastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newUdpMulticastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lkot/net/Sockets__RxKt;->newUdpMulticastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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
    invoke-static {p0}, Lkot/net/Sockets__TxKt;->newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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
    invoke-static {p0, p1}, Lkot/net/Sockets__TxKt;->newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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
    invoke-static {p0, p1, p2}, Lkot/net/Sockets__TxKt;->newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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
    invoke-static {p0, p1, p2, p3}, Lkot/net/Sockets__TxKt;->newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets__TxKt;->newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newUdpMulticastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lkot/net/Sockets__TxKt;->newUdpMulticastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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
    invoke-static {p0}, Lkot/net/Sockets__RxKt;->newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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
    invoke-static {p0, p1}, Lkot/net/Sockets__RxKt;->newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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
    invoke-static {p0, p1, p2}, Lkot/net/Sockets__RxKt;->newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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
    invoke-static {p0, p1, p2, p3}, Lkot/net/Sockets__RxKt;->newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0
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

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets__RxKt;->newUdpUnicastRxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramRxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newUdpUnicastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lkot/net/Sockets__RxKt;->newUdpUnicastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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
    invoke-static {p0}, Lkot/net/Sockets__TxKt;->newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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
    invoke-static {p0, p1}, Lkot/net/Sockets__TxKt;->newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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
    invoke-static {p0, p1, p2}, Lkot/net/Sockets__TxKt;->newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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
    invoke-static {p0, p1, p2, p3}, Lkot/net/Sockets__TxKt;->newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static final newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0
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

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lkot/net/Sockets__TxKt;->newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic newUdpUnicastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lkot/net/Sockets__TxKt;->newUdpUnicastTxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkot/net/sockets/DatagramTxSocket;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
