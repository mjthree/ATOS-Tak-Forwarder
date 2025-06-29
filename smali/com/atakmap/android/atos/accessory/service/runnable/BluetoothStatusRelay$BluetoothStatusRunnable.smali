.class Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatusRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothStatusRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;


# direct methods
.method private constructor <init>(Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatusRunnable;->this$0:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatusRunnable;-><init>(Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatusRunnable;->this$0:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->access$100(Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatusRunnable;->this$0:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->access$200(Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatusRunnable;->this$0:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->access$200(Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatus;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatusRunnable;->this$0:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatus;->state:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay$BluetoothStatus;->message:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v2, v0}, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->access$300(Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-wide/16 v0, 0x32

    .line 44
    .line 45
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method
