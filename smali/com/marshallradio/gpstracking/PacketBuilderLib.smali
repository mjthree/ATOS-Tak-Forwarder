.class public Lcom/marshallradio/gpstracking/PacketBuilderLib;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GPS_SYS_PKT_NEW_GPS_DATA_BIT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "PacketBuilderLib"

.field public static batteryvalue:I = 0x0

.field public static keepalive_pktCoutn:I = 0x0

.field static matrics:Lcom/marshallradio/gpstracking/PacketMetrics; = null

.field public static pkttype:Ljava/lang/String; = ""

.field public static taglist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/marshallradio/gpstracking/TagInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bufferedDataPacket:Lcom/marshallradio/gpstracking/DataPacketModel;

.field private final dataPacketReceiver:Lcom/marshallradio/gpstracking/DataPacketReceiver;

.field validatesettings:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->taglist:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Lcom/marshallradio/gpstracking/PacketMetrics;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/marshallradio/gpstracking/PacketMetrics;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->matrics:Lcom/marshallradio/gpstracking/PacketMetrics;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/marshallradio/gpstracking/DataPacketReceiver;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->validatesettings:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->dataPacketReceiver:Lcom/marshallradio/gpstracking/DataPacketReceiver;

    .line 8
    .line 9
    return-void
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

.method private getBufferedDataPacket()Lcom/marshallradio/gpstracking/DataPacketModel;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->bufferedDataPacket:Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lcom/marshallradio/gpstracking/DataPacketModel;-><init>(Lcom/marshallradio/gpstracking/DataPacketModel;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v1, Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/marshallradio/gpstracking/DataPacketModel;-><init>()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-object v1
.end method

.method public static getTagInformation(I)Lcom/marshallradio/gpstracking/TagInfo;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-lt p0, v0, :cond_1

    .line 3
    .line 4
    new-instance v0, Lcom/marshallradio/gpstracking/TagInfo;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/marshallradio/gpstracking/TagInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/marshallradio/gpstracking/TagInfo;->setTagid(I)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/marshallradio/gpstracking/PacketBuilderLib;->taglist:Ljava/util/Map;

    .line 13
    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    sget-object v0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->taglist:Ljava/util/Map;

    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/marshallradio/gpstracking/TagInfo;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_0
    sget-object v1, Lcom/marshallradio/gpstracking/PacketBuilderLib;->taglist:Ljava/util/Map;

    .line 38
    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public static getUnsignedByte(Ljava/lang/Byte;)S
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    and-int/lit16 p0, p0, 0xff

    .line 6
    .line 7
    int-to-short p0, p0

    .line 8
    return p0
.end method

.method private parseCommonFields(Ljava/io/ByteArrayOutputStream;)Lcom/marshallradio/gpstracking/DataPacketModel;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x1e

    .line 6
    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->getBufferedDataPacket()Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    shr-int/lit8 v1, v1, 0x5

    .line 29
    .line 30
    and-int/lit8 v1, v1, 0x7

    .line 31
    .line 32
    iput v1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 33
    .line 34
    new-instance v1, Lcom/marshallradio/gpstracking/Coordinate;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-direct {v1, v2, v3}, Lcom/marshallradio/gpstracking/Coordinate;-><init>(II)V

    .line 45
    .line 46
    .line 47
    iput-object v1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {v0, v1, v2, v3}, Lcom/marshallradio/gpstracking/DataPacketModel;->setAltitude(BBB)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    int-to-double v1, p1

    .line 69
    iput-wide v1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 70
    .line 71
    return-object v0
.end method


# virtual methods
.method public buildPacket(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;[BLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->pkttype:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->dataPacketReceiver:Lcom/marshallradio/gpstracking/DataPacketReceiver;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/marshallradio/gpstracking/DataPacketReceiver;->packetCallback(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;[BLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method buildPacketOne(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 p2, 0x1e

    .line 6
    .line 7
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->getUnsignedByte(Ljava/lang/Byte;)S

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-direct {p0}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->getBufferedDataPacket()Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->bufferedDataPacket:Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 38
    .line 39
    iput p1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 40
    .line 41
    sput p1, Lcom/marshallradio/gpstracking/PacketBuilderLib;->batteryvalue:I

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    sget-object v2, Lcom/marshallradio/gpstracking/PacketType;->ONE:Lcom/marshallradio/gpstracking/PacketType;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ""

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->pkttype:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->dataPacketReceiver:Lcom/marshallradio/gpstracking/DataPacketReceiver;

    .line 65
    .line 66
    invoke-interface {v0, p2, p1, p2}, Lcom/marshallradio/gpstracking/DataPacketReceiver;->infoReceived(III)V

    .line 67
    .line 68
    .line 69
    sget-object p1, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

    .line 70
    .line 71
    iget-object p2, p0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->bufferedDataPacket:Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-interface {p1, p2, v0}, Lcom/marshallradio/gpstracking/EventCallback;->onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method buildPacketSVInfo(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V
    .locals 24

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object/from16 v2, p0

    .line 21
    .line 22
    move-object/from16 v3, p2

    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->parseCommonFields(Ljava/io/ByteArrayOutputStream;)Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v5}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->getTagInformation(I)Lcom/marshallradio/gpstracking/TagInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    invoke-virtual {v6}, Lcom/marshallradio/gpstracking/TagInfo;->getLasttimestamp()J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    const-wide/16 v9, 0x3e8

    .line 44
    .line 45
    add-long/2addr v7, v9

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v9

    .line 50
    cmp-long v7, v7, v9

    .line 51
    .line 52
    if-gez v7, :cond_0

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v7

    .line 58
    invoke-virtual {v6, v7, v8}, Lcom/marshallradio/gpstracking/TagInfo;->setLasttimestamp(J)V

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const/4 v8, 0x2

    .line 67
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    const/4 v9, 0x3

    .line 72
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    const/4 v11, 0x4

    .line 77
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    const/4 v12, 0x5

    .line 82
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->get(I)B

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    const/4 v13, 0x6

    .line 87
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get(I)B

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    const/4 v14, 0x7

    .line 92
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->get(I)B

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    const/16 v15, 0x8

    .line 97
    .line 98
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    const/16 v6, 0x9

    .line 103
    .line 104
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    const/16 v4, 0xa

    .line 109
    .line 110
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    const/16 v15, 0xb

    .line 115
    .line 116
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    const/16 v2, 0xc

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    move-object/from16 v17, v0

    .line 127
    .line 128
    const/16 v0, 0xd

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 131
    .line 132
    .line 133
    const/16 v0, 0xe

    .line 134
    .line 135
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    move/from16 v18, v0

    .line 140
    .line 141
    const/16 v0, 0x10

    .line 142
    .line 143
    move/from16 v19, v5

    .line 144
    .line 145
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    const/16 v0, 0x11

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    move/from16 v20, v5

    .line 156
    .line 157
    const/16 v5, 0x12

    .line 158
    .line 159
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    move-object/from16 v21, v3

    .line 164
    .line 165
    const/16 v3, 0x13

    .line 166
    .line 167
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    move/from16 v22, v15

    .line 172
    .line 173
    const/16 v15, 0x14

    .line 174
    .line 175
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    and-int/lit16 v1, v1, 0xff

    .line 180
    .line 181
    move v15, v2

    .line 182
    int-to-long v1, v1

    .line 183
    and-int/lit16 v3, v3, 0xff

    .line 184
    .line 185
    const/16 v16, 0x8

    .line 186
    .line 187
    shl-int/lit8 v3, v3, 0x8

    .line 188
    .line 189
    move/from16 v23, v4

    .line 190
    .line 191
    int-to-long v3, v3

    .line 192
    or-long/2addr v1, v3

    .line 193
    and-int/lit16 v3, v5, 0xff

    .line 194
    .line 195
    const/16 v4, 0x10

    .line 196
    .line 197
    shl-int/2addr v3, v4

    .line 198
    int-to-long v3, v3

    .line 199
    or-long/2addr v1, v3

    .line 200
    and-int/lit16 v0, v0, 0xff

    .line 201
    .line 202
    shl-int/lit8 v0, v0, 0x18

    .line 203
    .line 204
    int-to-long v3, v0

    .line 205
    or-long v0, v1, v3

    .line 206
    .line 207
    and-int/lit16 v2, v11, 0xff

    .line 208
    .line 209
    and-int/lit16 v3, v10, 0xff

    .line 210
    .line 211
    const/16 v4, 0x8

    .line 212
    .line 213
    shl-int/2addr v3, v4

    .line 214
    or-int/2addr v2, v3

    .line 215
    and-int/lit16 v3, v8, 0xff

    .line 216
    .line 217
    const/16 v5, 0x10

    .line 218
    .line 219
    shl-int/2addr v3, v5

    .line 220
    or-int/2addr v2, v3

    .line 221
    and-int/lit16 v3, v7, 0xff

    .line 222
    .line 223
    shl-int/lit8 v3, v3, 0x18

    .line 224
    .line 225
    or-int/2addr v2, v3

    .line 226
    and-int/lit16 v3, v9, 0xff

    .line 227
    .line 228
    and-int/lit16 v7, v14, 0xff

    .line 229
    .line 230
    shl-int/2addr v7, v4

    .line 231
    or-int/2addr v3, v7

    .line 232
    and-int/lit16 v7, v13, 0xff

    .line 233
    .line 234
    shl-int/lit8 v5, v7, 0x10

    .line 235
    .line 236
    or-int/2addr v3, v5

    .line 237
    and-int/lit16 v5, v12, 0xff

    .line 238
    .line 239
    shl-int/lit8 v5, v5, 0x18

    .line 240
    .line 241
    or-int/2addr v3, v5

    .line 242
    move/from16 v5, v23

    .line 243
    .line 244
    and-int/lit16 v5, v5, 0xff

    .line 245
    .line 246
    and-int/lit16 v6, v6, 0xff

    .line 247
    .line 248
    shl-int/2addr v6, v4

    .line 249
    or-int/2addr v5, v6

    .line 250
    move v6, v15

    .line 251
    and-int/lit16 v6, v6, 0xff

    .line 252
    .line 253
    move/from16 v7, v22

    .line 254
    .line 255
    and-int/lit16 v7, v7, 0xff

    .line 256
    .line 257
    shl-int/lit8 v4, v7, 0x8

    .line 258
    .line 259
    or-int/2addr v4, v6

    .line 260
    new-instance v6, Lcom/marshallradio/gpstracking/Coordinate;

    .line 261
    .line 262
    invoke-direct {v6, v2, v3}, Lcom/marshallradio/gpstracking/Coordinate;-><init>(II)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v2, v21

    .line 266
    .line 267
    iput-object v6, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 268
    .line 269
    int-to-double v3, v4

    .line 270
    iput-wide v3, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 271
    .line 272
    iput v5, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 273
    .line 274
    move/from16 v6, v20

    .line 275
    .line 276
    int-to-long v6, v6

    .line 277
    iput-wide v6, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->rssi:J

    .line 278
    .line 279
    sget v6, Lcom/marshallradio/gpstracking/PacketBuilderLib;->batteryvalue:I

    .line 280
    .line 281
    iput v6, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 282
    .line 283
    iput-wide v0, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    .line 284
    .line 285
    move/from16 v6, v19

    .line 286
    .line 287
    iput v6, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 288
    .line 289
    invoke-virtual {v2, v6}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTagID(I)V

    .line 290
    .line 291
    .line 292
    new-instance v7, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    sget-object v8, Lcom/marshallradio/gpstracking/PacketType;->SV_INFO:Lcom/marshallradio/gpstracking/PacketType;

    .line 298
    .line 299
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v8, ""

    .line 303
    .line 304
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    invoke-virtual {v2, v7}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPkttype(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    move/from16 v7, v18

    .line 315
    .line 316
    invoke-virtual {v2, v7}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTemperature(I)V

    .line 317
    .line 318
    .line 319
    const/4 v7, 0x0

    .line 320
    invoke-virtual {v2, v7}, Lcom/marshallradio/gpstracking/DataPacketModel;->setMode(I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2, v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTimestamp(J)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2, v3, v4}, Lcom/marshallradio/gpstracking/DataPacketModel;->setSpeed(D)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v5}, Lcom/marshallradio/gpstracking/DataPacketModel;->setAltitudeMSL(I)V

    .line 330
    .line 331
    .line 332
    const/4 v0, 0x1

    .line 333
    invoke-virtual {v2, v0}, Lcom/marshallradio/gpstracking/DataPacketModel;->setKeypacket(Z)V

    .line 334
    .line 335
    .line 336
    sget-object v0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->matrics:Lcom/marshallradio/gpstracking/PacketMetrics;

    .line 337
    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 339
    .line 340
    .line 341
    move-result-wide v3

    .line 342
    move-object/from16 v1, v17

    .line 343
    .line 344
    array-length v5, v1

    .line 345
    const/4 v7, 0x3

    .line 346
    add-int/2addr v5, v7

    .line 347
    invoke-virtual {v0, v6, v3, v4, v5}, Lcom/marshallradio/gpstracking/PacketMetrics;->addPacket(IJI)V

    .line 348
    .line 349
    .line 350
    sget-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

    .line 351
    .line 352
    invoke-interface {v0, v2, v1}, Lcom/marshallradio/gpstracking/EventCallback;->onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V

    .line 353
    .line 354
    .line 355
    :cond_0
    return-void
.end method

.method buildPacketThree(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V
    .locals 25

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object/from16 v2, p0

    .line 21
    .line 22
    move-object/from16 v3, p2

    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->parseCommonFields(Ljava/io/ByteArrayOutputStream;)Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v5}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->getTagInformation(I)Lcom/marshallradio/gpstracking/TagInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6}, Lcom/marshallradio/gpstracking/TagInfo;->getLasttimestamp()J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    const-wide/16 v9, 0x3e8

    .line 42
    .line 43
    add-long/2addr v7, v9

    .line 44
    invoke-virtual {v6}, Lcom/marshallradio/gpstracking/TagInfo;->getCurrenttimestamp()J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    cmp-long v7, v7, v9

    .line 49
    .line 50
    if-gez v7, :cond_0

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    invoke-virtual {v6, v7, v8}, Lcom/marshallradio/gpstracking/TagInfo;->setLasttimestamp(J)V

    .line 57
    .line 58
    .line 59
    const/4 v7, 0x1

    .line 60
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    const/4 v9, 0x2

    .line 65
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    const/4 v10, 0x3

    .line 70
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    const/4 v12, 0x4

    .line 75
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->get(I)B

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    const/4 v13, 0x5

    .line 80
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get(I)B

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    const/4 v14, 0x6

    .line 85
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->get(I)B

    .line 86
    .line 87
    .line 88
    move-result v14

    .line 89
    const/4 v15, 0x7

    .line 90
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 91
    .line 92
    .line 93
    move-result v15

    .line 94
    const/16 v10, 0x8

    .line 95
    .line 96
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    const/16 v4, 0x9

    .line 101
    .line 102
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    const/16 v10, 0xa

    .line 107
    .line 108
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    const/16 v2, 0xb

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    move-object/from16 v17, v0

    .line 119
    .line 120
    const/16 v0, 0xc

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    move-object/from16 v18, v6

    .line 127
    .line 128
    const/16 v6, 0xd

    .line 129
    .line 130
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 131
    .line 132
    .line 133
    const/16 v6, 0xe

    .line 134
    .line 135
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    move/from16 v19, v6

    .line 140
    .line 141
    const/16 v6, 0x10

    .line 142
    .line 143
    move/from16 v20, v5

    .line 144
    .line 145
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    const/16 v6, 0x11

    .line 150
    .line 151
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    move/from16 v21, v5

    .line 156
    .line 157
    const/16 v5, 0x12

    .line 158
    .line 159
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    move-object/from16 v22, v3

    .line 164
    .line 165
    const/16 v3, 0x13

    .line 166
    .line 167
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    move/from16 v23, v2

    .line 172
    .line 173
    const/16 v2, 0x14

    .line 174
    .line 175
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    and-int/lit16 v1, v1, 0xff

    .line 180
    .line 181
    int-to-long v1, v1

    .line 182
    and-int/lit16 v3, v3, 0xff

    .line 183
    .line 184
    const/16 v16, 0x8

    .line 185
    .line 186
    shl-int/lit8 v3, v3, 0x8

    .line 187
    .line 188
    move/from16 v24, v4

    .line 189
    .line 190
    int-to-long v3, v3

    .line 191
    or-long/2addr v1, v3

    .line 192
    and-int/lit16 v3, v5, 0xff

    .line 193
    .line 194
    const/16 v4, 0x10

    .line 195
    .line 196
    shl-int/2addr v3, v4

    .line 197
    int-to-long v3, v3

    .line 198
    or-long/2addr v1, v3

    .line 199
    and-int/lit16 v3, v6, 0xff

    .line 200
    .line 201
    shl-int/lit8 v3, v3, 0x18

    .line 202
    .line 203
    int-to-long v3, v3

    .line 204
    or-long/2addr v1, v3

    .line 205
    and-int/lit16 v3, v12, 0xff

    .line 206
    .line 207
    and-int/lit16 v4, v11, 0xff

    .line 208
    .line 209
    const/16 v5, 0x8

    .line 210
    .line 211
    shl-int/2addr v4, v5

    .line 212
    or-int/2addr v3, v4

    .line 213
    and-int/lit16 v4, v9, 0xff

    .line 214
    .line 215
    const/16 v6, 0x10

    .line 216
    .line 217
    shl-int/2addr v4, v6

    .line 218
    or-int/2addr v3, v4

    .line 219
    and-int/lit16 v4, v8, 0xff

    .line 220
    .line 221
    shl-int/lit8 v4, v4, 0x18

    .line 222
    .line 223
    or-int/2addr v3, v4

    .line 224
    and-int/lit16 v4, v7, 0xff

    .line 225
    .line 226
    and-int/lit16 v7, v15, 0xff

    .line 227
    .line 228
    shl-int/2addr v7, v5

    .line 229
    or-int/2addr v4, v7

    .line 230
    and-int/lit16 v7, v14, 0xff

    .line 231
    .line 232
    shl-int/lit8 v6, v7, 0x10

    .line 233
    .line 234
    or-int/2addr v4, v6

    .line 235
    and-int/lit16 v6, v13, 0xff

    .line 236
    .line 237
    shl-int/lit8 v6, v6, 0x18

    .line 238
    .line 239
    or-int/2addr v4, v6

    .line 240
    and-int/lit16 v6, v10, 0xff

    .line 241
    .line 242
    move/from16 v7, v24

    .line 243
    .line 244
    and-int/lit16 v7, v7, 0xff

    .line 245
    .line 246
    shl-int/2addr v7, v5

    .line 247
    or-int/2addr v6, v7

    .line 248
    and-int/lit16 v0, v0, 0xff

    .line 249
    .line 250
    move/from16 v7, v23

    .line 251
    .line 252
    and-int/lit16 v7, v7, 0xff

    .line 253
    .line 254
    shl-int/lit8 v5, v7, 0x8

    .line 255
    .line 256
    or-int/2addr v0, v5

    .line 257
    new-instance v5, Lcom/marshallradio/gpstracking/Coordinate;

    .line 258
    .line 259
    invoke-direct {v5, v3, v4}, Lcom/marshallradio/gpstracking/Coordinate;-><init>(II)V

    .line 260
    .line 261
    .line 262
    move-object/from16 v3, v22

    .line 263
    .line 264
    iput-object v5, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 265
    .line 266
    int-to-double v4, v0

    .line 267
    iput-wide v4, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 268
    .line 269
    iput v6, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 270
    .line 271
    move/from16 v0, v21

    .line 272
    .line 273
    int-to-long v7, v0

    .line 274
    iput-wide v7, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->rssi:J

    .line 275
    .line 276
    iput-wide v1, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    .line 277
    .line 278
    move/from16 v0, v20

    .line 279
    .line 280
    iput v0, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 281
    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    sget-object v8, Lcom/marshallradio/gpstracking/PacketType;->THREE:Lcom/marshallradio/gpstracking/PacketType;

    .line 288
    .line 289
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v8, ""

    .line 293
    .line 294
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-virtual {v3, v7}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPkttype(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v0}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTagID(I)V

    .line 305
    .line 306
    .line 307
    sget v7, Lcom/marshallradio/gpstracking/PacketBuilderLib;->batteryvalue:I

    .line 308
    .line 309
    iput v7, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 310
    .line 311
    const/4 v7, 0x0

    .line 312
    invoke-virtual {v3, v7}, Lcom/marshallradio/gpstracking/DataPacketModel;->setMode(I)V

    .line 313
    .line 314
    .line 315
    move/from16 v7, v19

    .line 316
    .line 317
    invoke-virtual {v3, v7}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTemperature(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3, v1, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTimestamp(J)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3, v4, v5}, Lcom/marshallradio/gpstracking/DataPacketModel;->setSpeed(D)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3, v6}, Lcom/marshallradio/gpstracking/DataPacketModel;->setAltitudeMSL(I)V

    .line 327
    .line 328
    .line 329
    const/4 v1, 0x1

    .line 330
    invoke-virtual {v3, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setKeypacket(Z)V

    .line 331
    .line 332
    .line 333
    move-object/from16 v1, v18

    .line 334
    .line 335
    invoke-virtual {v1, v3}, Lcom/marshallradio/gpstracking/TagInfo;->setLastsavedPkt(Lcom/marshallradio/gpstracking/DataPacketModel;)V

    .line 336
    .line 337
    .line 338
    sget-object v1, Lcom/marshallradio/gpstracking/PacketBuilderLib;->matrics:Lcom/marshallradio/gpstracking/PacketMetrics;

    .line 339
    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 341
    .line 342
    .line 343
    move-result-wide v4

    .line 344
    move-object/from16 v2, v17

    .line 345
    .line 346
    array-length v6, v2

    .line 347
    const/4 v7, 0x3

    .line 348
    add-int/2addr v6, v7

    .line 349
    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/marshallradio/gpstracking/PacketMetrics;->addPacket(IJI)V

    .line 350
    .line 351
    .line 352
    sget-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

    .line 353
    .line 354
    invoke-interface {v0, v3, v2}, Lcom/marshallradio/gpstracking/EventCallback;->onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V

    .line 355
    .line 356
    .line 357
    :cond_0
    return-void
.end method

.method buildPacketTwentyFour(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V
    .locals 24

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object/from16 v2, p0

    .line 21
    .line 22
    move-object/from16 v3, p2

    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->parseCommonFields(Ljava/io/ByteArrayOutputStream;)Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v5}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->getTagInformation(I)Lcom/marshallradio/gpstracking/TagInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    invoke-virtual {v6}, Lcom/marshallradio/gpstracking/TagInfo;->getLasttimestamp()J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    const-wide/16 v9, 0x3e8

    .line 44
    .line 45
    add-long/2addr v7, v9

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v9

    .line 50
    cmp-long v7, v7, v9

    .line 51
    .line 52
    if-gez v7, :cond_0

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v7

    .line 58
    invoke-virtual {v6, v7, v8}, Lcom/marshallradio/gpstracking/TagInfo;->setLasttimestamp(J)V

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const/4 v8, 0x2

    .line 67
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    const/4 v9, 0x3

    .line 72
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    const/4 v11, 0x4

    .line 77
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    const/4 v12, 0x5

    .line 82
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->get(I)B

    .line 83
    .line 84
    .line 85
    move-result v12

    .line 86
    const/4 v13, 0x6

    .line 87
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get(I)B

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    const/4 v14, 0x7

    .line 92
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->get(I)B

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    const/16 v15, 0x8

    .line 97
    .line 98
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    const/16 v9, 0x9

    .line 103
    .line 104
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    const/16 v4, 0xa

    .line 109
    .line 110
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    const/16 v15, 0xb

    .line 115
    .line 116
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    const/16 v2, 0xc

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    move-object/from16 v17, v0

    .line 127
    .line 128
    const/16 v0, 0xd

    .line 129
    .line 130
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    and-int/lit8 v0, v0, 0xf

    .line 135
    .line 136
    int-to-byte v0, v0

    .line 137
    move/from16 v18, v0

    .line 138
    .line 139
    const/16 v0, 0x10

    .line 140
    .line 141
    move/from16 v19, v5

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    const/16 v0, 0x11

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    move/from16 v20, v5

    .line 154
    .line 155
    const/16 v5, 0x12

    .line 156
    .line 157
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    move-object/from16 v21, v3

    .line 162
    .line 163
    const/16 v3, 0x13

    .line 164
    .line 165
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    move/from16 v22, v15

    .line 170
    .line 171
    const/16 v15, 0x14

    .line 172
    .line 173
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    and-int/lit16 v1, v1, 0xff

    .line 178
    .line 179
    move v15, v2

    .line 180
    int-to-long v1, v1

    .line 181
    and-int/lit16 v3, v3, 0xff

    .line 182
    .line 183
    const/16 v16, 0x8

    .line 184
    .line 185
    shl-int/lit8 v3, v3, 0x8

    .line 186
    .line 187
    move/from16 v23, v4

    .line 188
    .line 189
    int-to-long v3, v3

    .line 190
    or-long/2addr v1, v3

    .line 191
    and-int/lit16 v3, v5, 0xff

    .line 192
    .line 193
    const/16 v4, 0x10

    .line 194
    .line 195
    shl-int/2addr v3, v4

    .line 196
    int-to-long v3, v3

    .line 197
    or-long/2addr v1, v3

    .line 198
    and-int/lit16 v0, v0, 0xff

    .line 199
    .line 200
    shl-int/lit8 v0, v0, 0x18

    .line 201
    .line 202
    int-to-long v3, v0

    .line 203
    or-long v0, v1, v3

    .line 204
    .line 205
    and-int/lit16 v2, v11, 0xff

    .line 206
    .line 207
    and-int/lit16 v3, v10, 0xff

    .line 208
    .line 209
    const/16 v4, 0x8

    .line 210
    .line 211
    shl-int/2addr v3, v4

    .line 212
    or-int/2addr v2, v3

    .line 213
    and-int/lit16 v3, v8, 0xff

    .line 214
    .line 215
    const/16 v5, 0x10

    .line 216
    .line 217
    shl-int/2addr v3, v5

    .line 218
    or-int/2addr v2, v3

    .line 219
    and-int/lit16 v3, v7, 0xff

    .line 220
    .line 221
    shl-int/lit8 v3, v3, 0x18

    .line 222
    .line 223
    or-int/2addr v2, v3

    .line 224
    and-int/lit16 v3, v6, 0xff

    .line 225
    .line 226
    and-int/lit16 v6, v14, 0xff

    .line 227
    .line 228
    shl-int/2addr v6, v4

    .line 229
    or-int/2addr v3, v6

    .line 230
    and-int/lit16 v6, v13, 0xff

    .line 231
    .line 232
    shl-int/lit8 v5, v6, 0x10

    .line 233
    .line 234
    or-int/2addr v3, v5

    .line 235
    and-int/lit16 v5, v12, 0xff

    .line 236
    .line 237
    shl-int/lit8 v5, v5, 0x18

    .line 238
    .line 239
    or-int/2addr v3, v5

    .line 240
    move/from16 v5, v23

    .line 241
    .line 242
    and-int/lit16 v5, v5, 0xff

    .line 243
    .line 244
    and-int/lit16 v6, v9, 0xff

    .line 245
    .line 246
    shl-int/2addr v6, v4

    .line 247
    or-int/2addr v5, v6

    .line 248
    move v6, v15

    .line 249
    and-int/lit16 v6, v6, 0xff

    .line 250
    .line 251
    move/from16 v7, v22

    .line 252
    .line 253
    and-int/lit16 v7, v7, 0xff

    .line 254
    .line 255
    shl-int/lit8 v4, v7, 0x8

    .line 256
    .line 257
    or-int/2addr v4, v6

    .line 258
    new-instance v6, Lcom/marshallradio/gpstracking/Coordinate;

    .line 259
    .line 260
    invoke-direct {v6, v2, v3}, Lcom/marshallradio/gpstracking/Coordinate;-><init>(II)V

    .line 261
    .line 262
    .line 263
    move-object/from16 v2, v21

    .line 264
    .line 265
    iput-object v6, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 266
    .line 267
    int-to-double v3, v4

    .line 268
    iput-wide v3, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 269
    .line 270
    iput v5, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 271
    .line 272
    move/from16 v6, v20

    .line 273
    .line 274
    int-to-long v6, v6

    .line 275
    iput-wide v6, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->rssi:J

    .line 276
    .line 277
    iput-wide v0, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    .line 278
    .line 279
    sget v6, Lcom/marshallradio/gpstracking/PacketBuilderLib;->batteryvalue:I

    .line 280
    .line 281
    iput v6, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 282
    .line 283
    move/from16 v6, v19

    .line 284
    .line 285
    iput v6, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 286
    .line 287
    move/from16 v7, v18

    .line 288
    .line 289
    invoke-virtual {v2, v7}, Lcom/marshallradio/gpstracking/DataPacketModel;->setMode(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v6}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTagID(I)V

    .line 293
    .line 294
    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    sget-object v8, Lcom/marshallradio/gpstracking/PacketType;->TWENTYFOUR:Lcom/marshallradio/gpstracking/PacketType;

    .line 301
    .line 302
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v8, ""

    .line 306
    .line 307
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    invoke-virtual {v2, v7}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPkttype(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const/4 v7, 0x0

    .line 318
    invoke-virtual {v2, v7}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTemperature(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTimestamp(J)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v3, v4}, Lcom/marshallradio/gpstracking/DataPacketModel;->setSpeed(D)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v5}, Lcom/marshallradio/gpstracking/DataPacketModel;->setAltitudeMSL(I)V

    .line 328
    .line 329
    .line 330
    sget-object v0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->matrics:Lcom/marshallradio/gpstracking/PacketMetrics;

    .line 331
    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 333
    .line 334
    .line 335
    move-result-wide v3

    .line 336
    move-object/from16 v1, v17

    .line 337
    .line 338
    array-length v5, v1

    .line 339
    const/4 v7, 0x3

    .line 340
    add-int/2addr v5, v7

    .line 341
    invoke-virtual {v0, v6, v3, v4, v5}, Lcom/marshallradio/gpstracking/PacketMetrics;->addPacket(IJI)V

    .line 342
    .line 343
    .line 344
    const/4 v0, 0x1

    .line 345
    invoke-virtual {v2, v0}, Lcom/marshallradio/gpstracking/DataPacketModel;->setKeypacket(Z)V

    .line 346
    .line 347
    .line 348
    sget-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

    .line 349
    .line 350
    invoke-interface {v0, v2, v1}, Lcom/marshallradio/gpstracking/EventCallback;->onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V

    .line 351
    .line 352
    .line 353
    :cond_0
    return-void
.end method

.method buildpacketFOURTY(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 21
    .line 22
    invoke-direct {v2}, Lcom/marshallradio/gpstracking/DataPacketModel;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    and-int/lit8 v4, v4, 0x3f

    .line 31
    .line 32
    const-wide v5, 0x3fd5555555555555L    # 0.3333333333333333

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    int-to-double v7, v4

    .line 38
    mul-double/2addr v7, v5

    .line 39
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 40
    .line 41
    add-double/2addr v7, v4

    .line 42
    invoke-virtual {v2, v7, v8}, Lcom/marshallradio/gpstracking/DataPacketModel;->setScaledPDOP(D)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    and-int/lit16 v4, v4, 0xfc

    .line 50
    .line 51
    const/4 v5, 0x6

    .line 52
    shr-int/2addr v4, v5

    .line 53
    const/4 v6, 0x1

    .line 54
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    and-int/lit16 v7, v7, 0xff

    .line 59
    .line 60
    const/4 v8, 0x2

    .line 61
    shl-int/2addr v7, v8

    .line 62
    or-int/2addr v4, v7

    .line 63
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    const/4 v9, 0x3

    .line 68
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    const/4 v11, 0x4

    .line 73
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    const/4 v13, 0x5

    .line 78
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get(I)B

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    const/4 v14, 0x7

    .line 87
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->get(I)B

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    const/16 v15, 0x8

    .line 92
    .line 93
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    const/16 v8, 0x9

    .line 98
    .line 99
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    and-int/lit16 v7, v7, 0xff

    .line 104
    .line 105
    and-int/lit16 v10, v10, 0xff

    .line 106
    .line 107
    shl-int/2addr v10, v15

    .line 108
    or-int/2addr v7, v10

    .line 109
    and-int/lit16 v10, v12, 0xff

    .line 110
    .line 111
    const/16 v12, 0x10

    .line 112
    .line 113
    shl-int/2addr v10, v12

    .line 114
    or-int/2addr v7, v10

    .line 115
    and-int/lit16 v10, v13, 0xff

    .line 116
    .line 117
    shl-int/lit8 v10, v10, 0x18

    .line 118
    .line 119
    or-int/2addr v7, v10

    .line 120
    and-int/lit16 v5, v5, 0xff

    .line 121
    .line 122
    and-int/lit16 v10, v14, 0xff

    .line 123
    .line 124
    shl-int/2addr v10, v15

    .line 125
    or-int/2addr v5, v10

    .line 126
    and-int/lit16 v9, v9, 0xff

    .line 127
    .line 128
    shl-int/2addr v9, v12

    .line 129
    or-int/2addr v5, v9

    .line 130
    and-int/lit16 v6, v6, 0xff

    .line 131
    .line 132
    shl-int/lit8 v6, v6, 0x18

    .line 133
    .line 134
    or-int/2addr v5, v6

    .line 135
    new-instance v6, Lcom/marshallradio/gpstracking/Coordinate;

    .line 136
    .line 137
    invoke-direct {v6, v7, v5}, Lcom/marshallradio/gpstracking/Coordinate;-><init>(II)V

    .line 138
    .line 139
    .line 140
    iput-object v6, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 141
    .line 142
    const/16 v5, 0xa

    .line 143
    .line 144
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    int-to-short v5, v5

    .line 149
    const/16 v6, 0xb

    .line 150
    .line 151
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    int-to-short v6, v6

    .line 156
    and-int/lit16 v5, v5, 0xff

    .line 157
    .line 158
    and-int/lit16 v6, v6, 0xff

    .line 159
    .line 160
    shl-int/2addr v6, v15

    .line 161
    or-int/2addr v5, v6

    .line 162
    add-int/lit8 v5, v5, -0x64

    .line 163
    .line 164
    iput v5, v2, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 165
    .line 166
    aget-byte v5, v0, v12

    .line 167
    .line 168
    and-int/lit16 v5, v5, 0xff

    .line 169
    .line 170
    const/16 v6, 0x11

    .line 171
    .line 172
    aget-byte v6, v0, v6

    .line 173
    .line 174
    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    int-to-double v13, v5

    .line 180
    mul-double/2addr v13, v9

    .line 181
    const-wide v9, 0x3ffccccccccccccdL    # 1.8

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    add-double/2addr v13, v9

    .line 187
    new-instance v5, Ljava/text/DecimalFormat;

    .line 188
    .line 189
    const-string v7, "0.00"

    .line 190
    .line 191
    invoke-direct {v5, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    const/16 v7, 0xc

    .line 199
    .line 200
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    const/16 v9, 0xd

    .line 205
    .line 206
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    const/16 v10, 0xe

    .line 211
    .line 212
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    const/16 v13, 0xf

    .line 217
    .line 218
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get(I)B

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    new-array v13, v11, [B

    .line 223
    .line 224
    aput-byte v7, v13, v3

    .line 225
    .line 226
    const/4 v7, 0x1

    .line 227
    aput-byte v9, v13, v7

    .line 228
    .line 229
    const/4 v7, 0x2

    .line 230
    aput-byte v10, v13, v7

    .line 231
    .line 232
    const/4 v9, 0x3

    .line 233
    aput-byte v1, v13, v9

    .line 234
    .line 235
    aget-byte v1, v13, v9

    .line 236
    .line 237
    and-int/lit16 v1, v1, 0xff

    .line 238
    .line 239
    shl-int/lit8 v1, v1, 0x18

    .line 240
    .line 241
    aget-byte v9, v13, v7

    .line 242
    .line 243
    and-int/lit16 v7, v9, 0xff

    .line 244
    .line 245
    shl-int/2addr v7, v12

    .line 246
    or-int/2addr v1, v7

    .line 247
    and-int/lit16 v7, v9, 0xff

    .line 248
    .line 249
    shl-int/2addr v7, v15

    .line 250
    const/4 v9, 0x1

    .line 251
    aget-byte v10, v13, v9

    .line 252
    .line 253
    and-int/lit16 v9, v10, 0xff

    .line 254
    .line 255
    or-int/2addr v7, v9

    .line 256
    int-to-short v7, v7

    .line 257
    and-int/lit16 v9, v10, 0xff

    .line 258
    .line 259
    shl-int/2addr v9, v15

    .line 260
    aget-byte v3, v13, v3

    .line 261
    .line 262
    and-int/lit16 v3, v3, 0xff

    .line 263
    .line 264
    or-int/2addr v3, v9

    .line 265
    int-to-short v3, v3

    .line 266
    and-int/lit16 v9, v3, 0x3ff

    .line 267
    .line 268
    const/4 v10, 0x2

    .line 269
    shr-int/2addr v7, v10

    .line 270
    and-int/lit16 v10, v7, 0x3ff

    .line 271
    .line 272
    shr-int/lit8 v12, v1, 0x14

    .line 273
    .line 274
    shr-int/lit8 v1, v1, 0x1d

    .line 275
    .line 276
    const/4 v13, 0x1

    .line 277
    if-ne v1, v13, :cond_0

    .line 278
    .line 279
    and-int/lit16 v1, v12, 0x1ff

    .line 280
    .line 281
    or-int/lit16 v12, v1, -0x200

    .line 282
    .line 283
    :cond_0
    shr-int/lit8 v1, v9, 0x9

    .line 284
    .line 285
    if-ne v1, v13, :cond_1

    .line 286
    .line 287
    and-int/lit16 v1, v3, 0x1ff

    .line 288
    .line 289
    or-int/lit16 v9, v1, -0x200

    .line 290
    .line 291
    :cond_1
    shr-int/lit8 v1, v10, 0x9

    .line 292
    .line 293
    if-ne v1, v13, :cond_2

    .line 294
    .line 295
    and-int/lit16 v1, v7, 0x1ff

    .line 296
    .line 297
    or-int/lit16 v10, v1, -0x200

    .line 298
    .line 299
    :cond_2
    invoke-virtual {v2, v4}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTagID(I)V

    .line 300
    .line 301
    .line 302
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 303
    .line 304
    .line 305
    move-result-wide v7

    .line 306
    invoke-virtual {v2, v7, v8}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTagBatteryPercent(D)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2, v6}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTemperature(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v13}, Lcom/marshallradio/gpstracking/DataPacketModel;->setKeypacket(Z)V

    .line 313
    .line 314
    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    sget-object v3, Lcom/marshallradio/gpstracking/PacketType;->FOURTY:Lcom/marshallradio/gpstracking/PacketType;

    .line 321
    .line 322
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v3, ""

    .line 326
    .line 327
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v2, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPkttype(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2, v9}, Lcom/marshallradio/gpstracking/DataPacketModel;->setVelNorth(I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2, v10}, Lcom/marshallradio/gpstracking/DataPacketModel;->setVelEast(I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v12}, Lcom/marshallradio/gpstracking/DataPacketModel;->setVelDown(I)V

    .line 344
    .line 345
    .line 346
    sget v1, Lcom/marshallradio/gpstracking/PacketBuilderLib;->batteryvalue:I

    .line 347
    .line 348
    invoke-virtual {v2, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPlBatteryPercent(I)V

    .line 349
    .line 350
    .line 351
    const/16 v1, 0x12

    .line 352
    .line 353
    aget-byte v1, v0, v1

    .line 354
    .line 355
    const/4 v3, 0x3

    .line 356
    and-int/lit8 v5, v1, 0x3

    .line 357
    .line 358
    and-int/lit8 v6, v1, 0x4

    .line 359
    .line 360
    const/4 v7, 0x2

    .line 361
    shr-int/2addr v6, v7

    .line 362
    and-int/lit8 v7, v1, 0x8

    .line 363
    .line 364
    shr-int/2addr v7, v3

    .line 365
    and-int/lit16 v1, v1, 0xf0

    .line 366
    .line 367
    shr-int/2addr v1, v11

    .line 368
    invoke-virtual {v2, v5}, Lcom/marshallradio/gpstracking/DataPacketModel;->setWire_status(I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v6}, Lcom/marshallradio/gpstracking/DataPacketModel;->setObject_status(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2, v7}, Lcom/marshallradio/gpstracking/DataPacketModel;->setEmergency(I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setUnused(I)V

    .line 378
    .line 379
    .line 380
    sget-object v1, Lcom/marshallradio/gpstracking/PacketBuilderLib;->matrics:Lcom/marshallradio/gpstracking/PacketMetrics;

    .line 381
    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 383
    .line 384
    .line 385
    move-result-wide v5

    .line 386
    array-length v7, v0

    .line 387
    add-int/2addr v7, v3

    .line 388
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/marshallradio/gpstracking/PacketMetrics;->addPacket(IJI)V

    .line 389
    .line 390
    .line 391
    sget-object v1, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

    .line 392
    .line 393
    invoke-interface {v1, v2, v0}, Lcom/marshallradio/gpstracking/EventCallback;->onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V

    .line 394
    .line 395
    .line 396
    return-void
.end method

.method buildpacketFiftyFive(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V
    .locals 18

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    move-object/from16 v3, p0

    .line 21
    .line 22
    move-object/from16 v4, p2

    .line 23
    .line 24
    invoke-direct {v3, v4}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->parseCommonFields(Ljava/io/ByteArrayOutputStream;)Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-static {v6}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->getTagInformation(I)Lcom/marshallradio/gpstracking/TagInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    invoke-virtual {v7}, Lcom/marshallradio/gpstracking/TagInfo;->getCurrenttimestamp()J

    .line 40
    .line 41
    .line 42
    move-result-wide v8

    .line 43
    invoke-virtual {v7, v8, v9}, Lcom/marshallradio/gpstracking/TagInfo;->setLasttimestamp(J)V

    .line 44
    .line 45
    .line 46
    :cond_0
    if-eqz v7, :cond_1

    .line 47
    .line 48
    invoke-virtual {v7}, Lcom/marshallradio/gpstracking/TagInfo;->getCurrenttimestamp()J

    .line 49
    .line 50
    .line 51
    move-result-wide v8

    .line 52
    const-wide/16 v10, 0x3e8

    .line 53
    .line 54
    add-long/2addr v8, v10

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v10

    .line 59
    cmp-long v8, v8, v10

    .line 60
    .line 61
    if-gez v8, :cond_1

    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v8

    .line 67
    invoke-virtual {v7, v8, v9}, Lcom/marshallradio/gpstracking/TagInfo;->setCurrenttimestamp(J)V

    .line 68
    .line 69
    .line 70
    const/4 v7, 0x1

    .line 71
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    const/4 v9, 0x2

    .line 76
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    const/4 v10, 0x3

    .line 81
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    const/4 v12, 0x4

    .line 86
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->get(I)B

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    const/4 v13, 0x5

    .line 91
    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->get(I)B

    .line 92
    .line 93
    .line 94
    move-result v13

    .line 95
    const/4 v14, 0x6

    .line 96
    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->get(I)B

    .line 97
    .line 98
    .line 99
    move-result v14

    .line 100
    const/4 v15, 0x7

    .line 101
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 102
    .line 103
    .line 104
    move-result v15

    .line 105
    const/16 v10, 0x8

    .line 106
    .line 107
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    and-int/lit16 v12, v12, 0xff

    .line 112
    .line 113
    and-int/lit16 v11, v11, 0xff

    .line 114
    .line 115
    shl-int/2addr v11, v10

    .line 116
    or-int/2addr v11, v12

    .line 117
    and-int/lit16 v9, v9, 0xff

    .line 118
    .line 119
    const/16 v12, 0x10

    .line 120
    .line 121
    shl-int/2addr v9, v12

    .line 122
    or-int/2addr v9, v11

    .line 123
    and-int/lit16 v8, v8, 0xff

    .line 124
    .line 125
    const/16 v11, 0x18

    .line 126
    .line 127
    shl-int/2addr v8, v11

    .line 128
    or-int/2addr v8, v9

    .line 129
    and-int/lit16 v7, v7, 0xff

    .line 130
    .line 131
    and-int/lit16 v9, v15, 0xff

    .line 132
    .line 133
    shl-int/2addr v9, v10

    .line 134
    or-int/2addr v7, v9

    .line 135
    and-int/lit16 v9, v14, 0xff

    .line 136
    .line 137
    shl-int/2addr v9, v12

    .line 138
    or-int/2addr v7, v9

    .line 139
    and-int/lit16 v9, v13, 0xff

    .line 140
    .line 141
    shl-int/2addr v9, v11

    .line 142
    or-int/2addr v7, v9

    .line 143
    const/high16 v9, 0x40000000    # 2.0f

    .line 144
    .line 145
    and-int/2addr v9, v8

    .line 146
    shr-int/lit8 v1, v9, 0x1e

    .line 147
    .line 148
    int-to-long v13, v1

    .line 149
    const/16 v1, 0xb

    .line 150
    .line 151
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    const/16 v9, 0xc

    .line 156
    .line 157
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    and-int/lit16 v9, v9, 0xff

    .line 162
    .line 163
    and-int/lit16 v1, v1, 0xff

    .line 164
    .line 165
    shl-int/2addr v1, v10

    .line 166
    or-int/2addr v1, v9

    .line 167
    const/16 v9, 0x9

    .line 168
    .line 169
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    int-to-short v9, v9

    .line 174
    const/16 v15, 0xa

    .line 175
    .line 176
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 177
    .line 178
    .line 179
    move-result v15

    .line 180
    int-to-short v15, v15

    .line 181
    and-int/lit16 v15, v15, 0xff

    .line 182
    .line 183
    and-int/lit16 v9, v9, 0xff

    .line 184
    .line 185
    shl-int/2addr v9, v10

    .line 186
    or-int/2addr v9, v15

    .line 187
    const/16 v15, 0xd

    .line 188
    .line 189
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 190
    .line 191
    .line 192
    move-result v15

    .line 193
    const/16 v5, 0xe

    .line 194
    .line 195
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    const/16 v11, 0xf

    .line 200
    .line 201
    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->get(I)B

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    and-int/lit16 v2, v2, 0xff

    .line 210
    .line 211
    move-wide/from16 v16, v13

    .line 212
    .line 213
    int-to-long v12, v2

    .line 214
    and-int/lit16 v2, v11, 0xff

    .line 215
    .line 216
    shl-int/2addr v2, v10

    .line 217
    int-to-long v10, v2

    .line 218
    or-long/2addr v10, v12

    .line 219
    and-int/lit16 v2, v5, 0xff

    .line 220
    .line 221
    const/16 v5, 0x10

    .line 222
    .line 223
    shl-int/2addr v2, v5

    .line 224
    int-to-long v12, v2

    .line 225
    or-long/2addr v10, v12

    .line 226
    and-int/lit16 v2, v15, 0xff

    .line 227
    .line 228
    int-to-long v12, v2

    .line 229
    const/16 v2, 0x18

    .line 230
    .line 231
    shl-long/2addr v12, v2

    .line 232
    or-long/2addr v10, v12

    .line 233
    new-instance v2, Lcom/marshallradio/gpstracking/Coordinate;

    .line 234
    .line 235
    invoke-direct {v2, v8, v7}, Lcom/marshallradio/gpstracking/Coordinate;-><init>(II)V

    .line 236
    .line 237
    .line 238
    iput-object v2, v4, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 239
    .line 240
    int-to-double v1, v1

    .line 241
    iput-wide v1, v4, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 242
    .line 243
    iput v9, v4, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 244
    .line 245
    sget v5, Lcom/marshallradio/gpstracking/PacketBuilderLib;->batteryvalue:I

    .line 246
    .line 247
    iput v5, v4, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 248
    .line 249
    iput-wide v10, v4, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    .line 250
    .line 251
    iput v6, v4, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 252
    .line 253
    invoke-virtual {v4, v6}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTagID(I)V

    .line 254
    .line 255
    .line 256
    const/4 v5, 0x0

    .line 257
    invoke-virtual {v4, v5}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTemperature(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4, v10, v11}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTimestamp(J)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4, v1, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setSpeed(D)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4, v9}, Lcom/marshallradio/gpstracking/DataPacketModel;->setAltitudeMSL(I)V

    .line 267
    .line 268
    .line 269
    move-wide/from16 v1, v16

    .line 270
    .line 271
    invoke-virtual {v4, v1, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setFreshflag(J)V

    .line 272
    .line 273
    .line 274
    const/4 v1, 0x1

    .line 275
    invoke-virtual {v4, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setKeypacket(Z)V

    .line 276
    .line 277
    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    sget-object v2, Lcom/marshallradio/gpstracking/PacketType;->FIFTYFIVE:Lcom/marshallradio/gpstracking/PacketType;

    .line 284
    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    const-string v2, ""

    .line 289
    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v4, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPkttype(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    sget-object v1, Lcom/marshallradio/gpstracking/PacketBuilderLib;->matrics:Lcom/marshallradio/gpstracking/PacketMetrics;

    .line 301
    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 303
    .line 304
    .line 305
    move-result-wide v7

    .line 306
    array-length v2, v0

    .line 307
    const/4 v5, 0x3

    .line 308
    add-int/2addr v2, v5

    .line 309
    invoke-virtual {v1, v6, v7, v8, v2}, Lcom/marshallradio/gpstracking/PacketMetrics;->addPacket(IJI)V

    .line 310
    .line 311
    .line 312
    sget-object v1, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

    .line 313
    .line 314
    invoke-interface {v1, v4, v0}, Lcom/marshallradio/gpstracking/EventCallback;->onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V

    .line 315
    .line 316
    .line 317
    :cond_1
    return-void
.end method

.method buildpacketFiftySix(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;[B)V
    .locals 7

    .line 1
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v0, p3

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    move v3, v2

    .line 10
    :goto_0
    const/4 v4, 0x1

    .line 11
    if-ge v2, v0, :cond_3

    .line 12
    .line 13
    aget-byte v5, p3, v2

    .line 14
    .line 15
    const/16 v6, 0x7e

    .line 16
    .line 17
    if-ne v5, v6, :cond_0

    .line 18
    .line 19
    move v3, v4

    .line 20
    :cond_0
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/16 v4, 0x7f

    .line 26
    .line 27
    if-ne v5, v4, :cond_2

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    move v3, v1

    .line 32
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    sget-object p3, Lcom/marshallradio/gpstracking/PacketBuilderLib;->matrics:Lcom/marshallradio/gpstracking/PacketMetrics;

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {p3, v2, v3, p1}, Lcom/marshallradio/gpstracking/PacketMetrics;->addPocketLinkPackets(JI)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/16 p2, 0x1e

    .line 53
    .line 54
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    new-instance p3, Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 72
    .line 73
    invoke-direct {p3}, Lcom/marshallradio/gpstracking/DataPacketModel;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, v4}, Lcom/marshallradio/gpstracking/DataPacketModel;->setKeypacket(Z)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/marshallradio/gpstracking/Coordinate;

    .line 80
    .line 81
    invoke-direct {v0, v1, v1}, Lcom/marshallradio/gpstracking/Coordinate;-><init>(II)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p3, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 85
    .line 86
    const-wide/16 v2, 0x0

    .line 87
    .line 88
    iput-wide v2, p3, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 89
    .line 90
    iput p2, p3, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 91
    .line 92
    sput p2, Lcom/marshallradio/gpstracking/PacketBuilderLib;->batteryvalue:I

    .line 93
    .line 94
    iput v1, p3, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 95
    .line 96
    const-wide/16 v4, 0x0

    .line 97
    .line 98
    iput-wide v4, p3, Lcom/marshallradio/gpstracking/DataPacketModel;->rssi:J

    .line 99
    .line 100
    iput-wide v4, p3, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    .line 101
    .line 102
    iput v1, p3, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 103
    .line 104
    invoke-virtual {p3, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setMode(I)V

    .line 105
    .line 106
    .line 107
    const/4 p2, -0x1

    .line 108
    invoke-virtual {p3, p2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTagID(I)V

    .line 109
    .line 110
    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    sget-object v0, Lcom/marshallradio/gpstracking/PacketType;->FIFTYSIX:Lcom/marshallradio/gpstracking/PacketType;

    .line 117
    .line 118
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, ""

    .line 122
    .line 123
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p3, p2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPkttype(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTemperature(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3, v4, v5}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTimestamp(J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p3, v2, v3}, Lcom/marshallradio/gpstracking/DataPacketModel;->setSpeed(D)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setAltitudeMSL(I)V

    .line 143
    .line 144
    .line 145
    sget-object p2, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

    .line 146
    .line 147
    invoke-interface {p2, p3, p1}, Lcom/marshallradio/gpstracking/EventCallback;->onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method buildpacketNineteen(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V
    .locals 17

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object/from16 v2, p0

    .line 21
    .line 22
    move-object/from16 v3, p2

    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->parseCommonFields(Ljava/io/ByteArrayOutputStream;)Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v5}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->getTagInformation(I)Lcom/marshallradio/gpstracking/TagInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6}, Lcom/marshallradio/gpstracking/TagInfo;->getLasttimestamp()J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    const-wide/16 v9, 0x3e8

    .line 42
    .line 43
    add-long/2addr v7, v9

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    cmp-long v7, v7, v9

    .line 49
    .line 50
    if-gez v7, :cond_0

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    invoke-virtual {v6, v7, v8}, Lcom/marshallradio/gpstracking/TagInfo;->setLasttimestamp(J)V

    .line 57
    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    const/4 v8, 0x2

    .line 65
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    const/4 v9, 0x3

    .line 70
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const/4 v11, 0x4

    .line 75
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    const/4 v12, 0x5

    .line 80
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->get(I)B

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    const/4 v13, 0x6

    .line 85
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get(I)B

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    const/4 v14, 0x7

    .line 90
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->get(I)B

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    const/16 v15, 0x8

    .line 95
    .line 96
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    const/16 v6, 0x9

    .line 101
    .line 102
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    const/16 v4, 0xa

    .line 107
    .line 108
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    const/16 v15, 0xb

    .line 113
    .line 114
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 115
    .line 116
    .line 117
    move-result v15

    .line 118
    const/16 v2, 0xc

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    and-int/lit16 v11, v11, 0xff

    .line 125
    .line 126
    and-int/lit16 v10, v10, 0xff

    .line 127
    .line 128
    const/16 v16, 0x8

    .line 129
    .line 130
    shl-int/lit8 v10, v10, 0x8

    .line 131
    .line 132
    or-int/2addr v10, v11

    .line 133
    and-int/lit16 v8, v8, 0xff

    .line 134
    .line 135
    const/16 v11, 0x10

    .line 136
    .line 137
    shl-int/2addr v8, v11

    .line 138
    or-int/2addr v8, v10

    .line 139
    and-int/lit16 v7, v7, 0xff

    .line 140
    .line 141
    shl-int/lit8 v7, v7, 0x18

    .line 142
    .line 143
    or-int/2addr v7, v8

    .line 144
    and-int/lit16 v8, v9, 0xff

    .line 145
    .line 146
    and-int/lit16 v9, v14, 0xff

    .line 147
    .line 148
    const/16 v10, 0x8

    .line 149
    .line 150
    shl-int/2addr v9, v10

    .line 151
    or-int/2addr v8, v9

    .line 152
    and-int/lit16 v9, v13, 0xff

    .line 153
    .line 154
    shl-int/2addr v9, v11

    .line 155
    or-int/2addr v8, v9

    .line 156
    and-int/lit16 v9, v12, 0xff

    .line 157
    .line 158
    shl-int/lit8 v9, v9, 0x18

    .line 159
    .line 160
    or-int/2addr v8, v9

    .line 161
    and-int/lit16 v4, v4, 0xff

    .line 162
    .line 163
    and-int/lit16 v6, v6, 0xff

    .line 164
    .line 165
    shl-int/2addr v6, v10

    .line 166
    or-int/2addr v4, v6

    .line 167
    and-int/lit16 v2, v2, 0xff

    .line 168
    .line 169
    and-int/lit16 v6, v15, 0xff

    .line 170
    .line 171
    shl-int/2addr v6, v10

    .line 172
    or-int/2addr v2, v6

    .line 173
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    const/16 v9, 0x11

    .line 178
    .line 179
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    const/16 v10, 0x12

    .line 184
    .line 185
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    const/16 v12, 0x13

    .line 190
    .line 191
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->get(I)B

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    const/16 v13, 0x14

    .line 196
    .line 197
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get(I)B

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    and-int/lit16 v13, v13, 0xff

    .line 202
    .line 203
    int-to-long v13, v13

    .line 204
    and-int/lit16 v12, v12, 0xff

    .line 205
    .line 206
    const/16 v15, 0x8

    .line 207
    .line 208
    shl-int/2addr v12, v15

    .line 209
    int-to-long v11, v12

    .line 210
    or-long/2addr v11, v13

    .line 211
    and-int/lit16 v10, v10, 0xff

    .line 212
    .line 213
    const/16 v13, 0x10

    .line 214
    .line 215
    shl-int/2addr v10, v13

    .line 216
    int-to-long v13, v10

    .line 217
    or-long v10, v11, v13

    .line 218
    .line 219
    and-int/lit16 v9, v9, 0xff

    .line 220
    .line 221
    shl-int/lit8 v9, v9, 0x18

    .line 222
    .line 223
    int-to-long v12, v9

    .line 224
    or-long v9, v10, v12

    .line 225
    .line 226
    new-instance v11, Lcom/marshallradio/gpstracking/Coordinate;

    .line 227
    .line 228
    invoke-direct {v11, v7, v8}, Lcom/marshallradio/gpstracking/Coordinate;-><init>(II)V

    .line 229
    .line 230
    .line 231
    iput-object v11, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 232
    .line 233
    int-to-double v7, v2

    .line 234
    iput-wide v7, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 235
    .line 236
    iput v4, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 237
    .line 238
    int-to-long v11, v6

    .line 239
    iput-wide v11, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->rssi:J

    .line 240
    .line 241
    sget v2, Lcom/marshallradio/gpstracking/PacketBuilderLib;->batteryvalue:I

    .line 242
    .line 243
    iput v2, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 244
    .line 245
    iput-wide v9, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    .line 246
    .line 247
    iput v5, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 248
    .line 249
    invoke-virtual {v3, v5}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTagID(I)V

    .line 250
    .line 251
    .line 252
    const/4 v2, 0x0

    .line 253
    invoke-virtual {v3, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTemperature(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v9, v10}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTimestamp(J)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, v7, v8}, Lcom/marshallradio/gpstracking/DataPacketModel;->setSpeed(D)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v4}, Lcom/marshallradio/gpstracking/DataPacketModel;->setAltitudeMSL(I)V

    .line 263
    .line 264
    .line 265
    const/4 v2, 0x1

    .line 266
    invoke-virtual {v3, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setKeypacket(Z)V

    .line 267
    .line 268
    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    sget-object v4, Lcom/marshallradio/gpstracking/PacketType;->NINETEEN:Lcom/marshallradio/gpstracking/PacketType;

    .line 275
    .line 276
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v4, ""

    .line 280
    .line 281
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v3, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPkttype(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const/16 v2, 0xd

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    const/16 v4, 0xe

    .line 298
    .line 299
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    const/16 v6, 0x8

    .line 304
    .line 305
    shl-int/2addr v4, v6

    .line 306
    const/16 v6, 0xf

    .line 307
    .line 308
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    const/16 v6, 0x10

    .line 313
    .line 314
    shl-int/2addr v1, v6

    .line 315
    or-int/2addr v1, v4

    .line 316
    or-int/2addr v1, v2

    .line 317
    int-to-double v1, v1

    .line 318
    const-wide v6, 0x40c3880000000000L    # 10000.0

    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    div-double/2addr v1, v6

    .line 324
    invoke-virtual {v3, v1, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setFrequency(D)V

    .line 325
    .line 326
    .line 327
    sget-object v1, Lcom/marshallradio/gpstracking/PacketBuilderLib;->matrics:Lcom/marshallradio/gpstracking/PacketMetrics;

    .line 328
    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 330
    .line 331
    .line 332
    move-result-wide v6

    .line 333
    array-length v2, v0

    .line 334
    const/4 v4, 0x3

    .line 335
    add-int/2addr v2, v4

    .line 336
    invoke-virtual {v1, v5, v6, v7, v2}, Lcom/marshallradio/gpstracking/PacketMetrics;->addPacket(IJI)V

    .line 337
    .line 338
    .line 339
    sget-object v1, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

    .line 340
    .line 341
    invoke-interface {v1, v3, v0}, Lcom/marshallradio/gpstracking/EventCallback;->onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V

    .line 342
    .line 343
    .line 344
    :cond_0
    return-void
.end method

.method buildpacketThirteen(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V
    .locals 17

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object/from16 v2, p0

    .line 21
    .line 22
    move-object/from16 v3, p2

    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->parseCommonFields(Ljava/io/ByteArrayOutputStream;)Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v5}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->getTagInformation(I)Lcom/marshallradio/gpstracking/TagInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6}, Lcom/marshallradio/gpstracking/TagInfo;->getLasttimestamp()J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    const-wide/16 v9, 0x3e8

    .line 42
    .line 43
    add-long/2addr v7, v9

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    cmp-long v7, v7, v9

    .line 49
    .line 50
    if-gez v7, :cond_0

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    invoke-virtual {v6, v7, v8}, Lcom/marshallradio/gpstracking/TagInfo;->setLasttimestamp(J)V

    .line 57
    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    const/4 v8, 0x2

    .line 65
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    const/4 v9, 0x3

    .line 70
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const/4 v11, 0x4

    .line 75
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    const/4 v12, 0x5

    .line 80
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->get(I)B

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    const/4 v13, 0x6

    .line 85
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get(I)B

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    const/4 v14, 0x7

    .line 90
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->get(I)B

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    const/16 v15, 0x8

    .line 95
    .line 96
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    const/16 v6, 0x9

    .line 101
    .line 102
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    const/16 v4, 0xa

    .line 107
    .line 108
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    const/16 v15, 0xb

    .line 113
    .line 114
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 115
    .line 116
    .line 117
    move-result v15

    .line 118
    const/16 v2, 0xc

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    and-int/lit16 v11, v11, 0xff

    .line 125
    .line 126
    and-int/lit16 v10, v10, 0xff

    .line 127
    .line 128
    const/16 v16, 0x8

    .line 129
    .line 130
    shl-int/lit8 v10, v10, 0x8

    .line 131
    .line 132
    or-int/2addr v10, v11

    .line 133
    and-int/lit16 v8, v8, 0xff

    .line 134
    .line 135
    const/16 v11, 0x10

    .line 136
    .line 137
    shl-int/2addr v8, v11

    .line 138
    or-int/2addr v8, v10

    .line 139
    and-int/lit16 v7, v7, 0xff

    .line 140
    .line 141
    shl-int/lit8 v7, v7, 0x18

    .line 142
    .line 143
    or-int/2addr v7, v8

    .line 144
    and-int/lit16 v8, v9, 0xff

    .line 145
    .line 146
    and-int/lit16 v9, v14, 0xff

    .line 147
    .line 148
    const/16 v10, 0x8

    .line 149
    .line 150
    shl-int/2addr v9, v10

    .line 151
    or-int/2addr v8, v9

    .line 152
    and-int/lit16 v9, v13, 0xff

    .line 153
    .line 154
    shl-int/2addr v9, v11

    .line 155
    or-int/2addr v8, v9

    .line 156
    and-int/lit16 v9, v12, 0xff

    .line 157
    .line 158
    shl-int/lit8 v9, v9, 0x18

    .line 159
    .line 160
    or-int/2addr v8, v9

    .line 161
    and-int/lit16 v4, v4, 0xff

    .line 162
    .line 163
    and-int/lit16 v6, v6, 0xff

    .line 164
    .line 165
    shl-int/2addr v6, v10

    .line 166
    or-int/2addr v4, v6

    .line 167
    and-int/lit16 v2, v2, 0xff

    .line 168
    .line 169
    and-int/lit16 v6, v15, 0xff

    .line 170
    .line 171
    shl-int/2addr v6, v10

    .line 172
    or-int/2addr v2, v6

    .line 173
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    const/16 v9, 0x11

    .line 178
    .line 179
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    const/16 v10, 0x12

    .line 184
    .line 185
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 186
    .line 187
    .line 188
    move-result v10

    .line 189
    const/16 v12, 0x13

    .line 190
    .line 191
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->get(I)B

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    const/16 v13, 0x14

    .line 196
    .line 197
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get(I)B

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    and-int/lit16 v13, v13, 0xff

    .line 202
    .line 203
    int-to-long v13, v13

    .line 204
    and-int/lit16 v12, v12, 0xff

    .line 205
    .line 206
    const/16 v15, 0x8

    .line 207
    .line 208
    shl-int/2addr v12, v15

    .line 209
    int-to-long v11, v12

    .line 210
    or-long/2addr v11, v13

    .line 211
    and-int/lit16 v10, v10, 0xff

    .line 212
    .line 213
    const/16 v13, 0x10

    .line 214
    .line 215
    shl-int/2addr v10, v13

    .line 216
    int-to-long v13, v10

    .line 217
    or-long v10, v11, v13

    .line 218
    .line 219
    and-int/lit16 v9, v9, 0xff

    .line 220
    .line 221
    shl-int/lit8 v9, v9, 0x18

    .line 222
    .line 223
    int-to-long v12, v9

    .line 224
    or-long v9, v10, v12

    .line 225
    .line 226
    new-instance v11, Lcom/marshallradio/gpstracking/Coordinate;

    .line 227
    .line 228
    invoke-direct {v11, v7, v8}, Lcom/marshallradio/gpstracking/Coordinate;-><init>(II)V

    .line 229
    .line 230
    .line 231
    iput-object v11, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 232
    .line 233
    int-to-double v7, v2

    .line 234
    iput-wide v7, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 235
    .line 236
    iput v4, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 237
    .line 238
    int-to-long v11, v6

    .line 239
    iput-wide v11, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->rssi:J

    .line 240
    .line 241
    iput-wide v9, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    .line 242
    .line 243
    iput v5, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 244
    .line 245
    invoke-virtual {v3, v5}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTagID(I)V

    .line 246
    .line 247
    .line 248
    const/4 v2, 0x0

    .line 249
    invoke-virtual {v3, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTemperature(I)V

    .line 250
    .line 251
    .line 252
    sget v2, Lcom/marshallradio/gpstracking/PacketBuilderLib;->batteryvalue:I

    .line 253
    .line 254
    iput v2, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 255
    .line 256
    invoke-virtual {v3, v9, v10}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTimestamp(J)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, v7, v8}, Lcom/marshallradio/gpstracking/DataPacketModel;->setSpeed(D)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v4}, Lcom/marshallradio/gpstracking/DataPacketModel;->setAltitudeMSL(I)V

    .line 263
    .line 264
    .line 265
    const/4 v2, 0x1

    .line 266
    invoke-virtual {v3, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setKeypacket(Z)V

    .line 267
    .line 268
    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    sget-object v4, Lcom/marshallradio/gpstracking/PacketType;->THIRTEEN:Lcom/marshallradio/gpstracking/PacketType;

    .line 275
    .line 276
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v4, ""

    .line 280
    .line 281
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v3, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPkttype(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const/16 v2, 0xd

    .line 292
    .line 293
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    const/16 v4, 0xe

    .line 298
    .line 299
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    const/16 v6, 0x8

    .line 304
    .line 305
    shl-int/2addr v4, v6

    .line 306
    const/16 v6, 0xf

    .line 307
    .line 308
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    const/16 v6, 0x10

    .line 313
    .line 314
    shl-int/2addr v1, v6

    .line 315
    or-int/2addr v1, v4

    .line 316
    or-int/2addr v1, v2

    .line 317
    int-to-double v1, v1

    .line 318
    const-wide v6, 0x40c3880000000000L    # 10000.0

    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    div-double/2addr v1, v6

    .line 324
    invoke-virtual {v3, v1, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setFrequency(D)V

    .line 325
    .line 326
    .line 327
    sget-object v1, Lcom/marshallradio/gpstracking/PacketBuilderLib;->matrics:Lcom/marshallradio/gpstracking/PacketMetrics;

    .line 328
    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 330
    .line 331
    .line 332
    move-result-wide v6

    .line 333
    array-length v2, v0

    .line 334
    const/4 v4, 0x3

    .line 335
    add-int/2addr v2, v4

    .line 336
    invoke-virtual {v1, v5, v6, v7, v2}, Lcom/marshallradio/gpstracking/PacketMetrics;->addPacket(IJI)V

    .line 337
    .line 338
    .line 339
    sget-object v1, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

    .line 340
    .line 341
    invoke-interface {v1, v3, v0}, Lcom/marshallradio/gpstracking/EventCallback;->onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V

    .line 342
    .line 343
    .line 344
    :cond_0
    return-void
.end method

.method buildpacketThirtyone(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V
    .locals 7

    .line 1
    const/4 p1, 0x0

    .line 2
    sput p1, Lcom/marshallradio/gpstracking/PacketBuilderLib;->keepalive_pktCoutn:I

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const/16 v0, 0x1e

    .line 9
    .line 10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 25
    .line 26
    .line 27
    new-instance v0, Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/marshallradio/gpstracking/DataPacketModel;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setKeypacket(Z)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/marshallradio/gpstracking/Coordinate;

    .line 36
    .line 37
    invoke-direct {v1, p1, p1}, Lcom/marshallradio/gpstracking/Coordinate;-><init>(II)V

    .line 38
    .line 39
    .line 40
    iput-object v1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 41
    .line 42
    const-wide/16 v1, 0x0

    .line 43
    .line 44
    iput-wide v1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 45
    .line 46
    iput p1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 47
    .line 48
    const-wide/16 v3, 0x0

    .line 49
    .line 50
    iput-wide v3, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->rssi:J

    .line 51
    .line 52
    sget v5, Lcom/marshallradio/gpstracking/PacketBuilderLib;->batteryvalue:I

    .line 53
    .line 54
    iput v5, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 55
    .line 56
    iput-wide v3, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    .line 57
    .line 58
    iput p1, v0, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setMode(I)V

    .line 61
    .line 62
    .line 63
    const/4 v5, -0x1

    .line 64
    invoke-virtual {v0, v5}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTagID(I)V

    .line 65
    .line 66
    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    sget-object v6, Lcom/marshallradio/gpstracking/PacketType;->THIRTYONE:Lcom/marshallradio/gpstracking/PacketType;

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v6, ""

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v0, v5}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPkttype(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTemperature(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3, v4}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTimestamp(J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setSpeed(D)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setAltitudeMSL(I)V

    .line 99
    .line 100
    .line 101
    sget-object p1, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

    .line 102
    .line 103
    invoke-interface {p1, v0, p2}, Lcom/marshallradio/gpstracking/EventCallback;->onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method buildpacketTwelve(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V
    .locals 17

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object/from16 v2, p0

    .line 21
    .line 22
    move-object/from16 v3, p2

    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->parseCommonFields(Ljava/io/ByteArrayOutputStream;)Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    invoke-static {v5}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->getTagInformation(I)Lcom/marshallradio/gpstracking/TagInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v6}, Lcom/marshallradio/gpstracking/TagInfo;->getLasttimestamp()J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    const-wide/16 v9, 0x3e8

    .line 42
    .line 43
    add-long/2addr v7, v9

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    cmp-long v7, v7, v9

    .line 49
    .line 50
    if-gez v7, :cond_0

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    invoke-virtual {v6, v7, v8}, Lcom/marshallradio/gpstracking/TagInfo;->setLasttimestamp(J)V

    .line 57
    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    const/4 v8, 0x2

    .line 65
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    const/4 v9, 0x3

    .line 70
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    const/4 v11, 0x4

    .line 75
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    const/4 v12, 0x5

    .line 80
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->get(I)B

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    const/4 v13, 0x6

    .line 85
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->get(I)B

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    const/4 v14, 0x7

    .line 90
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->get(I)B

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    const/16 v15, 0x8

    .line 95
    .line 96
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    const/16 v6, 0x9

    .line 101
    .line 102
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    const/16 v4, 0xa

    .line 107
    .line 108
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    const/16 v15, 0xb

    .line 113
    .line 114
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->get(I)B

    .line 115
    .line 116
    .line 117
    move-result v15

    .line 118
    const/16 v2, 0xc

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    move-object/from16 v16, v0

    .line 125
    .line 126
    const/16 v0, 0xd

    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 129
    .line 130
    .line 131
    and-int/lit16 v0, v11, 0xff

    .line 132
    .line 133
    and-int/lit16 v10, v10, 0xff

    .line 134
    .line 135
    const/16 v11, 0x8

    .line 136
    .line 137
    shl-int/2addr v10, v11

    .line 138
    or-int/2addr v0, v10

    .line 139
    and-int/lit16 v8, v8, 0xff

    .line 140
    .line 141
    const/16 v10, 0x10

    .line 142
    .line 143
    shl-int/2addr v8, v10

    .line 144
    or-int/2addr v0, v8

    .line 145
    and-int/lit16 v7, v7, 0xff

    .line 146
    .line 147
    shl-int/lit8 v7, v7, 0x18

    .line 148
    .line 149
    or-int/2addr v0, v7

    .line 150
    and-int/lit16 v7, v9, 0xff

    .line 151
    .line 152
    and-int/lit16 v8, v14, 0xff

    .line 153
    .line 154
    const/16 v9, 0x8

    .line 155
    .line 156
    shl-int/2addr v8, v9

    .line 157
    or-int/2addr v7, v8

    .line 158
    and-int/lit16 v8, v13, 0xff

    .line 159
    .line 160
    shl-int/2addr v8, v10

    .line 161
    or-int/2addr v7, v8

    .line 162
    and-int/lit16 v8, v12, 0xff

    .line 163
    .line 164
    shl-int/lit8 v8, v8, 0x18

    .line 165
    .line 166
    or-int/2addr v7, v8

    .line 167
    and-int/lit16 v4, v4, 0xff

    .line 168
    .line 169
    and-int/lit16 v6, v6, 0xff

    .line 170
    .line 171
    shl-int/2addr v6, v9

    .line 172
    or-int/2addr v4, v6

    .line 173
    and-int/lit16 v2, v2, 0xff

    .line 174
    .line 175
    and-int/lit16 v6, v15, 0xff

    .line 176
    .line 177
    shl-int/2addr v6, v9

    .line 178
    or-int/2addr v2, v6

    .line 179
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    const/16 v8, 0x11

    .line 184
    .line 185
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    const/16 v9, 0x12

    .line 190
    .line 191
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    const/16 v11, 0x13

    .line 196
    .line 197
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    const/16 v12, 0x14

    .line 202
    .line 203
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->get(I)B

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    and-int/lit16 v1, v1, 0xff

    .line 208
    .line 209
    int-to-long v12, v1

    .line 210
    and-int/lit16 v1, v11, 0xff

    .line 211
    .line 212
    const/16 v11, 0x8

    .line 213
    .line 214
    shl-int/2addr v1, v11

    .line 215
    int-to-long v14, v1

    .line 216
    or-long v11, v12, v14

    .line 217
    .line 218
    and-int/lit16 v1, v9, 0xff

    .line 219
    .line 220
    shl-int/2addr v1, v10

    .line 221
    int-to-long v9, v1

    .line 222
    or-long/2addr v9, v11

    .line 223
    and-int/lit16 v1, v8, 0xff

    .line 224
    .line 225
    shl-int/lit8 v1, v1, 0x18

    .line 226
    .line 227
    int-to-long v11, v1

    .line 228
    or-long v8, v9, v11

    .line 229
    .line 230
    new-instance v1, Lcom/marshallradio/gpstracking/Coordinate;

    .line 231
    .line 232
    invoke-direct {v1, v0, v7}, Lcom/marshallradio/gpstracking/Coordinate;-><init>(II)V

    .line 233
    .line 234
    .line 235
    iput-object v1, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->coordinate:Lcom/marshallradio/gpstracking/Coordinate;

    .line 236
    .line 237
    int-to-double v0, v2

    .line 238
    iput-wide v0, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->speed:D

    .line 239
    .line 240
    iput v4, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->altitude:I

    .line 241
    .line 242
    int-to-long v6, v6

    .line 243
    iput-wide v6, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->rssi:J

    .line 244
    .line 245
    sget v2, Lcom/marshallradio/gpstracking/PacketBuilderLib;->batteryvalue:I

    .line 246
    .line 247
    iput v2, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->plBatteryPercent:I

    .line 248
    .line 249
    iput-wide v8, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->timestamp_keypacket:J

    .line 250
    .line 251
    iput v5, v3, Lcom/marshallradio/gpstracking/DataPacketModel;->transmitterID:I

    .line 252
    .line 253
    invoke-virtual {v3, v5}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTagID(I)V

    .line 254
    .line 255
    .line 256
    const/4 v2, 0x0

    .line 257
    invoke-virtual {v3, v2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTemperature(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v3, v0, v1}, Lcom/marshallradio/gpstracking/DataPacketModel;->setSpeed(D)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v4}, Lcom/marshallradio/gpstracking/DataPacketModel;->setAltitudeMSL(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v3, v8, v9}, Lcom/marshallradio/gpstracking/DataPacketModel;->setTimestamp(J)V

    .line 267
    .line 268
    .line 269
    const/4 v0, 0x1

    .line 270
    invoke-virtual {v3, v0}, Lcom/marshallradio/gpstracking/DataPacketModel;->setKeypacket(Z)V

    .line 271
    .line 272
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    sget-object v1, Lcom/marshallradio/gpstracking/PacketType;->TWELVE:Lcom/marshallradio/gpstracking/PacketType;

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v1, ""

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v3, v0}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPkttype(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    sget-object v0, Lcom/marshallradio/gpstracking/PacketBuilderLib;->matrics:Lcom/marshallradio/gpstracking/PacketMetrics;

    .line 296
    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 298
    .line 299
    .line 300
    move-result-wide v1

    .line 301
    move-object/from16 v4, v16

    .line 302
    .line 303
    array-length v6, v4

    .line 304
    const/4 v7, 0x3

    .line 305
    add-int/2addr v6, v7

    .line 306
    invoke-virtual {v0, v5, v1, v2, v6}, Lcom/marshallradio/gpstracking/PacketMetrics;->addPacket(IJI)V

    .line 307
    .line 308
    .line 309
    sget-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

    .line 310
    .line 311
    invoke-interface {v0, v3, v4}, Lcom/marshallradio/gpstracking/EventCallback;->onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V

    .line 312
    .line 313
    .line 314
    :cond_0
    return-void
.end method
