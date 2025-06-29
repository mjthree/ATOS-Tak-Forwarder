.class public Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceScanner"


# instance fields
.field private _bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private _bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private _bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private _connectedDevice:Landroid/bluetooth/BluetoothDevice;

.field private final _filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private _isRunning:Z

.field private final _parent:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

.field private _permissionsGranted:Z

.field private final _scanCallback:Landroid/bluetooth/le/ScanCallback;


# direct methods
.method public constructor <init>(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_permissionsGranted:Z

    .line 6
    .line 7
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$2;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$2;-><init>(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_scanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_parent:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_filters:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_isRunning:Z

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->scanForDevices()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_connectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)Landroid/bluetooth/le/ScanCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_scanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->onFail()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;ILandroid/bluetooth/le/ScanResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->onProperScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_parent:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 2
    .line 3
    return-object p0
.end method

.method private checkPermissions()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_permissionsGranted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_parent:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_permissionsGranted:Z

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_parent:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 25
    .line 26
    sget-object v1, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->ERROR:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 27
    .line 28
    const-string v2, "ATOS_BT_PERMISSIONS"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private onFail()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_parent:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 2
    .line 3
    sget-object v1, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->SCANNING:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 4
    .line 5
    const-string v2, "Scan Failed.  Retrying."

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 13
    .line 14
    .line 15
    const-wide/16 v0, 0x3e8

    .line 16
    .line 17
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->scanForDevices()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private onProperScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_connectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "onScanResult_name: "

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "BluetoothDeviceScanner"

    .line 32
    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_connectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 41
    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v1, "*****called**"

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p2, "---"

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_connectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v0, p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_isRunning:Z

    .line 86
    .line 87
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_parent:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 88
    .line 89
    iget-object p2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_connectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 92
    .line 93
    invoke-virtual {p1, p2, v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->onDeviceFound(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->stopScan()V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private scanForDevices()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_isRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_connectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->checkPermissions()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_parent:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "bluetooth"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 43
    .line 44
    :cond_1
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_parent:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 53
    .line 54
    sget-object v1, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OFF:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 55
    .line 56
    const-string v2, "Please Enable Bluetooth"

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_parent:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 63
    .line 64
    sget-object v2, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->SCANNING:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 65
    .line 66
    const-string v3, "Starting Scan"

    .line 67
    .line 68
    invoke-virtual {v1, v2, v3}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v1, "Scanning for devices."

    .line 72
    .line 73
    const-string v2, "BluetoothDeviceScanner"

    .line 74
    .line 75
    invoke-static {v2, v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Landroid/bluetooth/le/ScanSettings$Builder;

    .line 79
    .line 80
    invoke-direct {v1}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 81
    .line 82
    .line 83
    const/4 v3, 0x2

    .line 84
    invoke-virtual {v1, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const/4 v3, 0x1

    .line 89
    invoke-virtual {v1, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v4, "scanForDevices_M: "

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 122
    .line 123
    if-nez v3, :cond_3

    .line 124
    .line 125
    const-string v0, "BLUETOOTH LE SCANNER WAS NULL HELP!!!!!!"

    .line 126
    .line 127
    invoke-static {v2, v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_connectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_filters:Ljava/util/ArrayList;

    .line 134
    .line 135
    iget-object v2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_scanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 136
    .line 137
    invoke-virtual {v3, v0, v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 138
    .line 139
    .line 140
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-nez v0, :cond_4

    .line 145
    .line 146
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 147
    .line 148
    .line 149
    :cond_4
    new-instance v0, Landroid/os/Handler;

    .line 150
    .line 151
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 152
    .line 153
    .line 154
    new-instance v1, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$1;

    .line 155
    .line 156
    invoke-direct {v1, p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$1;-><init>(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)V

    .line 157
    .line 158
    .line 159
    const-wide/16 v2, 0xbb8

    .line 160
    .line 161
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    .line 163
    .line 164
    :goto_0
    return-void
.end method

.method private stopScan()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_scanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 17
    .line 18
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "stopScan called: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "BluetoothDeviceScanner"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    const/4 v1, 0x7

    .line 13
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    return v0
.end method

.method public onStop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->_isRunning:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->stopScan()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
