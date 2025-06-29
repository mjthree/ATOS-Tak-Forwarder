.class public Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/felhr/usbserial/UsbSerialInterface$UsbReadCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_USB_DEVICE_PERMISSION:Ljava/lang/String; = "usb.USB_PERMISSION"

.field private static final DEFAULT_BAUD_RATE:I = 0x2580

.field private static final DEFAULT_DELIMITER:B = 0xat

.field private static final TAG:Ljava/lang/String; = "SerialManager"


# instance fields
.field private _baudRate:I

.field private _bytesReceived:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private _connection:Landroid/hardware/usb/UsbDeviceConnection;

.field private _context:Landroid/content/Context;

.field private _delimiter:B

.field private _isOpened:Z

.field private _lastArduinoAttached:Landroid/hardware/usb/UsbDevice;

.field private _listener:Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

.field private _serialPort:Lcom/felhr/usbserial/UsbSerialDevice;

.field private _usbManager:Landroid/hardware/usb/UsbManager;

.field private _usbReceiver:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;

.field private _vendorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2580

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2580

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->init(Landroid/content/Context;I)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->setArduinoListener(Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;)V

    return-void
.end method

.method static synthetic access$100(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Landroid/hardware/usb/UsbDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_lastArduinoAttached:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_lastArduinoAttached:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_listener:Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->hasId(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$400(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$402(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;Landroid/hardware/usb/UsbDeviceConnection;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$500(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Landroid/hardware/usb/UsbManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_usbManager:Landroid/hardware/usb/UsbManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/felhr/usbserial/UsbSerialDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_serialPort:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;Lcom/felhr/usbserial/UsbSerialDevice;)Lcom/felhr/usbserial/UsbSerialDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_serialPort:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$700(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_baudRate:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$802(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_isOpened:Z

    .line 2
    .line 3
    return p1
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    array-length v1, p0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-byte v3, p0, v2

    .line 14
    .line 15
    and-int/lit16 v3, v3, 0xff

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "%02x "

    .line 26
    .line 27
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private checkAllDevices()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_usbManager:Landroid/hardware/usb/UsbManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-direct {p0, v2}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->hasId(I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iput-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_lastArduinoAttached:Landroid/hardware/usb/UsbDevice;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_listener:Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-interface {v2, v1}, Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;->onUsbAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method private getAttachedArduino()Landroid/hardware/usb/UsbDevice;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_usbManager:Landroid/hardware/usb/UsbManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-direct {p0, v2}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->hasId(I)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method

.method private hasId(I)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Vendor id : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "SerialManager"

    .line 19
    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_vendorIds:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-ne v1, p1, :cond_0

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method private indexOf([BB)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BB)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    aget-byte v2, p1, v1

    .line 11
    .line 12
    if-ne v2, p2, :cond_0

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-object v0
.end method

.method private init(Landroid/content/Context;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_context:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, v1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;-><init>(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$1;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_usbReceiver:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;

    .line 10
    .line 11
    const-string v0, "usb"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_usbManager:Landroid/hardware/usb/UsbManager;

    .line 20
    .line 21
    iput p2, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_baudRate:I

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_isOpened:Z

    .line 25
    .line 26
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_vendorIds:Ljava/util/List;

    .line 32
    .line 33
    const/16 p2, 0x483

    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_vendorIds:Ljava/util/List;

    .line 43
    .line 44
    const/16 p2, 0x2341

    .line 45
    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_vendorIds:Ljava/util/List;

    .line 54
    .line 55
    const/16 p2, 0x223d

    .line 56
    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    new-instance p1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_bytesReceived:Ljava/util/List;

    .line 70
    .line 71
    const/16 p1, 0xa

    .line 72
    .line 73
    iput-byte p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_delimiter:B

    .line 74
    .line 75
    return-void
.end method

.method private toByteArray(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_0

    .line 13
    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/Byte;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    aput-byte v2, v0, v1

    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v0
.end method

.method private toByteList([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget-byte v3, p1, v2

    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addVendorId(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_vendorIds:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public attemptConnection(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_usbManager:Landroid/hardware/usb/UsbManager;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_listener:Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-interface {v2, v1}, Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;->onUsbAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    return-void

    .line 55
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->checkAllDevices()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_serialPort:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/felhr/usbserial/UsbSerialDevice;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_isOpened:Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_context:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_usbReceiver:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public isOpened()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_isOpened:Z

    .line 2
    .line 3
    return v0
.end method

.method public onReceivedData([B)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    if-eqz v0, :cond_4

    .line 3
    .line 4
    new-instance v0, Ljava/lang/String;

    .line 5
    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "received bytes in hex:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->bytesToHexString([B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "SerialManager"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_listener:Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {v0, p1}, Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;->onUsbDataReceived([B)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-byte v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_delimiter:B

    .line 45
    .line 46
    invoke-direct {p0, p1, v0}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->indexOf([BB)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_bytesReceived:Ljava/util/List;

    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->toByteList([B)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x0

    .line 71
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_3

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v3, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_bytesReceived:Ljava/util/List;

    .line 92
    .line 93
    invoke-direct {p0, v1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->toByteList([B)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_listener:Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    iget-object v3, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_bytesReceived:Ljava/util/List;

    .line 105
    .line 106
    invoke-direct {p0, v3}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->toByteArray(Ljava/util/List;)[B

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v1, v3}, Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;->onUsbDataReceived([B)V

    .line 111
    .line 112
    .line 113
    :cond_2
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_bytesReceived:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v1, v2, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_3
    array-length v0, p1

    .line 122
    if-ge v1, v0, :cond_4

    .line 123
    .line 124
    array-length v0, p1

    .line 125
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_bytesReceived:Ljava/util/List;

    .line 130
    .line 131
    invoke-direct {p0, p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->toByteList([B)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_1
    return-void
.end method

.method public open(Landroid/hardware/usb/UsbDevice;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MutableImplicitPendingIntent"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->hasId(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p1, "SerialManager"

    .line 12
    .line 13
    const-string v0, "not the vendorID we\'re looking for"

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    const-string v1, "usb.USB_PERMISSION"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v2, 0x22

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-lt v1, v2, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_context:Landroid/content/Context;

    .line 34
    .line 35
    const/high16 v2, 0x3000000

    .line 36
    .line 37
    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_context:Landroid/content/Context;

    .line 43
    .line 44
    const/high16 v2, 0x2000000

    .line 45
    .line 46
    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_usbManager:Landroid/hardware/usb/UsbManager;

    .line 51
    .line 52
    invoke-virtual {v1, p1, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public reopen()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_lastArduinoAttached:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->open(Landroid/hardware/usb/UsbDevice;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public send([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_serialPort:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/felhr/usbserial/UsbSerialDevice;->write([B)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setArduinoListener(Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnspecifiedRegisterReceiverFlag",
            "WrongConstant"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_listener:Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 2
    .line 3
    new-instance p1, Landroid/content/IntentFilter;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "usb.USB_PERMISSION"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v1, 0x1a

    .line 26
    .line 27
    if-lt v0, v1, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_context:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_usbReceiver:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-static {v0, v1, p1, v2}, Latakplugin/atos/t;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v0, "SerialManager"

    .line 39
    .line 40
    const-string v1, "Old android version, not specifying receiver exported"

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_context:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_usbReceiver:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$UsbReceiver;

    .line 48
    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->getAttachedArduino()Landroid/hardware/usb/UsbDevice;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_lastArduinoAttached:Landroid/hardware/usb/UsbDevice;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_listener:Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    new-instance p1, Landroid/os/Handler;

    .line 65
    .line 66
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$1;

    .line 70
    .line 71
    invoke-direct {v0, p0}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$1;-><init>(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v1, 0xfa

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_listener:Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 81
    .line 82
    invoke-interface {p1}, Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;->onUsbDetached()V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method public setBaudRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_baudRate:I

    .line 2
    .line 3
    return-void
.end method

.method public set_delimiter(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_delimiter:B

    .line 2
    .line 3
    return-void
.end method

.method public unsetArduinoListener()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->_listener:Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 3
    .line 4
    return-void
.end method
