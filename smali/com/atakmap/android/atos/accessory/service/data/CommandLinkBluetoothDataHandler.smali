.class public Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/marshallradio/gpstracking/EventCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "CLServiceMessageHandler"


# instance fields
.field private final _context:Landroid/content/Context;

.field private _gpsTracker:Lcom/marshallradio/gpstracking/GpsTrackingFragment;

.field private final _parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;->_parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;->_context:Landroid/content/Context;

    .line 7
    .line 8
    new-instance p1, Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;->_gpsTracker:Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 14
    .line 15
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
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;->_parent:Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lcom/atakmap/android/atos/accessory/service/CommandLinkProviderInterface;->onPacketArrived(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onDataReceived(Landroid/bluetooth/BluetoothGatt;[B)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;->_gpsTracker:Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    new-instance p1, Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;->_gpsTracker:Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 14
    .line 15
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;->_gpsTracker:Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 16
    .line 17
    invoke-virtual {p1, p2, p0}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->responseCallback([BLcom/marshallradio/gpstracking/EventCallback;)Lcom/marshallradio/gpstracking/GpsTrackingFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;->_gpsTracker:Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 27
    .line 28
    :goto_0
    return-void
.end method

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
    const-string v1, "CLServiceMessageHandler"

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
    invoke-direct {p0, p1}, Lcom/atakmap/android/atos/accessory/service/data/CommandLinkBluetoothDataHandler;->processDataPacket(Lcom/marshallradio/gpstracking/DataPacketModel;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
