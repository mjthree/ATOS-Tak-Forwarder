.class public abstract Lcom/felhr/usbserial/UsbSpiDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/felhr/usbserial/UsbSpiInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;,
        Lcom/felhr/usbserial/UsbSpiDevice$WriteThread;
    }
.end annotation


# static fields
.field protected static final USB_TIMEOUT:I = 0x1388


# instance fields
.field protected final connection:Landroid/hardware/usb/UsbDeviceConnection;

.field protected final device:Landroid/hardware/usb/UsbDevice;

.field private inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private outEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field protected readThread:Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;

.field protected serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

.field protected writeThread:Lcom/felhr/usbserial/UsbSpiDevice$WriteThread;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSpiDevice;->device:Landroid/hardware/usb/UsbDevice;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/felhr/usbserial/UsbSpiDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 7
    .line 8
    new-instance p1, Lcom/felhr/usbserial/SerialBuffer;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p1, p2}, Lcom/felhr/usbserial/SerialBuffer;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSpiDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 15
    .line 16
    return-void
.end method

.method public static createUsbSerialDevice(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)Lcom/felhr/usbserial/UsbSpiDevice;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/felhr/usbserial/UsbSpiDevice;->createUsbSerialDevice(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)Lcom/felhr/usbserial/UsbSpiDevice;

    move-result-object p0

    return-object p0
.end method

.method public static createUsbSerialDevice(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)Lcom/felhr/usbserial/UsbSpiDevice;
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Lcom/felhr/deviceids/CP2130Ids;->isDeviceSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/felhr/usbserial/CP2130SpiDevice;

    invoke-direct {v0, p0, p1, p2}, Lcom/felhr/usbserial/CP2130SpiDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract closeSPI()V
.end method

.method public abstract connectSPI()Z
.end method

.method public abstract getClockDivider()I
.end method

.method public abstract getSelectedSlave()I
.end method

.method protected killWorkingThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->readThread:Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/felhr/usbserial/AbstractWorkerThread;->stopThread()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->readThread:Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected killWriteThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->writeThread:Lcom/felhr/usbserial/UsbSpiDevice$WriteThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/felhr/usbserial/AbstractWorkerThread;->stopThread()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->writeThread:Lcom/felhr/usbserial/UsbSpiDevice$WriteThread;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public abstract readMISO(I)V
.end method

.method protected restartWorkingThread()V
    .locals 1

    .line 1
    new-instance v0, Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;-><init>(Lcom/felhr/usbserial/UsbSpiDevice;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->readThread:Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->readThread:Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method protected restartWriteThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->writeThread:Lcom/felhr/usbserial/UsbSpiDevice$WriteThread;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/felhr/usbserial/UsbSpiDevice$WriteThread;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/felhr/usbserial/UsbSpiDevice$WriteThread;-><init>(Lcom/felhr/usbserial/UsbSpiDevice;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->writeThread:Lcom/felhr/usbserial/UsbSpiDevice$WriteThread;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 13
    .line 14
    .line 15
    :goto_0
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->writeThread:Lcom/felhr/usbserial/UsbSpiDevice$WriteThread;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public abstract selectSlave(I)V
.end method

.method public abstract setClock(I)V
.end method

.method public setMISOCallback(Lcom/felhr/usbserial/UsbSpiInterface$UsbMISOCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->readThread:Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;->setCallback(Lcom/felhr/usbserial/UsbSpiInterface$UsbMISOCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setThreadsParams(Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->writeThread:Lcom/felhr/usbserial/UsbSpiDevice$WriteThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lcom/felhr/usbserial/UsbSpiDevice$WriteThread;->setUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p2, p0, Lcom/felhr/usbserial/UsbSpiDevice;->readThread:Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lcom/felhr/usbserial/UsbSpiDevice$ReadThread;->setUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public abstract writeMOSI([B)V
.end method

.method public abstract writeRead([BI)V
.end method
