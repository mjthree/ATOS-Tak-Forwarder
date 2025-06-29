.class final Lkot/net/Sockets__TxKt$newUdpMulticastTxSocket$f$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkot/net/Sockets__TxKt;->newUdpMulticastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/net/MulticastSocket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $address:Ljava/net/InetSocketAddress;

.field final synthetic $options:Lkot/net/sockets/SocketOptions;


# direct methods
.method constructor <init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)V
    .locals 0

    iput-object p1, p0, Lkot/net/Sockets__TxKt$newUdpMulticastTxSocket$f$1;->$address:Ljava/net/InetSocketAddress;

    iput-object p2, p0, Lkot/net/Sockets__TxKt$newUdpMulticastTxSocket$f$1;->$options:Lkot/net/sockets/SocketOptions;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkot/net/Sockets__TxKt$newUdpMulticastTxSocket$f$1;->invoke()Ljava/net/MulticastSocket;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/net/MulticastSocket;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lkot/net/Sockets__TxKt$newUdpMulticastTxSocket$f$1;->$address:Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lkot/net/Sockets__TxKt$newUdpMulticastTxSocket$f$1;->$options:Lkot/net/sockets/SocketOptions;

    invoke-static {v0, v1}, Lkot/net/Sockets;->defaultMulticastSocketFactory(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;)Ljava/net/MulticastSocket;

    move-result-object v0

    return-object v0
.end method
