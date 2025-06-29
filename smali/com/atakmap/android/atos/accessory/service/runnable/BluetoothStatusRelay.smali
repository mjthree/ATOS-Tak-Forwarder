.class public Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatusRunnable;,
        Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothStatusRelay"


# instance fields
.field private final _bluetoothStatusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatus;",
            ">;"
        }
    .end annotation
.end field

.field private _isRunning:Z

.field private _statusRunnable:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatusRunnable;

.field private _statusTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public statusListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;",
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
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->statusListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->_bluetoothStatusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$100(Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->_isRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->_bluetoothStatusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->updateStatusListeners(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private updateStatusListeners(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->statusListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

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
    check-cast v1, Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v1, v2, p2}, Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;->onStatusUpdated(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->_isRunning:Z

    .line 3
    .line 4
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatusRunnable;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatusRunnable;-><init>(Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->_statusRunnable:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatusRunnable;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->_statusRunnable:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatusRunnable;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->_statusTask:Ljava/util/concurrent/Future;

    .line 23
    .line 24
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->_statusTask:Ljava/util/concurrent/Future;

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

.method public update(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->_bluetoothStatusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    new-instance v1, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatus;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatus;-><init>(Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
