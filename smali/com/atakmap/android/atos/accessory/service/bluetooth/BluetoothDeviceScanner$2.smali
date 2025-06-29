.class Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;


# direct methods
.method constructor <init>(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    .line 2
    .line 3
    .line 4
    const-string v0, "BluetoothDeviceScanner"

    .line 5
    .line 6
    const-string v1, "pulling the plug, scan result is bad"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->access$500(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->ERROR:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 21
    .line 22
    const-string v1, "ATOS_BT_PERMISSIONS"

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->access$300(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onScanResult: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "BluetoothDeviceScanner"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 31
    .line 32
    invoke-static {v0, p1, p2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->access$400(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;ILandroid/bluetooth/le/ScanResult;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
