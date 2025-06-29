.class Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/SerialPortBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitSerialPortThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felhr/usbserial/SerialPortBuilder;

.field private final usbSerialDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/felhr/usbserial/UsbSerialDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/felhr/usbserial/SerialPortBuilder;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/felhr/usbserial/UsbSerialDevice;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;->usbSerialDevices:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;->usbSerialDevices:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/felhr/usbserial/UsbSerialDevice;

    .line 19
    .line 20
    iget-boolean v3, v2, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/felhr/usbserial/UsbSerialDevice;->syncOpen()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    iget-object v3, p0, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 31
    .line 32
    invoke-static {v3}, Lcom/felhr/usbserial/SerialPortBuilder;->access$900(Lcom/felhr/usbserial/SerialPortBuilder;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v2, v3}, Lcom/felhr/usbserial/UsbSerialDevice;->setBaudRate(I)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/felhr/usbserial/SerialPortBuilder;->access$1000(Lcom/felhr/usbserial/SerialPortBuilder;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    invoke-virtual {v2, v3}, Lcom/felhr/usbserial/UsbSerialDevice;->setDataBits(I)V

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 49
    .line 50
    invoke-static {v3}, Lcom/felhr/usbserial/SerialPortBuilder;->access$1100(Lcom/felhr/usbserial/SerialPortBuilder;)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v2, v3}, Lcom/felhr/usbserial/UsbSerialDevice;->setStopBits(I)V

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 58
    .line 59
    invoke-static {v3}, Lcom/felhr/usbserial/SerialPortBuilder;->access$1200(Lcom/felhr/usbserial/SerialPortBuilder;)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v2, v3}, Lcom/felhr/usbserial/UsbSerialDevice;->setParity(I)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 67
    .line 68
    invoke-static {v3}, Lcom/felhr/usbserial/SerialPortBuilder;->access$1300(Lcom/felhr/usbserial/SerialPortBuilder;)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v2, v3}, Lcom/felhr/usbserial/UsbSerialDevice;->setFlowControl(I)V

    .line 73
    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v4, "COM "

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v2, v3}, Lcom/felhr/usbserial/UsbSerialDevice;->setPortName(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/felhr/usbserial/SerialPortBuilder;->access$800(Lcom/felhr/usbserial/SerialPortBuilder;)Lcom/felhr/usbserial/SerialPortCallback;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 105
    .line 106
    invoke-static {v1}, Lcom/felhr/usbserial/SerialPortBuilder;->access$700(Lcom/felhr/usbserial/SerialPortBuilder;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v0, v1}, Lcom/felhr/usbserial/SerialPortCallback;->onSerialPortsDetected(Ljava/util/List;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method
