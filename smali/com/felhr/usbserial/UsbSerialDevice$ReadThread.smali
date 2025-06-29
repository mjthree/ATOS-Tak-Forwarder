.class public Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;
.super Lcom/felhr/usbserial/AbstractWorkerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/UsbSerialDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReadThread"
.end annotation


# instance fields
.field private callback:Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;

.field private inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field final synthetic this$0:Lcom/felhr/usbserial/UsbSerialDevice;

.field private final usbSerialDevice:Lcom/felhr/usbserial/UsbSerialDevice;


# direct methods
.method public constructor <init>(Lcom/felhr/usbserial/UsbSerialDevice;Lcom/felhr/usbserial/UsbSerialDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/felhr/usbserial/AbstractWorkerThread;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->usbSerialDevice:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 7
    .line 8
    return-void
.end method

.method private onReceivedData([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->callback:Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 7
    .line 8
    iget-object v3, v2, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/felhr/usbserial/UsbSerialDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/felhr/usbserial/SerialBuffer;->getBufferCompatible()[B

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/16 v4, 0x4000

    .line 17
    .line 18
    invoke-virtual {v3, v0, v2, v4, v1}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    :cond_0
    if-lez v1, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/felhr/usbserial/UsbSerialDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/felhr/usbserial/SerialBuffer;->getDataReceivedCompatible(I)[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/felhr/usbserial/UsbSerialDevice;->access$000(Lcom/felhr/usbserial/UsbSerialDevice;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->usbSerialDevice:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 41
    .line 42
    check-cast v1, Lcom/felhr/usbserial/FTDISerialDevice;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/felhr/usbserial/FTDISerialDevice;->ftdiUtilities:Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->checkModemStatus([B)V

    .line 47
    .line 48
    .line 49
    array-length v1, v0

    .line 50
    const/4 v2, 0x2

    .line 51
    if-le v1, v2, :cond_2

    .line 52
    .line 53
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->adaptArray([B)[B

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->onReceivedData([B)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-direct {p0, v0}, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->onReceivedData([B)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    return-void
.end method

.method public setCallback(Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->callback:Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 2
    .line 3
    return-void
.end method
