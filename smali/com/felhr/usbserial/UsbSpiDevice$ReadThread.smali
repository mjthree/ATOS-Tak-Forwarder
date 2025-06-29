.class public Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;
.super Lcom/felhr/usbserial/AbstractWorkerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/UsbSpiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReadThread"
.end annotation


# instance fields
.field private inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private misoCallback:Lcom/felhr/usbserial/UsbSpiInterface$UsbMISOCallback;

.field final synthetic this$0:Lcom/felhr/usbserial/UsbSpiDevice;


# direct methods
.method protected constructor <init>(Lcom/felhr/usbserial/UsbSpiDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;->this$0:Lcom/felhr/usbserial/UsbSpiDevice;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/felhr/usbserial/AbstractWorkerThread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private onReceivedData([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;->misoCallback:Lcom/felhr/usbserial/UsbSpiInterface$UsbMISOCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/felhr/usbserial/UsbSpiInterface$UsbMISOCallback;->onReceivedData([B)I

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
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;->this$0:Lcom/felhr/usbserial/UsbSpiDevice;

    .line 7
    .line 8
    iget-object v3, v2, Lcom/felhr/usbserial/UsbSpiDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/felhr/usbserial/UsbSpiDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

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
    if-lez v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;->this$0:Lcom/felhr/usbserial/UsbSpiDevice;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/felhr/usbserial/UsbSpiDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/felhr/usbserial/SerialBuffer;->getDataReceivedCompatible(I)[B

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p0, v0}, Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;->onReceivedData([B)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public setCallback(Lcom/felhr/usbserial/UsbSpiInterface$UsbMISOCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;->misoCallback:Lcom/felhr/usbserial/UsbSpiInterface$UsbMISOCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 2
    .line 3
    return-void
.end method
