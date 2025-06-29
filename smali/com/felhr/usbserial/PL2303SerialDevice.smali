.class public Lcom/felhr/usbserial/PL2303SerialDevice;
.super Lcom/felhr/usbserial/UsbSerialDevice;
.source "SourceFile"


# static fields
.field private static final CLASS_ID:Ljava/lang/String; = "PL2303SerialDevice"

.field private static final PL2303_REQTYPE_DEVICE2HOST_VENDOR:I = 0xc0

.field private static final PL2303_REQTYPE_HOST2DEVICE:I = 0x21

.field private static final PL2303_REQTYPE_HOST2DEVICE_VENDOR:I = 0x40

.field private static final PL2303_SET_CONTROL_REQUEST:I = 0x22

.field private static final PL2303_SET_LINE_CODING:I = 0x20

.field private static final PL2303_VENDOR_WRITE_REQUEST:I = 0x1


# instance fields
.field private final defaultSetLine:[B

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
    invoke-direct {p0, p1, p2, v0}, Lcom/felhr/usbserial/PL2303SerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/felhr/usbserial/UsbSerialDevice;-><init>(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)V

    const/4 p2, 0x0

    const/4 v0, 0x7

    .line 3
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    const/4 v0, 0x1

    if-gt p3, v0, :cond_1

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    .line 4
    :goto_0
    invoke-virtual {p1, p3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multi-interface PL2303 devices not supported!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 1
        -0x80t
        0x25t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
    .end array-data
.end method

.method private openPL2303()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    if-eqz v0, :cond_11

    .line 12
    .line 13
    sget-object v0, Lcom/felhr/usbserial/PL2303SerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "Interface successfully claimed"

    .line 16
    .line 17
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    iget-object v4, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

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
    iput-object v4, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
    iput-object v4, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
    new-array v0, v2, [B

    .line 73
    .line 74
    const v7, 0x8484

    .line 75
    .line 76
    .line 77
    const/4 v8, 0x0

    .line 78
    const/16 v5, 0xc0

    .line 79
    .line 80
    const/4 v6, 0x1

    .line 81
    move-object v4, p0

    .line 82
    move-object v9, v0

    .line 83
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

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
    const/4 v8, 0x0

    .line 91
    const/4 v9, 0x0

    .line 92
    const/16 v5, 0x40

    .line 93
    .line 94
    const/4 v6, 0x1

    .line 95
    const/16 v7, 0x404

    .line 96
    .line 97
    move-object v4, p0

    .line 98
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-gez v3, :cond_4

    .line 103
    .line 104
    return v1

    .line 105
    :cond_4
    const v7, 0x8484

    .line 106
    .line 107
    .line 108
    const/4 v8, 0x0

    .line 109
    const/16 v5, 0xc0

    .line 110
    .line 111
    const/4 v6, 0x1

    .line 112
    move-object v4, p0

    .line 113
    move-object v9, v0

    .line 114
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-gez v3, :cond_5

    .line 119
    .line 120
    return v1

    .line 121
    :cond_5
    const v7, 0x8383

    .line 122
    .line 123
    .line 124
    const/4 v8, 0x0

    .line 125
    const/16 v5, 0xc0

    .line 126
    .line 127
    const/4 v6, 0x1

    .line 128
    move-object v4, p0

    .line 129
    move-object v9, v0

    .line 130
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-gez v3, :cond_6

    .line 135
    .line 136
    return v1

    .line 137
    :cond_6
    const v7, 0x8484

    .line 138
    .line 139
    .line 140
    const/4 v8, 0x0

    .line 141
    const/16 v5, 0xc0

    .line 142
    .line 143
    const/4 v6, 0x1

    .line 144
    move-object v4, p0

    .line 145
    move-object v9, v0

    .line 146
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-gez v3, :cond_7

    .line 151
    .line 152
    return v1

    .line 153
    :cond_7
    const/4 v8, 0x1

    .line 154
    const/4 v9, 0x0

    .line 155
    const/16 v5, 0x40

    .line 156
    .line 157
    const/4 v6, 0x1

    .line 158
    const/16 v7, 0x404

    .line 159
    .line 160
    move-object v4, p0

    .line 161
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-gez v3, :cond_8

    .line 166
    .line 167
    return v1

    .line 168
    :cond_8
    const v7, 0x8484

    .line 169
    .line 170
    .line 171
    const/4 v8, 0x0

    .line 172
    const/16 v5, 0xc0

    .line 173
    .line 174
    const/4 v6, 0x1

    .line 175
    move-object v4, p0

    .line 176
    move-object v9, v0

    .line 177
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-gez v3, :cond_9

    .line 182
    .line 183
    return v1

    .line 184
    :cond_9
    const v7, 0x8383

    .line 185
    .line 186
    .line 187
    const/4 v8, 0x0

    .line 188
    const/16 v5, 0xc0

    .line 189
    .line 190
    const/4 v6, 0x1

    .line 191
    move-object v4, p0

    .line 192
    move-object v9, v0

    .line 193
    invoke-direct/range {v4 .. v9}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-gez v0, :cond_a

    .line 198
    .line 199
    return v1

    .line 200
    :cond_a
    const/4 v7, 0x1

    .line 201
    const/4 v8, 0x0

    .line 202
    const/16 v4, 0x40

    .line 203
    .line 204
    const/4 v5, 0x1

    .line 205
    const/4 v6, 0x0

    .line 206
    move-object v3, p0

    .line 207
    invoke-direct/range {v3 .. v8}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-gez v0, :cond_b

    .line 212
    .line 213
    return v1

    .line 214
    :cond_b
    const/4 v7, 0x0

    .line 215
    const/4 v8, 0x0

    .line 216
    const/16 v4, 0x40

    .line 217
    .line 218
    const/4 v5, 0x1

    .line 219
    const/4 v6, 0x1

    .line 220
    move-object v3, p0

    .line 221
    invoke-direct/range {v3 .. v8}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-gez v0, :cond_c

    .line 226
    .line 227
    return v1

    .line 228
    :cond_c
    const/16 v7, 0x44

    .line 229
    .line 230
    const/4 v8, 0x0

    .line 231
    const/16 v4, 0x40

    .line 232
    .line 233
    const/4 v5, 0x1

    .line 234
    const/4 v6, 0x2

    .line 235
    move-object v3, p0

    .line 236
    invoke-direct/range {v3 .. v8}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    if-gez v0, :cond_d

    .line 241
    .line 242
    return v1

    .line 243
    :cond_d
    const/4 v7, 0x0

    .line 244
    const/4 v8, 0x0

    .line 245
    const/16 v4, 0x21

    .line 246
    .line 247
    const/16 v5, 0x22

    .line 248
    .line 249
    const/4 v6, 0x3

    .line 250
    move-object v3, p0

    .line 251
    invoke-direct/range {v3 .. v8}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-gez v0, :cond_e

    .line 256
    .line 257
    return v1

    .line 258
    :cond_e
    const/4 v7, 0x0

    .line 259
    iget-object v8, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 260
    .line 261
    const/16 v4, 0x21

    .line 262
    .line 263
    const/16 v5, 0x20

    .line 264
    .line 265
    const/4 v6, 0x0

    .line 266
    move-object v3, p0

    .line 267
    invoke-direct/range {v3 .. v8}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-gez v0, :cond_f

    .line 272
    .line 273
    return v1

    .line 274
    :cond_f
    const/16 v7, 0x1311

    .line 275
    .line 276
    const/4 v8, 0x0

    .line 277
    const/16 v4, 0x40

    .line 278
    .line 279
    const/4 v5, 0x1

    .line 280
    const/16 v6, 0x505

    .line 281
    .line 282
    move-object v3, p0

    .line 283
    invoke-direct/range {v3 .. v8}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-ltz v0, :cond_10

    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_10
    move v2, v1

    .line 291
    :goto_2
    return v2

    .line 292
    :cond_11
    sget-object v0, Lcom/felhr/usbserial/PL2303SerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 293
    .line 294
    const-string v2, "Interface could not be claimed"

    .line 295
    .line 296
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    return v1
.end method

.method private setControlCommand(IIII[B)I
    .locals 9

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    array-length v0, p5

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
    const/4 v8, 0x0

    .line 11
    move v2, p1

    .line 12
    move v3, p2

    .line 13
    move v4, p3

    .line 14
    move v5, p4

    .line 15
    move-object v6, p5

    .line 16
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    sget-object p2, Lcom/felhr/usbserial/PL2303SerialDevice;->CLASS_ID:Ljava/lang/String;

    .line 21
    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p4, "Control Transfer Response: "

    .line 28
    .line 29
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return p1
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
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 16
    .line 17
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
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/PL2303SerialDevice;->openPL2303()Z

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
    iget-object v2, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
    iget-object v1, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
    .locals 11

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
    const/4 v1, 0x2

    .line 29
    aput-byte v2, v3, v1

    .line 30
    .line 31
    const/4 v2, 0x3

    .line 32
    aput-byte p1, v3, v2

    .line 33
    .line 34
    aget-byte p1, v3, v4

    .line 35
    .line 36
    iget-object v10, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 37
    .line 38
    aget-byte v5, v10, v4

    .line 39
    .line 40
    if-ne p1, v5, :cond_0

    .line 41
    .line 42
    aget-byte v5, v3, v0

    .line 43
    .line 44
    aget-byte v6, v10, v0

    .line 45
    .line 46
    if-ne v5, v6, :cond_0

    .line 47
    .line 48
    aget-byte v5, v3, v1

    .line 49
    .line 50
    aget-byte v6, v10, v1

    .line 51
    .line 52
    if-ne v5, v6, :cond_0

    .line 53
    .line 54
    aget-byte v5, v3, v2

    .line 55
    .line 56
    aget-byte v6, v10, v2

    .line 57
    .line 58
    if-eq v5, v6, :cond_1

    .line 59
    .line 60
    :cond_0
    aput-byte p1, v10, v4

    .line 61
    .line 62
    aget-byte p1, v3, v0

    .line 63
    .line 64
    aput-byte p1, v10, v0

    .line 65
    .line 66
    aget-byte p1, v3, v1

    .line 67
    .line 68
    aput-byte p1, v10, v1

    .line 69
    .line 70
    aget-byte p1, v3, v2

    .line 71
    .line 72
    aput-byte p1, v10, v2

    .line 73
    .line 74
    const/4 v8, 0x0

    .line 75
    const/4 v9, 0x0

    .line 76
    const/16 v6, 0x21

    .line 77
    .line 78
    const/16 v7, 0x20

    .line 79
    .line 80
    move-object v5, p0

    .line 81
    invoke-direct/range {v5 .. v10}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 82
    .line 83
    .line 84
    :cond_1
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
    .locals 14

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x6

    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    if-eq p1, v1, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x7

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x8

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v7, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 16
    .line 17
    aget-byte p1, v7, v1

    .line 18
    .line 19
    if-eq p1, v0, :cond_4

    .line 20
    .line 21
    aput-byte v0, v7, v1

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/16 v3, 0x21

    .line 26
    .line 27
    const/16 v4, 0x20

    .line 28
    .line 29
    move-object v2, p0

    .line 30
    invoke-direct/range {v2 .. v7}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v13, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 35
    .line 36
    aget-byte p1, v13, v1

    .line 37
    .line 38
    if-eq p1, v0, :cond_4

    .line 39
    .line 40
    aput-byte v0, v13, v1

    .line 41
    .line 42
    const/4 v11, 0x0

    .line 43
    const/4 v12, 0x0

    .line 44
    const/16 v9, 0x21

    .line 45
    .line 46
    const/16 v10, 0x20

    .line 47
    .line 48
    move-object v8, p0

    .line 49
    invoke-direct/range {v8 .. v13}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v5, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 54
    .line 55
    aget-byte p1, v5, v1

    .line 56
    .line 57
    if-eq p1, v1, :cond_4

    .line 58
    .line 59
    aput-byte v1, v5, v1

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    const/16 v1, 0x21

    .line 64
    .line 65
    const/16 v2, 0x20

    .line 66
    .line 67
    move-object v0, p0

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object v11, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 73
    .line 74
    aget-byte p1, v11, v1

    .line 75
    .line 76
    if-eq p1, v0, :cond_4

    .line 77
    .line 78
    aput-byte v0, v11, v1

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    const/4 v10, 0x0

    .line 82
    const/16 v7, 0x21

    .line 83
    .line 84
    const/16 v8, 0x20

    .line 85
    .line 86
    move-object v6, p0

    .line 87
    invoke-direct/range {v6 .. v11}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_0
    return-void
.end method

.method public setFlowControl(I)V
    .locals 0

    return-void
.end method

.method public setParity(I)V
    .locals 14

    .line 1
    const/4 v0, 0x5

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p1, v1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    if-eq p1, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v7, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 18
    .line 19
    aget-byte p1, v7, v0

    .line 20
    .line 21
    if-eq p1, v1, :cond_5

    .line 22
    .line 23
    aput-byte v1, v7, v0

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    const/16 v3, 0x21

    .line 28
    .line 29
    const/16 v4, 0x20

    .line 30
    .line 31
    move-object v2, p0

    .line 32
    invoke-direct/range {v2 .. v7}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v13, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 37
    .line 38
    aget-byte p1, v13, v0

    .line 39
    .line 40
    if-eq p1, v1, :cond_5

    .line 41
    .line 42
    aput-byte v1, v13, v0

    .line 43
    .line 44
    const/4 v11, 0x0

    .line 45
    const/4 v12, 0x0

    .line 46
    const/16 v9, 0x21

    .line 47
    .line 48
    const/16 v10, 0x20

    .line 49
    .line 50
    move-object v8, p0

    .line 51
    invoke-direct/range {v8 .. v13}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v5, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 56
    .line 57
    aget-byte p1, v5, v0

    .line 58
    .line 59
    if-eq p1, v1, :cond_5

    .line 60
    .line 61
    aput-byte v1, v5, v0

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x0

    .line 65
    const/16 v1, 0x21

    .line 66
    .line 67
    const/16 v2, 0x20

    .line 68
    .line 69
    move-object v0, p0

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v11, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 75
    .line 76
    aget-byte p1, v11, v0

    .line 77
    .line 78
    if-eq p1, v1, :cond_5

    .line 79
    .line 80
    aput-byte v1, v11, v0

    .line 81
    .line 82
    const/4 v9, 0x0

    .line 83
    const/4 v10, 0x0

    .line 84
    const/16 v7, 0x21

    .line 85
    .line 86
    const/16 v8, 0x20

    .line 87
    .line 88
    move-object v6, p0

    .line 89
    invoke-direct/range {v6 .. v11}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    iget-object v5, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 94
    .line 95
    aget-byte p1, v5, v0

    .line 96
    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    const/4 p1, 0x0

    .line 100
    aput-byte p1, v5, v0

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    const/4 v4, 0x0

    .line 104
    const/16 v1, 0x21

    .line 105
    .line 106
    const/16 v2, 0x20

    .line 107
    .line 108
    move-object v0, p0

    .line 109
    invoke-direct/range {v0 .. v5}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_0
    return-void
.end method

.method public setRTS(Z)V
    .locals 0

    return-void
.end method

.method public setStopBits(I)V
    .locals 6

    .line 1
    const/4 v1, 0x1

    .line 2
    const/4 v2, 0x4

    .line 3
    if-eq p1, v1, :cond_2

    .line 4
    .line 5
    const/4 v3, 0x2

    .line 6
    if-eq p1, v3, :cond_1

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    if-eq p1, v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v5, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 13
    .line 14
    aget-byte v0, v5, v2

    .line 15
    .line 16
    if-eq v0, v1, :cond_3

    .line 17
    .line 18
    aput-byte v1, v5, v2

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/16 v1, 0x21

    .line 23
    .line 24
    const/16 v2, 0x20

    .line 25
    .line 26
    move-object v0, p0

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v5, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 32
    .line 33
    aget-byte v0, v5, v2

    .line 34
    .line 35
    if-eq v0, v3, :cond_3

    .line 36
    .line 37
    aput-byte v3, v5, v2

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    const/4 v4, 0x0

    .line 41
    const/16 v1, 0x21

    .line 42
    .line 43
    const/16 v2, 0x20

    .line 44
    .line 45
    move-object v0, p0

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v5, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->defaultSetLine:[B

    .line 51
    .line 52
    aget-byte v0, v5, v2

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    aput-byte v0, v5, v2

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    const/16 v1, 0x21

    .line 62
    .line 63
    const/16 v2, 0x20

    .line 64
    .line 65
    move-object v0, p0

    .line 66
    invoke-direct/range {v0 .. v5}, Lcom/felhr/usbserial/PL2303SerialDevice;->setControlCommand(IIII[B)I

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_0
    return-void
.end method

.method public syncClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->mInterface:Landroid/hardware/usb/UsbInterface;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/felhr/usbserial/UsbSerialDevice;->isOpen:Z

    .line 10
    .line 11
    return-void
.end method

.method public syncOpen()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/PL2303SerialDevice;->openPL2303()Z

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
    iget-object v0, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/felhr/usbserial/PL2303SerialDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

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
