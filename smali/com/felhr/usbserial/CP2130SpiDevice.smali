.class public Lcom/felhr/usbserial/CP2130SpiDevice;
.super Lcom/felhr/usbserial/UsbSpiDevice;
.source "SourceFile"


# static fields
.field private static final BM_REQ_DEVICE_2_HOST:I = 0xc0

.field private static final BM_REQ_HOST_2_DEVICE:I = 0x40

.field private static final CLASS_ID:Ljava/lang/String; = "CP2130SpiDevice"

.field public static final CLOCK_12MHz:I = 0x0

.field public static final CLOCK_187_5KHz:I = 0x6

.field public static final CLOCK_1_5MHz:I = 0x3

.field public static final CLOCK_375KHz:I = 0x5

.field public static final CLOCK_3MHz:I = 0x2

.field public static final CLOCK_6MHz:I = 0x1

.field public static final CLOCK_750KHz:I = 0x4

.field public static final CLOCK_93_75KHz:I = 0x7

.field private static final GET_SPI_WORD:I = 0x30

.field private static final SET_GPIO_CHIP_SELECT:I = 0x25

.field private static final SET_SPI_WORD:I = 0x31


# instance fields
.field private currentChannel:I

.field private inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private final mInterface:Landroid/hardware/usb/UsbInterface;

.field private outEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private requestIN:Landroid/hardware/usb/UsbRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/felhr/usbserial/CP2130SpiDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/UsbSpiDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    const/4 p2, 0x0

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    .line 3
    :goto_0
    invoke-virtual {p1, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 4
    iput p2, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->currentChannel:I

    return-void
.end method

.method private getSpiWord()[B
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/16 v2, 0x30

    .line 4
    .line 5
    invoke-direct {p0, v2, v0, v0, v1}, Lcom/felhr/usbserial/CP2130SpiDevice;->setControlCommandIn(IIII)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private openCP2130()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    if-eqz v0, :cond_2

    .line 12
    .line 13
    sget-object v0, Lcom/felhr/usbserial/CP2130SpiDevice;->CLASS_ID:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "Interface successfully claimed"

    .line 16
    .line 17
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    add-int/lit8 v3, v0, -0x1

    .line 27
    .line 28
    if-gt v1, v3, :cond_1

    .line 29
    .line 30
    iget-object v3, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 31
    .line 32
    invoke-virtual {v3, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x2

    .line 41
    if-ne v4, v5, :cond_0

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/16 v5, 0x80

    .line 48
    .line 49
    if-ne v4, v5, :cond_0

    .line 50
    .line 51
    iput-object v3, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    iput-object v3, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 55
    .line 56
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return v2

    .line 60
    :cond_2
    sget-object v0, Lcom/felhr/usbserial/CP2130SpiDevice;->CLASS_ID:Ljava/lang/String;

    .line 61
    .line 62
    const-string v2, "Interface could not be claimed"

    .line 63
    .line 64
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    return v1
.end method

.method private setControlCommandIn(IIII)[B
    .locals 8

    .line 1
    new-array p3, p4, [B

    .line 2
    .line 3
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    const/16 v7, 0x1388

    .line 12
    .line 13
    const/16 v1, 0xc0

    .line 14
    .line 15
    move v2, p1

    .line 16
    move v3, p2

    .line 17
    move-object v5, p3

    .line 18
    move v6, p4

    .line 19
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    sget-object p2, Lcom/felhr/usbserial/CP2130SpiDevice;->CLASS_ID:Ljava/lang/String;

    .line 24
    .line 25
    new-instance p4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v0, "Control Transfer Response: "

    .line 31
    .line 32
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-object p3
.end method

.method private setControlCommandOut(III[B)I
    .locals 8

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    array-length p3, p4

    .line 4
    :goto_0
    move v6, p3

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/4 p3, 0x0

    .line 7
    goto :goto_0

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 9
    .line 10
    iget-object p3, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 11
    .line 12
    invoke-virtual {p3}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const/16 v7, 0x1388

    .line 17
    .line 18
    const/16 v1, 0x40

    .line 19
    .line 20
    move v2, p1

    .line 21
    move v3, p2

    .line 22
    move-object v5, p4

    .line 23
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sget-object p2, Lcom/felhr/usbserial/CP2130SpiDevice;->CLASS_ID:Ljava/lang/String;

    .line 28
    .line 29
    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string p4, "Control Transfer Response: "

    .line 35
    .line 36
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return p1
.end method

.method private setGpioChipSelect(IZ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    if-ltz p1, :cond_2

    .line 5
    .line 6
    const/16 v3, 0xa

    .line 7
    .line 8
    if-gt p1, v3, :cond_2

    .line 9
    .line 10
    int-to-byte v3, p1

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    move p2, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p2, v1

    .line 16
    :goto_0
    new-array v2, v2, [B

    .line 17
    .line 18
    aput-byte v3, v2, v0

    .line 19
    .line 20
    aput-byte p2, v2, v1

    .line 21
    .line 22
    const/16 p2, 0x25

    .line 23
    .line 24
    invoke-direct {p0, p2, v0, v0, v2}, Lcom/felhr/usbserial/CP2130SpiDevice;->setControlCommandOut(III[B)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 v0, -0x1

    .line 29
    if-eq p2, v0, :cond_1

    .line 30
    .line 31
    iput p1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->currentChannel:I

    .line 32
    .line 33
    :cond_1
    return-void

    .line 34
    :cond_2
    sget-object p1, Lcom/felhr/usbserial/CP2130SpiDevice;->CLASS_ID:Ljava/lang/String;

    .line 35
    .line 36
    const-string p2, "Channel not valid"

    .line 37
    .line 38
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private setSetSpiWord(II)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    if-gt p1, v1, :cond_0

    .line 9
    .line 10
    int-to-byte p1, p1

    .line 11
    const/4 v1, 0x0

    .line 12
    aput-byte p1, v0, v1

    .line 13
    .line 14
    int-to-byte p1, p2

    .line 15
    const/4 p2, 0x1

    .line 16
    aput-byte p1, v0, p2

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x8

    .line 19
    .line 20
    int-to-byte p1, p1

    .line 21
    aput-byte p1, v0, p2

    .line 22
    .line 23
    const/16 p1, 0x31

    .line 24
    .line 25
    invoke-direct {p0, p1, v1, v1, v0}, Lcom/felhr/usbserial/CP2130SpiDevice;->setControlCommandOut(III[B)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    sget-object p1, Lcom/felhr/usbserial/CP2130SpiDevice;->CLASS_ID:Ljava/lang/String;

    .line 30
    .line 31
    const-string p2, "Channel not valid"

    .line 32
    .line 33
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public closeSPI()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSpiDevice;->killWorkingThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSpiDevice;->killWriteThread()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSpiDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public connectSPI()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2130SpiDevice;->openCP2130()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSpiDevice;->restartWorkingThread()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSpiDevice;->restartWriteThread()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/felhr/usbserial/UsbSpiDevice;->setThreadsParams(Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    return v0
.end method

.method public getClockDivider()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2130SpiDevice;->getSpiWord()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->currentChannel:I

    .line 6
    .line 7
    aget-byte v0, v0, v1

    .line 8
    .line 9
    and-int/lit8 v0, v0, 0x7

    .line 10
    .line 11
    return v0
.end method

.method public getSelectedSlave()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->currentChannel:I

    .line 2
    .line 3
    return v0
.end method

.method public readMISO(I)V
    .locals 6

    .line 1
    and-int/lit16 v0, p1, 0xff

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    shr-int/lit8 v2, p1, 0x8

    .line 7
    .line 8
    and-int/lit16 v2, v2, 0xff

    .line 9
    .line 10
    int-to-byte v2, v2

    .line 11
    shr-int/lit8 v3, p1, 0x10

    .line 12
    .line 13
    and-int/lit16 v3, v3, 0xff

    .line 14
    .line 15
    int-to-byte v3, v3

    .line 16
    shr-int/lit8 p1, p1, 0x18

    .line 17
    .line 18
    and-int/lit16 p1, p1, 0xff

    .line 19
    .line 20
    int-to-byte p1, p1

    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-byte v4, v1, v4

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    aput-byte v4, v1, v5

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    aput-byte v4, v1, v5

    .line 31
    .line 32
    const/16 v4, -0x80

    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    aput-byte v4, v1, v5

    .line 36
    .line 37
    const/4 v4, 0x4

    .line 38
    aput-byte v0, v1, v4

    .line 39
    .line 40
    const/4 v0, 0x5

    .line 41
    aput-byte v2, v1, v0

    .line 42
    .line 43
    const/4 v0, 0x6

    .line 44
    aput-byte v3, v1, v0

    .line 45
    .line 46
    const/4 v0, 0x7

    .line 47
    aput-byte p1, v1, v0

    .line 48
    .line 49
    iget-object p1, p0, Lcom/felhr/usbserial/UsbSpiDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/felhr/usbserial/SerialBuffer;->putWriteBuffer([B)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public selectSlave(I)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-gt p1, v0, :cond_1

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/CP2130SpiDevice;->setGpioChipSelect(IZ)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    :goto_0
    sget-object p1, Lcom/felhr/usbserial/CP2130SpiDevice;->CLASS_ID:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "selected slave must be in 0-10 range"

    .line 16
    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setClock(I)V
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :pswitch_0
    iget p1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->currentChannel:I

    .line 6
    .line 7
    const/4 v0, 0x7

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/CP2130SpiDevice;->setSetSpiWord(II)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_1
    iget p1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->currentChannel:I

    .line 13
    .line 14
    const/4 v0, 0x6

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/CP2130SpiDevice;->setSetSpiWord(II)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_2
    iget p1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->currentChannel:I

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/CP2130SpiDevice;->setSetSpiWord(II)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_3
    iget p1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->currentChannel:I

    .line 27
    .line 28
    const/4 v0, 0x4

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/CP2130SpiDevice;->setSetSpiWord(II)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_4
    iget p1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->currentChannel:I

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/CP2130SpiDevice;->setSetSpiWord(II)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_5
    iget p1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->currentChannel:I

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/CP2130SpiDevice;->setSetSpiWord(II)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_6
    iget p1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->currentChannel:I

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/CP2130SpiDevice;->setSetSpiWord(II)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_7
    iget p1, p0, Lcom/felhr/usbserial/CP2130SpiDevice;->currentChannel:I

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/felhr/usbserial/CP2130SpiDevice;->setSetSpiWord(II)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeMOSI([B)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    add-int/2addr v0, v1

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-byte v2, v0, v2

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    aput-byte v2, v0, v3

    .line 12
    .line 13
    const/4 v4, 0x2

    .line 14
    aput-byte v3, v0, v4

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    const/16 v4, -0x80

    .line 18
    .line 19
    aput-byte v4, v0, v3

    .line 20
    .line 21
    array-length v3, p1

    .line 22
    and-int/lit16 v3, v3, 0xff

    .line 23
    .line 24
    int-to-byte v3, v3

    .line 25
    const/4 v4, 0x4

    .line 26
    aput-byte v3, v0, v4

    .line 27
    .line 28
    array-length v3, p1

    .line 29
    shr-int/2addr v3, v1

    .line 30
    and-int/lit16 v3, v3, 0xff

    .line 31
    .line 32
    int-to-byte v3, v3

    .line 33
    const/4 v4, 0x5

    .line 34
    aput-byte v3, v0, v4

    .line 35
    .line 36
    array-length v3, p1

    .line 37
    shr-int/lit8 v3, v3, 0x10

    .line 38
    .line 39
    and-int/lit16 v3, v3, 0xff

    .line 40
    .line 41
    int-to-byte v3, v3

    .line 42
    const/4 v4, 0x6

    .line 43
    aput-byte v3, v0, v4

    .line 44
    .line 45
    array-length v3, p1

    .line 46
    shr-int/lit8 v3, v3, 0x18

    .line 47
    .line 48
    and-int/lit16 v3, v3, 0xff

    .line 49
    .line 50
    int-to-byte v3, v3

    .line 51
    const/4 v4, 0x7

    .line 52
    aput-byte v3, v0, v4

    .line 53
    .line 54
    array-length v3, p1

    .line 55
    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/felhr/usbserial/UsbSpiDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/felhr/usbserial/SerialBuffer;->putWriteBuffer([B)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public writeRead([BI)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    add-int/2addr v0, v1

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-byte v2, v0, v2

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    aput-byte v2, v0, v3

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    aput-byte v3, v0, v3

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    const/16 v4, -0x80

    .line 18
    .line 19
    aput-byte v4, v0, v3

    .line 20
    .line 21
    and-int/lit16 v3, p2, 0xff

    .line 22
    .line 23
    int-to-byte v3, v3

    .line 24
    const/4 v4, 0x4

    .line 25
    aput-byte v3, v0, v4

    .line 26
    .line 27
    shr-int/lit8 v3, p2, 0x8

    .line 28
    .line 29
    and-int/lit16 v3, v3, 0xff

    .line 30
    .line 31
    int-to-byte v3, v3

    .line 32
    const/4 v4, 0x5

    .line 33
    aput-byte v3, v0, v4

    .line 34
    .line 35
    shr-int/lit8 v3, p2, 0x10

    .line 36
    .line 37
    and-int/lit16 v3, v3, 0xff

    .line 38
    .line 39
    int-to-byte v3, v3

    .line 40
    const/4 v4, 0x6

    .line 41
    aput-byte v3, v0, v4

    .line 42
    .line 43
    shr-int/lit8 p2, p2, 0x18

    .line 44
    .line 45
    and-int/lit16 p2, p2, 0xff

    .line 46
    .line 47
    int-to-byte p2, p2

    .line 48
    const/4 v3, 0x7

    .line 49
    aput-byte p2, v0, v3

    .line 50
    .line 51
    array-length p2, p1

    .line 52
    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/felhr/usbserial/UsbSpiDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/felhr/usbserial/SerialBuffer;->putWriteBuffer([B)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
