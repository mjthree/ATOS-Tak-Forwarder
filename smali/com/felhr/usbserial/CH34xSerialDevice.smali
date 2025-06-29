.class public Lcom/felhr/usbserial/CH34xSerialDevice;
.super Lcom/felhr/usbserial/UsbSerialDevice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;
    }
.end annotation


# static fields
.field private static final CH341_NBREAK_BITS_REG1:I = 0x1

.field private static final CH341_NBREAK_BITS_REG2:I = 0x40

.field private static final CH341_REG_BREAK1:I = 0x5

.field private static final CH341_REG_BREAK2:I = 0x18

.field private static final CH341_REQ_READ_REG:I = 0x95

.field private static final CH341_REQ_WRITE_REG:I = 0x9a

.field private static final CH34X_115200_1312:I = 0xcc83

.field private static final CH34X_1200_0f2c:I = 0x3b

.field private static final CH34X_1200_1312:I = 0xb281

.field private static final CH34X_1228800_0f2c:I = 0x21

.field private static final CH34X_1228800_1312:I = 0xfb03

.field private static final CH34X_19200_0f2c_rest:I = 0x7

.field private static final CH34X_19200_1312:I = 0xd982

.field private static final CH34X_2000000_0f2c:I = 0x2

.field private static final CH34X_2000000_1312:I = 0xfd03

.field private static final CH34X_230400_1312:I = 0xe683

.field private static final CH34X_2400_0f2c:I = 0x1e

.field private static final CH34X_2400_1312:I = 0xd981

.field private static final CH34X_300_0f2c:I = 0xeb

.field private static final CH34X_300_1312:I = 0xd980

.field private static final CH34X_38400_1312:I = 0x6483

.field private static final CH34X_460800_1312:I = 0xf383

.field private static final CH34X_4800_0f2c:I = 0xf

.field private static final CH34X_4800_1312:I = 0x6482

.field private static final CH34X_57600_1312:I = 0x9883

.field private static final CH34X_600_0f2c:I = 0x76

.field private static final CH34X_600_1312:I = 0x6481

.field private static final CH34X_921600_1312:I = 0xf387

.field private static final CH34X_9600_0f2c:I = 0x8

.field private static final CH34X_9600_1312:I = 0xb282

.field private static final CH34X_FLOW_CONTROL_DSR_DTR:I = 0x202

.field private static final CH34X_FLOW_CONTROL_NONE:I = 0x0

.field private static final CH34X_FLOW_CONTROL_RTS_CTS:I = 0x101

.field private static final CH34X_PARITY_EVEN:I = 0xdb

.field private static final CH34X_PARITY_MARK:I = 0xeb

.field private static final CH34X_PARITY_NONE:I = 0xc3

.field private static final CH34X_PARITY_ODD:I = 0xcb

.field private static final CH34X_PARITY_SPACE:I = 0xfb

.field private static final CLASS_ID:Ljava/lang/String; = "CH34xSerialDevice"

.field private static final DEFAULT_BAUDRATE:I = 0x2580

.field private static final REQTYPE_HOST_FROM_DEVICE:I = 0xc0

.field private static final REQTYPE_HOST_TO_DEVICE:I = 0x40


# instance fields
.field private ctsCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

.field private ctsState:Z

.field private dsrCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

.field private dsrState:Z

.field private dtr:Z

.field private dtrDsrEnabled:Z

.field private flowControlThread:Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;

.field private inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mInterface:Landroid/hardware/usb/UsbInterface;

.field private outEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private rts:Z

.field private rtsCtsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/UsbSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dtr:Z

    .line 3
    iput-boolean p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->rts:Z

    .line 4
    iput-boolean p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->ctsState:Z

    .line 5
    iput-boolean p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dsrState:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/UsbSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dtr:Z

    .line 8
    iput-boolean p2, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->rts:Z

    .line 9
    iput-boolean p2, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->ctsState:Z

    .line 10
    iput-boolean p2, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dsrState:Z

    .line 11
    iput-boolean p2, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->rtsCtsEnabled:Z

    .line 12
    iput-boolean p2, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dtrDsrEnabled:Z

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    .line 13
    :goto_0
    invoke-virtual {p1, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    return-void
.end method

.method static synthetic access$100(Lcom/felhr/usbserial/CH34xSerialDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->rtsCtsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/felhr/usbserial/CH34xSerialDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->ctsState:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/felhr/usbserial/CH34xSerialDevice;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->ctsState:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/felhr/usbserial/CH34xSerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->ctsCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/felhr/usbserial/CH34xSerialDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dtrDsrEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lcom/felhr/usbserial/CH34xSerialDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dsrState:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Lcom/felhr/usbserial/CH34xSerialDevice;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dsrState:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lcom/felhr/usbserial/CH34xSerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dsrCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/felhr/usbserial/CH34xSerialDevice;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->checkCTS()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$800(Lcom/felhr/usbserial/CH34xSerialDevice;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->checkDSR()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private checkCTS()Z
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/16 v2, 0x95

    .line 5
    .line 6
    const/16 v3, 0x706

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandIn(III[B)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eq v2, v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "Expected 2 bytes, but get "

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v4

    .line 38
    :cond_0
    aget-byte v0, v1, v4

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    and-int/2addr v0, v1

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    move v4, v1

    .line 45
    :cond_1
    return v4
.end method

.method private checkDSR()Z
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/16 v2, 0x95

    .line 5
    .line 6
    const/16 v3, 0x706

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandIn(III[B)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eq v2, v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "Expected 2 bytes, but get "

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return v4

    .line 38
    :cond_0
    aget-byte v1, v1, v4

    .line 39
    .line 40
    and-int/2addr v0, v1

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    :cond_1
    return v4
.end method

.method private checkState(Ljava/lang/String;II[I)I
    .locals 2

    .line 1
    array-length v0, p4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p2, p3, v1, v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandIn(III[B)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    array-length p3, p4

    .line 10
    if-eq p2, p3, :cond_0

    .line 11
    .line 12
    sget-object p3, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "Expected "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    array-length p4, p4

    .line 25
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p4, " bytes, but get "

    .line 29
    .line 30
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p2, " ["

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "]"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 p1, -0x1

    .line 57
    return p1

    .line 58
    :cond_0
    return v1
.end method

.method private createFlowControlThread()V
    .locals 2

    .line 1
    new-instance v0, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;-><init>(Lcom/felhr/usbserial/CH34xSerialDevice;Lcom/felhr/usbserial/CH34xSerialDevice$1;)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->flowControlThread:Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;

    .line 8
    .line 9
    return-void
.end method

.method private init()I
    .locals 11

    .line 1
    const/16 v0, 0xa1

    .line 2
    .line 3
    const v1, 0xc29c

    .line 4
    .line 5
    .line 6
    const v2, 0xb2b9

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    if-gez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "init failed! #1"

    .line 20
    .line 21
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    const/16 v0, 0xdf

    .line 26
    .line 27
    const/16 v2, 0xa4

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-direct {p0, v2, v0, v4, v3}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-gez v0, :cond_1

    .line 35
    .line 36
    sget-object v0, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 37
    .line 38
    const-string v2, "init failed! #2"

    .line 39
    .line 40
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_1
    const/16 v0, 0x9f

    .line 45
    .line 46
    invoke-direct {p0, v2, v0, v4, v3}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-gez v2, :cond_2

    .line 51
    .line 52
    sget-object v0, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 53
    .line 54
    const-string v2, "init failed! #3"

    .line 55
    .line 56
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    return v1

    .line 60
    :cond_2
    const-string v2, "init #4"

    .line 61
    .line 62
    const/16 v5, 0xee

    .line 63
    .line 64
    filled-new-array {v0, v5}, [I

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const/16 v7, 0x95

    .line 69
    .line 70
    const/16 v8, 0x706

    .line 71
    .line 72
    invoke-direct {p0, v2, v7, v8, v6}, Lcom/felhr/usbserial/CH34xSerialDevice;->checkState(Ljava/lang/String;II[I)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-ne v2, v1, :cond_3

    .line 77
    .line 78
    return v1

    .line 79
    :cond_3
    const/16 v2, 0x9a

    .line 80
    .line 81
    const/16 v6, 0x2727

    .line 82
    .line 83
    invoke-direct {p0, v2, v6, v4, v3}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-gez v9, :cond_4

    .line 88
    .line 89
    sget-object v0, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 90
    .line 91
    const-string v2, "init failed! #5"

    .line 92
    .line 93
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    return v1

    .line 97
    :cond_4
    const/16 v9, 0x1312

    .line 98
    .line 99
    const v10, 0xb282

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v2, v9, v10, v3}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-gez v9, :cond_5

    .line 107
    .line 108
    sget-object v0, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 109
    .line 110
    const-string v2, "init failed! #6"

    .line 111
    .line 112
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    return v1

    .line 116
    :cond_5
    const/16 v9, 0xf2c

    .line 117
    .line 118
    const/16 v10, 0x8

    .line 119
    .line 120
    invoke-direct {p0, v2, v9, v10, v3}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-gez v9, :cond_6

    .line 125
    .line 126
    sget-object v0, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 127
    .line 128
    const-string v2, "init failed! #7"

    .line 129
    .line 130
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    return v1

    .line 134
    :cond_6
    const/16 v9, 0x2518

    .line 135
    .line 136
    const/16 v10, 0xc3

    .line 137
    .line 138
    invoke-direct {p0, v2, v9, v10, v3}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-gez v9, :cond_7

    .line 143
    .line 144
    sget-object v0, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 145
    .line 146
    const-string v2, "init failed! #8"

    .line 147
    .line 148
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    return v1

    .line 152
    :cond_7
    const-string v9, "init #9"

    .line 153
    .line 154
    filled-new-array {v0, v5}, [I

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-direct {p0, v9, v7, v8, v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->checkState(Ljava/lang/String;II[I)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-ne v0, v1, :cond_8

    .line 163
    .line 164
    return v1

    .line 165
    :cond_8
    invoke-direct {p0, v2, v6, v4, v3}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-gez v0, :cond_9

    .line 170
    .line 171
    sget-object v0, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 172
    .line 173
    const-string v2, "init failed! #10"

    .line 174
    .line 175
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    return v1

    .line 179
    :cond_9
    return v4
.end method

.method private openCH34X()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    if-eqz v0, :cond_4

    .line 12
    .line 13
    sget-object v0, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "Interface successfully claimed"

    .line 16
    .line 17
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    iget-object v4, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    iput-object v4, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
    iput-object v4, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->init()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move v2, v1

    .line 80
    :goto_2
    return v2

    .line 81
    :cond_4
    sget-object v0, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 82
    .line 83
    const-string v2, "Interface could not be claimed"

    .line 84
    .line 85
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return v1
.end method

.method private setBaudRate(II)I
    .locals 5

    const/16 v0, 0x9a

    const/16 v1, 0x1312

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    move-result p1

    const/4 v1, -0x1

    if-gez p1, :cond_0

    return v1

    :cond_0
    const/16 p1, 0xf2c

    .line 33
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    move-result p1

    if-gez p1, :cond_1

    return v1

    :cond_1
    const/16 p1, 0x9f

    const/16 p2, 0xee

    .line 34
    filled-new-array {p1, p2}, [I

    move-result-object p1

    const-string p2, "set_baud_rate"

    const/16 v3, 0x95

    const/16 v4, 0x706

    invoke-direct {p0, p2, v3, v4, p1}, Lcom/felhr/usbserial/CH34xSerialDevice;->checkState(Ljava/lang/String;II[I)I

    move-result p1

    if-ne p1, v1, :cond_2

    return v1

    :cond_2
    const/16 p1, 0x2727

    const/4 p2, 0x0

    .line 35
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    move-result p1

    if-gez p1, :cond_3

    return v1

    :cond_3
    return p2
.end method

.method private setCh340xFlow(I)I
    .locals 4

    .line 1
    const/16 v0, 0x9f

    .line 2
    .line 3
    const/16 v1, 0xee

    .line 4
    .line 5
    filled-new-array {v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "set_flow_control"

    .line 10
    .line 11
    const/16 v2, 0x95

    .line 12
    .line 13
    const/16 v3, 0x706

    .line 14
    .line 15
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->checkState(Ljava/lang/String;II[I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, -0x1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    const/16 v0, 0x2727

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/16 v3, 0x9a

    .line 27
    .line 28
    invoke-direct {p0, v3, v0, p1, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne p1, v1, :cond_1

    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method private setCh340xParity(I)I
    .locals 6

    .line 1
    const/16 v0, 0x9a

    .line 2
    .line 3
    const/16 v1, 0x2518

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v1, -0x1

    .line 11
    if-gez p1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    const/16 p1, 0x9f

    .line 15
    .line 16
    const/16 v3, 0xee

    .line 17
    .line 18
    filled-new-array {p1, v3}, [I

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v3, "set_parity"

    .line 23
    .line 24
    const/16 v4, 0x95

    .line 25
    .line 26
    const/16 v5, 0x706

    .line 27
    .line 28
    invoke-direct {p0, v3, v4, v5, p1}, Lcom/felhr/usbserial/CH34xSerialDevice;->checkState(Ljava/lang/String;II[I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ne p1, v1, :cond_1

    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    const/16 p1, 0x2727

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, v0, p1, v3, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-gez p1, :cond_2

    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    return v3
.end method

.method private setControlCommandIn(III[B)I
    .locals 9

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    array-length v0, p4

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
    const/16 v2, 0xc0

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    move v3, p1

    .line 14
    move v4, p2

    .line 15
    move v5, p3

    .line 16
    move-object v6, p4

    .line 17
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    sget-object p2, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 22
    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string p4, "Control Transfer Response: "

    .line 29
    .line 30
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method private setControlCommandOut(III[B)I
    .locals 9

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    array-length v0, p4

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
    const/16 v2, 0x40

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    move v3, p1

    .line 14
    move v4, p2

    .line 15
    move v5, p3

    .line 16
    move-object v6, p4

    .line 17
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    sget-object p2, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 22
    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string p4, "Control Transfer Response: "

    .line 29
    .line 30
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method private startFlowControlThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->flowControlThread:Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;

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
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->flowControlThread:Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;

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
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->flowControlThread:Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;

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
    iput-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->flowControlThread:Lcom/felhr/usbserial/CH34xSerialDevice$FlowControlThread;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private writeHandshakeByte()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dtr:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x20

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    iget-boolean v2, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->rts:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    const/16 v2, 0x40

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v2, v1

    .line 18
    :goto_1
    or-int/2addr v0, v2

    .line 19
    not-int v0, v0

    .line 20
    const/4 v2, 0x0

    .line 21
    const/16 v3, 0xa4

    .line 22
    .line 23
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setControlCommandOut(III[B)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-gez v0, :cond_2

    .line 28
    .line 29
    sget-object v0, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "Failed to set handshake byte"

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/4 v0, -0x1

    .line 37
    return v0

    .line 38
    :cond_2
    return v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->killWorkingThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->killWriteThread()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->stopFlowControlThread()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 19
    .line 20
    return-void
.end method

.method public getBreak(Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;)V
    .locals 0

    return-void
.end method

.method public getCTS(Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->ctsCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 2
    .line 3
    return-void
.end method

.method public getDSR(Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dsrCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 2
    .line 3
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
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->openCH34X()Z

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
    iget-object v2, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->createFlowControlThread()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
    const-string v0, "SetBaudRate failed!"

    const/4 v1, -0x1

    const/16 v2, 0x12c

    if-gt p1, v2, :cond_0

    const p1, 0xd980

    const/16 v2, 0xeb

    .line 2
    invoke-direct {p0, p1, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 3
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x258

    if-le p1, v2, :cond_1

    if-gt p1, v3, :cond_1

    const/16 p1, 0x6481

    const/16 v2, 0x76

    .line 4
    invoke-direct {p0, p1, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 5
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x4b0

    if-le p1, v3, :cond_2

    if-gt p1, v2, :cond_2

    const p1, 0xb281

    const/16 v2, 0x3b

    .line 6
    invoke-direct {p0, p1, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 7
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x960

    if-le p1, v2, :cond_3

    if-gt p1, v3, :cond_3

    const p1, 0xd981

    const/16 v2, 0x1e

    .line 8
    invoke-direct {p0, p1, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 9
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x12c0

    if-le p1, v3, :cond_4

    if-gt p1, v2, :cond_4

    const/16 p1, 0x6482

    const/16 v2, 0xf

    .line 10
    invoke-direct {p0, p1, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 11
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x2580

    if-le p1, v2, :cond_5

    if-gt p1, v3, :cond_5

    const p1, 0xb282

    const/16 v2, 0x8

    .line 12
    invoke-direct {p0, p1, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 13
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x4b00

    const/4 v4, 0x7

    if-le p1, v3, :cond_6

    if-gt p1, v2, :cond_6

    const p1, 0xd982

    .line 14
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 15
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const v3, 0x9600

    if-le p1, v2, :cond_7

    if-gt p1, v3, :cond_7

    const/16 p1, 0x6483

    .line 16
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 17
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const v2, 0xe100

    if-le p1, v3, :cond_8

    if-gt p1, v2, :cond_8

    const p1, 0x9883

    .line 18
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 19
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const v3, 0x1c200

    if-le p1, v2, :cond_9

    if-gt p1, v3, :cond_9

    const p1, 0xcc83

    .line 20
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 21
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const v2, 0x38400

    if-le p1, v3, :cond_a

    if-gt p1, v2, :cond_a

    const p1, 0xe683

    .line 22
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 23
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    const v3, 0x70800

    if-le p1, v2, :cond_b

    if-gt p1, v3, :cond_b

    const p1, 0xf383

    .line 24
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 25
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_b
    const v2, 0xe1000

    if-le p1, v3, :cond_c

    if-gt p1, v2, :cond_c

    const p1, 0xf387

    .line 26
    invoke-direct {p0, p1, v4}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 27
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_c
    const v3, 0x12c000

    if-le p1, v2, :cond_d

    if-gt p1, v3, :cond_d

    const p1, 0xfb03

    const/16 v2, 0x21

    .line 28
    invoke-direct {p0, p1, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 29
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_d
    if-le p1, v3, :cond_e

    const v2, 0x1e8480

    if-gt p1, v2, :cond_e

    const p1, 0xfd03

    const/4 v2, 0x2

    .line 30
    invoke-direct {p0, p1, v2}, Lcom/felhr/usbserial/CH34xSerialDevice;->setBaudRate(II)I

    move-result p1

    if-ne p1, v1, :cond_e

    .line 31
    sget-object p1, Lcom/felhr/usbserial/CH34xSerialDevice;->CLASS_ID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_0
    return-void
.end method

.method public setBreak(Z)V
    .locals 0

    return-void
.end method

.method public setDTR(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dtr:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->writeHandshakeByte()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDataBits(I)V
    .locals 0

    return-void
.end method

.method public setFlowControl(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_1

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq p1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput-boolean v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->rtsCtsEnabled:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dtrDsrEnabled:Z

    .line 14
    .line 15
    const/16 p1, 0x202

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/CH34xSerialDevice;->setCh340xFlow(I)I

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->checkDSR()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput-boolean p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dsrState:Z

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->startFlowControlThread()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iput-boolean v1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->rtsCtsEnabled:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dtrDsrEnabled:Z

    .line 33
    .line 34
    const/16 p1, 0x101

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/CH34xSerialDevice;->setCh340xFlow(I)I

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->checkCTS()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput-boolean p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->ctsState:Z

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->startFlowControlThread()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iput-boolean v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->rtsCtsEnabled:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->dtrDsrEnabled:Z

    .line 52
    .line 53
    invoke-direct {p0, v0}, Lcom/felhr/usbserial/CH34xSerialDevice;->setCh340xFlow(I)I

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public setParity(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 p1, 0xfb

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/CH34xSerialDevice;->setCh340xParity(I)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/16 p1, 0xeb

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/CH34xSerialDevice;->setCh340xParity(I)I

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/16 p1, 0xdb

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/CH34xSerialDevice;->setCh340xParity(I)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    const/16 p1, 0xcb

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/CH34xSerialDevice;->setCh340xParity(I)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    const/16 p1, 0xc3

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/CH34xSerialDevice;->setCh340xParity(I)I

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method public setRTS(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->rts:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->writeHandshakeByte()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStopBits(I)V
    .locals 0

    return-void
.end method

.method public syncClose()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->stopFlowControlThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 13
    .line 14
    return-void
.end method

.method public syncOpen()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->openCH34X()Z

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
    invoke-direct {p0}, Lcom/felhr/usbserial/CH34xSerialDevice;->createFlowControlThread()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/felhr/usbserial/CH34xSerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
