.class public abstract Lcom/felhr/usbserial/UsbSerialDevice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/felhr/usbserial/UsbSerialInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;,
        Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;,
        Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;
    }
.end annotation


# static fields
.field public static final CDC:Ljava/lang/String; = "cdc"

.field public static final CH34x:Ljava/lang/String; = "ch34x"

.field protected static final COM_PORT:Ljava/lang/String; = "COM "

.field public static final CP210x:Ljava/lang/String; = "cp210x"

.field public static final FTDI:Ljava/lang/String; = "ftdi"

.field public static final PL2303:Ljava/lang/String; = "pl2303"

.field protected static final USB_TIMEOUT:I

.field static final mr1Version:Z


# instance fields
.field protected asyncMode:Z

.field protected final connection:Landroid/hardware/usb/UsbDeviceConnection;

.field protected final device:Landroid/hardware/usb/UsbDevice;

.field private inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field protected inputStream:Lcom/felhr/usbserial/SerialInputStream;

.field protected isOpen:Z

.field private outEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field protected outputStream:Lcom/felhr/usbserial/SerialOutputStream;

.field private portName:Ljava/lang/String;

.field protected readThread:Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;

.field protected serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

.field protected workerThread:Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;

.field protected writeThread:Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/felhr/usbserial/UsbSerialDevice;->mr1Version:Z

    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->portName:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->device:Landroid/hardware/usb/UsbDevice;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    .line 14
    .line 15
    new-instance p1, Lcom/felhr/usbserial/SerialBuffer;

    .line 16
    .line 17
    sget-boolean p2, Lcom/felhr/usbserial/UsbSerialDevice;->mr1Version:Z

    .line 18
    .line 19
    invoke-direct {p1, p2}, Lcom/felhr/usbserial/SerialBuffer;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 23
    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/felhr/usbserial/UsbSerialDevice;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->isFTDIDevice()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static createUsbSerialDevice(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)Lcom/felhr/usbserial/UsbSerialDevice;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/felhr/usbserial/UsbSerialDevice;->createUsbSerialDevice(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)Lcom/felhr/usbserial/UsbSerialDevice;

    move-result-object p0

    return-object p0
.end method

.method public static createUsbSerialDevice(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)Lcom/felhr/usbserial/UsbSerialDevice;
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    .line 4
    invoke-static {p0}, Lcom/felhr/deviceids/FTDISioIds;->isDeviceSupported(Landroid/hardware/usb/UsbDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v0, Lcom/felhr/usbserial/FTDISerialDevice;

    invoke-direct {v0, p0, p1, p2}, Lcom/felhr/usbserial/FTDISerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object v0

    .line 6
    :cond_0
    invoke-static {v0, v1}, Lcom/felhr/deviceids/CP210xIds;->isDeviceSupported(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v0, Lcom/felhr/usbserial/CP2102SerialDevice;

    invoke-direct {v0, p0, p1, p2}, Lcom/felhr/usbserial/CP2102SerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object v0

    .line 8
    :cond_1
    invoke-static {v0, v1}, Lcom/felhr/deviceids/PL2303Ids;->isDeviceSupported(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    new-instance v0, Lcom/felhr/usbserial/PL2303SerialDevice;

    invoke-direct {v0, p0, p1, p2}, Lcom/felhr/usbserial/PL2303SerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object v0

    .line 10
    :cond_2
    invoke-static {v0, v1}, Lcom/felhr/deviceids/CH34xIds;->isDeviceSupported(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    new-instance v0, Lcom/felhr/usbserial/CH34xSerialDevice;

    invoke-direct {v0, p0, p1, p2}, Lcom/felhr/usbserial/CH34xSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object v0

    .line 12
    :cond_3
    invoke-static {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->isCdcDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    new-instance v0, Lcom/felhr/usbserial/CDCSerialDevice;

    invoke-direct {v0, p0, p1, p2}, Lcom/felhr/usbserial/CDCSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createUsbSerialDevice(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)Lcom/felhr/usbserial/UsbSerialDevice;
    .locals 1

    .line 14
    const-string v0, "ftdi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance p0, Lcom/felhr/usbserial/FTDISerialDevice;

    invoke-direct {p0, p1, p2, p3}, Lcom/felhr/usbserial/FTDISerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object p0

    .line 16
    :cond_0
    const-string v0, "cp210x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    new-instance p0, Lcom/felhr/usbserial/CP2102SerialDevice;

    invoke-direct {p0, p1, p2, p3}, Lcom/felhr/usbserial/CP2102SerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object p0

    .line 18
    :cond_1
    const-string v0, "pl2303"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    new-instance p0, Lcom/felhr/usbserial/PL2303SerialDevice;

    invoke-direct {p0, p1, p2, p3}, Lcom/felhr/usbserial/PL2303SerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object p0

    .line 20
    :cond_2
    const-string v0, "ch34x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    new-instance p0, Lcom/felhr/usbserial/CH34xSerialDevice;

    invoke-direct {p0, p1, p2, p3}, Lcom/felhr/usbserial/CH34xSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object p0

    .line 22
    :cond_3
    const-string v0, "cdc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 23
    new-instance p0, Lcom/felhr/usbserial/CDCSerialDevice;

    invoke-direct {p0, p1, p2, p3}, Lcom/felhr/usbserial/CDCSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-object p0

    .line 24
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid type argument. Must be:cdc, ch34x, cp210x, ftdi or pl2303"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isCdcDevice(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    const/4 v3, 0x1

    .line 8
    add-int/lit8 v4, v0, -0x1

    .line 9
    .line 10
    if-gt v2, v4, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/16 v5, 0xa

    .line 21
    .line 22
    if-ne v4, v5, :cond_0

    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v1
.end method

.method private isFTDIDevice()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/felhr/usbserial/FTDISerialDevice;

    .line 2
    .line 3
    return v0
.end method

.method public static isSupported(Landroid/hardware/usb/UsbDevice;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0}, Lcom/felhr/deviceids/FTDISioIds;->isDeviceSupported(Landroid/hardware/usb/UsbDevice;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    invoke-static {v0, v1}, Lcom/felhr/deviceids/CP210xIds;->isDeviceSupported(II)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    return v3

    .line 24
    :cond_1
    invoke-static {v0, v1}, Lcom/felhr/deviceids/PL2303Ids;->isDeviceSupported(II)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    return v3

    .line 31
    :cond_2
    invoke-static {v0, v1}, Lcom/felhr/deviceids/CH34xIds;->isDeviceSupported(II)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    return v3

    .line 38
    :cond_3
    invoke-static {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->isCdcDevice(Landroid/hardware/usb/UsbDevice;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    return p0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public debug(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/felhr/usbserial/SerialBuffer;->debug(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getDeviceId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->device:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getInitialBaudRate()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getInputStream()Lcom/felhr/usbserial/SerialInputStream;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->inputStream:Lcom/felhr/usbserial/SerialInputStream;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "InputStream only available in Sync mode. \nOpen the port with syncOpen()"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public getOutputStream()Lcom/felhr/usbserial/SerialOutputStream;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->outputStream:Lcom/felhr/usbserial/SerialOutputStream;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "OutputStream only available in Sync mode. \nOpen the port with syncOpen()"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public getPid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->device:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPortName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->portName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVid()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->device:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 2
    .line 3
    return v0
.end method

.method protected killWorkingThread()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/felhr/usbserial/UsbSerialDevice;->mr1Version:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/felhr/usbserial/UsbSerialDevice;->workerThread:Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/felhr/usbserial/AbstractWorkerThread;->stopThread()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->workerThread:Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->readThread:Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/felhr/usbserial/AbstractWorkerThread;->stopThread()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->readThread:Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;

    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method protected killWriteThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->writeThread:Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;

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
    iput-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->writeThread:Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public abstract open()Z
.end method

.method public read(Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_0
    sget-boolean v0, Lcom/felhr/usbserial/UsbSerialDevice;->mr1Version:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->workerThread:Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->setCallback(Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->workerThread:Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->getUsbRequest()Landroid/hardware/usb/UsbRequest;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/felhr/usbserial/SerialBuffer;->getReadBuffer()Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/16 v1, 0x4000

    .line 31
    .line 32
    invoke-virtual {p1, v0, v1}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->readThread:Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->setCallback(Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method protected restartWorkingThread()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/felhr/usbserial/UsbSerialDevice;->mr1Version:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->workerThread:Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;

    .line 10
    .line 11
    invoke-direct {v0, p0, p0}, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;-><init>(Lcom/felhr/usbserial/UsbSerialDevice;Lcom/felhr/usbserial/UsbSerialDevice;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->workerThread:Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->workerThread:Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->readThread:Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;

    .line 35
    .line 36
    invoke-direct {v0, p0, p0}, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;-><init>(Lcom/felhr/usbserial/UsbSerialDevice;Lcom/felhr/usbserial/UsbSerialDevice;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->readThread:Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 42
    .line 43
    .line 44
    :goto_1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->readThread:Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    return-void
.end method

.method protected restartWriteThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->writeThread:Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;-><init>(Lcom/felhr/usbserial/UsbSerialDevice;Lcom/felhr/usbserial/UsbSerialDevice$1;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->writeThread:Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->writeThread:Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public abstract setBaudRate(I)V
.end method

.method public abstract setBreak(Z)V
.end method

.method public abstract setDataBits(I)V
.end method

.method public abstract setFlowControl(I)V
.end method

.method public setInitialBaudRate(I)V
    .locals 0

    return-void
.end method

.method public abstract setParity(I)V
.end method

.method public setPortName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->portName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public abstract setStopBits(I)V
.end method

.method protected setSyncParams(Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/felhr/usbserial/UsbSerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 4
    .line 5
    return-void
.end method

.method protected setThreadsParams(Landroid/hardware/usb/UsbRequest;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->writeThread:Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;->setUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)V

    .line 4
    .line 5
    .line 6
    sget-boolean p2, Lcom/felhr/usbserial/UsbSerialDevice;->mr1Version:Z

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/felhr/usbserial/UsbSerialDevice;->workerThread:Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lcom/felhr/usbserial/UsbSerialDevice$WorkerThread;->setUsbRequest(Landroid/hardware/usb/UsbRequest;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lcom/felhr/usbserial/UsbSerialDevice;->readThread:Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/hardware/usb/UsbRequest;->getEndpoint()Landroid/hardware/usb/UsbEndpoint;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Lcom/felhr/usbserial/UsbSerialDevice$ReadThread;->setUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public abstract syncClose()V
.end method

.method public abstract syncOpen()Z
.end method

.method public syncRead([BI)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    array-length v2, p1

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1

    return p1
.end method

.method public syncRead([BIII)I
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result p1

    return p1
.end method

.method public syncWrite([BI)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    array-length v2, p1

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public syncWrite([BIII)I
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 3
    iget-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public write([B)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/felhr/usbserial/SerialBuffer;->putWriteBuffer([B)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
