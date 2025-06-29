.class public final Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/proto/Atoskotevent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KotTrackProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;",
        "Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;",
        ">;",
        "Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProtoOrBuilder;"
    }
.end annotation


# static fields
.field public static final COURSE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOPE_FIELD_NUMBER:I = 0x3

.field public static final SPEED_FIELD_NUMBER:I = 0x2

.field public static final VERTICALSPEEDMPS_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private course_:F

.field private slope_:F

.field private speed_:F

.field private verticalSpeedMps_:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 7
    .line 8
    const-class v1, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$6800()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$6900(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->setCourse(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7000(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->clearCourse()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7100(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->setSpeed(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7200(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->clearSpeed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7300(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->setSlope(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7400(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->clearSlope()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7500(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->setVerticalSpeedMps(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$7600(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->clearVerticalSpeedMps()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearCourse()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->course_:F

    .line 3
    .line 4
    return-void
.end method

.method private clearSlope()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->slope_:F

    .line 3
    .line 4
    return-void
.end method

.method private clearSpeed()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->speed_:F

    .line 3
    .line 4
    return-void
.end method

.method private clearVerticalSpeedMps()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->verticalSpeedMps_:F

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

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

.method private setCourse(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->course_:F

    .line 2
    .line 3
    return-void
.end method

.method private setSlope(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->slope_:F

    .line 2
    .line 3
    return-void
.end method

.method private setSpeed(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->speed_:F

    .line 2
    .line 3
    return-void
.end method

.method private setVerticalSpeedMps(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->verticalSpeedMps_:F

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    sget-object p1, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object p3, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const-string p1, "bitField0_"

    .line 58
    .line 59
    const-string p2, "course_"

    .line 60
    .line 61
    const-string p3, "speed_"

    .line 62
    .line 63
    const-string v0, "slope_"

    .line 64
    .line 65
    const-string v1, "verticalSpeedMps_"

    .line 66
    .line 67
    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p2, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u1001\u0000"

    .line 72
    .line 73
    sget-object p3, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->DEFAULT_INSTANCE:Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 74
    .line 75
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :pswitch_5
    new-instance p1, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;

    .line 81
    .line 82
    invoke-direct {p1, p2}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto$Builder;-><init>(Lcom/toughstump/atos/proto/Atoskotevent$1;)V

    .line 83
    .line 84
    .line 85
    return-object p1

    .line 86
    :pswitch_6
    new-instance p1, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;

    .line 87
    .line 88
    invoke-direct {p1}, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;-><init>()V

    .line 89
    .line 90
    .line 91
    return-object p1

    .line 92
    nop

    .line 93
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

.method public getCourse()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->course_:F

    .line 2
    .line 3
    return v0
.end method

.method public getSlope()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->slope_:F

    .line 2
    .line 3
    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->speed_:F

    .line 2
    .line 3
    return v0
.end method

.method public getVerticalSpeedMps()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->verticalSpeedMps_:F

    .line 2
    .line 3
    return v0
.end method

.method public hasVerticalSpeedMps()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/toughstump/atos/proto/Atoskotevent$KotTrackProto;->bitField0_:I

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
