.class public Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;
.super Lcom/felhr/usbserial/AbstractWorkerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/UsbSerialDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerThread"
.end annotation


# instance fields
.field private callback:Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;

.field private requestIN:Landroid/hardware/usb/UsbRequest;

.field final synthetic this$0:Lcom/felhr/usbserial/UsbSerialDevice;

.field private final usbSerialDevice:Lcom/felhr/usbserial/UsbSerialDevice;


# direct methods
.method public constructor <init>(Lcom/felhr/usbserial/UsbSerialDevice;Lcom/felhr/usbserial/UsbSerialDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/felhr/usbserial/AbstractWorkerThread;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->usbSerialDevice:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 7
    .line 8
    return-void
.end method

.method private onReceivedData([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->callback:Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;->onReceivedData([B)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/hardware/usb/UsbRequest;->getEndpoint()Landroid/hardware/usb/UsbEndpoint;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    if-ne v1, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/hardware/usb/UsbRequest;->getEndpoint()Landroid/hardware/usb/UsbEndpoint;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/16 v1, 0x80

    .line 31
    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/felhr/usbserial/UsbSerialDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/felhr/usbserial/SerialBuffer;->getDataReceived()[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/felhr/usbserial/UsbSerialDevice;->access$000(Lcom/felhr/usbserial/UsbSerialDevice;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->usbSerialDevice:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 51
    .line 52
    check-cast v1, Lcom/felhr/usbserial/FTDISerialDevice;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/felhr/usbserial/FTDISerialDevice;->ftdiUtilities:Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->checkModemStatus([B)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/felhr/usbserial/UsbSerialDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/felhr/usbserial/SerialBuffer;->clearReadBuffer()V

    .line 64
    .line 65
    .line 66
    array-length v1, v0

    .line 67
    if-le v1, v2, :cond_1

    .line 68
    .line 69
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->adaptArray([B)[B

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->onReceivedData([B)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/felhr/usbserial/UsbSerialDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/felhr/usbserial/SerialBuffer;->clearReadBuffer()V

    .line 82
    .line 83
    .line 84
    invoke-direct {p0, v0}, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->onReceivedData([B)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->requestIN:Landroid/hardware/usb/UsbRequest;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 90
    .line 91
    iget-object v1, v1, Lcom/felhr/usbserial/UsbSerialDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/felhr/usbserial/SerialBuffer;->getReadBuffer()Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/16 v2, 0x4000

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void
.end method

.method public getUsbRequest()Landroid/hardware/usb/UsbRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->requestIN:Landroid/hardware/usb/UsbRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCallback(Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->callback:Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setUsbRequest(Landroid/hardware/usb/UsbRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->requestIN:Landroid/hardware/usb/UsbRequest;

    .line 2
    .line 3
    return-void
.end method
