.class Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->scanForDevices()V
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
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->access$000(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)Landroid/bluetooth/BluetoothDevice;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "BluetoothDeviceScanner"

    .line 11
    .line 12
    const-string v1, "No device found,  pulling the plug "

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->access$100(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)Landroid/bluetooth/le/BluetoothLeScanner;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->access$100(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)Landroid/bluetooth/le/BluetoothLeScanner;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->access$200(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)Landroid/bluetooth/le/ScanCallback;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;->access$300(Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
