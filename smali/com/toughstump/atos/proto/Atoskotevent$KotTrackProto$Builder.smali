.class public final Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;",
        "Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;",
        ">;",
        "Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->access$6800()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/toughstump/atos/proto/Atoskotevent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCourse()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->access$7000(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearSlope()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->access$7400(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearSpeed()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->access$7200(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearVerticalSpeedMps()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->access$7600(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getCourse()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->getCourse()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getSlope()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->getSlope()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->getSpeed()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getVerticalSpeedMps()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->getVerticalSpeedMps()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hasVerticalSpeedMps()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->hasVerticalSpeedMps()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public setCourse(F)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->access$6900(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;F)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setSlope(F)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->access$7300(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;F)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setSpeed(F)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->access$7100(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;F)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setVerticalSpeedMps(F)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->access$7500(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;F)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
