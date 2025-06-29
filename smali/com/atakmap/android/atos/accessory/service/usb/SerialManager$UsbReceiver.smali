.class Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;


# direct methods
.method private constructor <init>(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;-><init>(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    const-string v2, "device"

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    sparse-switch v4, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_0
    const-string v4, "usb.USB_PERMISSION"

    .line 28
    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v3, 0x2

    .line 37
    goto :goto_0

    .line 38
    :sswitch_1
    const-string v4, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v3, p1

    .line 48
    goto :goto_0

    .line 49
    :sswitch_2
    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 50
    .line 51
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move v3, v0

    .line 59
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :pswitch_0
    const-string v1, "permission"

    .line 65
    .line 66
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Landroid/hardware/usb/UsbDevice;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-static {v1, v2}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$300(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;I)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$500(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Landroid/hardware/usb/UsbManager;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v2, p2}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-static {v1, v2}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$402(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;Landroid/hardware/usb/UsbDeviceConnection;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$400(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {p2, v2}, Lcom/felhr/usbserial/UsbSerialDevice;->createUsbSerialDevice(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;)Lcom/felhr/usbserial/UsbSerialDevice;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v1, v2}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$602(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;Lcom/felhr/usbserial/UsbSerialDevice;)Lcom/felhr/usbserial/UsbSerialDevice;

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$600(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/felhr/usbserial/UsbSerialDevice;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_4

    .line 123
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 125
    .line 126
    invoke-static {v1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$600(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/felhr/usbserial/UsbSerialDevice;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lcom/felhr/usbserial/UsbSerialDevice;->open()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 137
    .line 138
    invoke-static {v1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$600(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/felhr/usbserial/UsbSerialDevice;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 143
    .line 144
    invoke-static {v2}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$700(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-virtual {v1, v2}, Lcom/felhr/usbserial/UsbSerialDevice;->setBaudRate(I)V

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 152
    .line 153
    invoke-static {v1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$600(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/felhr/usbserial/UsbSerialDevice;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const/16 v2, 0x8

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Lcom/felhr/usbserial/UsbSerialDevice;->setDataBits(I)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 163
    .line 164
    invoke-static {v1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$600(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/felhr/usbserial/UsbSerialDevice;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1, p1}, Lcom/felhr/usbserial/UsbSerialDevice;->setStopBits(I)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 172
    .line 173
    invoke-static {v1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$600(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/felhr/usbserial/UsbSerialDevice;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1, v0}, Lcom/felhr/usbserial/UsbSerialDevice;->setParity(I)V

    .line 178
    .line 179
    .line 180
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 181
    .line 182
    invoke-static {v1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$600(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/felhr/usbserial/UsbSerialDevice;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1, v0}, Lcom/felhr/usbserial/UsbSerialDevice;->setFlowControl(I)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 190
    .line 191
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$600(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/felhr/usbserial/UsbSerialDevice;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Lcom/felhr/usbserial/UsbSerialDevice;->read(Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;)I

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 201
    .line 202
    invoke-static {v0, p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$802(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;Z)Z

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 206
    .line 207
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$200(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    if-eqz p1, :cond_4

    .line 212
    .line 213
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 214
    .line 215
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$200(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-interface {p1, p2}, Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;->onUsbConnectionOpened(Landroid/hardware/usb/UsbDevice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :catch_0
    move-exception p1

    .line 224
    const-string p2, "SerialManager"

    .line 225
    .line 226
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_3
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 235
    .line 236
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$200(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    if-eqz p1, :cond_4

    .line 241
    .line 242
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 243
    .line 244
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$200(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-interface {p1}, Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;->onUsbPermissionDenied()V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 257
    .line 258
    iget-object p2, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 259
    .line 260
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    invoke-static {p2, p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$300(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;I)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_4

    .line 269
    .line 270
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 271
    .line 272
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$200(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    if-eqz p1, :cond_4

    .line 277
    .line 278
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 279
    .line 280
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$200(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    invoke-interface {p1}, Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;->onUsbDetached()V

    .line 285
    .line 286
    .line 287
    goto :goto_1

    .line 288
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 293
    .line 294
    iget-object p2, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 295
    .line 296
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    invoke-static {p2, v0}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$300(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;I)Z

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    if-eqz p2, :cond_4

    .line 305
    .line 306
    iget-object p2, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 307
    .line 308
    invoke-static {p2, p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$102(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDevice;

    .line 309
    .line 310
    .line 311
    iget-object p2, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 312
    .line 313
    invoke-static {p2}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$200(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    if-eqz p2, :cond_4

    .line 318
    .line 319
    iget-object p2, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 320
    .line 321
    invoke-static {p2}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$200(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    invoke-interface {p2, p1}, Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;->onUsbAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 326
    .line 327
    .line 328
    :cond_4
    :goto_1
    return-void

    .line 329
    :sswitch_data_0
    .sparse-switch
        -0x7e02a835 -> :sswitch_2
        -0x5fdc9a67 -> :sswitch_1
        0x2018d134 -> :sswitch_0
    .end sparse-switch

    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
