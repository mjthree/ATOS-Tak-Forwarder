.class final Lkot/net/Sockets__TxKt$newUdpUnicastTxSocket$f$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkot/net/Sockets__TxKt;->newUdpUnicastTxSocket(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkotlin/jvm/functions/Function0;)Lkot/net/sockets/DatagramTxSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/net/DatagramSocket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $options:Lkot/net/sockets/SocketOptions;


# direct methods
.method constructor <init>(Lkot/net/sockets/SocketOptions;)V
    .locals 0

    iput-object p1, p0, Lkot/net/Sockets__TxKt$newUdpUnicastTxSocket$f$1;->$options:Lkot/net/sockets/SocketOptions;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkot/net/Sockets__TxKt$newUdpUnicastTxSocket$f$1;->invoke()Ljava/net/DatagramSocket;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/net/DatagramSocket;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Ljava/net/DatagramSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iget-object v1, p0, Lkot/net/Sockets__TxKt$newUdpUnicastTxSocket$f$1;->$options:Lkot/net/sockets/SocketOptions;

    .line 3
    invoke-virtual {v1}, Lkot/net/sockets/SocketOptions;->getReuseAddress()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    return-object v0
.end method
