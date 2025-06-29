.class Lcom/felhr/usbserial/SerialPortBuilder$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/SerialPortBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felhr/usbserial/SerialPortBuilder;


# direct methods
.method constructor <init>(Lcom/felhr/usbserial/SerialPortBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

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
    const-string v0, "com.felhr.usbserial.USB_PERMISSION"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_5

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "permission"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 p2, 0x0

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/felhr/usbserial/SerialPortBuilder;->access$100(Lcom/felhr/usbserial/SerialPortBuilder;)Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;->usbDeviceStatus:Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;

    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/felhr/usbserial/SerialPortBuilder;->access$200(Lcom/felhr/usbserial/SerialPortBuilder;Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/felhr/usbserial/SerialPortBuilder;->access$300(Lcom/felhr/usbserial/SerialPortBuilder;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-lez p1, :cond_0

    .line 48
    .line 49
    iget-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/felhr/usbserial/SerialPortBuilder;->access$400(Lcom/felhr/usbserial/SerialPortBuilder;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 56
    .line 57
    invoke-static {p1, p2}, Lcom/felhr/usbserial/SerialPortBuilder;->access$502(Lcom/felhr/usbserial/SerialPortBuilder;Z)Z

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/felhr/usbserial/SerialPortBuilder;->access$600(Lcom/felhr/usbserial/SerialPortBuilder;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/felhr/usbserial/SerialPortBuilder;->access$800(Lcom/felhr/usbserial/SerialPortBuilder;)Lcom/felhr/usbserial/SerialPortCallback;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 75
    .line 76
    invoke-static {p2}, Lcom/felhr/usbserial/SerialPortBuilder;->access$700(Lcom/felhr/usbserial/SerialPortBuilder;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-interface {p1, p2}, Lcom/felhr/usbserial/SerialPortCallback;->onSerialPortsDetected(Ljava/util/List;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    new-instance p1, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;

    .line 85
    .line 86
    iget-object p2, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 87
    .line 88
    invoke-static {p2}, Lcom/felhr/usbserial/SerialPortBuilder;->access$700(Lcom/felhr/usbserial/SerialPortBuilder;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p1, p2, v0}, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;-><init>(Lcom/felhr/usbserial/SerialPortBuilder;Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/felhr/usbserial/SerialPortBuilder;->access$300(Lcom/felhr/usbserial/SerialPortBuilder;)Ljava/util/concurrent/ArrayBlockingQueue;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-lez p1, :cond_3

    .line 110
    .line 111
    iget-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/felhr/usbserial/SerialPortBuilder;->access$400(Lcom/felhr/usbserial/SerialPortBuilder;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 118
    .line 119
    invoke-static {p1, p2}, Lcom/felhr/usbserial/SerialPortBuilder;->access$502(Lcom/felhr/usbserial/SerialPortBuilder;Z)Z

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/felhr/usbserial/SerialPortBuilder;->access$600(Lcom/felhr/usbserial/SerialPortBuilder;)I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_4

    .line 129
    .line 130
    iget-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/felhr/usbserial/SerialPortBuilder;->access$800(Lcom/felhr/usbserial/SerialPortBuilder;)Lcom/felhr/usbserial/SerialPortCallback;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object p2, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 137
    .line 138
    invoke-static {p2}, Lcom/felhr/usbserial/SerialPortBuilder;->access$700(Lcom/felhr/usbserial/SerialPortBuilder;)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-interface {p1, p2}, Lcom/felhr/usbserial/SerialPortCallback;->onSerialPortsDetected(Ljava/util/List;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_4
    new-instance p1, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;

    .line 147
    .line 148
    iget-object p2, p0, Lcom/felhr/usbserial/SerialPortBuilder$1;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 149
    .line 150
    invoke-static {p2}, Lcom/felhr/usbserial/SerialPortBuilder;->access$700(Lcom/felhr/usbserial/SerialPortBuilder;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-direct {p1, p2, v0}, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;-><init>(Lcom/felhr/usbserial/SerialPortBuilder;Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 158
    .line 159
    .line 160
    :cond_5
    :goto_0
    return-void
.end method
