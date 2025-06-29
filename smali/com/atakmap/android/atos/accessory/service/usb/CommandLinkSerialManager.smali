.class public Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;
.implements Lcom/marshallradio/gpstracking/EventCallback;


# static fields
.field private static final PREF_DEVICE_NAME:Ljava/lang/String; = "AtosDeviceName"

.field private static final TAG:Ljava/lang/String; = "CommandLinkSerial"


# instance fields
.field private final _context:Landroid/content/Context;

.field private _gpsTracker:Lcom/marshallradio/gpstracking/GpsTrackingFragment;

.field private final _parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;

.field private final _serialManager:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;

    .line 7
    .line 8
    new-instance p2, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 9
    .line 10
    invoke-direct {p2, p1, p0}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;-><init>(Landroid/content/Context;Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_serialManager:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "AtosDeviceName"

    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string v1, ""

    .line 29
    .line 30
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2, p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->attemptConnection(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private processDataPacket(Lcom/marshallradio/gpstracking/DataPacketModel;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;-><init>(Lcom/marshallradio/gpstracking/DataPacketModel;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;->onPacketArrived(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/marshallradio/gpstracking/DataPacketModel;->getTagID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "New Packet: TagId: %d"

    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "CommandLinkSerial"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/marshallradio/gpstracking/DataPacketModel;->getTagID()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "New Packet: TagId :  "

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/marshallradio/gpstracking/DataPacketModel;->getTagID()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "\n"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->processDataPacket(Lcom/marshallradio/gpstracking/DataPacketModel;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onUsbAttached(Landroid/hardware/usb/UsbDevice;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_gpsTracker:Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "about to open attached serial device: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "CommandLinkSerial"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_serialManager:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->open(Landroid/hardware/usb/UsbDevice;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;

    .line 40
    .line 41
    sget-object v1, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_CONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;->onConnectionStateChanged(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_context:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "AtosDeviceName"

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public onUsbConnectionOpened(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "opened serial device: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "CommandLinkSerial"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;

    .line 28
    .line 29
    sget-object v1, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_CONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {v0, v1, p1}, Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;->onConnectionStateChanged(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onUsbDataReceived([B)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;

    .line 5
    .line 6
    sget-object v1, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_ACTIVE:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;->onConnectionStateChanged(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_gpsTracker:Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p0}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->responseCallback([BLcom/marshallradio/gpstracking/EventCallback;)Lcom/marshallradio/gpstracking/GpsTrackingFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_gpsTracker:Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public onUsbDetached()V
    .locals 3

    .line 1
    const-string v0, "CommandLinkSerial"

    .line 2
    .line 3
    const-string v1, "SERIAL DETACHED"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;

    .line 9
    .line 10
    sget-object v1, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_DISCONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 11
    .line 12
    const-string v2, ""

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;->onConnectionStateChanged(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onUsbPermissionDenied()V
    .locals 3

    .line 1
    const-string v0, "CommandLinkSerial"

    .line 2
    .line 3
    const-string v1, "SERIAL PERMISSION DENIED"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/CommandLinkSerialManager;->_parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;

    .line 9
    .line 10
    sget-object v1, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->USB_DISCONNECTED:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 11
    .line 12
    const-string v2, "permission denied"

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;->onConnectionStateChanged(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
