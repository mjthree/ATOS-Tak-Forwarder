.class public final Lcom/toughstump/atos/service/CommandLinkStatusProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/service/CommandLinkStatusProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static batteryPercentage:I

.field private static final batteryUpdated:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static connectionState:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final connectionUpdated:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/service/CommandLinkStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static status:Lcom/toughstump/atos/service/CommandLinkStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/service/CommandLinkStatusProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->INSTANCE:Lcom/toughstump/atos/service/CommandLinkStatusProvider;

    .line 7
    .line 8
    new-instance v0, Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-direct {v0, v1, v1, v2, v1}, Lcom/toughstump/atos/service/CommandLinkStatus;-><init>(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->status:Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 16
    .line 17
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OFF:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 18
    .line 19
    sput-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->connectionState:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    sput v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->batteryPercentage:I

    .line 23
    .line 24
    new-instance v0, Lcom/toughstump/event/Event;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->batteryUpdated:Lcom/toughstump/event/Event;

    .line 30
    .line 31
    new-instance v0, Lcom/toughstump/event/Event;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->connectionUpdated:Lcom/toughstump/event/Event;

    .line 37
    .line 38
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
.method public final getBatteryPercentage()I
    .locals 1

    .line 1
    sget v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->batteryPercentage:I

    .line 2
    .line 3
    return v0
.end method

.method public final getBatteryUpdated()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->batteryUpdated:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConnectionState()Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->connectionState:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConnectionUpdated()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/service/CommandLinkStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->connectionUpdated:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()Lcom/toughstump/atos/service/CommandLinkStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->status:Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setBatteryPercentage(I)V
    .locals 0

    .line 1
    sput p1, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->batteryPercentage:I

    .line 2
    .line 3
    return-void
.end method

.method public final setConnectionState(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;)V
    .locals 1
    .param p1    # Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->connectionState:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 7
    .line 8
    return-void
.end method

.method public final setStatus(Lcom/toughstump/atos/service/CommandLinkStatus;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/service/CommandLinkStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->status:Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 7
    .line 8
    return-void
.end method

.method public final updateBattery(IJ)V
    .locals 0

    .line 1
    sput p1, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->batteryPercentage:I

    .line 2
    .line 3
    sget-object p2, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->batteryUpdated:Lcom/toughstump/event/Event;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final updateConnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "message"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->valueOf(Ljava/lang/String;)Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sput-object p1, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->connectionState:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 16
    .line 17
    new-instance v0, Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Lcom/toughstump/atos/service/CommandLinkStatus;-><init>(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->status:Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 23
    .line 24
    sget-object p1, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->connectionUpdated:Lcom/toughstump/event/Event;

    .line 25
    .line 26
    invoke-virtual {p1, p0, v0}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
