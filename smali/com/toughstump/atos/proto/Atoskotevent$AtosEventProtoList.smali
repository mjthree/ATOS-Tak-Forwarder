.class public final Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/proto/Atoskotevent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AtosEventProtoList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;",
        "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;",
        ">;",
        "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoListOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

.field public static final EVENTS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private events_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 7
    .line 8
    const-class v1, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

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
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic access$000()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->setEvents(ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->addEvents(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->addEvents(ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->addAllEvents(Ljava/lang/Iterable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->clearEvents()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->removeEvents(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addAllEvents(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->ensureEventsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private addEvents(ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->ensureEventsIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addEvents(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->ensureEventsIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearEvents()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6
    .line 7
    return-void
.end method

.method private ensureEventsIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

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

.method private removeEvents(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->ensureEventsIsMutable()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setEvents(ILcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->ensureEventsIsMutable()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p2, Lcom/toughstump/atos/proto/Atoskotevent$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, p2, p1

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :pswitch_0
    return-object p2

    .line 20
    :pswitch_1
    const/4 p1, 0x1

    .line 21
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :pswitch_2
    sget-object p1, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object p3, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->PARSER:Lcom/google/protobuf/Parser;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit p2

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_2
    return-object p1

    .line 54
    :pswitch_3
    sget-object p1, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const-string p1, "events_"

    .line 58
    .line 59
    const-class p2, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 60
    .line 61
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 66
    .line 67
    sget-object p3, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 68
    .line 69
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :pswitch_5
    new-instance p1, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;

    .line 75
    .line 76
    invoke-direct {p1, p2}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList$Builder;-><init>(Lcom/toughstump/atos/proto/Atoskotevent$1;)V

    .line 77
    .line 78
    .line 79
    return-object p1

    .line 80
    :pswitch_6
    new-instance p1, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;

    .line 81
    .line 82
    invoke-direct {p1}, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;-><init>()V

    .line 83
    .line 84
    .line 85
    return-object p1

    .line 86
    nop

    .line 87
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

.method public getEvents(I)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProto;

    .line 8
    .line 9
    return-object p1
.end method

.method public getEventsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
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
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventsOrBuilder(I)Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoOrBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoOrBuilder;

    .line 8
    .line 9
    return-object p1
.end method

.method public getEventsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$AtosEventProtoList;->events_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    .line 3
    return-object v0
.end method
