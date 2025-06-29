.class public final Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;",
        "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;",
        ">;",
        "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoListOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->access$000()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/toughstump/atos/proto/Atoskotevent$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllEvents(Ljava/lang/Iterable;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;",
            ">;)",
            "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;"
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
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->access$400(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public addEvents(ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 9
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 10
    invoke-static {v0, p1, p2}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->access$300(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    return-object p0
.end method

.method public addEvents(ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p1, p2}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->access$300(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    return-object p0
.end method

.method public addEvents(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->access$200(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    return-object p0
.end method

.method public addEvents(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->access$200(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    return-object p0
.end method

.method public clearEvents()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->access$500(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public getEvents(I)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->getEvents(I)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getEventsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->getEventsCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getEventsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->getEventsList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public removeEvents(I)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->access$600(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public setEvents(ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto$Builder;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 5
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 6
    invoke-static {v0, p1, p2}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->access$100(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    return-object p0
.end method

.method public setEvents(ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p1, p2}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->access$100(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    return-object p0
.end method
