.class public final Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/proto/Atoskotevent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AtosEventProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;,
        Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$TagAttributesDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;",
        "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;",
        ">;",
        "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALARMACTIVE_FIELD_NUMBER:I = 0xa

.field public static final ATOSCOLOR_FIELD_NUMBER:I = 0x5

.field public static final ATOSTYPE_FIELD_NUMBER:I = 0x6

.field public static final BATTERYVOLTAGE_FIELD_NUMBER:I = 0xf

.field public static final CALLSIGN_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

.field public static final LINK_FIELD_NUMBER:I = 0xb

.field public static final MANIFESTNAME_FIELD_NUMBER:I = 0x2

.field public static final MANIFESTUID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final POINT_FIELD_NUMBER:I = 0x9

.field public static final STALEMILLIS_FIELD_NUMBER:I = 0x8

.field public static final TAGATTRIBUTES_FIELD_NUMBER:I = 0xd

.field public static final TAGID_FIELD_NUMBER:I = 0x3

.field public static final TEMPDEGC_FIELD_NUMBER:I = 0xe

.field public static final TIMEMILLIS_FIELD_NUMBER:I = 0x7

.field public static final TRACK_FIELD_NUMBER:I = 0xc


# instance fields
.field private alarmActive_:Z

.field private atosColor_:I

.field private atosType_:I

.field private batteryVoltage_:F

.field private bitField0_:I

.field private callsign_:Ljava/lang/String;

.field private link_:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

.field private manifestName_:Ljava/lang/String;

.field private manifestUid_:Ljava/lang/String;

.field private point_:Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

.field private staleMillis_:J

.field private tagAttributes_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tagId_:I

.field private tempDegC_:I

.field private timeMillis_:J

.field private track_:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    const-class v1, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->tagAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->manifestUid_:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->manifestName_:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->callsign_:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$1000(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearManifestUid()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1100(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setManifestUidBytes(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1200(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setManifestName(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1300(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearManifestName()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1400(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setManifestNameBytes(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1500(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setTagId(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1600(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearTagId()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1700(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setCallsign(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1800(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearCallsign()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1900(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setCallsignBytes(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2000(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setAtosColor(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2100(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearAtosColor()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2200(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setAtosType(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2300(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearAtosType()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2400(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setTimeMillis(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2500(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearTimeMillis()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2600(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setStaleMillis(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2700(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearStaleMillis()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2800(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setPoint(Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2900(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->mergePoint(Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3000(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearPoint()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3100(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setAlarmActive(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3200(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearAlarmActive()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3300(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setLink(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3400(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->mergeLink(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3500(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearLink()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3600(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setTrack(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3700(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->mergeTrack(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3800(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearTrack()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3900(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getMutableTagAttributesMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$4000(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setTempDegC(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4100(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearTempDegC()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4200(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setBatteryVoltage(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4300(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->clearBatteryVoltage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$900(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->setManifestUid(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearAlarmActive()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->alarmActive_:Z

    .line 3
    .line 4
    return-void
.end method

.method private clearAtosColor()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->atosColor_:I

    .line 3
    .line 4
    return-void
.end method

.method private clearAtosType()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->atosType_:I

    .line 3
    .line 4
    return-void
.end method

.method private clearBatteryVoltage()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x9

    .line 4
    .line 5
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->batteryVoltage_:F

    .line 9
    .line 10
    return-void
.end method

.method private clearCallsign()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getCallsign()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->callsign_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearLink()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->link_:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 3
    .line 4
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearManifestName()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getManifestName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->manifestName_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearManifestUid()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getManifestUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->manifestUid_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearPoint()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->point_:Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    .line 3
    .line 4
    return-void
.end method

.method private clearStaleMillis()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->staleMillis_:J

    .line 4
    .line 5
    return-void
.end method

.method private clearTagId()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->tagId_:I

    .line 3
    .line 4
    return-void
.end method

.method private clearTempDegC()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x5

    .line 4
    .line 5
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->tempDegC_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearTimeMillis()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->timeMillis_:J

    .line 4
    .line 5
    return-void
.end method

.method private clearTrack()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->track_:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 3
    .line 4
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x3

    .line 7
    .line 8
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 2
    .line 3
    return-object v0
.end method

.method private getMutableTagAttributesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->internalGetMutableTagAttributes()Lcom/google/protobuf/MapFieldLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private internalGetMutableTagAttributes()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->tagAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->tagAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->tagAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->tagAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 18
    .line 19
    return-object v0
.end method

.method private internalGetTagAttributes()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->tagAttributes_:Lcom/google/protobuf/MapFieldLite;

    .line 2
    .line 3
    return-object v0
.end method

.method private mergeLink(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->link_:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->link_:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->newBuilder(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->link_:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->link_:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 36
    .line 37
    :goto_0
    iget p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 38
    .line 39
    or-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    iput p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 42
    .line 43
    return-void
.end method

.method private mergePoint(Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->point_:Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;->getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->point_:Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;->newBuilder(Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->point_:Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->point_:Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeTrack(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->track_:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->track_:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->newBuilder(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->track_:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->track_:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 36
    .line 37
    :goto_0
    iget p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 38
    .line 39
    or-int/lit8 p1, p1, 0x2

    .line 40
    .line 41
    iput p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 42
    .line 43
    return-void
.end method

.method public static newBuilder()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private setAlarmActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->alarmActive_:Z

    .line 2
    .line 3
    return-void
.end method

.method private setAtosColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->atosColor_:I

    .line 2
    .line 3
    return-void
.end method

.method private setAtosType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->atosType_:I

    .line 2
    .line 3
    return-void
.end method

.method private setBatteryVoltage(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->batteryVoltage_:F

    .line 8
    .line 9
    return-void
.end method

.method private setCallsign(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->callsign_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setCallsignBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->callsign_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setLink(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->link_:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 5
    .line 6
    iget p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method

.method private setManifestName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->manifestName_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setManifestNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->manifestName_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setManifestUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->manifestUid_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setManifestUidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->manifestUid_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setPoint(Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->point_:Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    .line 5
    .line 6
    return-void
.end method

.method private setStaleMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->staleMillis_:J

    .line 2
    .line 3
    return-void
.end method

.method private setTagId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->tagId_:I

    .line 2
    .line 3
    return-void
.end method

.method private setTempDegC(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->tempDegC_:I

    .line 8
    .line 9
    return-void
.end method

.method private setTimeMillis(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->timeMillis_:J

    .line 2
    .line 3
    return-void
.end method

.method private setTrack(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->track_:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 5
    .line 6
    iget p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x2

    .line 9
    .line 10
    iput p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public containsTagAttributes(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->internalGetTagAttributes()Lcom/google/protobuf/MapFieldLite;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :pswitch_0
    return-object v1

    .line 20
    :pswitch_1
    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :pswitch_2
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-class v1, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object v2, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 40
    .line 41
    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit v1

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_2
    return-object v0

    .line 54
    :pswitch_3
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_4
    const-string v1, "bitField0_"

    .line 58
    .line 59
    const-string v2, "manifestUid_"

    .line 60
    .line 61
    const-string v3, "manifestName_"

    .line 62
    .line 63
    const-string v4, "tagId_"

    .line 64
    .line 65
    const-string v5, "callsign_"

    .line 66
    .line 67
    const-string v6, "atosColor_"

    .line 68
    .line 69
    const-string v7, "atosType_"

    .line 70
    .line 71
    const-string v8, "timeMillis_"

    .line 72
    .line 73
    const-string v9, "staleMillis_"

    .line 74
    .line 75
    const-string v10, "point_"

    .line 76
    .line 77
    const-string v11, "alarmActive_"

    .line 78
    .line 79
    const-string v12, "link_"

    .line 80
    .line 81
    const-string v13, "track_"

    .line 82
    .line 83
    const-string v14, "tagAttributes_"

    .line 84
    .line 85
    sget-object v15, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$TagAttributesDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    .line 86
    .line 87
    const-string v16, "tempDegC_"

    .line 88
    .line 89
    const-string v17, "batteryVoltage_"

    .line 90
    .line 91
    filled-new-array/range {v1 .. v17}, [Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "\u0000\u000f\u0000\u0001\u0001\u000f\u000f\u0001\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0208\u0005\u000b\u0006\u000b\u0007\u0003\u0008\u0003\t\t\n\u0007\u000b\u1009\u0000\u000c\u1009\u0001\r2\u000e\u100b\u0002\u000f\u1001\u0003"

    .line 96
    .line 97
    sget-object v2, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 98
    .line 99
    invoke-static {v2, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    return-object v0

    .line 104
    :pswitch_5
    new-instance v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;

    .line 105
    .line 106
    invoke-direct {v0, v1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;-><init>(Lcom/toughstump/atos/proto/Atoskotevent$1;)V

    .line 107
    .line 108
    .line 109
    return-object v0

    .line 110
    :pswitch_6
    new-instance v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 111
    .line 112
    invoke-direct {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;-><init>()V

    .line 113
    .line 114
    .line 115
    return-object v0

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAlarmActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->alarmActive_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getAtosColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->atosColor_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAtosType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->atosType_:I

    .line 2
    .line 3
    return v0
.end method

.method public getBatteryVoltage()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->batteryVoltage_:F

    .line 2
    .line 3
    return v0
.end method

.method public getCallsign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->callsign_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCallsignBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->callsign_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLink()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->link_:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getManifestName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->manifestName_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getManifestNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->manifestName_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getManifestUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->manifestUid_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getManifestUidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->manifestUid_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPoint()Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->point_:Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;->getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getStaleMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->staleMillis_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTagAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTagAttributesMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getTagAttributesCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->internalGetTagAttributes()Lcom/google/protobuf/MapFieldLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getTagAttributesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->internalGetTagAttributes()Lcom/google/protobuf/MapFieldLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getTagAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->internalGetTagAttributes()Lcom/google/protobuf/MapFieldLite;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    move-object p2, p1

    .line 19
    check-cast p2, Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    return-object p2
.end method

.method public getTagAttributesOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->internalGetTagAttributes()Lcom/google/protobuf/MapFieldLite;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/String;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public getTagId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->tagId_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTempDegC()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->tempDegC_:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimeMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->timeMillis_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTrack()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->track_:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public hasBatteryVoltage()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasLink()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method

.method public hasPoint()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->point_:Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasTempDegC()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasTrack()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method
