.class public Lcom/marshallradio/gpstracking/DataPacketModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public TagBatteryPercent:D

.field public altitude:I

.field public batV:D

.field public climbRate:D

.field private cno:D

.field public coordinate:Lcom/marshallradio/gpstracking/Coordinate;

.field public emergency:I

.field private fix2D3D:D

.field public frequency:D

.field public freshflag:J

.field private hAcc:D

.field private keypacket:Z

.field private mode:I

.field public object_status:I

.field pkttype:Ljava/lang/String;

.field public plBatteryPercent:I

.field public receivedTime:D

.field public rssi:J

.field public scaledPDOP:D

.field public speed:D

.field private svs:D

.field public temperature:I

.field public timestamp_keypacket:J

.field public transmitterID:I

.field public unused:I

.field private vAcc:D

.field public velDown:I

.field public velEast:I

.field public velNorth:I

.field public wire_status:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->pkttype:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    const-wide/16 v1, 0x0

    .line 41
    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->TagBatteryPercent:D

    .line 42
    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 43
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 44
    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->frequency:D

    const-wide/16 v3, 0x0

    .line 45
    iput-wide v3, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->freshflag:J

    .line 46
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->temperature:I

    .line 47
    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->climbRate:D

    .line 48
    iput-boolean v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->keypacket:Z

    .line 49
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->mode:I

    .line 50
    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->hAcc:D

    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->vAcc:D

    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->svs:D

    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->cno:D

    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->fix2D3D:D

    .line 51
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->velNorth:I

    .line 52
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->velEast:I

    .line 53
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->velDown:I

    .line 54
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->wire_status:I

    .line 55
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->object_status:I

    .line 56
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->emergency:I

    .line 57
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->unused:I

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->receivedTime:D

    return-void
.end method

.method public constructor <init>(Lcom/marshallradio/gpstracking/DataPacketModel;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->pkttype:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->TagBatteryPercent:D

    .line 6
    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 7
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 8
    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->frequency:D

    const-wide/16 v3, 0x0

    .line 9
    iput-wide v3, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->freshflag:J

    .line 10
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->temperature:I

    .line 11
    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->climbRate:D

    .line 12
    iput-boolean v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->keypacket:Z

    .line 13
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->mode:I

    .line 14
    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->hAcc:D

    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->vAcc:D

    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->svs:D

    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->cno:D

    iput-wide v1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->fix2D3D:D

    .line 15
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->velNorth:I

    .line 16
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->velEast:I

    .line 17
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->velDown:I

    .line 18
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->wire_status:I

    .line 19
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->object_status:I

    .line 20
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->emergency:I

    .line 21
    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->unused:I

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->receivedTime:D

    .line 23
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->rssi:J

    iput-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->rssi:J

    .line 24
    iget v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 25
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    iput-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    .line 26
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    iput-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 27
    iget v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 28
    iget v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->temperature:I

    iput v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->temperature:I

    .line 29
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->climbRate:D

    iput-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->climbRate:D

    .line 30
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->batV:D

    iput-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->batV:D

    .line 31
    iget-object v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    iput-object v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 32
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->hAcc:D

    iput-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->hAcc:D

    .line 33
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->vAcc:D

    iput-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->vAcc:D

    .line 34
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->svs:D

    iput-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->svs:D

    .line 35
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->cno:D

    iput-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->cno:D

    .line 36
    iget-wide v0, p1, Lcom/marshallradio/gpstracking/DataPacketModel;->fix2D3D:D

    iput-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->fix2D3D:D

    return-void
.end method


# virtual methods
.method public getAltitudeMSL()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 2
    .line 3
    return v0
.end method

.method public getEmergency()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->emergency:I

    .line 2
    .line 3
    return v0
.end method

.method public getFrequency()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->frequency:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFreshflag()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->freshflag:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->mode:I

    .line 2
    .line 3
    return v0
.end method

.method public getObject_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->object_status:I

    .line 2
    .line 3
    return v0
.end method

.method public getPkttype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->pkttype:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlBatteryPercent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 2
    .line 3
    return v0
.end method

.method public getScaledPDOP()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->scaledPDOP:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTagBatteryPercent()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->TagBatteryPercent:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTagID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 2
    .line 3
    return v0
.end method

.method public getTemperature()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->temperature:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUnused()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->unused:I

    .line 2
    .line 3
    return v0
.end method

.method public getVelDown()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->velDown:I

    .line 2
    .line 3
    return v0
.end method

.method public getVelEast()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->velEast:I

    .line 2
    .line 3
    return v0
.end method

.method public getVelNorth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->velNorth:I

    .line 2
    .line 3
    return v0
.end method

.method public getWire_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->wire_status:I

    .line 2
    .line 3
    return v0
.end method

.method public setAltitude(BBB)V
    .locals 0

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x18

    .line 4
    .line 5
    and-int/lit16 p2, p2, 0xff

    .line 6
    .line 7
    shl-int/lit8 p2, p2, 0x10

    .line 8
    .line 9
    or-int/2addr p1, p2

    .line 10
    and-int/lit16 p2, p3, 0xff

    .line 11
    .line 12
    shl-int/lit8 p2, p2, 0x8

    .line 13
    .line 14
    or-int/2addr p1, p2

    .line 15
    div-int/lit16 p1, p1, 0x3e8

    .line 16
    .line 17
    iput p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 18
    .line 19
    return-void
.end method

.method public setAltitudeMSL(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 2
    .line 3
    return-void
.end method

.method public setEmergency(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->emergency:I

    .line 2
    .line 3
    return-void
.end method

.method public setFrequency(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->frequency:D

    .line 2
    .line 3
    return-void
.end method

.method public setFreshflag(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->freshflag:J

    .line 2
    .line 3
    return-void
.end method

.method public setKeypacket(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->keypacket:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->mode:I

    .line 2
    .line 3
    return-void
.end method

.method public setObject_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->object_status:I

    .line 2
    .line 3
    return-void
.end method

.method public setPkttype(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->pkttype:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlBatteryPercent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 2
    .line 3
    return-void
.end method

.method public setScaledPDOP(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->scaledPDOP:D

    .line 2
    .line 3
    return-void
.end method

.method public setSpeed(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 2
    .line 3
    return-void
.end method

.method public setTagBatteryPercent(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->TagBatteryPercent:D

    .line 2
    .line 3
    return-void
.end method

.method public setTagID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 2
    .line 3
    return-void
.end method

.method public setTemperature(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->temperature:I

    .line 2
    .line 3
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    .line 2
    .line 3
    return-void
.end method

.method public setUnused(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->unused:I

    .line 2
    .line 3
    return-void
.end method

.method public setVelDown(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->velDown:I

    .line 2
    .line 3
    return-void
.end method

.method public setVelEast(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->velEast:I

    .line 2
    .line 3
    return-void
.end method

.method public setVelNorth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->velNorth:I

    .line 2
    .line 3
    return-void
.end method

.method public setWire_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/marshallradio/gpstracking/DataPacketModel;->wire_status:I

    .line 2
    .line 3
    return-void
.end method
