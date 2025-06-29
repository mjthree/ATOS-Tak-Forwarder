.class public Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final COORDINATE_MOD:D = 1.0E7

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKET_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final TAG:Ljava/lang/String; = "GpsPacket"


# instance fields
.field public altitudeMslM:I

.field public batV:D

.field public climbRate:D

.field public coordinateIsFresh:Z

.field public emergency:I

.field public frequency:D

.field public latitude:D

.field public longitude:D

.field public mode:I

.field public objectStatus:I

.field public packetType:Ljava/lang/String;

.field public plBatteryPercent:I

.field public receivedTime:D

.field public rssi:J

.field public scaledPDOP:D

.field public speedMs:D

.field public tagID:I

.field public temperature:I

.field public timeStampKeyPacket:J

.field public velocityDownKMph:I

.field public velocityEastKMph:I

.field public velocityNorthKMph:I

.field public wireStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->tagID:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->packetType:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->rssi:J

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->plBatteryPercent:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->batV:D

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->speedMs:D

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->frequency:D

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->temperature:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->climbRate:D

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->timeStampKeyPacket:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->receivedTime:D

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->latitude:D

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->longitude:D

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->altitudeMslM:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->coordinateIsFresh:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->mode:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->velocityNorthKMph:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->velocityEastKMph:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->velocityDownKMph:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->emergency:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->wireStatus:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->objectStatus:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->scaledPDOP:D

    return-void
.end method

.method public constructor <init>(Lcom/marshallradio/gpstracking/DataPacketModel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/marshallradio/gpstracking/DataPacketModel;->getTagID()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->tagID:I

    .line 3
    invoke-virtual {p1}, Lcom/marshallradio/gpstracking/DataPacketModel;->getPkttype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->packetType:Ljava/lang/String;

    .line 4
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->rssi:J

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->rssi:J

    .line 5
    iget v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->plBatteryPercent:I

    .line 6
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->speedMs:D

    .line 7
    invoke-virtual {p1}, Lcom/marshallradio/gpstracking/DataPacketModel;->getAltitudeMSL()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->altitudeMslM:I

    .line 8
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->frequency:D

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->frequency:D

    .line 9
    iget v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->temperature:I

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->temperature:I

    .line 10
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->climbRate:D

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->climbRate:D

    .line 11
    invoke-virtual {p1}, Lcom/marshallradio/gpstracking/DataPacketModel;->getTagBatteryPercent()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->batV:D

    .line 12
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->timeStampKeyPacket:J

    .line 13
    iget-object v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    if-eqz v0, :cond_0

    .line 14
    iget-wide v1, v0, Lcom/marshallradio/gpstracking/Coordinate;->latitude:D

    iput-wide v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->latitude:D

    .line 15
    iget-wide v1, v0, Lcom/marshallradio/gpstracking/Coordinate;->longitude:D

    iput-wide v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->longitude:D

    .line 16
    iget-boolean v0, v0, Lcom/marshallradio/gpstracking/Coordinate;->isFresh:Z

    iput-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->coordinateIsFresh:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->coordinateIsFresh:Z

    .line 18
    :goto_0
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->receivedTime:D

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->receivedTime:D

    .line 19
    invoke-virtual {p1}, Lcom/marshallradio/gpstracking/DataPacketModel;->getMode()I

    move-result v0

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->mode:I

    .line 20
    iget v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->velEast:I

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->velocityEastKMph:I

    .line 21
    iget v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->velNorth:I

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->velocityNorthKMph:I

    .line 22
    iget v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->velDown:I

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->velocityDownKMph:I

    .line 23
    iget v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->emergency:I

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->emergency:I

    .line 24
    iget v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->wire_status:I

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->wireStatus:I

    .line 25
    iget v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->object_status:I

    iput v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->objectStatus:I

    .line 26
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->scaledPDOP:D

    iput-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->scaledPDOP:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBatteryUpdate()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->tagID:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->tagID:I

    .line 2
    .line 3
    const/16 v1, 0x3ff

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "Tag ID "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->tagID:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " out of bounds"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "GpsPacket"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    return v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->packetType:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "UNKNOWN"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    xor-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    return v0
.end method

.method public toDataPacket()Lcom/marshallradio/gpstracking/DataPacketModel;
    .locals 6

    .line 1
    new-instance v0, Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/marshallradio/gpstracking/DataPacketModel;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->tagID:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTagID(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->packetType:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPkttype(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-wide v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->rssi:J

    .line 17
    .line 18
    iput-wide v1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->rssi:J

    .line 19
    .line 20
    iget v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->plBatteryPercent:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPlBatteryPercent(I)V

    .line 23
    .line 24
    .line 25
    iget-wide v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->speedMs:D

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setSpeed(D)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->altitudeMslM:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setAltitudeMSL(I)V

    .line 33
    .line 34
    .line 35
    iget-wide v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->frequency:D

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setFrequency(D)V

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->temperature:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTemperature(I)V

    .line 43
    .line 44
    .line 45
    iget-wide v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->climbRate:D

    .line 46
    .line 47
    iput-wide v1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->climbRate:D

    .line 48
    .line 49
    iget-wide v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->batV:D

    .line 50
    .line 51
    iput-wide v1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->batV:D

    .line 52
    .line 53
    iget-wide v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->timeStampKeyPacket:J

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTimestamp(J)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/marshallradio/gpstracking/Coordinate;

    .line 59
    .line 60
    iget-wide v2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->latitude:D

    .line 61
    .line 62
    iget-wide v4, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->longitude:D

    .line 63
    .line 64
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/marshallradio/gpstracking/Coordinate;-><init>(DD)V

    .line 65
    .line 66
    .line 67
    iget-boolean v2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->coordinateIsFresh:Z

    .line 68
    .line 69
    iput-boolean v2, v1, Lcom/marshallradio/gpstracking/Coordinate;->isFresh:Z

    .line 70
    .line 71
    iput-object v1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 72
    .line 73
    iget-wide v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->receivedTime:D

    .line 74
    .line 75
    iput-wide v1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->receivedTime:D

    .line 76
    .line 77
    iget v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->mode:I

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setMode(I)V

    .line 80
    .line 81
    .line 82
    iget v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->velocityNorthKMph:I

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setVelNorth(I)V

    .line 85
    .line 86
    .line 87
    iget v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->velocityDownKMph:I

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setVelDown(I)V

    .line 90
    .line 91
    .line 92
    iget v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->velocityEastKMph:I

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setVelEast(I)V

    .line 95
    .line 96
    .line 97
    iget v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->emergency:I

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setEmergency(I)V

    .line 100
    .line 101
    .line 102
    iget v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->wireStatus:I

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setWire_status(I)V

    .line 105
    .line 106
    .line 107
    iget v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->objectStatus:I

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setObject_status(I)V

    .line 110
    .line 111
    .line 112
    iget-wide v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->scaledPDOP:D

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setScaledPDOP(D)V

    .line 115
    .line 116
    .line 117
    iget-wide v1, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->batV:D

    .line 118
    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTagBatteryPercent(D)V

    .line 120
    .line 121
    .line 122
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget p2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->tagID:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->packetType:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->rssi:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->plBatteryPercent:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->batV:D

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->speedMs:D

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 29
    .line 30
    .line 31
    iget-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->frequency:D

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->temperature:I

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->climbRate:D

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    .line 45
    .line 46
    iget-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->timeStampKeyPacket:J

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    .line 50
    .line 51
    iget-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->receivedTime:D

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 54
    .line 55
    .line 56
    iget-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->latitude:D

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 59
    .line 60
    .line 61
    iget-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->longitude:D

    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 64
    .line 65
    .line 66
    iget p2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->altitudeMslM:I

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    iget-boolean p2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->coordinateIsFresh:Z

    .line 72
    .line 73
    int-to-byte p2, p2

    .line 74
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 75
    .line 76
    .line 77
    iget p2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->mode:I

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    .line 81
    .line 82
    iget p2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->velocityNorthKMph:I

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    .line 86
    .line 87
    iget p2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->velocityEastKMph:I

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    .line 91
    .line 92
    iget p2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->velocityDownKMph:I

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    .line 96
    .line 97
    iget p2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->emergency:I

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    .line 101
    .line 102
    iget p2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->wireStatus:I

    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    .line 106
    .line 107
    iget p2, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->objectStatus:I

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    .line 111
    .line 112
    iget-wide v0, p0, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->scaledPDOP:D

    .line 113
    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
