.class Lcom/atakmap/android/atos/service/CommandLinkManager$2;
.super Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atakmap/android/atos/service/CommandLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;


# direct methods
.method constructor <init>(Lcom/atakmap/android/atos/service/CommandLinkManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$2;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/atakmap/android/atos/service/CommandLinkManager$2;->lambda$onDataReceived$0(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V

    return-void
.end method

.method public static synthetic b(IJ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/atakmap/android/atos/service/CommandLinkManager$2;->lambda$onBatteryUpdateReceived$1(IJ)V

    return-void
.end method

.method private static synthetic lambda$onBatteryUpdateReceived$1(IJ)V
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->INSTANCE:Lcom/toughstump/atos/service/CommandLinkStatusProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->updateBattery(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static synthetic lambda$onDataReceived$0(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/AtosPacketAggregator;->INSTANCE:Lcom/toughstump/atos/AtosPacketAggregator;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->toDataPacket()Lcom/marshallradio/gpstracking/DataPacketModel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Lcom/toughstump/atos/AtosPacketAggregator;->processTagUpdate(Lcom/marshallradio/gpstracking/DataPacketModel;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onBatteryUpdateReceived(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/atakmap/android/atos/service/a;

    .line 6
    .line 7
    invoke-direct {v1, p1, p2, p3}, Lcom/atakmap/android/atos/service/a;-><init>(IJ)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/utilities/RunnableManager;->post(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onDataReceived(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "packet received "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p1, Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;->tagID:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "CommandLinkManager"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/atakmap/android/atos/service/b;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Lcom/atakmap/android/atos/service/b;-><init>(Lcom/atakmap/android/atos/accessory/service/data/GpsPacket;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/utilities/RunnableManager;->post(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
