.class public final Lcom/toughstump/atos/dev/AtosDevKotReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkot/net/functions/KotEventReceiver;


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/dev/AtosDevKotReceiver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosDevKotReceiver"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static kotSumer:Lkot/net/functions/KotRxSocketConsumer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static udpRxSocket:Lkot/net/sockets/DatagramRxSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkot/net/sockets/DatagramRxSocket<",
            "Ljava/net/DatagramSocket;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/toughstump/atos/dev/AtosDevKotReceiver;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/dev/AtosDevKotReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/dev/AtosDevKotReceiver;->INSTANCE:Lcom/toughstump/atos/dev/AtosDevKotReceiver;

    .line 7
    .line 8
    new-instance v1, Lkot/net/functions/KotRxSocketConsumer;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lkot/net/functions/KotRxSocketConsumer;-><init>(Lkot/net/functions/KotEventReceiver;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/toughstump/atos/dev/AtosDevKotReceiver;->kotSumer:Lkot/net/functions/KotRxSocketConsumer;

    .line 14
    .line 15
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 16
    .line 17
    const-string v0, "127.0.0.1"

    .line 18
    .line 19
    const/16 v1, 0x1093

    .line 20
    .line 21
    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    sget-object v5, Lcom/toughstump/atos/dev/AtosDevKotReceiver;->kotSumer:Lkot/net/functions/KotRxSocketConsumer;

    .line 25
    .line 26
    invoke-static {}, Lkot/net/functions/Consumers;->getLOG_EXCEPTION()Lkot/net/functions/Consumer;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const/4 v7, 0x6

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v2 .. v8}, Lkot/net/Sockets;->newUdpBroadcastRxSocket$default(Ljava/net/InetSocketAddress;Lkot/net/sockets/SocketOptions;Lkotlin/jvm/functions/Function0;Lkot/net/functions/Consumer;Lkot/net/functions/Consumer;ILjava/lang/Object;)Lkot/net/sockets/DatagramRxSocket;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/toughstump/atos/dev/AtosDevKotReceiver;->udpRxSocket:Lkot/net/sockets/DatagramRxSocket;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Lkot/net/sockets/KotDatagramSocket;->start()V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onKotReceived(Lkot/KotEvent;)V
    .locals 2
    .param p1    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "kotEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "Kot Received"

    .line 7
    .line 8
    const-string v1, "AtosDevKotReceiver"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/toughstump/atos/kot/AtosKotEventKt;->isAtosTrackEvent(Lkot/KotEvent;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string p1, "event was not an atos event"

    .line 20
    .line 21
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object v0, Lcom/toughstump/atos/kot/AtosKotEvent;->Companion:Lcom/toughstump/atos/kot/AtosKotEvent$Companion;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/kot/AtosKotEvent$Companion;->fromKotEvent(Lkot/KotEvent;)Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    const-string p1, "atos kot conversion failed"

    .line 34
    .line 35
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/toughstump/atos/dev/AtosDevKotReceiver$onKotReceived$1;

    .line 44
    .line 45
    invoke-direct {v1, p1}, Lcom/toughstump/atos/dev/AtosDevKotReceiver$onKotReceived$1;-><init>(Lcom/toughstump/atos/kot/AtosKotEvent;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/utilities/RunnableManager;->post(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final start()V
    .locals 0

    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/dev/AtosDevKotReceiver;->udpRxSocket:Lkot/net/sockets/DatagramRxSocket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lkot/net/sockets/KotDatagramSocket;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
