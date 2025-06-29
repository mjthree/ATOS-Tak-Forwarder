.class public Lcom/felhr/usbserial/BLED112SerialDevice;
.super Lcom/felhr/usbserial/UsbSerialDevice;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BLED112_DEFAULT_CONTROL_LINE:I = 0x3

.field private static final BLED112_DEFAULT_LINE_CODING:[B

.field private static final BLED112_DISCONNECT_CONTROL_LINE:I = 0x2

.field private static final BLED112_GET_LINE_CODING:I = 0x21

.field private static final BLED112_REQTYPE_DEVICE2HOST:I = 0xa1

.field private static final BLED112_REQTYPE_HOST2DEVICE:I = 0x21

.field private static final BLED112_SET_CONTROL_LINE_STATE:I = 0x22

.field private static final BLED112_SET_LINE_CODING:I = 0x20

.field private static final CLASS_ID:Ljava/lang/String; = "BLED112SerialDevice"


# instance fields
.field private inEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
    sput-object v0, Lcom/felhr/usbserial/BLED112SerialDevice;->BLED112_DEFAULT_LINE_CODING:[B

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 1
        0x0t
        0x1t
        -0x3et
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/UsbSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/felhr/usbserial/BLED112SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 10
    .line 11
    return-void
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
    const/4 v4, 0x0

    .line 7
    const/4 v7, 0x0

    .line 8
    const/16 v1, 0xa1

    .line 9
    .line 10
    const/16 v2, 0x21

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    move-object v5, v8

    .line 14
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sget-object v1, Lcom/felhr/usbserial/BLED112SerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "Control Transfer Response: "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return-object v8
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
    const/4 v5, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    const/16 v2, 0x21

    .line 13
    .line 14
    move v3, p1

    .line 15
    move v4, p2

    .line 16
    move-object v6, p3

    .line 17
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    sget-object p2, Lcom/felhr/usbserial/BLED112SerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 22
    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v0, "Control Transfer Response: "

    .line 29
    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, 0x22

    .line 4
    .line 5
    invoke-direct {p0, v2, v0, v1}, Lcom/felhr/usbserial/BLED112SerialDevice;->setControlCommand(II[B)I

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
    iget-object v1, p0, Lcom/felhr/usbserial/BLED112SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 19
    .line 20
    .line 21
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

.method public getOverrun(Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;)V
    .locals 0

    return-void
.end method

.method public getParity(Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;)V
    .locals 0

    return-void
.end method

.method public open()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->restartWorkingThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->restartWriteThread()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/felhr/usbserial/BLED112SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/felhr/usbserial/BLED112SerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "Interface successfully claimed"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/felhr/usbserial/BLED112SerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "Interface could not be claimed"

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/felhr/usbserial/BLED112SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x0

    .line 40
    move v3, v1

    .line 41
    :goto_1
    add-int/lit8 v4, v0, -0x1

    .line 42
    .line 43
    if-gt v3, v4, :cond_2

    .line 44
    .line 45
    iget-object v4, p0, Lcom/felhr/usbserial/BLED112SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 46
    .line 47
    invoke-virtual {v4, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const/4 v6, 0x2

    .line 56
    if-ne v5, v6, :cond_1

    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const/16 v6, 0x80

    .line 63
    .line 64
    if-ne v5, v6, :cond_1

    .line 65
    .line 66
    iput-object v4, p0, Lcom/felhr/usbserial/BLED112SerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    iput-object v4, p0, Lcom/felhr/usbserial/BLED112SerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 70
    .line 71
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const/16 v0, 0x20

    .line 75
    .line 76
    sget-object v3, Lcom/felhr/usbserial/BLED112SerialDevice;->BLED112_DEFAULT_LINE_CODING:[B

    .line 77
    .line 78
    invoke-direct {p0, v0, v1, v3}, Lcom/felhr/usbserial/BLED112SerialDevice;->setControlCommand(II[B)I

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x3

    .line 82
    const/4 v1, 0x0

    .line 83
    const/16 v3, 0x22

    .line 84
    .line 85
    invoke-direct {p0, v3, v0, v1}, Lcom/felhr/usbserial/BLED112SerialDevice;->setControlCommand(II[B)I

    .line 86
    .line 87
    .line 88
    new-instance v0, Landroid/hardware/usb/UsbRequest;

    .line 89
    .line 90
    invoke-direct {v0}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 94
    .line 95
    iget-object v3, p0, Lcom/felhr/usbserial/BLED112SerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 96
    .line 97
    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/felhr/usbserial/BLED112SerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 101
    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/felhr/usbserial/UsbSerialDevice;->setThreadsParams(Landroid/hardware/usb/UsbRequest;Landroid/hardware/usb/UsbEndpoint;)V

    .line 103
    .line 104
    .line 105
    return v2
.end method

.method public setBaudRate(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/BLED112SerialDevice;->getLineCoding()[B

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
    const/4 v2, 0x3

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
    const/4 v2, 0x2

    .line 17
    aput-byte v1, v0, v2

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
    const/4 v2, 0x1

    .line 25
    aput-byte v1, v0, v2

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
    const/4 v1, 0x0

    .line 33
    aput-byte p1, v0, v1

    .line 34
    .line 35
    const/16 p1, 0x20

    .line 36
    .line 37
    invoke-direct {p0, p1, v1, v0}, Lcom/felhr/usbserial/BLED112SerialDevice;->setControlCommand(II[B)I

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
    .locals 0

    return-void
.end method

.method public setDataBits(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/BLED112SerialDevice;->getLineCoding()[B

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
    goto :goto_0

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
    invoke-direct {p0, p1, v1, v0}, Lcom/felhr/usbserial/BLED112SerialDevice;->setControlCommand(II[B)I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setFlowControl(I)V
    .locals 0

    return-void
.end method

.method public setParity(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/BLED112SerialDevice;->getLineCoding()[B

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
    goto :goto_0

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
    invoke-direct {p0, p1, v1, v0}, Lcom/felhr/usbserial/BLED112SerialDevice;->setControlCommand(II[B)I

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public setRTS(Z)V
    .locals 0

    return-void
.end method

.method public setStopBits(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/BLED112SerialDevice;->getLineCoding()[B

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
    goto :goto_0

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
    invoke-direct {p0, p1, v1, v0}, Lcom/felhr/usbserial/BLED112SerialDevice;->setControlCommand(II[B)I

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public syncClose()V
    .locals 0

    return-void
.end method

.method public syncOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
