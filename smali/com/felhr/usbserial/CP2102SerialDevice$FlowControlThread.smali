.class Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;
.super Lcom/felhr/usbserial/AbstractWorkerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/CP2102SerialDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlowControlThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

.field private final time:J


# direct methods
.method private constructor <init>(Lcom/felhr/usbserial/CP2102SerialDevice;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    invoke-direct {p0}, Lcom/felhr/usbserial/AbstractWorkerThread;-><init>()V

    const-wide/16 v0, 0x28

    .line 2
    iput-wide v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->time:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/felhr/usbserial/CP2102SerialDevice;Lcom/felhr/usbserial/CP2102SerialDevice$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;-><init>(Lcom/felhr/usbserial/CP2102SerialDevice;)V

    return-void
.end method

.method private pollLines()[B
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x28

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    goto :goto_1

    .line 10
    :catch_0
    move-exception v0

    .line 11
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$1100(Lcom/felhr/usbserial/CP2102SerialDevice;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    throw v0
.end method


# virtual methods
.method public doRun()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/AbstractWorkerThread;->firstTime:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_8

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->pollLines()[B

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v2, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$000(Lcom/felhr/usbserial/CP2102SerialDevice;)[B

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 17
    .line 18
    invoke-static {v3}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$100(Lcom/felhr/usbserial/CP2102SerialDevice;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/16 v4, 0x10

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget-object v3, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 28
    .line 29
    invoke-static {v3}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$200(Lcom/felhr/usbserial/CP2102SerialDevice;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    aget-byte v6, v0, v1

    .line 34
    .line 35
    and-int/2addr v6, v4

    .line 36
    if-ne v6, v4, :cond_0

    .line 37
    .line 38
    move v6, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v6, v1

    .line 41
    :goto_0
    if-eq v3, v6, :cond_1

    .line 42
    .line 43
    iget-object v3, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 44
    .line 45
    invoke-static {v3}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$200(Lcom/felhr/usbserial/CP2102SerialDevice;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    xor-int/2addr v6, v5

    .line 50
    invoke-static {v3, v6}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$202(Lcom/felhr/usbserial/CP2102SerialDevice;Z)Z

    .line 51
    .line 52
    .line 53
    iget-object v3, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 54
    .line 55
    invoke-static {v3}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$300(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    iget-object v3, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 62
    .line 63
    invoke-static {v3}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$300(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    iget-object v6, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 68
    .line 69
    invoke-static {v6}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$200(Lcom/felhr/usbserial/CP2102SerialDevice;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    invoke-interface {v3, v6}, Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;->onCTSChanged(Z)V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v3, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 77
    .line 78
    invoke-static {v3}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$400(Lcom/felhr/usbserial/CP2102SerialDevice;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    iget-object v3, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 85
    .line 86
    invoke-static {v3}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$500(Lcom/felhr/usbserial/CP2102SerialDevice;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    aget-byte v0, v0, v1

    .line 91
    .line 92
    const/16 v6, 0x20

    .line 93
    .line 94
    and-int/2addr v0, v6

    .line 95
    if-ne v0, v6, :cond_2

    .line 96
    .line 97
    move v0, v5

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    move v0, v1

    .line 100
    :goto_1
    if-eq v3, v0, :cond_3

    .line 101
    .line 102
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$500(Lcom/felhr/usbserial/CP2102SerialDevice;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    xor-int/2addr v3, v5

    .line 109
    invoke-static {v0, v3}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$502(Lcom/felhr/usbserial/CP2102SerialDevice;Z)Z

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$600(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$600(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget-object v3, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 127
    .line 128
    invoke-static {v3}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$500(Lcom/felhr/usbserial/CP2102SerialDevice;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    invoke-interface {v0, v3}, Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;->onDSRChanged(Z)V

    .line 133
    .line 134
    .line 135
    :cond_3
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$700(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    aget-byte v0, v2, v1

    .line 144
    .line 145
    and-int/2addr v0, v4

    .line 146
    if-ne v0, v4, :cond_4

    .line 147
    .line 148
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 149
    .line 150
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$700(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-interface {v0}, Lcom/felhr/usbserial/UsbSerialInterface$UsbParityCallback;->onParityError()V

    .line 155
    .line 156
    .line 157
    :cond_4
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$800(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_5

    .line 164
    .line 165
    aget-byte v0, v2, v1

    .line 166
    .line 167
    const/4 v3, 0x2

    .line 168
    and-int/2addr v0, v3

    .line 169
    if-ne v0, v3, :cond_5

    .line 170
    .line 171
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$800(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {v0}, Lcom/felhr/usbserial/UsbSerialInterface$UsbFrameCallback;->onFramingError()V

    .line 178
    .line 179
    .line 180
    :cond_5
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 181
    .line 182
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$900(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    if-eqz v0, :cond_6

    .line 187
    .line 188
    aget-byte v0, v2, v1

    .line 189
    .line 190
    and-int/2addr v0, v5

    .line 191
    if-ne v0, v5, :cond_6

    .line 192
    .line 193
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 194
    .line 195
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$900(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-interface {v0}, Lcom/felhr/usbserial/UsbSerialInterface$UsbBreakCallback;->onBreakInterrupt()V

    .line 200
    .line 201
    .line 202
    :cond_6
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 203
    .line 204
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$1000(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    if-eqz v0, :cond_b

    .line 209
    .line 210
    aget-byte v0, v2, v1

    .line 211
    .line 212
    and-int/lit8 v1, v0, 0x4

    .line 213
    .line 214
    const/4 v2, 0x4

    .line 215
    if-eq v1, v2, :cond_7

    .line 216
    .line 217
    const/16 v1, 0x8

    .line 218
    .line 219
    and-int/2addr v0, v1

    .line 220
    if-ne v0, v1, :cond_b

    .line 221
    .line 222
    :cond_7
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 223
    .line 224
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$1000(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-interface {v0}, Lcom/felhr/usbserial/UsbSerialInterface$UsbOverrunCallback;->onOverrunError()V

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_8
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 233
    .line 234
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$100(Lcom/felhr/usbserial/CP2102SerialDevice;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_9

    .line 239
    .line 240
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 241
    .line 242
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$300(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-eqz v0, :cond_9

    .line 247
    .line 248
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 249
    .line 250
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$300(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget-object v2, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 255
    .line 256
    invoke-static {v2}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$200(Lcom/felhr/usbserial/CP2102SerialDevice;)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    invoke-interface {v0, v2}, Lcom/felhr/usbserial/UsbSerialInterface$UsbCTSCallback;->onCTSChanged(Z)V

    .line 261
    .line 262
    .line 263
    :cond_9
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 264
    .line 265
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$400(Lcom/felhr/usbserial/CP2102SerialDevice;)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_a

    .line 270
    .line 271
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 272
    .line 273
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$600(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    if-eqz v0, :cond_a

    .line 278
    .line 279
    iget-object v0, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 280
    .line 281
    invoke-static {v0}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$600(Lcom/felhr/usbserial/CP2102SerialDevice;)Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    iget-object v2, p0, Lcom/felhr/usbserial/CP2102SerialDevice$FlowControlThread;->this$0:Lcom/felhr/usbserial/CP2102SerialDevice;

    .line 286
    .line 287
    invoke-static {v2}, Lcom/felhr/usbserial/CP2102SerialDevice;->access$500(Lcom/felhr/usbserial/CP2102SerialDevice;)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    invoke-interface {v0, v2}, Lcom/felhr/usbserial/UsbSerialInterface$UsbDSRCallback;->onDSRChanged(Z)V

    .line 292
    .line 293
    .line 294
    :cond_a
    iput-boolean v1, p0, Lcom/felhr/usbserial/AbstractWorkerThread;->firstTime:Z

    .line 295
    .line 296
    :cond_b
    :goto_2
    return-void
.end method
