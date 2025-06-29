.class public Lcom/felhr/usbserial/CP2102SerialDevice;
.super Lcom/felhr/usbserial/UsbSerialDevice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;
    }
.end annotation


# static fields
.field private static final CLASS_ID:Ljava/lang/String; = "CP2102SerialDevice"

.field private static final CP210X_SET_BREAK:I = 0x5

.field private static final CP210x_BREAK_OFF:I = 0x0

.field private static final CP210x_BREAK_ON:I = 0x1

.field private static final CP210x_GET_COMM_STATUS:I = 0x10

.field private static final CP210x_GET_LINE_CTL:I = 0x4

.field private static final CP210x_GET_MDMSTS:I = 0x8

.field private static final CP210x_IFC_ENABLE:I = 0x0

.field private static final CP210x_LINE_CTL_DEFAULT:I = 0x800

.field private static final CP210x_MHS_ALL:I = 0x11

.field private static final CP210x_MHS_DEFAULT:I = 0x0

.field private static final CP210x_MHS_DTR:I = 0x1

.field private static final CP210x_MHS_DTR_OFF:I = 0x100

.field private static final CP210x_MHS_DTR_ON:I = 0x101

.field private static final CP210x_MHS_RTS:I = 0x10

.field private static final CP210x_MHS_RTS_OFF:I = 0x200

.field private static final CP210x_MHS_RTS_ON:I = 0x202

.field private static final CP210x_PURGE:I = 0x12

.field private static final CP210x_PURGE_ALL:I = 0xf

.field private static final CP210x_REQTYPE_DEVICE2HOST:I = 0xc1

.field private static final CP210x_REQTYPE_HOST2DEVICE:I = 0x41

.field private static final CP210x_SET_BAUDDIV:I = 0x1

.field private static final CP210x_SET_BAUDRATE:I = 0x1e

.field private static final CP210x_SET_CHARS:I = 0x19

.field private static final CP210x_SET_FLOW:I = 0x13

.field private static final CP210x_SET_LINE_CTL:I = 0x3

.field private static final CP210x_SET_MHS:I = 0x7

.field private static final CP210x_SET_XOFF:I = 0xa

.field private static final CP210x_SET_XON:I = 0x9

.field private static final CP210x_UART_DISABLE:I = 0x0

.field private static final CP210x_UART_ENABLE:I = 0x1

.field private static final CP210x_XOFF:I = 0x0

.field private static final CP210x_XON:I = 0x0

.field private static final DEFAULT_BAUDRATE:I = 0x2580


# instance fields
.field private breakCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;

.field private ctsCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

.field private ctsState:Z

.field private dsrCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

.field private dsrState:Z

.field private dtrDsrEnabled:Z

.field private flowControlThread:Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;

.field private frameCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;

.field private inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private final mInterface:Landroid/hardware/usb/UsbInterface;

.field private outEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private overrunCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;

.field private parityCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;

.field private rtsCtsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/felhr/usbserial/CP2102SerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/UsbSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->rtsCtsEnabled:Z

    .line 4
    iput-boolean p2, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->dtrDsrEnabled:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->ctsState:Z

    .line 6
    iput-boolean v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->dsrState:Z

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    .line 7
    :goto_0
    invoke-virtual {p1, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/felhr/usbserial/CP2102SerialDevice;)[B
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->getCommStatus()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$100(Lcom/felhr/usbserial/CP2102SerialDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->rtsCtsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1000(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->overrunCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/felhr/usbserial/CP2102SerialDevice;)[B
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->getModemState()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$200(Lcom/felhr/usbserial/CP2102SerialDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->ctsState:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/felhr/usbserial/CP2102SerialDevice;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->ctsState:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->ctsCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/felhr/usbserial/CP2102SerialDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->dtrDsrEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lcom/felhr/usbserial/CP2102SerialDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->dsrState:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Lcom/felhr/usbserial/CP2102SerialDevice;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->dsrState:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->dsrCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->parityCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->frameCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->breakCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method private createFlowControlThread()V
    .locals 2

    .line 1
    new-instance v0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;-><init>(Lcom/felhr/usbserial/CP2102SerialDevice;Lcom/felhr/usbserial/CP2102SerialDevice$1;)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->flowControlThread:Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;

    .line 8
    .line 9
    return-void
.end method

.method private getCTL()S
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
    iget-object v1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    sget-object v1, Lcom/felhr/usbserial/CP2102SerialDevice;->CLASS_ID:Ljava/lang/String;

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
    const/4 v0, 0x1

    .line 45
    aget-byte v0, v8, v0

    .line 46
    .line 47
    shl-int/lit8 v0, v0, 0x8

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    aget-byte v1, v8, v1

    .line 51
    .line 52
    and-int/lit16 v1, v1, 0xff

    .line 53
    .line 54
    or-int/2addr v0, v1

    .line 55
    int-to-short v0, v0

    .line 56
    return v0
.end method

.method private getCommStatus()[B
    .locals 9

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const/16 v7, 0x13

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    const/16 v2, 0xc1

    .line 17
    .line 18
    const/16 v3, 0x10

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    move-object v6, v0

    .line 22
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sget-object v2, Lcom/felhr/usbserial/CP2102SerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v4, "Control Transfer Response (Comm status): "

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method private getModemState()[B
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v8, 0x0

    .line 14
    const/16 v2, 0xc1

    .line 15
    .line 16
    const/16 v3, 0x8

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v6, v0

    .line 20
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method private openCP2102()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    sget-object v0, Lcom/felhr/usbserial/CP2102SerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "Interface successfully claimed"

    .line 16
    .line 17
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    if-gt v3, v4, :cond_1

    .line 30
    .line 31
    iget-object v4, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    const/16 v6, 0x80

    .line 49
    .line 50
    if-ne v5, v6, :cond_0

    .line 51
    .line 52
    iput-object v4, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    iput-object v4, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 56
    .line 57
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v1, v2, v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-gez v3, :cond_2

    .line 66
    .line 67
    return v1

    .line 68
    :cond_2
    const/16 v3, 0x2580

    .line 69
    .line 70
    invoke-virtual {p0, v3}, Lcom/felhr/usbserial/CP2102SerialDevice;->setBaudRate(I)V

    .line 71
    .line 72
    .line 73
    const/4 v3, 0x3

    .line 74
    const/16 v4, 0x800

    .line 75
    .line 76
    invoke-direct {p0, v3, v4, v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-gez v3, :cond_3

    .line 81
    .line 82
    return v1

    .line 83
    :cond_3
    invoke-virtual {p0, v1}, Lcom/felhr/usbserial/CP2102SerialDevice;->setFlowControl(I)V

    .line 84
    .line 85
    .line 86
    const/4 v3, 0x7

    .line 87
    invoke-direct {p0, v3, v1, v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-ltz v0, :cond_4

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    move v2, v1

    .line 95
    :goto_2
    return v2

    .line 96
    :cond_5
    sget-object v0, Lcom/felhr/usbserial/CP2102SerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 97
    .line 98
    const-string v2, "Interface could not be claimed"

    .line 99
    .line 100
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
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
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    sget-object p2, Lcom/felhr/usbserial/CP2102SerialDevice;->CLASS_ID:Ljava/lang/String;

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

.method private startFlowControlThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->flowControlThread:Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->flowControlThread:Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private stopFlowControlThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->flowControlThread:Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;

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
    iput-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->flowControlThread:Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;

    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, v0, v1, v2}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, v0, v2}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->killWorkingThread()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->killWriteThread()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->stopFlowControlThread()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 27
    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 30
    .line 31
    return-void
.end method

.method public getBreak(Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->breakCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;

    .line 2
    .line 3
    return-void
.end method

.method public getCTS(Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->ctsCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 2
    .line 3
    return-void
.end method

.method public getDSR(Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->dsrCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 2
    .line 3
    return-void
.end method

.method public getFrame(Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->frameCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;

    .line 2
    .line 3
    return-void
.end method

.method public getOverrun(Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->overrunCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;

    .line 2
    .line 3
    return-void
.end method

.method public getParity(Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->parityCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->startFlowControlThread()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public open()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->openCP2102()Z

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
    iget-object v2, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->createFlowControlThread()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/felhr/usbserial/UsbSerialDevice;->setThreadsParams(Landroid/hardware/usb/UsbRequest;Landroid/hardware/usb/UsbEndpoint;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 37
    .line 38
    return v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 41
    .line 42
    return v0
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
    invoke-direct {p0, p1, v4, v3}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public setBreak(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public setDTR(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x7

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x101

    .line 6
    .line 7
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x100

    .line 12
    .line 13
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public setDataBits(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->getCTL()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, -0xf01

    .line 6
    .line 7
    int-to-short v0, v0

    .line 8
    const/4 v1, 0x5

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
    const/16 v1, 0x8

    .line 18
    .line 19
    if-eq p1, v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    or-int/lit16 p1, v0, 0x800

    .line 23
    .line 24
    :goto_0
    int-to-short p1, p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    or-int/lit16 p1, v0, 0x700

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    or-int/lit16 p1, v0, 0x600

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    or-int/lit16 p1, v0, 0x500

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    const/4 v0, 0x3

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, v0, p1, v1}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setFlowControl(I)V
    .locals 8

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
    if-eqz p1, :cond_5

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x7

    .line 12
    if-eq p1, v1, :cond_3

    .line 13
    .line 14
    const/4 v7, 0x2

    .line 15
    if-eq p1, v7, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq p1, v1, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    new-array p1, v2, [B

    .line 22
    .line 23
    fill-array-data p1, :array_0

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x6

    .line 27
    new-array v1, v1, [B

    .line 28
    .line 29
    fill-array-data v1, :array_1

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x19

    .line 33
    .line 34
    invoke-direct {p0, v2, v3, v1}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0, v3, p1}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    new-array p1, v2, [B

    .line 42
    .line 43
    fill-array-data p1, :array_2

    .line 44
    .line 45
    .line 46
    iput-boolean v1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->dtrDsrEnabled:Z

    .line 47
    .line 48
    iput-boolean v3, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->rtsCtsEnabled:Z

    .line 49
    .line 50
    invoke-direct {p0, v0, v3, p1}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 51
    .line 52
    .line 53
    const/16 p1, 0x101

    .line 54
    .line 55
    invoke-direct {p0, v6, p1, v5}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->getCommStatus()[B

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    aget-byte p1, p1, v4

    .line 63
    .line 64
    and-int/2addr p1, v7

    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move v1, v3

    .line 69
    :goto_0
    iput-boolean v1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->dsrState:Z

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->startFlowControlThread()V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    new-array p1, v2, [B

    .line 76
    .line 77
    fill-array-data p1, :array_3

    .line 78
    .line 79
    .line 80
    iput-boolean v1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->rtsCtsEnabled:Z

    .line 81
    .line 82
    iput-boolean v3, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->dtrDsrEnabled:Z

    .line 83
    .line 84
    invoke-direct {p0, v0, v3, p1}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 85
    .line 86
    .line 87
    const/16 p1, 0x202

    .line 88
    .line 89
    invoke-direct {p0, v6, p1, v5}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->getCommStatus()[B

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    aget-byte p1, p1, v4

    .line 97
    .line 98
    and-int/2addr p1, v1

    .line 99
    if-nez p1, :cond_4

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    move v1, v3

    .line 103
    :goto_1
    iput-boolean v1, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->ctsState:Z

    .line 104
    .line 105
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->startFlowControlThread()V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    new-array p1, v2, [B

    .line 110
    .line 111
    fill-array-data p1, :array_4

    .line 112
    .line 113
    .line 114
    iput-boolean v3, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->rtsCtsEnabled:Z

    .line 115
    .line 116
    iput-boolean v3, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->dtrDsrEnabled:Z

    .line 117
    .line 118
    invoke-direct {p0, v0, v3, p1}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 119
    .line 120
    .line 121
    :goto_2
    return-void

    .line 122
    nop

    .line 123
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

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x11t
        0x13t
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    nop

    .line 143
    :array_2
    .array-data 1
        0x11t
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

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    :array_3
    .array-data 1
        0x9t
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

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
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
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->getCTL()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, -0xf1

    .line 6
    .line 7
    int-to-short v0, v0

    .line 8
    const/4 v1, 0x3

    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p1, v2, :cond_3

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq p1, v2, :cond_2

    .line 16
    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    if-eq p1, v2, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    or-int/lit8 p1, v0, 0x40

    .line 24
    .line 25
    :goto_0
    int-to-short p1, p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    or-int/lit8 p1, v0, 0x30

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    or-int/lit8 p1, v0, 0x20

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    or-int/lit8 p1, v0, 0x10

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    int-to-short p1, v0

    .line 37
    :goto_1
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public setRTS(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x7

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x202

    .line 6
    .line 7
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x200

    .line 12
    .line 13
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public setStopBits(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->getCTL()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v0, v0, -0x4

    .line 6
    .line 7
    int-to-short v0, v0

    .line 8
    const/4 v1, 0x3

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq p1, v2, :cond_2

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq p1, v3, :cond_1

    .line 14
    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    or-int/lit8 p1, v0, 0x1

    .line 19
    .line 20
    :goto_0
    int-to-short p1, p1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    or-int/lit8 p1, v0, 0x2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    int-to-short p1, v0

    .line 26
    :goto_1
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public syncClose()V
    .locals 3

    .line 1
    const/16 v0, 0x12

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, v0, v1, v2}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, v0, v2}, Lcom/felhr/usbserial/CP2102SerialDevice;->setControlCommand(II[B)I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->stopFlowControlThread()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 21
    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 24
    .line 25
    return-void
.end method

.method public syncOpen()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->openCP2102()Z

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
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice;->createFlowControlThread()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/felhr/usbserial/CP2102SerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v2}, Lcom/felhr/usbserial/UsbSerialDevice;->setSyncParams(Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    .line 16
    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 22
    .line 23
    new-instance v1, Lcom/felhr/usbserial/SerialInputStream;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/felhr/usbserial/SerialInputStream;-><init>(Lcom/felhr/usbserial/UsbSerialInterface;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->inputStream:Lcom/felhr/usbserial/SerialInputStream;

    .line 29
    .line 30
    new-instance v1, Lcom/felhr/usbserial/SerialOutputStream;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/felhr/usbserial/SerialOutputStream;-><init>(Lcom/felhr/usbserial/UsbSerialInterface;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->outputStream:Lcom/felhr/usbserial/SerialOutputStream;

    .line 36
    .line 37
    return v0

    .line 38
    :cond_0
    iput-boolean v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 39
    .line 40
    return v1
.end method
