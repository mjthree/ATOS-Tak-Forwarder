.class Lcom/atakmap/android/atos/accessory/service/CommandLinkService$1;
.super Lcom/atakmap/android/atos/accessory/service/ICommandLink$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atakmap/android/atos/accessory/service/CommandLinkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atakmap/android/atos/accessory/service/CommandLinkService;


# direct methods
.method constructor <init>(Lcom/atakmap/android/atos/accessory/service/CommandLinkService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/CommandLinkService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/ICommandLink$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public registerDataInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/CommandLinkService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->access$000(Lcom/atakmap/android/atos/accessory/service/CommandLinkService;)Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->dataListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public registerStatusInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/CommandLinkService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->access$100(Lcom/atakmap/android/atos/accessory/service/CommandLinkService;)Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->statusListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/CommandLinkService;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->access$200(Lcom/atakmap/android/atos/accessory/service/CommandLinkService;)Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/CommandLinkService;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->access$300(Lcom/atakmap/android/atos/accessory/service/CommandLinkService;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {p1, v0, v1}, Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;->onStatusUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public unregisterDataInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/CommandLinkService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->access$000(Lcom/atakmap/android/atos/accessory/service/CommandLinkService;)Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->dataListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public unregisterStatusInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/CommandLinkService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->access$100(Lcom/atakmap/android/atos/accessory/service/CommandLinkService;)Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->statusListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
