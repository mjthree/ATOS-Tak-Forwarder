.class public Lcom/marshallradio/gpstracking/GpsTrackingFragment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/marshallradio/gpstracking/DataPacketReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;
    }
.end annotation


# static fields
.field private static final ANOTHER_SYMBOL:B = 0x19t

.field private static final DISPLAY_INFO_SYMBOL:B = -0x7ct

.field private static final GPS_PACKET_START_SYMBOL:B = 0x7et

.field private static final HEXINFO_SYMBOL:B = -0x80t

.field private static final KEEP_ALIVE_SYMBOL:B = -0x7at

.field private static final PACKET_END_SYMBOL:B = 0x7ft

.field private static final PAGEINFO_SYMBOL:B = -0x7ft

.field private static final PAGE_SYMBOL:B = -0x7et

.field private static final PL_CANCEL_SYMBOL:B = -0x7bt

.field private static final PL_VERSION_PACKET_START_SYMBOL:B = -0x7dt

.field private static final TAG:Ljava/lang/String; = "DataParser"

.field private static final UPDATE_STATUS_SYMBOL:B = -0x7ct

.field public static callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

.field public static currentPacketType:Lcom/marshallradio/gpstracking/PacketType;

.field public static droppedPackets:Ljava/io/ByteArrayOutputStream;

.field private static final infoCh:Ljava/util/UUID;

.field private static final modeCh:Ljava/util/UUID;

.field public static packet:Ljava/io/ByteArrayOutputStream;

.field public static packetLength:I

.field private static final rxCh:Ljava/util/UUID;

.field private static final serviceID:Ljava/util/UUID;

.field public static state:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

.field private static final txCh:Ljava/util/UUID;


# instance fields
.field private disableClPackets:Z

.field private final packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

.field private final pendingDataCache:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public pktsymbol_received:Ljava/lang/String;

.field recieveddata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->INITIAL:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 2
    .line 3
    sput-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->state:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 4
    .line 5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 11
    .line 12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->droppedPackets:Ljava/io/ByteArrayOutputStream;

    .line 18
    .line 19
    const-string v0, "2456E1B9-26E2-8F83-E744-F34F01E9D701"

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->serviceID:Ljava/util/UUID;

    .line 26
    .line 27
    const-string v0, "2456E1B9-26E2-8F83-E744-F34F01E9D703"

    .line 28
    .line 29
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->modeCh:Ljava/util/UUID;

    .line 34
    .line 35
    const-string v0, "00001800-0000-1000-8000-00805f9b34fb"

    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->txCh:Ljava/util/UUID;

    .line 42
    .line 43
    const-string v0, "2456E1B9-26E2-8F83-E744-F34F01E9D704"

    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->rxCh:Ljava/util/UUID;

    .line 50
    .line 51
    const-string v0, "99564A02-DC01-4D3C-B04E-3BB1EF0571B2"

    .line 52
    .line 53
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->infoCh:Ljava/util/UUID;

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->pendingDataCache:Ljava/util/Queue;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->disableClPackets:Z

    .line 15
    .line 16
    new-instance v0, Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/marshallradio/gpstracking/PacketBuilderLib;-><init>(Lcom/marshallradio/gpstracking/DataPacketReceiver;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 22
    .line 23
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

.method public static countConsecutiveOccurrences([BB)I
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    move v4, v3

    .line 6
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    .line 8
    aget-byte v5, p0, v2

    .line 9
    .line 10
    if-ne v5, p1, :cond_0

    .line 11
    .line 12
    add-int/lit8 v4, v4, 0x1

    .line 13
    .line 14
    if-le v4, v3, :cond_1

    .line 15
    .line 16
    move v3, v4

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    move v4, v1

    .line 19
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    return v3
.end method

.method private getPacketType(B)Lcom/marshallradio/gpstracking/PacketType;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_a

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_9

    .line 6
    .line 7
    const/16 v0, 0x9

    .line 8
    .line 9
    if-eq p1, v0, :cond_8

    .line 10
    .line 11
    const/16 v0, 0x13

    .line 12
    .line 13
    if-eq p1, v0, :cond_7

    .line 14
    .line 15
    const/16 v0, 0x18

    .line 16
    .line 17
    if-eq p1, v0, :cond_6

    .line 18
    .line 19
    const/16 v0, 0x1f

    .line 20
    .line 21
    if-eq p1, v0, :cond_5

    .line 22
    .line 23
    const/16 v0, 0x28

    .line 24
    .line 25
    if-eq p1, v0, :cond_4

    .line 26
    .line 27
    const/16 v0, 0xc

    .line 28
    .line 29
    if-eq p1, v0, :cond_3

    .line 30
    .line 31
    const/16 v0, 0xd

    .line 32
    .line 33
    if-eq p1, v0, :cond_2

    .line 34
    .line 35
    const/16 v0, 0x37

    .line 36
    .line 37
    if-eq p1, v0, :cond_1

    .line 38
    .line 39
    const/16 v0, 0x38

    .line 40
    .line 41
    if-eq p1, v0, :cond_0

    .line 42
    .line 43
    sget-object p1, Lcom/marshallradio/gpstracking/PacketType;->UNKNOWN:Lcom/marshallradio/gpstracking/PacketType;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget-object p1, Lcom/marshallradio/gpstracking/PacketType;->FIFTYSIX:Lcom/marshallradio/gpstracking/PacketType;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-object p1, Lcom/marshallradio/gpstracking/PacketType;->FIFTYFIVE:Lcom/marshallradio/gpstracking/PacketType;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    sget-object p1, Lcom/marshallradio/gpstracking/PacketType;->THIRTEEN:Lcom/marshallradio/gpstracking/PacketType;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    sget-object p1, Lcom/marshallradio/gpstracking/PacketType;->TWELVE:Lcom/marshallradio/gpstracking/PacketType;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    sget-object p1, Lcom/marshallradio/gpstracking/PacketType;->FOURTY:Lcom/marshallradio/gpstracking/PacketType;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    sget-object p1, Lcom/marshallradio/gpstracking/PacketType;->THIRTYONE:Lcom/marshallradio/gpstracking/PacketType;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_6
    sget-object p1, Lcom/marshallradio/gpstracking/PacketType;->TWENTYFOUR:Lcom/marshallradio/gpstracking/PacketType;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_7
    sget-object p1, Lcom/marshallradio/gpstracking/PacketType;->NINETEEN:Lcom/marshallradio/gpstracking/PacketType;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_8
    sget-object p1, Lcom/marshallradio/gpstracking/PacketType;->SV_INFO:Lcom/marshallradio/gpstracking/PacketType;

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_9
    sget-object p1, Lcom/marshallradio/gpstracking/PacketType;->THREE:Lcom/marshallradio/gpstracking/PacketType;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_a
    sget-object p1, Lcom/marshallradio/gpstracking/PacketType;->ONE:Lcom/marshallradio/gpstracking/PacketType;

    .line 77
    .line 78
    :goto_0
    return-object p1
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

.method private receivedPacket(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;[BLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->buildPacket(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;[BLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public infoReceived(III)V
    .locals 0

    return-void
.end method

.method public initialize()Lcom/marshallradio/gpstracking/GpsTrackingFragment;
    .locals 0

    return-object p0
.end method

.method public packetCallback(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;[BLjava/lang/String;)V
    .locals 1

    .line 1
    sget-object p2, Lcom/marshallradio/gpstracking/GpsTrackingFragment$1;->$SwitchMap$com$marshallradio$gpstracking$PacketType:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    aget p2, p2, v0

    .line 8
    .line 9
    packed-switch p2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 13
    .line 14
    invoke-direct {p1}, Lcom/marshallradio/gpstracking/DataPacketModel;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object p3, Lcom/marshallradio/gpstracking/PacketType;->UNKNOWN:Lcom/marshallradio/gpstracking/PacketType;

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p3, ""

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Lcom/marshallradio/gpstracking/DataPacketModel;->setPkttype(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object p2, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

    .line 40
    .line 41
    const/4 p3, 0x0

    .line 42
    invoke-interface {p2, p1, p3}, Lcom/marshallradio/gpstracking/EventCallback;->onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_0
    iget-object p1, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 47
    .line 48
    sget-object p2, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 49
    .line 50
    invoke-virtual {p1, p2, p4}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->buildpacketFOURTY(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_1
    iget-object p2, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 55
    .line 56
    sget-object p4, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 57
    .line 58
    invoke-virtual {p2, p1, p4, p3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->buildpacketFiftySix(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;[B)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_2
    iget-object p2, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 63
    .line 64
    sget-object p3, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 65
    .line 66
    invoke-virtual {p2, p1, p3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->buildpacketFiftyFive(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_3
    iget-object p2, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 71
    .line 72
    sget-object p3, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 73
    .line 74
    invoke-virtual {p2, p1, p3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->buildpacketNineteen(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_4
    iget-object p2, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 79
    .line 80
    sget-object p3, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 81
    .line 82
    invoke-virtual {p2, p1, p3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->buildpacketThirteen(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_5
    iget-object p2, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 87
    .line 88
    sget-object p3, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 89
    .line 90
    invoke-virtual {p2, p1, p3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->buildpacketTwelve(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_6
    iget-object p2, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 95
    .line 96
    sget-object p3, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 97
    .line 98
    invoke-virtual {p2, p1, p3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->buildpacketThirtyone(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :pswitch_7
    iget-object p2, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 103
    .line 104
    sget-object p3, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 105
    .line 106
    invoke-virtual {p2, p1, p3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->buildPacketTwentyFour(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_8
    iget-object p2, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 111
    .line 112
    sget-object p3, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 113
    .line 114
    invoke-virtual {p2, p1, p3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->buildPacketSVInfo(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_9
    iget-object p2, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 119
    .line 120
    sget-object p3, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 121
    .line 122
    invoke-virtual {p2, p1, p3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->buildPacketThree(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :pswitch_a
    iget-object p2, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetBuilder:Lcom/marshallradio/gpstracking/PacketBuilderLib;

    .line 127
    .line 128
    sget-object p3, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 129
    .line 130
    invoke-virtual {p2, p1, p3}, Lcom/marshallradio/gpstracking/PacketBuilderLib;->buildPacketOne(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;)V

    .line 131
    .line 132
    .line 133
    :goto_0
    return-void

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseRecievedData([B)V
    .locals 10

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "HH:mm:ss:SSS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    new-instance v4, Ljava/util/Date;

    .line 13
    .line 14
    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    array-length v2, p1

    .line 27
    const-string v3, ""

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    if-ge v4, v2, :cond_d

    .line 31
    .line 32
    aget-byte v5, p1, v4

    .line 33
    .line 34
    sget-object v6, Lcom/marshallradio/gpstracking/GpsTrackingFragment$1;->$SwitchMap$com$marshallradio$gpstracking$GpsTrackingFragment$STATE:[I

    .line 35
    .line 36
    sget-object v7, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->state:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 37
    .line 38
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    aget v6, v6, v7

    .line 43
    .line 44
    const/16 v7, -0x7d

    .line 45
    .line 46
    const/16 v8, 0x7e

    .line 47
    .line 48
    packed-switch v6, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_5

    .line 52
    .line 53
    :pswitch_0
    sget v6, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetLength:I

    .line 54
    .line 55
    sget-object v7, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->currentPacketType:Lcom/marshallradio/gpstracking/PacketType;

    .line 56
    .line 57
    invoke-virtual {v7}, Lcom/marshallradio/gpstracking/PacketType;->getLength()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    add-int/lit8 v7, v7, -0x1

    .line 62
    .line 63
    if-ne v6, v7, :cond_0

    .line 64
    .line 65
    sget-object v6, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 66
    .line 67
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 68
    .line 69
    .line 70
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->GPS_TUNNEL_MODE:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 71
    .line 72
    invoke-virtual {p0, v5}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->resetToState(Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :cond_0
    sget-object v6, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 78
    .line 79
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 80
    .line 81
    .line 82
    sget v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetLength:I

    .line 83
    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    sput v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetLength:I

    .line 87
    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->getPacketType(B)Lcom/marshallradio/gpstracking/PacketType;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    sput-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->currentPacketType:Lcom/marshallradio/gpstracking/PacketType;

    .line 95
    .line 96
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->RECORD_GPS_PACKET:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 97
    .line 98
    sput-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->state:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 99
    .line 100
    goto/16 :goto_5

    .line 101
    .line 102
    :pswitch_2
    if-eq v5, v7, :cond_2

    .line 103
    .line 104
    if-eq v5, v8, :cond_1

    .line 105
    .line 106
    goto/16 :goto_5

    .line 107
    .line 108
    :cond_1
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->GPS_PACKET_START:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 109
    .line 110
    sput-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->state:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 111
    .line 112
    goto/16 :goto_5

    .line 113
    .line 114
    :cond_2
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->RECORD_PL_VERSION_PACKET:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 115
    .line 116
    sput-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->state:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 117
    .line 118
    goto/16 :goto_5

    .line 119
    .line 120
    :pswitch_3
    sget-object v6, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->currentPacketType:Lcom/marshallradio/gpstracking/PacketType;

    .line 121
    .line 122
    if-eqz v6, :cond_4

    .line 123
    .line 124
    sget v7, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetLength:I

    .line 125
    .line 126
    invoke-virtual {v6}, Lcom/marshallradio/gpstracking/PacketType;->getLength()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    add-int/lit8 v6, v6, -0x1

    .line 131
    .line 132
    if-ne v7, v6, :cond_3

    .line 133
    .line 134
    sget-object v6, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 135
    .line 136
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 137
    .line 138
    .line 139
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->currentPacketType:Lcom/marshallradio/gpstracking/PacketType;

    .line 140
    .line 141
    sget-object v6, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 142
    .line 143
    invoke-direct {p0, v5, v6, p1, v3}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->receivedPacket(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;[BLjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_5

    .line 147
    .line 148
    :cond_3
    sget-object v6, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 149
    .line 150
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 151
    .line 152
    .line 153
    sget v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetLength:I

    .line 154
    .line 155
    add-int/lit8 v5, v5, 0x1

    .line 156
    .line 157
    sput v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetLength:I

    .line 158
    .line 159
    goto/16 :goto_5

    .line 160
    .line 161
    :cond_4
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->INITIAL:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 162
    .line 163
    invoke-virtual {p0, v5}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->resetToState(Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_5

    .line 167
    .line 168
    :pswitch_4
    sget-object v6, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->currentPacketType:Lcom/marshallradio/gpstracking/PacketType;

    .line 169
    .line 170
    if-eqz v6, :cond_9

    .line 171
    .line 172
    sget v7, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetLength:I

    .line 173
    .line 174
    invoke-virtual {v6}, Lcom/marshallradio/gpstracking/PacketType;->getLength()I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-ne v7, v6, :cond_7

    .line 179
    .line 180
    const/16 v6, 0x7f

    .line 181
    .line 182
    if-ne v5, v6, :cond_7

    .line 183
    .line 184
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->currentPacketType:Lcom/marshallradio/gpstracking/PacketType;

    .line 185
    .line 186
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    iput-object v5, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->pktsymbol_received:Ljava/lang/String;

    .line 191
    .line 192
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 193
    .line 194
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-static {v5, v8}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->countConsecutiveOccurrences([BB)I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    const/4 v7, 0x2

    .line 203
    if-ne v6, v7, :cond_6

    .line 204
    .line 205
    :try_start_0
    sget-object v6, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->droppedPackets:Ljava/io/ByteArrayOutputStream;

    .line 206
    .line 207
    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write([B)V

    .line 208
    .line 209
    .line 210
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->droppedPackets:Ljava/io/ByteArrayOutputStream;

    .line 211
    .line 212
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-lez v5, :cond_5

    .line 217
    .line 218
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->droppedPackets:Ljava/io/ByteArrayOutputStream;

    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    sget-object v6, Lcom/marshallradio/gpstracking/PacketBuilderLib;->matrics:Lcom/marshallradio/gpstracking/PacketMetrics;

    .line 225
    .line 226
    invoke-static {v5}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->bytesToHexString([B)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 231
    .line 232
    .line 233
    move-result-wide v7

    .line 234
    sget-object v9, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->droppedPackets:Ljava/io/ByteArrayOutputStream;

    .line 235
    .line 236
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/marshallradio/gpstracking/PacketMetrics;->addDroppedPackets(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :catch_0
    move-exception p1

    .line 245
    goto :goto_2

    .line 246
    :cond_5
    :goto_1
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->INITIAL:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 247
    .line 248
    invoke-virtual {p0, v5}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->resetToState(Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_5

    .line 252
    .line 253
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 254
    .line 255
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    throw v0

    .line 259
    :cond_6
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->currentPacketType:Lcom/marshallradio/gpstracking/PacketType;

    .line 260
    .line 261
    sget-object v6, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 262
    .line 263
    invoke-direct {p0, v5, v6, p1, v1}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->receivedPacket(Lcom/marshallradio/gpstracking/PacketType;Ljava/io/ByteArrayOutputStream;[BLjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->INITIAL:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 267
    .line 268
    invoke-virtual {p0, v5}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->resetToState(Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;)V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_5

    .line 272
    .line 273
    :cond_7
    sget v6, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetLength:I

    .line 274
    .line 275
    sget-object v7, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->currentPacketType:Lcom/marshallradio/gpstracking/PacketType;

    .line 276
    .line 277
    invoke-virtual {v7}, Lcom/marshallradio/gpstracking/PacketType;->getLength()I

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    if-ne v6, v7, :cond_8

    .line 282
    .line 283
    goto/16 :goto_5

    .line 284
    .line 285
    :cond_8
    sget-object v6, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 286
    .line 287
    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 288
    .line 289
    .line 290
    sget v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetLength:I

    .line 291
    .line 292
    add-int/lit8 v5, v5, 0x1

    .line 293
    .line 294
    sput v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetLength:I

    .line 295
    .line 296
    goto/16 :goto_5

    .line 297
    .line 298
    :cond_9
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->INITIAL:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 299
    .line 300
    invoke-virtual {p0, v5}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->resetToState(Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;)V

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->getPacketType(B)Lcom/marshallradio/gpstracking/PacketType;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    sput-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->currentPacketType:Lcom/marshallradio/gpstracking/PacketType;

    .line 309
    .line 310
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 311
    .line 312
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 313
    .line 314
    .line 315
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->RECORD_DATA_PACKET:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 316
    .line 317
    sput-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->state:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :pswitch_6
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->DATAPACKET_START:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 321
    .line 322
    sput-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->state:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 323
    .line 324
    goto :goto_5

    .line 325
    :pswitch_7
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->EXTRABYTE_PACKETLENGTH:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 326
    .line 327
    sput-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->state:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 328
    .line 329
    goto :goto_5

    .line 330
    :pswitch_8
    if-eq v5, v7, :cond_c

    .line 331
    .line 332
    if-eq v5, v8, :cond_b

    .line 333
    .line 334
    :try_start_1
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->droppedPackets:Ljava/io/ByteArrayOutputStream;

    .line 335
    .line 336
    invoke-virtual {v5, p1}, Ljava/io/OutputStream;->write([B)V

    .line 337
    .line 338
    .line 339
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->droppedPackets:Ljava/io/ByteArrayOutputStream;

    .line 340
    .line 341
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    if-lez v5, :cond_a

    .line 346
    .line 347
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->droppedPackets:Ljava/io/ByteArrayOutputStream;

    .line 348
    .line 349
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    sget-object v6, Lcom/marshallradio/gpstracking/PacketBuilderLib;->matrics:Lcom/marshallradio/gpstracking/PacketMetrics;

    .line 354
    .line 355
    invoke-static {v5}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->bytesToHexString([B)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 360
    .line 361
    .line 362
    move-result-wide v7

    .line 363
    sget-object v9, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->droppedPackets:Ljava/io/ByteArrayOutputStream;

    .line 364
    .line 365
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    .line 366
    .line 367
    .line 368
    move-result v9

    .line 369
    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/marshallradio/gpstracking/PacketMetrics;->addDroppedPackets(Ljava/lang/String;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    .line 371
    .line 372
    goto :goto_3

    .line 373
    :catch_1
    move-exception p1

    .line 374
    goto :goto_4

    .line 375
    :cond_a
    :goto_3
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->INITIAL:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 376
    .line 377
    invoke-virtual {p0, v5}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->resetToState(Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;)V

    .line 378
    .line 379
    .line 380
    goto :goto_5

    .line 381
    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 382
    .line 383
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 384
    .line 385
    .line 386
    throw v0

    .line 387
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 388
    .line 389
    .line 390
    move-result-wide v5

    .line 391
    new-instance v3, Ljava/util/Date;

    .line 392
    .line 393
    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->EXTRA7ESTATE:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 401
    .line 402
    sput-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->state:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 403
    .line 404
    goto :goto_5

    .line 405
    :cond_c
    sget-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;->RECORD_PL_VERSION_PACKET:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 406
    .line 407
    sput-object v5, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->state:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 408
    .line 409
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 410
    .line 411
    goto/16 :goto_0

    .line 412
    .line 413
    :cond_d
    return-void

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetToState(Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packetLength:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->currentPacketType:Lcom/marshallradio/gpstracking/PacketType;

    .line 6
    .line 7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->packet:Ljava/io/ByteArrayOutputStream;

    .line 13
    .line 14
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->droppedPackets:Ljava/io/ByteArrayOutputStream;

    .line 20
    .line 21
    sput-object p1, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->state:Lcom/marshallradio/gpstracking/GpsTrackingFragment$STATE;

    .line 22
    .line 23
    return-void
.end method

.method public responseCallback([BLcom/marshallradio/gpstracking/EventCallback;)Lcom/marshallradio/gpstracking/GpsTrackingFragment;
    .locals 0

    .line 1
    sput-object p2, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->callback_obj:Lcom/marshallradio/gpstracking/EventCallback;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->recieveddata:[B

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->parseRecievedData([B)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
