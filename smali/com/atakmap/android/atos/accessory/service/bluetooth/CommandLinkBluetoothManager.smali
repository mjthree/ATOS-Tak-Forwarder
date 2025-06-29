.class public Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;
.super Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;
.source "SourceFile"


# static fields
.field private static final CL_SERVICE:Ljava/util/UUID;

.field private static final INFO_CHAR:Ljava/util/UUID;

.field private static final MODE_CHAR:Ljava/util/UUID;

.field private static final RX_CHAR:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "CommandLinkBle"

.field private static final TX_CHAR:Ljava/util/UUID;


# instance fields
.field private _bluetoothState:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

.field private _bluetoothStatusMessage:Ljava/lang/String;

.field private _deviceModeChanged:Z

.field private final _messageHandler:Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;

.field private final _parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;

.field private final pendingDataCache:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "2456E1B9-26E2-8F83-E744-F34F01E9D701"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->CL_SERVICE:Ljava/util/UUID;

    .line 8
    .line 9
    const-string v0, "2456E1B9-26E2-8F83-E744-F34F01E9D703"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->MODE_CHAR:Ljava/util/UUID;

    .line 16
    .line 17
    const-string v0, "00001800-0000-1000-8000-00805f9b34fb"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->TX_CHAR:Ljava/util/UUID;

    .line 24
    .line 25
    const-string v0, "2456E1B9-26E2-8F83-E744-F34F01E9D704"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->RX_CHAR:Ljava/util/UUID;

    .line 32
    .line 33
    const-string v0, "99564A02-DC01-4D3C-B04E-3BB1EF0571B2"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->INFO_CHAR:Ljava/util/UUID;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->_deviceModeChanged:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayDeque;

    .line 8
    .line 9
    const/16 v1, 0x64

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->pendingDataCache:Ljava/util/Queue;

    .line 15
    .line 16
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OFF:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->_bluetoothState:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 19
    .line 20
    const-string v0, "n/a"

    .line 21
    .line 22
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->_bluetoothStatusMessage:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_context:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->_parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;

    .line 27
    .line 28
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;

    .line 29
    .line 30
    invoke-direct {v0, p1, p2}, Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;-><init>(Landroid/content/Context;Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->_messageHandler:Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;

    .line 34
    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->sendPendingDataToPocketLink()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private changeDeviceMode(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->CL_SERVICE:Ljava/util/UUID;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->MODE_CHAR:Ljava/util/UUID;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "PocketLinkFacade"

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string v2, "Found mode characteristic"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x11

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v0, p2, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    const-string p1, "Failed to write into mode characteristic"

    .line 35
    .line 36
    invoke-static {v1, p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "Successfully initiated writing into characteristic.----"

    .line 46
    .line 47
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-string p1, "Couldn\'t find characteristic to change mode."

    .line 66
    .line 67
    invoke-static {v1, p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method private getNext20Bytes()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->pendingDataCache:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->pendingDataCache:Ljava/util/Queue;

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/Byte;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method

.method private sendPendingDataToPocketLink()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->pendingDataCache:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const-string v1, "CommandLinkBle"

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "getNext20Bytes: "

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->getNext20Bytes()[B

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->getNext20Bytes()[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->CL_SERVICE:Ljava/util/UUID;

    .line 40
    .line 41
    sget-object v2, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->RX_CHAR:Ljava/util/UUID;

    .line 42
    .line 43
    invoke-virtual {p0, v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->sendData([BLjava/util/UUID;Ljava/util/UUID;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "Nothing left to send to pocketlink."

    .line 48
    .line 49
    invoke-static {v1, v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    .line 51
    .line 52
    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OFF:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->SCANNING:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->isBluetoothEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string p2, "Please Turn on Bluetooth"

    .line 16
    .line 17
    move-object p1, v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->_bluetoothState:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->_bluetoothStatusMessage:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "Updating BT State "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ": "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "CommandLinkBle"

    .line 48
    .line 49
    invoke-static {v1, v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->_parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;

    .line 53
    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;->onConnectionStateChanged(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public enableNotificationFromDevice(Landroid/bluetooth/BluetoothGatt;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->CL_SERVICE:Ljava/util/UUID;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->MODE_CHAR:Ljava/util/UUID;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const-string v2, "CommandLinkBle"

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string p1, "Couldn\'t find mode characteristic."

    .line 19
    .line 20
    invoke-static {v2, p1, v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string v3, "Found notification characteristic."

    .line 25
    .line 26
    invoke-static {v2, v3}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    const-string v3, "Failed to enable notification."

    .line 36
    .line 37
    invoke-static {v2, v3, v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 50
    .line 51
    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 52
    .line 53
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    const-string p1, "Write to descriptor initiated successfully."

    .line 63
    .line 64
    invoke-static {v2, p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const-string p1, "Write to descriptor failed to initiate."

    .line 69
    .line 70
    invoke-static {v2, p1, v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method public getFilters()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "CommandLinkBle"

    .line 2
    .line 3
    const-string v1, "registerCommandLink:"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/bluetooth/le/ScanFilter$Builder;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Landroid/os/ParcelUuid;

    .line 19
    .line 20
    sget-object v3, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->CL_SERVICE:Ljava/util/UUID;

    .line 21
    .line 22
    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->isBluetoothEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->_messageHandler:Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;->onDataReceived(Landroid/bluetooth/BluetoothGatt;[B)V

    .line 15
    .line 16
    .line 17
    sget-object p2, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OPERATIONAL:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p2, p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method protected onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->MODE_CHAR:Ljava/util/UUID;

    .line 6
    .line 7
    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v0, "Hex:  "

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    const-string v0, "IncomingQQ_read"

    .line 36
    .line 37
    invoke-static {v0, p3}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p3, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->_messageHandler:Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;

    .line 41
    .line 42
    invoke-virtual {p3, p1, p2}, Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;->onDataReceived(Landroid/bluetooth/BluetoothGatt;[B)V

    .line 43
    .line 44
    .line 45
    sget-object p2, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OPERATIONAL:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 46
    .line 47
    const-string p3, "Receiving Data"

    .line 48
    .line 49
    invoke-virtual {p0, p2, p3}, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-boolean p2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->_deviceModeChanged:Z

    .line 53
    .line 54
    if-nez p2, :cond_1

    .line 55
    .line 56
    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->_deviceModeChanged:Z

    .line 58
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->changeDeviceMode(Landroid/bluetooth/BluetoothGatt;I)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method protected onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string p3, "CommandLinkBle"

    .line 5
    .line 6
    const-string v0, "Failed to write into the characteristic."

    .line 7
    .line 8
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->MODE_CHAR:Ljava/util/UUID;

    .line 16
    .line 17
    invoke-virtual {p3, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->enableNotificationFromDevice(Landroid/bluetooth/BluetoothGatt;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object p2, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->RX_CHAR:Ljava/util/UUID;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    new-instance p1, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager$1;

    .line 49
    .line 50
    invoke-direct {p2, p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager$1;-><init>(Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v0, 0x64

    .line 54
    .line 55
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    return-void
.end method

.method protected onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    .line 1
    sget-object p2, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->CL_SERVICE:Ljava/util/UUID;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object p3, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->MODE_CHAR:Ljava/util/UUID;

    .line 11
    .line 12
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string p3, "CommandLinkBle"

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "Found info characteristic, reading info value."

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p3, v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p3, 0x1

    .line 49
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string p1, "Couldn\'t find info characteristic."

    .line 57
    .line 58
    invoke-static {p3, p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method protected onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4

    .line 1
    :try_start_0
    sget-object p2, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->CL_SERVICE:Ljava/util/UUID;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->MODE_CHAR:Ljava/util/UUID;

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 12
    .line 13
    .line 14
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    const-string v0, "Couldn\'t find info characteristic."

    .line 16
    .line 17
    const-string v1, "Found info characteristic, reading info value."

    .line 18
    .line 19
    const-string v2, "CommandLinkBle"

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    :try_start_1
    invoke-static {v2, v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-static {v2, v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 v3, 0x1

    .line 36
    invoke-direct {p0, p1, v3}, Lcom/atakmap/android/atos/accessory/service/bluetooth/CommandLinkBluetoothManager;->changeDeviceMode(Landroid/bluetooth/BluetoothGatt;I)V

    .line 37
    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    invoke-static {v2, v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_1
    invoke-static {v2, v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_2
    return-void
.end method

.method public returnBinder(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
