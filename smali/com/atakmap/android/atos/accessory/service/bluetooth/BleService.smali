.class public abstract Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final ACTION_START_SCAN:Ljava/lang/String; = "BLE_SERVICE_START_SCAN"

.field public static final ACTION_STOP_SCAN:Ljava/lang/String; = "BLE_SERVICE_STOP_SCAN"

.field public static final BOND_BONDED:I = 0xc

.field public static final BOND_BONDING:I = 0xb

.field public static final BOND_NONE:I = 0xa

.field public static EnableBluetoothLogs:Z = false

.field private static final TAG:Ljava/lang/String; = "BLE_SERVICE"


# instance fields
.field private _bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private _bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final _bluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field protected _context:Landroid/content/Context;

.field private _device:Landroid/bluetooth/BluetoothDevice;

.field private _filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final _gattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private _intentsRegistered:Z

.field private _isRunning:Z

.field private _scanner:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;-><init>(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_gattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 10
    .line 11
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;-><init>(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 17
    .line 18
    return-void
.end method

.method protected static Log(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "BLE_SERVICE"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected static Log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected static Log(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 3
    sget-boolean v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->EnableBluetoothLogs:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_isRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$100(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_device:Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_scanner:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$400(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->startScanner()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->stopScanner()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method private setupGattConnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_gattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private startScanner()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_scanner:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->onStop()V

    .line 11
    .line 12
    .line 13
    :cond_1
    const-string v0, "starting Scanner"

    .line 14
    .line 15
    const-string v1, "BLE_SERVICE"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "startScanner:  -- "

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_filters:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->SCANNING:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 43
    .line 44
    const-string v1, "Starting Scan"

    .line 45
    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_filters:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {v0, p0, v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;-><init>(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;Ljava/util/ArrayList;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_scanner:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 57
    .line 58
    return-void
.end method

.method private stopScanner()V
    .locals 2

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OFF:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 2
    .line 3
    const-string v1, "Turning Off"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_scanner:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->onStop()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method protected abstract connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract getFilters()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end method

.method protected isBluetoothEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "BLE_SERVICE"

    .line 2
    .line 3
    const-string v1, "On Bind"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->returnBinder(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method protected abstract onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end method

.method protected abstract onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end method

.method protected abstract onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->start()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected abstract onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->stop()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDeviceFound(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "found_device"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "BLE_SERVICE"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_scanner:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->isConnected()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const-string p1, "Scanner is not connected"

    .line 45
    .line 46
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_scanner:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->onStop()V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->GATT_INIT:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "Device Found: Setting up GATT with "

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v0, "onDeviceFound_name: "

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iput-object p2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_device:Landroid/bluetooth/BluetoothDevice;

    .line 106
    .line 107
    invoke-direct {p0, p2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->setupGattConnection(Landroid/bluetooth/BluetoothDevice;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method protected abstract onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public abstract returnBinder(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method protected sendData([BLjava/util/UUID;Ljava/util/UUID;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 11
    .line 12
    .line 13
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const-string p3, "BLE_SERVICE"

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "sendDataDirectlyToPocketLink: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "\n"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_2

    .line 70
    .line 71
    const-string p1, "Failed to initiate sending data to pocket link."

    .line 72
    .line 73
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :catch_0
    move-exception p1

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    const-string p1, "Couldn\'t find characteristic to send data or waiting."

    .line 80
    .line 81
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_1
    return-void
.end method

.method public start()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnspecifiedRegisterReceiverFlag"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_isRunning:Z

    .line 3
    .line 4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 9
    .line 10
    const-string v1, "On Create"

    .line 11
    .line 12
    const-string v2, "BLE_SERVICE"

    .line 13
    .line 14
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    new-instance v1, Landroid/content/IntentFilter;

    .line 18
    .line 19
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 20
    .line 21
    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v3, "BLE_SERVICE_START_SCAN"

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v3, "BLE_SERVICE_STOP_SCAN"

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v4, 0x1a

    .line 37
    .line 38
    if-lt v3, v4, :cond_0

    .line 39
    .line 40
    iget-object v3, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_context:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 43
    .line 44
    const/4 v5, 0x2

    .line 45
    invoke-static {v3, v4, v1, v5}, Latakplugin/atos/t;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v3, "Old android version, not specifying receiver exported"

    .line 50
    .line 51
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_context:Landroid/content/Context;

    .line 55
    .line 56
    iget-object v4, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    .line 58
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    :goto_0
    iput-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_intentsRegistered:Z

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->getFilters()Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_filters:Ljava/util/ArrayList;

    .line 68
    .line 69
    const-string v0, "On Create - we have filters."

    .line 70
    .line 71
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    const-string v0, "BLE_SERVICE"

    .line 2
    .line 3
    const-string v1, "onDestroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_isRunning:Z

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_isRunning:Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_scanner:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->onStop()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_intentsRegistered:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_context:Landroid/content/Context;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_bluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 43
    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->_intentsRegistered:Z

    .line 46
    .line 47
    :cond_3
    return-void
.end method
