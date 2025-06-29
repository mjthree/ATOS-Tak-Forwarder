.class public Lcom/felhr/usbserial/CDCSerialDevice;
.super Lcom/felhr/usbserial/UsbSerialDevice;
.source "SourceFile"


# static fields
.field private static final CDC_CONTROL_LINE_OFF:I = 0x0

.field private static final CDC_CONTROL_LINE_ON:I = 0x3

.field private static final CDC_DEFAULT_LINE_CODING:[B

.field private static final CDC_GET_LINE_CODING:I = 0x21

.field private static final CDC_REQTYPE_DEVICE2HOST:I = 0xa1

.field private static final CDC_REQTYPE_HOST2DEVICE:I = 0x21

.field private static final CDC_SET_CONTROL_LINE_STATE:I = 0x22

.field private static final CDC_SET_CONTROL_LINE_STATE_DTR:I = 0x1

.field private static final CDC_SET_CONTROL_LINE_STATE_RTS:I = 0x2

.field private static final CDC_SET_LINE_CODING:I = 0x20

.field private static final CLASS_ID:Ljava/lang/String; = "CDCSerialDevice"


# instance fields
.field private cdcControl:I

.field private controlLineState:I

.field private inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private initialBaudRate:I

.field private final mInterface:Landroid/hardware/usb/UsbInterface;

.field private outEndpoint:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/felhr/usbserial/CDCSerialDevice;->CDC_DEFAULT_LINE_CODING:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x0t
        -0x3et
        0x1t
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/felhr/usbserial/CDCSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/UsbSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lcom/felhr/usbserial/CDCSerialDevice;->cdcControl:I

    .line 4
    iput p2, p0, Lcom/felhr/usbserial/CDCSerialDevice;->initialBaudRate:I

    const/4 p2, 0x3

    .line 5
    iput p2, p0, Lcom/felhr/usbserial/CDCSerialDevice;->controlLineState:I

    .line 6
    invoke-static {p1}, Lcom/felhr/usbserial/CDCSerialDevice;->findFirstControl(Landroid/hardware/usb/UsbDevice;)I

    move-result p2

    iput p2, p0, Lcom/felhr/usbserial/CDCSerialDevice;->cdcControl:I

    if-ltz p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/felhr/usbserial/CDCSerialDevice;->findFirstCDC(Landroid/hardware/usb/UsbDevice;)I

    move-result p3

    :goto_0
    invoke-virtual {p1, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    return-void
.end method

.method private static findFirstCDC(Landroid/hardware/usb/UsbDevice;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/16 v3, 0xa

    .line 17
    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    return v1

    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object p0, Lcom/felhr/usbserial/CDCSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "There is no CDC class interface"

    .line 27
    .line 28
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p0, -0x1

    .line 32
    return p0
.end method

.method private static findFirstControl(Landroid/hardware/usb/UsbDevice;)I
    .locals 5

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
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x2

    .line 18
    if-ne v3, v4, :cond_0

    .line 19
    .line 20
    sget-object p0, Lcom/felhr/usbserial/CDCSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "Using CDC control interface "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    sget-object p0, Lcom/felhr/usbserial/CDCSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 47
    .line 48
    const-string v0, "There is no CDC control interface"

    .line 49
    .line 50
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return v1
.end method

.method private getLineCoding()[B
    .locals 9

    .line 1
    const/4 v6, 0x7

    .line 2
    new-array v8, v6, [B

    .line 3
    .line 4
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 5
    .line 6
    iget v4, p0, Lcom/felhr/usbserial/CDCSerialDevice;->cdcControl:I

    .line 7
    .line 8
    const/4 v7, 0x0

    .line 9
    const/16 v1, 0xa1

    .line 10
    .line 11
    const/16 v2, 0x21

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    move-object v5, v8

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sget-object v1, Lcom/felhr/usbserial/CDCSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v3, "Control Transfer Response: "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-object v8
.end method

.method private openCDC()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    sget-object v0, Lcom/felhr/usbserial/CDCSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "Interface successfully claimed"

    .line 16
    .line 17
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/felhr/usbserial/CDCSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    move v3, v1

    .line 27
    :goto_0
    add-int/lit8 v4, v0, -0x1

    .line 28
    .line 29
    if-gt v3, v4, :cond_2

    .line 30
    .line 31
    iget-object v4, p0, Lcom/felhr/usbserial/CDCSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/4 v6, 0x2

    .line 42
    if-ne v5, v6, :cond_0

    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const/16 v7, 0x80

    .line 49
    .line 50
    if-ne v5, v7, :cond_0

    .line 51
    .line 52
    iput-object v4, p0, Lcom/felhr/usbserial/CDCSerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-ne v5, v6, :cond_1

    .line 60
    .line 61
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_1

    .line 66
    .line 67
    iput-object v4, p0, Lcom/felhr/usbserial/CDCSerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 68
    .line 69
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/felhr/usbserial/CDCSerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    iget-object v0, p0, Lcom/felhr/usbserial/CDCSerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 77
    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    const/16 v0, 0x20

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/felhr/usbserial/CDCSerialDevice;->getInitialLineCoding()[B

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-direct {p0, v0, v1, v3}, Lcom/felhr/usbserial/CDCSerialDevice;->setControlCommand(II[B)I

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x3

    .line 91
    const/4 v1, 0x0

    .line 92
    const/16 v3, 0x22

    .line 93
    .line 94
    invoke-direct {p0, v3, v0, v1}, Lcom/felhr/usbserial/CDCSerialDevice;->setControlCommand(II[B)I

    .line 95
    .line 96
    .line 97
    return v2

    .line 98
    :cond_4
    :goto_2
    sget-object v0, Lcom/felhr/usbserial/CDCSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 99
    .line 100
    const-string v2, "Interface does not have an IN or OUT interface"

    .line 101
    .line 102
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    return v1

    .line 106
    :cond_5
    sget-object v0, Lcom/felhr/usbserial/CDCSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 107
    .line 108
    const-string v2, "Interface could not be claimed"

    .line 109
    .line 110
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    return v1
.end method

.method private setControlCommand(II[B)I
    .locals 9

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    array-length v0, p3

    .line 4
    :goto_0
    move v7, v0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :goto_1
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 9
    .line 10
    iget v5, p0, Lcom/felhr/usbserial/CDCSerialDevice;->cdcControl:I

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    const/16 v2, 0x21

    .line 14
    .line 15
    move v3, p1

    .line 16
    move v4, p2

    .line 17
    move-object v6, p3

    .line 18
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    sget-object p2, Lcom/felhr/usbserial/CDCSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 23
    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v0, "Control Transfer Response: "

    .line 30
    .line 31
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x22

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v1, v2, v0}, Lcom/felhr/usbserial/CDCSerialDevice;->setControlCommand(II[B)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->killWorkingThread()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->killWriteThread()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 24
    .line 25
    .line 26
    iput-boolean v2, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 27
    .line 28
    return-void
.end method

.method public getBreak(Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;)V
    .locals 0

    return-void
.end method

.method public getCTS(Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;)V
    .locals 0

    return-void
.end method

.method public getDSR(Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;)V
    .locals 0

    return-void
.end method

.method public getFrame(Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;)V
    .locals 0

    return-void
.end method

.method public getInitialBaudRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/felhr/usbserial/CDCSerialDevice;->initialBaudRate:I

    .line 2
    .line 3
    return v0
.end method

.method protected getInitialLineCoding()[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/felhr/usbserial/CDCSerialDevice;->getInitialBaudRate()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/felhr/usbserial/CDCSerialDevice;->CDC_DEFAULT_LINE_CODING:[B

    .line 8
    .line 9
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, [B

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    const/4 v3, 0x4

    .line 17
    if-ge v2, v3, :cond_1

    .line 18
    .line 19
    mul-int/lit8 v3, v2, 0x8

    .line 20
    .line 21
    shr-int v3, v0, v3

    .line 22
    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    int-to-byte v3, v3

    .line 26
    aput-byte v3, v1, v2

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v1, Lcom/felhr/usbserial/CDCSerialDevice;->CDC_DEFAULT_LINE_CODING:[B

    .line 32
    .line 33
    :cond_1
    return-object v1
.end method

.method public getOverrun(Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;)V
    .locals 0

    return-void
.end method

.method public getParity(Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;)V
    .locals 0

    return-void
.end method

.method public open()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CDCSerialDevice;->openCDC()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/felhr/utils/SafeUsbRequest;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/felhr/utils/SafeUsbRequest;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/felhr/usbserial/CDCSerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->restartWorkingThread()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->restartWriteThread()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/felhr/usbserial/UsbSerialDevice;->setThreadsParams(Landroid/hardware/usb/UsbRequest;Landroid/hardware/usb/UsbEndpoint;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 34
    .line 35
    return v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 38
    .line 39
    return v0
.end method

.method public setBaudRate(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CDCSerialDevice;->getLineCoding()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    and-int/lit16 v1, p1, 0xff

    .line 6
    .line 7
    int-to-byte v1, v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-byte v1, v0, v2

    .line 10
    .line 11
    shr-int/lit8 v1, p1, 0x8

    .line 12
    .line 13
    and-int/lit16 v1, v1, 0xff

    .line 14
    .line 15
    int-to-byte v1, v1

    .line 16
    const/4 v3, 0x1

    .line 17
    aput-byte v1, v0, v3

    .line 18
    .line 19
    shr-int/lit8 v1, p1, 0x10

    .line 20
    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 22
    .line 23
    int-to-byte v1, v1

    .line 24
    const/4 v3, 0x2

    .line 25
    aput-byte v1, v0, v3

    .line 26
    .line 27
    shr-int/lit8 p1, p1, 0x18

    .line 28
    .line 29
    and-int/lit16 p1, p1, 0xff

    .line 30
    .line 31
    int-to-byte p1, p1

    .line 32
    const/4 v1, 0x3

    .line 33
    aput-byte p1, v0, v1

    .line 34
    .line 35
    const/16 p1, 0x20

    .line 36
    .line 37
    invoke-direct {p0, p1, v2, v0}, Lcom/felhr/usbserial/CDCSerialDevice;->setControlCommand(II[B)I

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setBreak(Z)V
    .locals 0

    return-void
.end method

.method public setDTR(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->controlLineState:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->controlLineState:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->controlLineState:I

    .line 11
    .line 12
    and-int/lit8 p1, p1, -0x2

    .line 13
    .line 14
    iput p1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->controlLineState:I

    .line 15
    .line 16
    :goto_0
    iget p1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->controlLineState:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/16 v1, 0x22

    .line 20
    .line 21
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/CDCSerialDevice;->setControlCommand(II[B)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setDataBits(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CDCSerialDevice;->getLineCoding()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x5

    .line 6
    const/4 v2, 0x6

    .line 7
    if-eq p1, v1, :cond_3

    .line 8
    .line 9
    if-eq p1, v2, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    if-eq p1, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    aput-byte v1, v0, v2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    aput-byte v1, v0, v2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    aput-byte v2, v0, v2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    aput-byte v1, v0, v2

    .line 29
    .line 30
    :goto_0
    const/16 p1, 0x20

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, v1, v0}, Lcom/felhr/usbserial/CDCSerialDevice;->setControlCommand(II[B)I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setFlowControl(I)V
    .locals 0

    return-void
.end method

.method public setInitialBaudRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->initialBaudRate:I

    .line 2
    .line 3
    return-void
.end method

.method public setParity(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CDCSerialDevice;->getLineCoding()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x5

    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq p1, v3, :cond_3

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq p1, v3, :cond_2

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    if-eq p1, v3, :cond_1

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    if-eq p1, v3, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    aput-byte v3, v0, v2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    aput-byte v3, v0, v2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    aput-byte v3, v0, v2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    aput-byte v3, v0, v2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_4
    aput-byte v1, v0, v2

    .line 35
    .line 36
    :goto_0
    const/16 p1, 0x20

    .line 37
    .line 38
    invoke-direct {p0, p1, v1, v0}, Lcom/felhr/usbserial/CDCSerialDevice;->setControlCommand(II[B)I

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public setRTS(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->controlLineState:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    iput p1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->controlLineState:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->controlLineState:I

    .line 11
    .line 12
    and-int/lit8 p1, p1, -0x3

    .line 13
    .line 14
    iput p1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->controlLineState:I

    .line 15
    .line 16
    :goto_0
    iget p1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->controlLineState:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/16 v1, 0x22

    .line 20
    .line 21
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/CDCSerialDevice;->setControlCommand(II[B)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public setStopBits(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CDCSerialDevice;->getLineCoding()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x4

    .line 8
    if-eq p1, v2, :cond_2

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    if-eq p1, v4, :cond_1

    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    if-eq p1, v4, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    aput-byte v2, v0, v3

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    aput-byte v4, v0, v3

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    aput-byte v1, v0, v3

    .line 24
    .line 25
    :goto_0
    const/16 p1, 0x20

    .line 26
    .line 27
    invoke-direct {p0, p1, v1, v0}, Lcom/felhr/usbserial/CDCSerialDevice;->setControlCommand(II[B)I

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public syncClose()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x22

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v1, v2, v0}, Lcom/felhr/usbserial/CDCSerialDevice;->setControlCommand(II[B)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/felhr/usbserial/CDCSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 18
    .line 19
    .line 20
    iput-boolean v2, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 21
    .line 22
    return-void
.end method

.method public syncOpen()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CDCSerialDevice;->openCDC()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/felhr/usbserial/CDCSerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/felhr/usbserial/CDCSerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v2}, Lcom/felhr/usbserial/UsbSerialDevice;->setSyncParams(Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    .line 13
    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 19
    .line 20
    new-instance v1, Lcom/felhr/usbserial/SerialInputStream;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/felhr/usbserial/SerialInputStream;-><init>(Lcom/felhr/usbserial/UsbSerialInterface;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->inputStream:Lcom/felhr/usbserial/SerialInputStream;

    .line 26
    .line 27
    new-instance v1, Lcom/felhr/usbserial/SerialOutputStream;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/felhr/usbserial/SerialOutputStream;-><init>(Lcom/felhr/usbserial/UsbSerialInterface;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->outputStream:Lcom/felhr/usbserial/SerialOutputStream;

    .line 33
    .line 34
    return v0

    .line 35
    :cond_0
    iput-boolean v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 36
    .line 37
    return v1
.end method
