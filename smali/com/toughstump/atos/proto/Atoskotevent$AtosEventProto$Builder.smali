.class public final Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;",
        "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;",
        ">;",
        "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$800()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/toughstump/atos/proto/Atoskotevent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAlarmActive()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3200(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearAtosColor()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$2100(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearAtosType()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$2300(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearBatteryVoltage()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$4300(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearCallsign()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$1800(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearLink()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3500(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearManifestName()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$1300(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearManifestUid()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$1000(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearPoint()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3000(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearStaleMillis()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$2700(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearTagAttributes()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3900(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public clearTagId()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$1600(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearTempDegC()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$4100(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearTimeMillis()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$2500(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearTrack()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3800(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public containsTagAttributes(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTagAttributesMap()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public getAlarmActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getAlarmActive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getAtosColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getAtosColor()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getAtosType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getAtosType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getBatteryVoltage()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getBatteryVoltage()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getCallsign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getCallsign()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getCallsignBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getCallsignBytes()Lcom/google/protobuf/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getLink()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getLink()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getManifestName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getManifestName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getManifestNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getManifestNameBytes()Lcom/google/protobuf/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getManifestUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getManifestUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getManifestUidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getManifestUidBytes()Lcom/google/protobuf/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getPoint()Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getPoint()Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getStaleMillis()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getStaleMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
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
    invoke-virtual {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;->getTagAttributesMap()Ljava/util/Map;

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
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTagAttributesMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
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
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTagAttributesMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getTagAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTagAttributesMap()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    move-object p2, p1

    .line 23
    check-cast p2, Ljava/lang/String;

    .line 24
    .line 25
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
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTagAttributesMap()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public getTagId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTagId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getTempDegC()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTempDegC()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getTimeMillis()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getTrack()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->getTrack()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public hasBatteryVoltage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->hasBatteryVoltage()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasLink()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->hasLink()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasPoint()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->hasPoint()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasTempDegC()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->hasTempDegC()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasTrack()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->hasTrack()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public mergeLink(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3400(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public mergePoint(Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$2900(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public mergeTrack(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3700(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public putAllTagAttributes(Ljava/util/Map;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3900(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public putTagAttributes(Ljava/lang/String;Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 11
    .line 12
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3900(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public removeTagAttributes(Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 8
    .line 9
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3900(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public setAlarmActive(Z)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3100(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Z)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setAtosColor(I)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$2000(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setAtosType(I)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$2200(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setBatteryVoltage(F)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$4200(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;F)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setCallsign(Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$1700(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setCallsignBytes(Lcom/google/protobuf/ByteString;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$1900(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/google/protobuf/ByteString;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setLink(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3300(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V

    return-object p0
.end method

.method public setLink(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3300(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V

    return-object p0
.end method

.method public setManifestName(Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$1200(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setManifestNameBytes(Lcom/google/protobuf/ByteString;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$1400(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/google/protobuf/ByteString;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setManifestUid(Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$900(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setManifestUidBytes(Lcom/google/protobuf/ByteString;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$1100(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/google/protobuf/ByteString;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setPoint(Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto$Builder;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;

    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$2800(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)V

    return-object p0
.end method

.method public setPoint(Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$2800(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotPointProto;)V

    return-object p0
.end method

.method public setStaleMillis(J)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$2600(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;J)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setTagId(I)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$1500(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setTempDegC(I)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$4000(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setTimeMillis(J)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 7
    .line 8
    invoke-static {v0, p1, p2}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$2400(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;J)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setTrack(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3600(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V

    return-object p0
.end method

.method public setTrack(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;->access$3600(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V

    return-object p0
.end method
