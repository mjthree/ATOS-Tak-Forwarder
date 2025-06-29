.class public Lcom/felhr/usbserial/XdcVcpSerialDevice;
.super Lcom/felhr/usbserial/UsbSerialDevice;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CLASS_ID:Ljava/lang/String; = "XdcVcpSerialDevice"

.field private static final DEFAULT_BAUDRATE:I = 0x1c200

.field private static final XDCVCP_GET_LINE_CTL:I = 0x4

.field private static final XDCVCP_IFC_ENABLE:I = 0x0

.field private static final XDCVCP_LINE_CTL_DEFAULT:I = 0x800

.field private static final XDCVCP_MHS_ALL:I = 0x11

.field private static final XDCVCP_MHS_DEFAULT:I = 0x0

.field private static final XDCVCP_MHS_DTR:I = 0x1

.field private static final XDCVCP_MHS_RTS:I = 0x10

.field private static final XDCVCP_REQTYPE_DEVICE2HOST:I = 0xc1

.field private static final XDCVCP_REQTYPE_HOST2DEVICE:I = 0x41

.field private static final XDCVCP_SET_BAUDDIV:I = 0x1

.field private static final XDCVCP_SET_BAUDRATE:I = 0x1e

.field private static final XDCVCP_SET_CHARS:I = 0x19

.field private static final XDCVCP_SET_FLOW:I = 0x13

.field private static final XDCVCP_SET_LINE_CTL:I = 0x3

.field private static final XDCVCP_SET_MHS:I = 0x7

.field private static final XDCVCP_SET_XOFF:I = 0xa

.field private static final XDCVCP_SET_XON:I = 0x9

.field private static final XDCVCP_UART_DISABLE:I = 0x0

.field private static final XDCVCP_UART_ENABLE:I = 0x1

.field private static final XDCVCP_XOFF:I

.field private static final XDCVCP_XON:I


# instance fields
.field private inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private final mInterface:Landroid/hardware/usb/UsbInterface;

.field private outEndpoint:Landroid/hardware/usb/UsbEndpoint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/felhr/usbserial/XdcVcpSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/UsbSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/felhr/usbserial/XdcVcpSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    return-void
.end method

.method private getCTL()[B
    .locals 9

    .line 1
    const/4 v6, 0x2

    .line 2
    new-array v8, v6, [B

    .line 3
    .line 4
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/felhr/usbserial/XdcVcpSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const/4 v7, 0x0

    .line 13
    const/16 v1, 0xc1

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v5, v8

    .line 18
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sget-object v1, Lcom/felhr/usbserial/XdcVcpSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "Control Transfer Response: "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
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
    iget-object v0, p0, Lcom/felhr/usbserial/XdcVcpSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    const/4 v8, 0x0

    .line 17
    const/16 v2, 0x41

    .line 18
    .line 19
    move v3, p1

    .line 20
    move v4, p2

    .line 21
    move-object v6, p3

    .line 22
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    sget-object p2, Lcom/felhr/usbserial/XdcVcpSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 27
    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v0, "Control Transfer Response: "

    .line 34
    .line 35
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v0, v1}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setControlCommand(II[B)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->killWorkingThread()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->killWriteThread()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/felhr/usbserial/XdcVcpSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 17
    .line 18
    .line 19
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
    iget-object v1, p0, Lcom/felhr/usbserial/XdcVcpSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    sget-object v0, Lcom/felhr/usbserial/XdcVcpSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, "Interface succesfully claimed"

    .line 22
    .line 23
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/felhr/usbserial/XdcVcpSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    move v3, v1

    .line 33
    :goto_0
    add-int/lit8 v4, v0, -0x1

    .line 34
    .line 35
    if-gt v3, v4, :cond_1

    .line 36
    .line 37
    iget-object v4, p0, Lcom/felhr/usbserial/XdcVcpSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const/4 v6, 0x2

    .line 48
    if-ne v5, v6, :cond_0

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/16 v6, 0x80

    .line 55
    .line 56
    if-ne v5, v6, :cond_0

    .line 57
    .line 58
    iput-object v4, p0, Lcom/felhr/usbserial/XdcVcpSerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_0
    iput-object v4, p0, Lcom/felhr/usbserial/XdcVcpSerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 62
    .line 63
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v1, v2, v0}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setControlCommand(II[B)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-gez v3, :cond_2

    .line 72
    .line 73
    return v1

    .line 74
    :cond_2
    const v3, 0x1c200

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setBaudRate(I)V

    .line 78
    .line 79
    .line 80
    const/4 v3, 0x3

    .line 81
    const/16 v4, 0x800

    .line 82
    .line 83
    invoke-direct {p0, v3, v4, v0}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setControlCommand(II[B)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-gez v3, :cond_3

    .line 88
    .line 89
    return v1

    .line 90
    :cond_3
    invoke-virtual {p0, v1}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setFlowControl(I)V

    .line 91
    .line 92
    .line 93
    const/4 v3, 0x7

    .line 94
    invoke-direct {p0, v3, v1, v0}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setControlCommand(II[B)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-gez v0, :cond_4

    .line 99
    .line 100
    return v1

    .line 101
    :cond_4
    new-instance v0, Landroid/hardware/usb/UsbRequest;

    .line 102
    .line 103
    invoke-direct {v0}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 107
    .line 108
    iget-object v3, p0, Lcom/felhr/usbserial/XdcVcpSerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 109
    .line 110
    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/felhr/usbserial/XdcVcpSerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 114
    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/felhr/usbserial/UsbSerialDevice;->setThreadsParams(Landroid/hardware/usb/UsbRequest;Landroid/hardware/usb/UsbEndpoint;)V

    .line 116
    .line 117
    .line 118
    return v2

    .line 119
    :cond_5
    sget-object v0, Lcom/felhr/usbserial/XdcVcpSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 120
    .line 121
    const-string v2, "Interface could not be claimed"

    .line 122
    .line 123
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    return v1
.end method

.method public setBaudRate(I)V
    .locals 5

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    shr-int/lit8 v1, p1, 0x8

    .line 5
    .line 6
    and-int/lit16 v1, v1, 0xff

    .line 7
    .line 8
    int-to-byte v1, v1

    .line 9
    shr-int/lit8 v2, p1, 0x10

    .line 10
    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 12
    .line 13
    int-to-byte v2, v2

    .line 14
    shr-int/lit8 p1, p1, 0x18

    .line 15
    .line 16
    and-int/lit16 p1, p1, 0xff

    .line 17
    .line 18
    int-to-byte p1, p1

    .line 19
    const/4 v3, 0x4

    .line 20
    new-array v3, v3, [B

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    aput-byte v0, v3, v4

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-byte v1, v3, v0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    aput-byte v2, v3, v0

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    aput-byte p1, v3, v0

    .line 33
    .line 34
    const/16 p1, 0x1e

    .line 35
    .line 36
    invoke-direct {p0, p1, v4, v3}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setControlCommand(II[B)I

    .line 37
    .line 38
    .line 39
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
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->getCTL()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x5

    .line 6
    const/16 v2, 0x8

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq p1, v1, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x6

    .line 12
    if-eq p1, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x7

    .line 15
    if-eq p1, v1, :cond_1

    .line 16
    .line 17
    if-eq p1, v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    aput-byte v2, v0, v3

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    aput-byte v1, v0, v3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    aput-byte v1, v0, v3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    aput-byte v1, v0, v3

    .line 30
    .line 31
    :goto_0
    aget-byte p1, v0, v3

    .line 32
    .line 33
    shl-int/2addr p1, v2

    .line 34
    const/4 v1, 0x0

    .line 35
    aget-byte v0, v0, v1

    .line 36
    .line 37
    and-int/lit16 v0, v0, 0xff

    .line 38
    .line 39
    or-int/2addr p1, v0

    .line 40
    int-to-byte p1, p1

    .line 41
    const/4 v0, 0x3

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, v0, p1, v1}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setControlCommand(II[B)I

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setFlowControl(I)V
    .locals 4

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x10

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    if-eq p1, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p1, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-array p1, v2, [B

    .line 19
    .line 20
    fill-array-data p1, :array_0

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x6

    .line 24
    new-array v1, v1, [B

    .line 25
    .line 26
    fill-array-data v1, :array_1

    .line 27
    .line 28
    .line 29
    const/16 v2, 0x19

    .line 30
    .line 31
    invoke-direct {p0, v2, v3, v1}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setControlCommand(II[B)I

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, v3, p1}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setControlCommand(II[B)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-array p1, v2, [B

    .line 39
    .line 40
    fill-array-data p1, :array_2

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0, v3, p1}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setControlCommand(II[B)I

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-array p1, v2, [B

    .line 48
    .line 49
    fill-array-data p1, :array_3

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v0, v3, p1}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setControlCommand(II[B)I

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    new-array p1, v2, [B

    .line 57
    .line 58
    fill-array-data p1, :array_4

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v0, v3, p1}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setControlCommand(II[B)I

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x43t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
    .end array-data

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x11t
        0x13t
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    nop

    .line 85
    :array_2
    .array-data 1
        0x12t
        0x0t
        0x0t
        0x0t
        0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
    .end array-data

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_3
    .array-data 1
        0x9t
        0x0t
        0x0t
        0x0t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
    .end array-data

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    :array_4
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
    .end array-data
.end method

.method public setParity(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->getCTL()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    if-eq p1, v2, :cond_3

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    if-eq p1, v4, :cond_2

    .line 14
    .line 15
    if-eq p1, v1, :cond_1

    .line 16
    .line 17
    const/4 v4, 0x4

    .line 18
    if-eq p1, v4, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    aget-byte p1, v0, v3

    .line 22
    .line 23
    and-int/lit8 p1, p1, -0x11

    .line 24
    .line 25
    int-to-byte p1, p1

    .line 26
    aput-byte p1, v0, v3

    .line 27
    .line 28
    and-int/lit8 p1, p1, -0x21

    .line 29
    .line 30
    int-to-byte p1, p1

    .line 31
    aput-byte p1, v0, v3

    .line 32
    .line 33
    or-int/lit8 p1, p1, 0x40

    .line 34
    .line 35
    int-to-byte p1, p1

    .line 36
    aput-byte p1, v0, v3

    .line 37
    .line 38
    and-int/lit16 p1, p1, -0x81

    .line 39
    .line 40
    int-to-byte p1, p1

    .line 41
    aput-byte p1, v0, v3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    aget-byte p1, v0, v3

    .line 45
    .line 46
    or-int/lit8 p1, p1, 0x10

    .line 47
    .line 48
    int-to-byte p1, p1

    .line 49
    aput-byte p1, v0, v3

    .line 50
    .line 51
    or-int/lit8 p1, p1, 0x20

    .line 52
    .line 53
    int-to-byte p1, p1

    .line 54
    aput-byte p1, v0, v3

    .line 55
    .line 56
    and-int/lit8 p1, p1, -0x41

    .line 57
    .line 58
    int-to-byte p1, p1

    .line 59
    aput-byte p1, v0, v3

    .line 60
    .line 61
    and-int/lit16 p1, p1, -0x81

    .line 62
    .line 63
    int-to-byte p1, p1

    .line 64
    aput-byte p1, v0, v3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    aget-byte p1, v0, v3

    .line 68
    .line 69
    and-int/lit8 p1, p1, -0x11

    .line 70
    .line 71
    int-to-byte p1, p1

    .line 72
    aput-byte p1, v0, v3

    .line 73
    .line 74
    or-int/lit8 p1, p1, 0x20

    .line 75
    .line 76
    int-to-byte p1, p1

    .line 77
    aput-byte p1, v0, v3

    .line 78
    .line 79
    and-int/lit8 p1, p1, -0x41

    .line 80
    .line 81
    int-to-byte p1, p1

    .line 82
    aput-byte p1, v0, v3

    .line 83
    .line 84
    and-int/lit16 p1, p1, -0x81

    .line 85
    .line 86
    int-to-byte p1, p1

    .line 87
    aput-byte p1, v0, v3

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    aget-byte p1, v0, v3

    .line 91
    .line 92
    or-int/lit8 p1, p1, 0x10

    .line 93
    .line 94
    int-to-byte p1, p1

    .line 95
    aput-byte p1, v0, v3

    .line 96
    .line 97
    and-int/lit8 p1, p1, -0x21

    .line 98
    .line 99
    int-to-byte p1, p1

    .line 100
    aput-byte p1, v0, v3

    .line 101
    .line 102
    and-int/lit8 p1, p1, -0x41

    .line 103
    .line 104
    int-to-byte p1, p1

    .line 105
    aput-byte p1, v0, v3

    .line 106
    .line 107
    and-int/lit16 p1, p1, -0x81

    .line 108
    .line 109
    int-to-byte p1, p1

    .line 110
    aput-byte p1, v0, v3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    aget-byte p1, v0, v3

    .line 114
    .line 115
    and-int/lit8 p1, p1, -0x11

    .line 116
    .line 117
    int-to-byte p1, p1

    .line 118
    aput-byte p1, v0, v3

    .line 119
    .line 120
    and-int/lit8 p1, p1, -0x21

    .line 121
    .line 122
    int-to-byte p1, p1

    .line 123
    aput-byte p1, v0, v3

    .line 124
    .line 125
    and-int/lit8 p1, p1, -0x41

    .line 126
    .line 127
    int-to-byte p1, p1

    .line 128
    aput-byte p1, v0, v3

    .line 129
    .line 130
    and-int/lit16 p1, p1, -0x81

    .line 131
    .line 132
    int-to-byte p1, p1

    .line 133
    aput-byte p1, v0, v3

    .line 134
    .line 135
    :goto_0
    aget-byte p1, v0, v2

    .line 136
    .line 137
    shl-int/lit8 p1, p1, 0x8

    .line 138
    .line 139
    aget-byte v0, v0, v3

    .line 140
    .line 141
    and-int/lit16 v0, v0, 0xff

    .line 142
    .line 143
    or-int/2addr p1, v0

    .line 144
    int-to-byte p1, p1

    .line 145
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setControlCommand(II[B)I

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public setRTS(Z)V
    .locals 0

    return-void
.end method

.method public setStopBits(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->getCTL()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq p1, v2, :cond_2

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    if-eq p1, v4, :cond_1

    .line 12
    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    aget-byte p1, v0, v3

    .line 17
    .line 18
    or-int/2addr p1, v2

    .line 19
    int-to-byte p1, p1

    .line 20
    aput-byte p1, v0, v3

    .line 21
    .line 22
    and-int/lit8 p1, p1, -0x3

    .line 23
    .line 24
    int-to-byte p1, p1

    .line 25
    aput-byte p1, v0, v3

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    aget-byte p1, v0, v3

    .line 29
    .line 30
    and-int/lit8 p1, p1, -0x2

    .line 31
    .line 32
    int-to-byte p1, p1

    .line 33
    aput-byte p1, v0, v3

    .line 34
    .line 35
    or-int/2addr p1, v4

    .line 36
    int-to-byte p1, p1

    .line 37
    aput-byte p1, v0, v3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    aget-byte p1, v0, v3

    .line 41
    .line 42
    and-int/lit8 p1, p1, -0x2

    .line 43
    .line 44
    int-to-byte p1, p1

    .line 45
    aput-byte p1, v0, v3

    .line 46
    .line 47
    and-int/lit8 p1, p1, -0x3

    .line 48
    .line 49
    int-to-byte p1, p1

    .line 50
    aput-byte p1, v0, v3

    .line 51
    .line 52
    :goto_0
    aget-byte p1, v0, v2

    .line 53
    .line 54
    shl-int/lit8 p1, p1, 0x8

    .line 55
    .line 56
    aget-byte v0, v0, v3

    .line 57
    .line 58
    and-int/lit16 v0, v0, 0xff

    .line 59
    .line 60
    or-int/2addr p1, v0

    .line 61
    int-to-byte p1, p1

    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/XdcVcpSerialDevice;->setControlCommand(II[B)I

    .line 64
    .line 65
    .line 66
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
