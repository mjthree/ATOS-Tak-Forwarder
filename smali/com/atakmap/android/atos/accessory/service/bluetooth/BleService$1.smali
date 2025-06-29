.class Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;


# direct methods
.method constructor <init>(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
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
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "Failed to write into the characteristic."

    .line 5
    .line 6
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$000(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$102(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const-string v1, "BLE_SERVICE"

    .line 17
    .line 18
    if-eqz p3, :cond_7

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq p3, v2, :cond_6

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    if-eq p3, v3, :cond_1

    .line 25
    .line 26
    const-string p1, "STATE_OTHER"

    .line 27
    .line 28
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    const-string p3, "STATE_CONNECTED"

    .line 33
    .line 34
    invoke-static {p3}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/16 p3, 0x85

    .line 38
    .line 39
    if-ne p2, p3, :cond_2

    .line 40
    .line 41
    const-string p2, "Got the status 133 bug, closing gatt"

    .line 42
    .line 43
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 54
    .line 55
    invoke-static {p2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$200(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)Landroid/bluetooth/BluetoothDevice;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    const/16 p3, 0xa

    .line 64
    .line 65
    if-eq p2, p3, :cond_4

    .line 66
    .line 67
    const/16 p3, 0xc

    .line 68
    .line 69
    if-ne p2, p3, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/16 p3, 0xb

    .line 73
    .line 74
    if-ne p2, p3, :cond_5

    .line 75
    .line 76
    const-string p2, "waiting for bonding to complete"

    .line 77
    .line 78
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string p1, "GATT STATE_CONNECTED"

    .line 97
    .line 98
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 102
    .line 103
    invoke-static {p1, v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$302(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;)Lcom/atakmap/android/atos/accessory/service/bluetooth/BluetoothDeviceScanner;

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const-string p1, "GATT STATE_CONNECTING"

    .line 108
    .line 109
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    const-string p2, "GATT DISCONNECTED"

    .line 114
    .line 115
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    iget-object p2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 119
    .line 120
    sget-object p3, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->DISCONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 121
    .line 122
    const-string v1, "Disconnected"

    .line 123
    .line 124
    invoke-virtual {p2, p3, v1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 131
    .line 132
    invoke-static {p1, v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$102(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$400(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)V

    .line 138
    .line 139
    .line 140
    :goto_2
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const-string v0, "Descriptor write success."

    .line 4
    .line 5
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->Log(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$1;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 7
    .line 8
    sget-object p2, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->GATT_CONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 9
    .line 10
    const-string v0, "Connected"

    .line 11
    .line 12
    invoke-virtual {p1, p2, v0}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->connectionStatusUpdated(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
