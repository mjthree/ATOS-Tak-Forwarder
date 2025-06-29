.class public Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay$PayloadRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsPacketRelay"


# instance fields
.field private _isRunning:Z

.field private final _payloadQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;",
            ">;"
        }
    .end annotation
.end field

.field private _payloadRunnable:Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay$PayloadRunnable;

.field private _payloadTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public dataListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->dataListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->_payloadQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$100(Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->_isRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->_payloadQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->updateDataListeners(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private updateDataListeners(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->dataListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;

    .line 18
    .line 19
    :try_start_0
    invoke-interface {v1, p1}, Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;->onDataReceived(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public addBatteryUpdate(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->dataListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;

    .line 18
    .line 19
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;->onBatteryUpdateReceived(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public addPacket(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->_payloadQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->_isRunning:Z

    .line 3
    .line 4
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay$PayloadRunnable;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay$PayloadRunnable;-><init>(Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->_payloadRunnable:Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay$PayloadRunnable;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->_payloadRunnable:Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay$PayloadRunnable;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->_payloadTask:Ljava/util/concurrent/Future;

    .line 23
    .line 24
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->_payloadTask:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method
