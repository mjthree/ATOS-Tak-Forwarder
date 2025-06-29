.class public final Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;",
        "Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;",
        ">;",
        "Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->access$5700()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/toughstump/atos/proto/Atoskotevent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRelation()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->access$5900(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearType()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->access$6500(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public clearUid()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->access$6200(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getRelation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getRelation()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getRelationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getRelationBytes()Lcom/google/protobuf/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getTypeBytes()Lcom/google/protobuf/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getUidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getUidBytes()Lcom/google/protobuf/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public setRelation(Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->access$5800(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setRelationBytes(Lcom/google/protobuf/ByteString;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->access$6000(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;Lcom/google/protobuf/ByteString;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->access$6400(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->access$6600(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;Lcom/google/protobuf/ByteString;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setUid(Ljava/lang/String;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->access$6100(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setUidBytes(Lcom/google/protobuf/ByteString;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->access$6300(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;Lcom/google/protobuf/ByteString;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
