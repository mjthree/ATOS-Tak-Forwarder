.class public final Lcom/toughstump/atos/CommandLinkPacketHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/marshallradio/gpstracking/EventCallback;


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/CommandLinkPacketHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final dataPacketReceivedEventHandler:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lcom/marshallradio/gpstracking/DataPacketModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final gpsTrackingFragment:Lcom/marshallradio/gpstracking/GpsTrackingFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/toughstump/atos/CommandLinkPacketHandler;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/CommandLinkPacketHandler;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/CommandLinkPacketHandler;->INSTANCE:Lcom/toughstump/atos/CommandLinkPacketHandler;

    .line 7
    .line 8
    new-instance v0, Lcom/toughstump/event/Event;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/toughstump/atos/CommandLinkPacketHandler;->dataPacketReceivedEventHandler:Lcom/toughstump/event/Event;

    .line 14
    .line 15
    new-instance v0, Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/toughstump/atos/CommandLinkPacketHandler;->gpsTrackingFragment:Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getDataPacketReceivedEventHandler()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lcom/marshallradio/gpstracking/DataPacketModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/CommandLinkPacketHandler;->dataPacketReceivedEventHandler:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGpsTrackingFragment()Lcom/marshallradio/gpstracking/GpsTrackingFragment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/CommandLinkPacketHandler;->gpsTrackingFragment:Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public onResponse(Lcom/marshallradio/gpstracking/DataPacketModel;[B)V
    .locals 0
    .param p1    # Lcom/marshallradio/gpstracking/DataPacketModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "dataPacketModel"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lcom/toughstump/atos/CommandLinkPacketHandler;->dataPacketReceivedEventHandler:Lcom/toughstump/event/Event;

    .line 7
    .line 8
    invoke-virtual {p2, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final parseBytes([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    array-length v0, p1

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    return-void

    .line 8
    :cond_1
    sget-object v0, Lcom/toughstump/atos/CommandLinkPacketHandler;->gpsTrackingFragment:Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p0}, Lcom/marshallradio/gpstracking/GpsTrackingFragment;->responseCallback([BLcom/marshallradio/gpstracking/EventCallback;)Lcom/marshallradio/gpstracking/GpsTrackingFragment;

    .line 11
    .line 12
    .line 13
    return-void
.end method
