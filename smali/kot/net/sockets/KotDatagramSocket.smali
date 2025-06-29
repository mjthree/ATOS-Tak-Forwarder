.class public abstract Lkot/net/sockets/KotDatagramSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final address:Ljava/net/InetSocketAddress;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onError:Lkot/net/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkot/net/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final socket:Ljava/net/DatagramSocket;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Lkot/net/functions/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/net/DatagramSocket;",
            "Lkot/net/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lkot/net/sockets/KotDatagramSocket;->address:Ljava/net/InetSocketAddress;

    .line 4
    iput-object p2, p0, Lkot/net/sockets/KotDatagramSocket;->socket:Ljava/net/DatagramSocket;

    .line 5
    iput-object p3, p0, Lkot/net/sockets/KotDatagramSocket;->onError:Lkot/net/functions/Consumer;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lkot/net/sockets/KotDatagramSocket;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Lkot/net/functions/Consumer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkot/net/sockets/KotDatagramSocket;-><init>(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Lkot/net/functions/Consumer;)V

    return-void
.end method


# virtual methods
.method public abstract action()V
.end method

.method protected final fatal(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "throwable"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkot/net/sockets/KotDatagramSocket;->stop()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lkot/net/sockets/KotDatagramSocket;->onError:Lkot/net/functions/Consumer;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lkot/net/functions/Consumer;->accept(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected final getAddress()Ljava/net/InetSocketAddress;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/net/sockets/KotDatagramSocket;->address:Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getOnError()Lkot/net/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkot/net/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/net/sockets/KotDatagramSocket;->onError:Lkot/net/functions/Consumer;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getSocket()Ljava/net/DatagramSocket;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/net/sockets/KotDatagramSocket;->socket:Ljava/net/DatagramSocket;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final isRunning()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/net/sockets/KotDatagramSocket;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public run()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lkot/net/sockets/KotDatagramSocket;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lkot/net/sockets/KotDatagramSocket;->action()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lkot/net/sockets/KotDatagramSocket;->socket:Ljava/net/DatagramSocket;

    .line 14
    .line 15
    instance-of v1, v0, Ljava/net/MulticastSocket;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    check-cast v0, Ljava/net/MulticastSocket;

    .line 20
    .line 21
    iget-object v1, p0, Lkot/net/sockets/KotDatagramSocket;->address:Ljava/net/InetSocketAddress;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lkot/net/sockets/KotDatagramSocket;->socket:Ljava/net/DatagramSocket;

    .line 31
    .line 32
    invoke-static {v0}, Lkot/net/ExtensionsKt;->isNotClosed(Ljava/net/DatagramSocket;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lkot/net/sockets/KotDatagramSocket;->socket:Ljava/net/DatagramSocket;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public final start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkot/net/sockets/KotDatagramSocket;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lkot/net/sockets/KotDatagramSocket;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
