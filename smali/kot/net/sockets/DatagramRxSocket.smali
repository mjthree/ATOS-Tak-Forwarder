.class public final Lkot/net/sockets/DatagramRxSocket;
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
.field private final bufferSize:I

.field private final onNext:Lkot/net/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkot/net/functions/Consumer<",
            "[B>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;)V
    .locals 9
    .param p1    # Ljava/net/InetSocketAddress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/net/sockets/DatagramSocketFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/DatagramSocketFactory<",
            "TT;>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socketFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lkot/net/sockets/DatagramRxSocket;-><init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;)V
    .locals 9
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lkot/net/sockets/DatagramSocketFactory<",
            "TT;>;",
            "Lkot/net/functions/Consumer<",
            "-[B>;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socketFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lkot/net/sockets/DatagramRxSocket;-><init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;)V
    .locals 9
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
    .param p4    # Lkot/net/functions/Consumer;
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
            "-[B>;",
            "Lkot/net/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 3
    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socketFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lkot/net/sockets/DatagramRxSocket;-><init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;I)V
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
    .param p4    # Lkot/net/functions/Consumer;
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
            "-[B>;",
            "Lkot/net/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socketFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onNext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p2}, Lkot/net/sockets/DatagramSocketFactory;->createSocket()Ljava/net/DatagramSocket;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lkot/net/sockets/KotDatagramSocket;-><init>(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Lkot/net/functions/Consumer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iput-object p3, p0, Lkot/net/sockets/DatagramRxSocket;->onNext:Lkot/net/functions/Consumer;

    .line 9
    iput p5, p0, Lkot/net/sockets/DatagramRxSocket;->bufferSize:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 4
    invoke-static {}, Lkot/net/functions/Consumers;->getNO_OP()Lkot/net/functions/Consumer;

    move-result-object p3

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 5
    invoke-static {}, Lkot/net/functions/Consumers;->getLOG_EXCEPTION()Lkot/net/functions/Consumer;

    move-result-object p4

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/16 p5, 0x2000

    :cond_2
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 6
    invoke-direct/range {v0 .. v5}, Lkot/net/sockets/DatagramRxSocket;-><init>(Ljava/net/InetSocketAddress;Lkot/net/sockets/DatagramSocketFactory;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;I)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkot/net/sockets/KotDatagramSocket;->getSocket()Ljava/net/DatagramSocket;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v0, p0, Lkot/net/sockets/DatagramRxSocket;->bufferSize:I

    .line 13
    .line 14
    new-array v1, v0, [B

    .line 15
    .line 16
    new-instance v2, Ljava/net/DatagramPacket;

    .line 17
    .line 18
    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lkot/net/sockets/KotDatagramSocket;->getSocket()Ljava/net/DatagramSocket;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    .line 29
    .line 30
    .line 31
    move-result v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    if-lez v0, :cond_1

    .line 33
    .line 34
    :try_start_1
    iget-object v0, p0, Lkot/net/sockets/DatagramRxSocket;->onNext:Lkot/net/functions/Consumer;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v3, "packet.data"

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "copyOf(this, newSize)"

    .line 54
    .line 55
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1}, Lkot/net/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    :try_start_2
    invoke-virtual {p0, v0}, Lkot/net/sockets/KotDatagramSocket;->fatal(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 68
    invoke-virtual {p0}, Lkot/net/sockets/KotDatagramSocket;->getOnError()Lkot/net/functions/Consumer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1, v0}, Lkot/net/functions/Consumer;->accept(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-void
.end method
