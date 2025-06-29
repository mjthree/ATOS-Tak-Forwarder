.class public Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/FTDISerialDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FTDIUtilities"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felhr/usbserial/FTDISerialDevice;


# direct methods
.method public constructor <init>(Lcom/felhr/usbserial/FTDISerialDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public adaptArray([B)[B
    .locals 4

    .line 1
    array-length v0, p1

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
    invoke-static {p1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$000([B[B)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public checkModemStatus([B)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    aget-byte v1, p1, v0

    .line 7
    .line 8
    and-int/lit8 v2, v1, 0x10

    .line 9
    .line 10
    const/16 v3, 0x10

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    if-ne v2, v3, :cond_1

    .line 14
    .line 15
    move v2, v4

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v2, v0

    .line 18
    :goto_0
    const/16 v5, 0x20

    .line 19
    .line 20
    and-int/2addr v1, v5

    .line 21
    if-ne v1, v5, :cond_2

    .line 22
    .line 23
    move v1, v4

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move v1, v0

    .line 26
    :goto_1
    iget-object v5, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 27
    .line 28
    invoke-static {v5}, Lcom/felhr/usbserial/FTDISerialDevice;->access$100(Lcom/felhr/usbserial/FTDISerialDevice;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_5

    .line 33
    .line 34
    iget-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 35
    .line 36
    invoke-static {p1, v2}, Lcom/felhr/usbserial/FTDISerialDevice;->access$202(Lcom/felhr/usbserial/FTDISerialDevice;Z)Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 40
    .line 41
    invoke-static {p1, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->access$302(Lcom/felhr/usbserial/FTDISerialDevice;Z)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/felhr/usbserial/FTDISerialDevice;->access$400(Lcom/felhr/usbserial/FTDISerialDevice;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    iget-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/felhr/usbserial/FTDISerialDevice;->access$500(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/felhr/usbserial/FTDISerialDevice;->access$500(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/felhr/usbserial/FTDISerialDevice;->access$200(Lcom/felhr/usbserial/FTDISerialDevice;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-interface {p1, v1}, Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;->onCTSChanged(Z)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/felhr/usbserial/FTDISerialDevice;->access$600(Lcom/felhr/usbserial/FTDISerialDevice;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    iget-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/felhr/usbserial/FTDISerialDevice;->access$700(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    iget-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/felhr/usbserial/FTDISerialDevice;->access$700(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object v1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 98
    .line 99
    invoke-static {v1}, Lcom/felhr/usbserial/FTDISerialDevice;->access$300(Lcom/felhr/usbserial/FTDISerialDevice;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-interface {p1, v1}, Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;->onDSRChanged(Z)V

    .line 104
    .line 105
    .line 106
    :cond_4
    iget-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 107
    .line 108
    invoke-static {p1, v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$102(Lcom/felhr/usbserial/FTDISerialDevice;Z)Z

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$400(Lcom/felhr/usbserial/FTDISerialDevice;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$200(Lcom/felhr/usbserial/FTDISerialDevice;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eq v2, v0, :cond_6

    .line 127
    .line 128
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$500(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_6

    .line 135
    .line 136
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$200(Lcom/felhr/usbserial/FTDISerialDevice;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    xor-int/2addr v2, v4

    .line 143
    invoke-static {v0, v2}, Lcom/felhr/usbserial/FTDISerialDevice;->access$202(Lcom/felhr/usbserial/FTDISerialDevice;Z)Z

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$500(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object v2, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 153
    .line 154
    invoke-static {v2}, Lcom/felhr/usbserial/FTDISerialDevice;->access$200(Lcom/felhr/usbserial/FTDISerialDevice;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    invoke-interface {v0, v2}, Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;->onCTSChanged(Z)V

    .line 159
    .line 160
    .line 161
    :cond_6
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$600(Lcom/felhr/usbserial/FTDISerialDevice;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_7

    .line 168
    .line 169
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 170
    .line 171
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$300(Lcom/felhr/usbserial/FTDISerialDevice;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eq v1, v0, :cond_7

    .line 176
    .line 177
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 178
    .line 179
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$700(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-eqz v0, :cond_7

    .line 184
    .line 185
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 186
    .line 187
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$300(Lcom/felhr/usbserial/FTDISerialDevice;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    xor-int/2addr v1, v4

    .line 192
    invoke-static {v0, v1}, Lcom/felhr/usbserial/FTDISerialDevice;->access$302(Lcom/felhr/usbserial/FTDISerialDevice;Z)Z

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 196
    .line 197
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$700(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 202
    .line 203
    invoke-static {v1}, Lcom/felhr/usbserial/FTDISerialDevice;->access$300(Lcom/felhr/usbserial/FTDISerialDevice;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-interface {v0, v1}, Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;->onDSRChanged(Z)V

    .line 208
    .line 209
    .line 210
    :cond_7
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 211
    .line 212
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$800(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-eqz v0, :cond_8

    .line 217
    .line 218
    aget-byte v0, p1, v4

    .line 219
    .line 220
    const/4 v1, 0x4

    .line 221
    and-int/2addr v0, v1

    .line 222
    if-ne v0, v1, :cond_8

    .line 223
    .line 224
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 225
    .line 226
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$800(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-interface {v0}, Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;->onParityError()V

    .line 231
    .line 232
    .line 233
    :cond_8
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 234
    .line 235
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$900(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-eqz v0, :cond_9

    .line 240
    .line 241
    aget-byte v0, p1, v4

    .line 242
    .line 243
    const/16 v1, 0x8

    .line 244
    .line 245
    and-int/2addr v0, v1

    .line 246
    if-ne v0, v1, :cond_9

    .line 247
    .line 248
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 249
    .line 250
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$900(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-interface {v0}, Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;->onFramingError()V

    .line 255
    .line 256
    .line 257
    :cond_9
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$1000(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-eqz v0, :cond_a

    .line 264
    .line 265
    aget-byte v0, p1, v4

    .line 266
    .line 267
    const/4 v1, 0x2

    .line 268
    and-int/2addr v0, v1

    .line 269
    if-ne v0, v1, :cond_a

    .line 270
    .line 271
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 272
    .line 273
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$1000(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-interface {v0}, Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;->onOverrunError()V

    .line 278
    .line 279
    .line 280
    :cond_a
    iget-object v0, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 281
    .line 282
    invoke-static {v0}, Lcom/felhr/usbserial/FTDISerialDevice;->access$1100(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    if-eqz v0, :cond_b

    .line 287
    .line 288
    aget-byte p1, p1, v4

    .line 289
    .line 290
    and-int/2addr p1, v3

    .line 291
    if-ne p1, v3, :cond_b

    .line 292
    .line 293
    iget-object p1, p0, Lcom/felhr/usbserial/FTDISerialDevice$FTDIUtilities;->this$0:Lcom/felhr/usbserial/FTDISerialDevice;

    .line 294
    .line 295
    invoke-static {p1}, Lcom/felhr/usbserial/FTDISerialDevice;->access$1100(Lcom/felhr/usbserial/FTDISerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-interface {p1}, Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;->onBreakInterrupt()V

    .line 300
    .line 301
    .line 302
    :cond_b
    return-void
.end method
