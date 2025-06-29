.class final synthetic Lkot/net/Sockets__CommonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Common.kt\nkot/net/Sockets__CommonKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n1849#2,2:32\n*S KotlinDebug\n*F\n+ 1 Common.kt\nkot/net/Sockets__CommonKt\n*L\n25#1:32,2\n*E\n"
.end annotation


# direct methods
.method public static final defaultMulticastSocketFactory(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Ljava/net/MulticastSocket;
    .locals 2
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
    const-string v0, "address"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "options"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/net/MulticastSocket;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lkot/net/sockets/SocketOptions;->getReuseAddress()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lkot/net/sockets/SocketOptions;->getBroadcast()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lkot/net/sockets/SocketOptions;->getReadTimeout()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/net/InetSocketAddress;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-direct {p1, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lkot/net/NetworkInterfaceMonitor;->INSTANCE:Lkot/net/NetworkInterfaceMonitor;

    .line 51
    .line 52
    invoke-virtual {p1}, Lkot/net/NetworkInterfaceMonitor;->getActiveNics()Ljava/util/Collection;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/net/NetworkInterface;

    .line 71
    .line 72
    invoke-virtual {v0, p0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    return-object v0
.end method
