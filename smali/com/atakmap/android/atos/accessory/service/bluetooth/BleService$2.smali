.class Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;
.super Landroid/content/BroadcastReceiver;
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
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "BLE_SERVICE_START_SCAN"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const-string v0, "BLE_SERVICE"

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string p2, "action start scan received"

    .line 16
    .line 17
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 21
    .line 22
    invoke-static {p2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$400(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p2, "BLE_SERVICE_STOP_SCAN"

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-object p2, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 35
    .line 36
    invoke-static {p2}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$500(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_6

    .line 46
    .line 47
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$600(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)Landroid/bluetooth/BluetoothAdapter;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/16 p2, 0xd

    .line 58
    .line 59
    if-ne p1, p2, :cond_2

    .line 60
    .line 61
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$500(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$600(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)Landroid/bluetooth/BluetoothAdapter;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    const/16 p2, 0xa

    .line 78
    .line 79
    if-ne p1, p2, :cond_3

    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$600(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)Landroid/bluetooth/BluetoothAdapter;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    const/16 p2, 0xb

    .line 93
    .line 94
    if-ne p1, p2, :cond_4

    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$600(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)Landroid/bluetooth/BluetoothAdapter;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    const/16 p2, 0xc

    .line 108
    .line 109
    if-ne p1, p2, :cond_6

    .line 110
    .line 111
    const-string p1, "BT is back on"

    .line 112
    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$100(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)Landroid/bluetooth/BluetoothGatt;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-nez p1, :cond_5

    .line 123
    .line 124
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$400(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService$2;->this$0:Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;->access$100(Lcom/atakmap/android/atos/accessory/service/bluetooth/BleService;)Landroid/bluetooth/BluetoothGatt;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 137
    .line 138
    .line 139
    :cond_6
    :goto_1
    return-void
.end method
