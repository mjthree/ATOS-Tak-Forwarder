.class public final Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/proto/Atoskotevent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KotLinkProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;",
        "Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;",
        ">;",
        "Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final RELATION_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field public static final UID_FIELD_NUMBER:I = 0x2


# instance fields
.field private relation_:Ljava/lang/String;

.field private type_:Ljava/lang/String;

.field private uid_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 7
    .line 8
    const-class v1, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

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
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->relation_:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->uid_:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->type_:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method static synthetic access$5700()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$5800(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->setRelation(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5900(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->clearRelation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6000(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->setRelationBytes(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6100(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->setUid(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6200(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->clearUid()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6300(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->setUidBytes(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6400(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->setType(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6500(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->clearType()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6600(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->setTypeBytes(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearRelation()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getRelation()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->relation_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearType()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->type_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearUid()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->uid_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

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

.method private setRelation(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->relation_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setRelationBytes(Lcom/google/protobuf/ByteString;)V
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
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->relation_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->type_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setTypeBytes(Lcom/google/protobuf/ByteString;)V
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
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->type_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->uid_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setUidBytes(Lcom/google/protobuf/ByteString;)V
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
    iput-object p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->uid_:Ljava/lang/String;

    .line 9
    .line 10
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
    sget-object p1, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object p3, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const-string p1, "relation_"

    .line 58
    .line 59
    const-string p2, "uid_"

    .line 60
    .line 61
    const-string p3, "type_"

    .line 62
    .line 63
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    .line 68
    .line 69
    sget-object p3, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 70
    .line 71
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :pswitch_5
    new-instance p1, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;

    .line 77
    .line 78
    invoke-direct {p1, p2}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto$Builder;-><init>(Lcom/toughstump/atos/proto/Atoskotevent$1;)V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    :pswitch_6
    new-instance p1, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;

    .line 83
    .line 84
    invoke-direct {p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;-><init>()V

    .line 85
    .line 86
    .line 87
    return-object p1

    .line 88
    nop

    .line 89
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

.method public getRelation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->relation_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRelationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->relation_:Ljava/lang/String;

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

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->type_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->type_:Ljava/lang/String;

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

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->uid_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotLinkProto;->uid_:Ljava/lang/String;

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
