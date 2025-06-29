.class public Lcom/felhr/usbserial/FTDISerialDevice;
.super Lcom/felhr/usbserial/UsbSerialDevice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;
    }
.end annotation


# static fields
.field private static final CLASS_ID:Ljava/lang/String; = "FTDISerialDevice"

.field private static final EMPTY_BYTE_ARRAY:[B

.field public static final FTDI_BAUDRATE_115200:I = 0x1a

.field public static final FTDI_BAUDRATE_1200:I = 0x9c4

.field public static final FTDI_BAUDRATE_19200:I = 0x809c

.field public static final FTDI_BAUDRATE_230400:I = 0xd

.field public static final FTDI_BAUDRATE_2400:I = 0x4e2

.field public static final FTDI_BAUDRATE_300:I = 0x2710

.field public static final FTDI_BAUDRATE_38400:I = 0xc04e

.field public static final FTDI_BAUDRATE_460800:I = 0x4006

.field public static final FTDI_BAUDRATE_4800:I = 0x271

.field public static final FTDI_BAUDRATE_57600:I = 0x34

.field public static final FTDI_BAUDRATE_600:I = 0x1388

.field public static final FTDI_BAUDRATE_921600:I = 0x8003

.field public static final FTDI_BAUDRATE_9600:I = 0x4138

.field private static final FTDI_REQTYPE_HOST2DEVICE:I = 0x40

.field private static final FTDI_SET_DATA_DEFAULT:I = 0x8

.field private static final FTDI_SET_FLOW_CTRL_DEFAULT:I = 0x0

.field private static final FTDI_SET_MODEM_CTRL_DEFAULT1:I = 0x101

.field private static final FTDI_SET_MODEM_CTRL_DEFAULT2:I = 0x202

.field private static final FTDI_SET_MODEM_CTRL_DEFAULT3:I = 0x100

.field private static final FTDI_SET_MODEM_CTRL_DEFAULT4:I = 0x200

.field private static final FTDI_SIO_MODEM_CTRL:I = 0x1

.field private static final FTDI_SIO_RESET:I = 0x0

.field private static final FTDI_SIO_SET_BAUD_RATE:I = 0x3

.field private static final FTDI_SIO_SET_BREAK_OFF:I = 0x0

.field private static final FTDI_SIO_SET_BREAK_ON:I = 0x4000

.field private static final FTDI_SIO_SET_DATA:I = 0x4

.field private static final FTDI_SIO_SET_DTR_HIGH:I = 0x101

.field private static final FTDI_SIO_SET_DTR_LOW:I = 0x100

.field private static final FTDI_SIO_SET_DTR_MASK:I = 0x1

.field private static final FTDI_SIO_SET_FLOW_CTRL:I = 0x2

.field private static final FTDI_SIO_SET_RTS_HIGH:I = 0x202

.field private static final FTDI_SIO_SET_RTS_LOW:I = 0x200

.field private static final FTDI_SIO_SET_RTS_MASK:I = 0x2

.field private static final skip:[B


# instance fields
.field private breakCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;

.field private ctsCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

.field private ctsState:Z

.field private currentSioSetData:I

.field private dsrCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

.field private dsrState:Z

.field private dtrDsrEnabled:Z

.field private firstTime:Z

.field private frameCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;

.field public ftdiUtilities:Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;

.field private inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private final mInterface:Landroid/hardware/usb/UsbInterface;

.field private outEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private overrunCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;

.field private parityCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;

.field private rtsCtsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, Lcom/felhr/usbserial/FTDISerialDevice;->EMPTY_BYTE_ARRAY:[B

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    sput-object v0, Lcom/felhr/usbserial/FTDISerialDevice;->skip:[B

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/felhr/usbserial/FTDISerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/UsbSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 4
    new-instance v0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;

    invoke-direct {v0, p0}, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;-><init>(Lcom/felhr/usbserial/FTDISerialDevice;)V

    iput-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->ftdiUtilities:Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;

    .line 5
    iput-boolean p2, p0, Lcom/felhr/usbserial/FTDISerialDevice;->rtsCtsEnabled:Z

    .line 6
    iput-boolean p2, p0, Lcom/felhr/usbserial/FTDISerialDevice;->dtrDsrEnabled:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->ctsState:Z

    .line 8
    iput-boolean v0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->dsrState:Z

    .line 9
    iput-boolean v0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->firstTime:Z

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    .line 10
    :goto_0
    invoke-virtual {p1, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    return-void
.end method

.method static synthetic access$000([B[B)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/felhr/usbserial/FTDISerialDevice;->copyData([B[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/felhr/usbserial/FTDISerialDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->firstTime:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1000(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->overrunCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/felhr/usbserial/FTDISerialDevice;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->firstTime:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->breakCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/felhr/usbserial/FTDISerialDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->ctsState:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/felhr/usbserial/FTDISerialDevice;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->ctsState:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/felhr/usbserial/FTDISerialDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->dsrState:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/felhr/usbserial/FTDISerialDevice;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->dsrState:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/felhr/usbserial/FTDISerialDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->rtsCtsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$500(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->ctsCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/felhr/usbserial/FTDISerialDevice;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->dtrDsrEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$700(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->dsrCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->parityCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->frameCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static adaptArray([B)[B
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/16 v2, 0x40

    .line 4
    .line 5
    if-le v0, v2, :cond_1

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    add-int/lit8 v3, v3, 0x1

    .line 11
    .line 12
    mul-int/lit8 v2, v3, 0x40

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    mul-int/2addr v3, v1

    .line 16
    sub-int/2addr v0, v3

    .line 17
    new-array v0, v0, [B

    .line 18
    .line 19
    invoke-static {p0, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->copyData([B[B)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    if-ne v0, v1, :cond_2

    .line 24
    .line 25
    sget-object p0, Lcom/felhr/usbserial/FTDISerialDevice;->EMPTY_BYTE_ARRAY:[B

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private static copyData([B[B)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    add-int/lit8 v2, v0, -0x2

    .line 4
    .line 5
    array-length v3, p0

    .line 6
    add-int/lit8 v3, v3, -0x40

    .line 7
    .line 8
    if-gt v2, v3, :cond_0

    .line 9
    .line 10
    const/16 v2, 0x3e

    .line 11
    .line 12
    invoke-static {p0, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x40

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x3e

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    array-length v2, p0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    add-int/lit8 v3, v2, 0x2

    .line 23
    .line 24
    if-lez v3, :cond_1

    .line 25
    .line 26
    invoke-static {p0, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method private encodedBaudRate(I)[S
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    const/16 v5, 0x8

    .line 7
    .line 8
    new-array v6, v5, [B

    .line 9
    .line 10
    fill-array-data v6, :array_0

    .line 11
    .line 12
    .line 13
    const/4 v7, -0x1

    .line 14
    const/16 v8, 0x10

    .line 15
    .line 16
    new-array v9, v8, [B

    .line 17
    .line 18
    fill-array-data v9, :array_1

    .line 19
    .line 20
    .line 21
    invoke-direct/range {p0 .. p0}, Lcom/felhr/usbserial/FTDISerialDevice;->getBcdDevice()S

    .line 22
    .line 23
    .line 24
    move-result v10

    .line 25
    const/4 v11, 0x0

    .line 26
    if-ne v10, v7, :cond_0

    .line 27
    .line 28
    return-object v11

    .line 29
    :cond_0
    const/16 v7, 0x200

    .line 30
    .line 31
    if-ne v10, v7, :cond_1

    .line 32
    .line 33
    invoke-direct/range {p0 .. p0}, Lcom/felhr/usbserial/FTDISerialDevice;->getISerialNumber()B

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-nez v7, :cond_1

    .line 38
    .line 39
    move v7, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v7, 0x0

    .line 42
    :goto_0
    const/16 v12, 0x500

    .line 43
    .line 44
    const/16 v13, 0x900

    .line 45
    .line 46
    const/16 v14, 0x800

    .line 47
    .line 48
    const/16 v15, 0x700

    .line 49
    .line 50
    if-eq v10, v12, :cond_3

    .line 51
    .line 52
    if-eq v10, v15, :cond_3

    .line 53
    .line 54
    if-eq v10, v14, :cond_3

    .line 55
    .line 56
    if-eq v10, v13, :cond_3

    .line 57
    .line 58
    const/16 v12, 0x1000

    .line 59
    .line 60
    if-ne v10, v12, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const/4 v12, 0x0

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    :goto_1
    move v12, v4

    .line 66
    :goto_2
    if-eq v10, v15, :cond_5

    .line 67
    .line 68
    if-eq v10, v14, :cond_5

    .line 69
    .line 70
    if-ne v10, v13, :cond_4

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    const/4 v10, 0x0

    .line 74
    goto :goto_4

    .line 75
    :cond_5
    :goto_3
    move v10, v4

    .line 76
    :goto_4
    const/16 v13, 0x4b0

    .line 77
    .line 78
    if-lt v1, v13, :cond_6

    .line 79
    .line 80
    if-eqz v10, :cond_6

    .line 81
    .line 82
    const v10, 0xb71b00

    .line 83
    .line 84
    .line 85
    const/high16 v13, 0x20000

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_6
    const v10, 0x2dc6c0

    .line 89
    .line 90
    .line 91
    const/4 v13, 0x0

    .line 92
    :goto_5
    shr-int/lit8 v14, v10, 0xe

    .line 93
    .line 94
    if-lt v1, v14, :cond_e

    .line 95
    .line 96
    if-le v1, v10, :cond_7

    .line 97
    .line 98
    goto :goto_a

    .line 99
    :cond_7
    shl-int/lit8 v14, v10, 0x4

    .line 100
    .line 101
    div-int/2addr v14, v1

    .line 102
    and-int/lit8 v15, v14, 0xf

    .line 103
    .line 104
    if-ne v15, v4, :cond_8

    .line 105
    .line 106
    and-int/lit8 v7, v14, -0x8

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_8
    if-eqz v7, :cond_9

    .line 110
    .line 111
    aget-byte v7, v9, v15

    .line 112
    .line 113
    add-int/2addr v7, v14

    .line 114
    goto :goto_6

    .line 115
    :cond_9
    add-int/lit8 v7, v14, 0x1

    .line 116
    .line 117
    :goto_6
    shr-int/lit8 v9, v7, 0x1

    .line 118
    .line 119
    shl-int/lit8 v10, v10, 0x3

    .line 120
    .line 121
    div-int/2addr v10, v9

    .line 122
    int-to-long v14, v10

    .line 123
    int-to-long v2, v1

    .line 124
    invoke-direct {v0, v14, v15, v2, v3}, Lcom/felhr/usbserial/FTDISerialDevice;->isBaudTolerated(JJ)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_a

    .line 129
    .line 130
    return-object v11

    .line 131
    :cond_a
    and-int/lit8 v1, v9, 0x7

    .line 132
    .line 133
    shr-int/lit8 v2, v7, 0x4

    .line 134
    .line 135
    if-ne v2, v4, :cond_c

    .line 136
    .line 137
    if-nez v1, :cond_b

    .line 138
    .line 139
    const/4 v2, 0x0

    .line 140
    goto :goto_7

    .line 141
    :cond_b
    const/4 v1, 0x0

    .line 142
    :cond_c
    :goto_7
    aget-byte v1, v6, v1

    .line 143
    .line 144
    shl-int/lit8 v1, v1, 0xe

    .line 145
    .line 146
    or-int/2addr v1, v13

    .line 147
    or-int/2addr v1, v2

    .line 148
    int-to-short v2, v1

    .line 149
    if-eqz v12, :cond_d

    .line 150
    .line 151
    shr-int/2addr v1, v5

    .line 152
    const v3, 0xff00

    .line 153
    .line 154
    .line 155
    and-int/2addr v1, v3

    .line 156
    iget-object v3, v0, Lcom/felhr/usbserial/FTDISerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 157
    .line 158
    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    add-int/2addr v3, v4

    .line 163
    or-int/2addr v1, v3

    .line 164
    :goto_8
    int-to-short v1, v1

    .line 165
    const/4 v3, 0x2

    .line 166
    goto :goto_9

    .line 167
    :cond_d
    shr-int/2addr v1, v8

    .line 168
    goto :goto_8

    .line 169
    :goto_9
    new-array v3, v3, [S

    .line 170
    .line 171
    const/4 v5, 0x0

    .line 172
    aput-short v2, v3, v5

    .line 173
    .line 174
    aput-short v1, v3, v4

    .line 175
    .line 176
    return-object v3

    .line 177
    :cond_e
    :goto_a
    return-object v11

    .line 178
    nop

    .line 179
    :array_0
    .array-data 1
        0x0t
        0x3t
        0x2t
        0x4t
        0x1t
        0x5t
        0x6t
        0x7t
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    :array_1
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        -0x1t
        0x2t
        0x1t
        0x0t
        -0x1t
        -0x2t
        -0x3t
        0x4t
        0x3t
        0x2t
        0x1t
    .end array-data
.end method

.method private getBcdDevice()S
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0xd

    .line 8
    .line 9
    aget-byte v1, v0, v1

    .line 10
    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 12
    .line 13
    const/16 v2, 0xc

    .line 14
    .line 15
    aget-byte v0, v0, v2

    .line 16
    .line 17
    add-int/2addr v1, v0

    .line 18
    int-to-short v0, v1

    .line 19
    return v0
.end method

.method private getISerialNumber()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x10

    .line 8
    .line 9
    aget-byte v0, v0, v1

    .line 10
    .line 11
    return v0
.end method

.method private isBaudTolerated(JJ)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x64

    .line 2
    .line 3
    mul-long/2addr p3, v0

    .line 4
    const-wide/16 v0, 0x67

    .line 5
    .line 6
    div-long v0, p3, v0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, 0x61

    .line 13
    .line 14
    div-long/2addr p3, v0

    .line 15
    cmp-long p1, p1, p3

    .line 16
    .line 17
    if-gtz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1
.end method

.method private openFTDI()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    if-eqz v0, :cond_8

    .line 12
    .line 13
    sget-object v0, Lcom/felhr/usbserial/FTDISerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "Interface successfully claimed"

    .line 16
    .line 17
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    const/4 v5, 0x2

    .line 30
    if-gt v3, v4, :cond_1

    .line 31
    .line 32
    iget-object v4, p0, Lcom/felhr/usbserial/FTDISerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-ne v6, v5, :cond_0

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
    iput-object v4, p0, Lcom/felhr/usbserial/FTDISerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    iput-object v4, p0, Lcom/felhr/usbserial/FTDISerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 56
    .line 57
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iput-boolean v2, p0, Lcom/felhr/usbserial/FTDISerialDevice;->firstTime:Z

    .line 61
    .line 62
    invoke-direct {p0, v1, v1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-gez v0, :cond_2

    .line 67
    .line 68
    return v1

    .line 69
    :cond_2
    const/4 v0, 0x4

    .line 70
    const/16 v3, 0x8

    .line 71
    .line 72
    invoke-direct {p0, v0, v3, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-gez v0, :cond_3

    .line 77
    .line 78
    return v1

    .line 79
    :cond_3
    iput v3, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 80
    .line 81
    const/16 v0, 0x101

    .line 82
    .line 83
    invoke-direct {p0, v2, v0, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-gez v0, :cond_4

    .line 88
    .line 89
    return v1

    .line 90
    :cond_4
    const/16 v0, 0x202

    .line 91
    .line 92
    invoke-direct {p0, v2, v0, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-gez v0, :cond_5

    .line 97
    .line 98
    return v1

    .line 99
    :cond_5
    invoke-direct {p0, v5, v1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-gez v0, :cond_6

    .line 104
    .line 105
    return v1

    .line 106
    :cond_6
    const/4 v0, 0x3

    .line 107
    const/16 v3, 0x4138

    .line 108
    .line 109
    invoke-direct {p0, v0, v3, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-gez v0, :cond_7

    .line 114
    .line 115
    return v1

    .line 116
    :cond_7
    iput-boolean v1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->rtsCtsEnabled:Z

    .line 117
    .line 118
    iput-boolean v1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->dtrDsrEnabled:Z

    .line 119
    .line 120
    return v2

    .line 121
    :cond_8
    sget-object v0, Lcom/felhr/usbserial/FTDISerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 122
    .line 123
    const-string v2, "Interface could not be claimed"

    .line 124
    .line 125
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    return v1
.end method

.method private readSyncJelly([BIJ)I
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v7, v0

    .line 3
    :cond_0
    if-lez p2, :cond_2

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sub-long v1, p3, v1

    .line 10
    .line 11
    long-to-int v1, v1

    .line 12
    if-gtz v1, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move v6, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_2
    move v6, v0

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/felhr/usbserial/FTDISerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 21
    .line 22
    sget-object v3, Lcom/felhr/usbserial/FTDISerialDevice;->skip:[B

    .line 23
    .line 24
    array-length v4, v3

    .line 25
    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x2

    .line 30
    if-le v1, v2, :cond_3

    .line 31
    .line 32
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/felhr/usbserial/FTDISerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 35
    .line 36
    const/16 v5, 0x3e

    .line 37
    .line 38
    move-object v3, p1

    .line 39
    move v4, v7

    .line 40
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v7, v1

    .line 45
    :cond_3
    if-lez v7, :cond_0

    .line 46
    .line 47
    :goto_1
    return v7
.end method

.method private setControlCommand(III)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, 0x1

    .line 10
    .line 11
    add-int v4, v1, p3

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/16 v1, 0x40

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    move v2, p1

    .line 19
    move v3, p2

    .line 20
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sget-object p2, Lcom/felhr/usbserial/FTDISerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 25
    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v0, "Control Transfer Response: "

    .line 32
    .line 33
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return p1
.end method

.method private setEncodedBaudRate([S)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-short v3, p1, v1

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    aget-short v4, p1, v1

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/16 v1, 0x40

    .line 12
    .line 13
    const/4 v2, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private setOldBaudRate(I)V
    .locals 4

    .line 1
    const/16 v0, 0x12c

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x2710

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    const/16 v1, 0x258

    .line 12
    .line 13
    if-le p1, v0, :cond_1

    .line 14
    .line 15
    if-gt p1, v1, :cond_1

    .line 16
    .line 17
    const/16 p1, 0x1388

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    const/16 v0, 0x4b0

    .line 22
    .line 23
    if-le p1, v1, :cond_2

    .line 24
    .line 25
    if-gt p1, v0, :cond_2

    .line 26
    .line 27
    const/16 p1, 0x9c4

    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :cond_2
    const/16 v1, 0x960

    .line 32
    .line 33
    if-le p1, v0, :cond_3

    .line 34
    .line 35
    if-gt p1, v1, :cond_3

    .line 36
    .line 37
    const/16 p1, 0x4e2

    .line 38
    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :cond_3
    const/16 v0, 0x12c0

    .line 42
    .line 43
    if-le p1, v1, :cond_4

    .line 44
    .line 45
    if-gt p1, v0, :cond_4

    .line 46
    .line 47
    const/16 p1, 0x271

    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :cond_4
    const/16 v1, 0x4138

    .line 52
    .line 53
    const/16 v2, 0x2580

    .line 54
    .line 55
    if-le p1, v0, :cond_6

    .line 56
    .line 57
    if-gt p1, v2, :cond_6

    .line 58
    .line 59
    :cond_5
    move p1, v1

    .line 60
    goto :goto_1

    .line 61
    :cond_6
    const/16 v0, 0x4b00

    .line 62
    .line 63
    if-le p1, v2, :cond_7

    .line 64
    .line 65
    if-gt p1, v0, :cond_7

    .line 66
    .line 67
    const p1, 0x809c

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_7
    if-le p1, v0, :cond_8

    .line 72
    .line 73
    const v2, 0x9600

    .line 74
    .line 75
    .line 76
    if-gt p1, v2, :cond_8

    .line 77
    .line 78
    const p1, 0xc04e

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_8
    const v2, 0xe100

    .line 83
    .line 84
    .line 85
    if-le p1, v0, :cond_9

    .line 86
    .line 87
    if-gt p1, v2, :cond_9

    .line 88
    .line 89
    const/16 p1, 0x34

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_9
    const v0, 0x1c200

    .line 93
    .line 94
    .line 95
    if-le p1, v2, :cond_a

    .line 96
    .line 97
    if-gt p1, v0, :cond_a

    .line 98
    .line 99
    const/16 p1, 0x1a

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_a
    const v2, 0x38400

    .line 103
    .line 104
    .line 105
    if-le p1, v0, :cond_b

    .line 106
    .line 107
    if-gt p1, v2, :cond_b

    .line 108
    .line 109
    const/16 p1, 0xd

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_b
    const v0, 0x70800

    .line 113
    .line 114
    .line 115
    if-le p1, v2, :cond_c

    .line 116
    .line 117
    if-gt p1, v0, :cond_c

    .line 118
    .line 119
    const/16 p1, 0x4006

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_c
    const v2, 0x8003

    .line 123
    .line 124
    .line 125
    const v3, 0xe1000

    .line 126
    .line 127
    .line 128
    if-le p1, v0, :cond_d

    .line 129
    .line 130
    if-gt p1, v3, :cond_d

    .line 131
    .line 132
    :goto_0
    move p1, v2

    .line 133
    goto :goto_1

    .line 134
    :cond_d
    if-le p1, v3, :cond_5

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :goto_1
    const/4 v0, 0x3

    .line 138
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, v0, p1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 140
    .line 141
    .line 142
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x100

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x200

    .line 9
    .line 10
    invoke-direct {p0, v0, v1, v2}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 11
    .line 12
    .line 13
    iput v2, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->killWorkingThread()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->killWriteThread()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 26
    .line 27
    .line 28
    iput-boolean v2, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 29
    .line 30
    return-void
.end method

.method public getBreak(Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->breakCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;

    .line 2
    .line 3
    return-void
.end method

.method public getCTS(Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->ctsCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 2
    .line 3
    return-void
.end method

.method public getDSR(Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->dsrCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 2
    .line 3
    return-void
.end method

.method public getFrame(Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->frameCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;

    .line 2
    .line 3
    return-void
.end method

.method public getOverrun(Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->overrunCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;

    .line 2
    .line 3
    return-void
.end method

.method public getParity(Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->parityCallback:Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;

    .line 2
    .line 3
    return-void
.end method

.method public open()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/FTDISerialDevice;->openFTDI()Z

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
    iget-object v2, p0, Lcom/felhr/usbserial/FTDISerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
    iget-object v1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/FTDISerialDevice;->encodedBaudRate(I)[S

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->setEncodedBaudRate([S)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/FTDISerialDevice;->setOldBaudRate(I)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public setBreak(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 4
    .line 5
    or-int/lit16 p1, p1, 0x4000

    .line 6
    .line 7
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 11
    .line 12
    and-int/lit16 p1, p1, -0x4001

    .line 13
    .line 14
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 15
    .line 16
    :goto_0
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x4

    .line 20
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setDTR(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x101

    .line 6
    .line 7
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x100

    .line 12
    .line 13
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public setDataBits(I)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x4

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x6

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x7

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 17
    .line 18
    and-int/lit8 p1, p1, -0x8

    .line 19
    .line 20
    or-int/2addr p1, v0

    .line 21
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 22
    .line 23
    invoke-direct {p0, v2, p1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 28
    .line 29
    and-int/lit8 p1, p1, -0x8

    .line 30
    .line 31
    or-int/2addr p1, v0

    .line 32
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 33
    .line 34
    invoke-direct {p0, v2, p1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 39
    .line 40
    or-int/2addr p1, v0

    .line 41
    and-int/lit8 p1, p1, -0x9

    .line 42
    .line 43
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 44
    .line 45
    invoke-direct {p0, v2, p1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 50
    .line 51
    and-int/lit8 p1, p1, -0x2

    .line 52
    .line 53
    or-int/2addr p1, v0

    .line 54
    and-int/lit8 p1, p1, -0x9

    .line 55
    .line 56
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 57
    .line 58
    invoke-direct {p0, v2, p1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 63
    .line 64
    or-int/lit8 p1, p1, 0x1

    .line 65
    .line 66
    and-int/lit8 p1, p1, -0x3

    .line 67
    .line 68
    or-int/2addr p1, v2

    .line 69
    and-int/lit8 p1, p1, -0x9

    .line 70
    .line 71
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 72
    .line 73
    invoke-direct {p0, v2, p1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method public setFlowControl(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p1, v2, :cond_2

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq p1, v2, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, v0, v1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x4

    .line 18
    const/16 v1, 0x1311

    .line 19
    .line 20
    invoke-direct {p0, v0, v1, p1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput-boolean v2, p0, Lcom/felhr/usbserial/FTDISerialDevice;->dtrDsrEnabled:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->rtsCtsEnabled:Z

    .line 27
    .line 28
    invoke-direct {p0, v0, v1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iput-boolean v2, p0, Lcom/felhr/usbserial/FTDISerialDevice;->rtsCtsEnabled:Z

    .line 33
    .line 34
    iput-boolean v1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->dtrDsrEnabled:Z

    .line 35
    .line 36
    invoke-direct {p0, v0, v1, v2}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-direct {p0, v0, v1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 41
    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->rtsCtsEnabled:Z

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->dtrDsrEnabled:Z

    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public setParity(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq p1, v2, :cond_3

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq p1, v2, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq p1, v2, :cond_1

    .line 13
    .line 14
    if-eq p1, v1, :cond_0

    .line 15
    .line 16
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 17
    .line 18
    and-int/lit16 p1, p1, -0x701

    .line 19
    .line 20
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 21
    .line 22
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 27
    .line 28
    and-int/lit16 p1, p1, -0x301

    .line 29
    .line 30
    or-int/lit16 p1, p1, 0x400

    .line 31
    .line 32
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 33
    .line 34
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 39
    .line 40
    or-int/lit16 p1, p1, 0x300

    .line 41
    .line 42
    and-int/lit16 p1, p1, -0x401

    .line 43
    .line 44
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 45
    .line 46
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 51
    .line 52
    and-int/lit16 p1, p1, -0x101

    .line 53
    .line 54
    or-int/lit16 p1, p1, 0x200

    .line 55
    .line 56
    and-int/lit16 p1, p1, -0x401

    .line 57
    .line 58
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 59
    .line 60
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 65
    .line 66
    or-int/lit16 p1, p1, 0x100

    .line 67
    .line 68
    and-int/lit16 p1, p1, -0x601

    .line 69
    .line 70
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 71
    .line 72
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 77
    .line 78
    and-int/lit16 p1, p1, -0x701

    .line 79
    .line 80
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 81
    .line 82
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method public setRTS(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x202

    .line 6
    .line 7
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 p1, 0x200

    .line 12
    .line 13
    invoke-direct {p0, v1, p1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public setStopBits(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x4

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 13
    .line 14
    and-int/lit16 p1, p1, -0x3801

    .line 15
    .line 16
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 17
    .line 18
    invoke-direct {p0, v2, p1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 23
    .line 24
    or-int/lit16 p1, p1, 0x800

    .line 25
    .line 26
    and-int/lit16 p1, p1, -0x3001

    .line 27
    .line 28
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 29
    .line 30
    invoke-direct {p0, v2, p1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 35
    .line 36
    and-int/lit16 p1, p1, -0x801

    .line 37
    .line 38
    or-int/lit16 p1, p1, 0x1000

    .line 39
    .line 40
    and-int/lit16 p1, p1, -0x2001

    .line 41
    .line 42
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 43
    .line 44
    invoke-direct {p0, v2, p1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 49
    .line 50
    and-int/lit16 p1, p1, -0x3801

    .line 51
    .line 52
    iput p1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 53
    .line 54
    invoke-direct {p0, v2, p1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public syncClose()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x100

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v0, v1, v2}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x200

    .line 9
    .line 10
    invoke-direct {p0, v0, v1, v2}, Lcom/felhr/usbserial/FTDISerialDevice;->setControlCommand(III)I

    .line 11
    .line 12
    .line 13
    iput v2, p0, Lcom/felhr/usbserial/FTDISerialDevice;->currentSioSetData:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/felhr/usbserial/FTDISerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 20
    .line 21
    .line 22
    iput-boolean v2, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 23
    .line 24
    return-void
.end method

.method public syncOpen()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/FTDISerialDevice;->openFTDI()Z

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
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/felhr/usbserial/FTDISerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v2}, Lcom/felhr/usbserial/UsbSerialDevice;->setSyncParams(Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    .line 13
    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    .line 16
    .line 17
    new-instance v0, Lcom/felhr/usbserial/SerialInputStream;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/felhr/usbserial/SerialInputStream;-><init>(Lcom/felhr/usbserial/UsbSerialInterface;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->inputStream:Lcom/felhr/usbserial/SerialInputStream;

    .line 23
    .line 24
    new-instance v0, Lcom/felhr/usbserial/SerialOutputStream;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/felhr/usbserial/SerialOutputStream;-><init>(Lcom/felhr/usbserial/UsbSerialInterface;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->outputStream:Lcom/felhr/usbserial/SerialOutputStream;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

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

.method public syncRead([BI)I
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 2
    iget-boolean v2, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    if-eqz v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    return v2

    .line 3
    :cond_1
    array-length v3, p1

    div-int/lit8 v3, v3, 0x3e

    .line 4
    array-length v4, p1

    rem-int/lit8 v4, v4, 0x3e

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 5
    :cond_2
    array-length v4, p1

    const/4 v5, 0x2

    mul-int/2addr v3, v5

    add-int/2addr v4, v3

    new-array v3, v4, [B

    move v6, v2

    :cond_3
    if-lez p2, :cond_4

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v0, v7

    long-to-int v7, v7

    if-gtz v7, :cond_5

    goto :goto_0

    :cond_4
    move v7, v2

    .line 7
    :cond_5
    iget-object v8, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v9, p0, Lcom/felhr/usbserial/FTDISerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v8, v9, v3, v4, v7}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v7

    if-le v7, v5, :cond_7

    .line 8
    iget-object v6, p0, Lcom/felhr/usbserial/FTDISerialDevice;->ftdiUtilities:Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;

    invoke-virtual {v6, v3}, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->adaptArray([B)[B

    move-result-object v6

    .line 9
    array-length v8, p1

    invoke-static {v6, v2, p1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    div-int/lit8 v6, v7, 0x40

    .line 11
    rem-int/lit8 v8, v7, 0x40

    if-eqz v8, :cond_6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    mul-int/2addr v6, v5

    sub-int v6, v7, v6

    :cond_7
    if-lez v6, :cond_3

    :goto_0
    return v6
.end method

.method public syncRead([BIII)I
    .locals 10

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p4

    add-long/2addr v0, v2

    .line 13
    iget-boolean v2, p0, Lcom/felhr/usbserial/UsbSerialDevice;->asyncMode:Z

    if-eqz v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    return v2

    .line 14
    :cond_1
    div-int/lit8 v3, p3, 0x3e

    .line 15
    rem-int/lit8 v4, p3, 0x3e

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    const/4 v4, 0x2

    mul-int/2addr v3, v4

    add-int/2addr v3, p3

    .line 16
    new-array v5, v3, [B

    move v6, v2

    :cond_3
    if-lez p4, :cond_4

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v0, v7

    long-to-int v7, v7

    if-gtz v7, :cond_5

    goto :goto_0

    :cond_4
    move v7, v2

    .line 18
    :cond_5
    iget-object v8, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v9, p0, Lcom/felhr/usbserial/FTDISerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v8, v9, v5, v3, v7}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v7

    if-le v7, v4, :cond_7

    .line 19
    iget-object v6, p0, Lcom/felhr/usbserial/FTDISerialDevice;->ftdiUtilities:Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;

    invoke-virtual {v6, v5}, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->adaptArray([B)[B

    move-result-object v6

    .line 20
    invoke-static {v6, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    div-int/lit8 v6, v7, 0x40

    .line 22
    rem-int/lit8 v8, v7, 0x40

    if-eqz v8, :cond_6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    mul-int/2addr v6, v4

    sub-int v6, v7, v6

    :cond_7
    if-lez v6, :cond_3

    :goto_0
    return v6
.end method
