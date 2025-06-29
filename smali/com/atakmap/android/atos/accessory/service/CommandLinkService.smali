.class public Lcom/atakmap/android/atos/accessory/service/CommandLinkService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandLinkService"


# instance fields
.field private _bluetoothManager:Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;

.field private _bluetoothRelay:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

.field private _bluetoothState:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field private _bluetoothStatusMessage:Ljava/lang/String;

.field private _packetRelay:Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;

.field private _serialManager:Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;

.field private _statusCounter:I

.field private final binder:Lcom/atakmap/android/atos/accessory/service/ICommandLink$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_DISCONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothState:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 7
    .line 8
    const-string v0, "n/a"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothStatusMessage:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService$1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/atakmap/android/atos/accessory/service/CommandLinkService$1;-><init>(Lcom/atakmap/android/atos/accessory/service/CommandLinkService;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->binder:Lcom/atakmap/android/atos/accessory/service/ICommandLink$Stub;

    .line 18
    .line 19
    const/16 v0, 0xa

    .line 20
    .line 21
    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_statusCounter:I

    .line 22
    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/atakmap/android/atos/accessory/service/CommandLinkService;)Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_packetRelay:Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/atakmap/android/atos/accessory/service/CommandLinkService;)Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothRelay:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/atakmap/android/atos/accessory/service/CommandLinkService;)Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothState:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/atakmap/android/atos/accessory/service/CommandLinkService;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothStatusMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private initRelays()V
    .locals 1

    .line 1
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothRelay:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->start()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_packetRelay:Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->start()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private stopRunnables()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_packetRelay:Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->stop()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothRelay:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->stop()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->binder:Lcom/atakmap/android/atos/accessory/service/ICommandLink$Stub;

    .line 2
    .line 3
    return-object p1
.end method

.method public onConnectionStateChanged(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "updating state to "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " :"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "CommandLinkService"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothStatusMessage:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothState:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 44
    .line 45
    if-ne p1, v0, :cond_0

    .line 46
    .line 47
    const-string v0, "throwing away a duplicate message"

    .line 48
    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_statusCounter:I

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_statusCounter:I

    .line 57
    .line 58
    const/16 v1, 0xa

    .line 59
    .line 60
    if-eq v0, v1, :cond_0

    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_statusCounter:I

    .line 65
    .line 66
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_DISCONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 67
    .line 68
    if-ne p1, v0, :cond_1

    .line 69
    .line 70
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothManager:Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->start()V

    .line 73
    .line 74
    .line 75
    :cond_1
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_CONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 76
    .line 77
    if-eq p1, v0, :cond_2

    .line 78
    .line 79
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_ACTIVE:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 80
    .line 81
    if-ne p1, v0, :cond_3

    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothManager:Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->stop()V

    .line 86
    .line 87
    .line 88
    :cond_3
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothState:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 89
    .line 90
    iput-object p2, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothStatusMessage:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothRelay:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    .line 93
    .line 94
    invoke-virtual {v0, p1, p2}, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->update(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->initRelays()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;-><init>(Landroid/content/Context;Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothManager:Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;

    .line 14
    .line 15
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1, p0}, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;-><init>(Landroid/content/Context;Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_serialManager:Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;

    .line 25
    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothRelay:Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/atakmap/android/atos/accessory/service/runnable/BluetoothStatusRelay;->statusListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_packetRelay:Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->dataListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_serialManager:Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->onDestroy()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_bluetoothManager:Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->stop()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->stopRunnables()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onPacketArrived(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_packetRelay:Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->isBatteryUpdate()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_packetRelay:Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;

    .line 20
    .line 21
    iget v1, p1, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->plBatteryPercent:I

    .line 22
    .line 23
    iget-wide v2, p1, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->rssi:J

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->addBatteryUpdate(IJ)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;->_packetRelay:Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/atakmap/android/atos/accessory/service/runnable/GpsPacketRelay;->addPacket(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method
