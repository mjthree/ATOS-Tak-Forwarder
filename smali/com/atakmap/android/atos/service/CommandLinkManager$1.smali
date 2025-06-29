.class Lcom/atakmap/android/atos/service/CommandLinkManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$1;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$1;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$000(Lcom/atakmap/android/atos/service/CommandLinkManager;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "Command Link Service Started!!"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$1;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 18
    .line 19
    invoke-static {p2}, Lcom/atakmap/android/atos/accessory/service/ICommandLink$Stub;->asInterface(Landroid/os/IBinder;)Lcom/atakmap/android/atos/accessory/service/ICommandLink;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p1, p2}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$102(Lcom/atakmap/android/atos/service/CommandLinkManager;Lcom/atakmap/android/atos/accessory/service/ICommandLink;)Lcom/atakmap/android/atos/accessory/service/ICommandLink;

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$1;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$100(Lcom/atakmap/android/atos/service/CommandLinkManager;)Lcom/atakmap/android/atos/accessory/service/ICommandLink;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$1;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 33
    .line 34
    invoke-static {p2}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$200(Lcom/atakmap/android/atos/service/CommandLinkManager;)Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-interface {p1, p2}, Lcom/atakmap/android/atos/accessory/service/ICommandLink;->registerDataInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$1;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$100(Lcom/atakmap/android/atos/service/CommandLinkManager;)Lcom/atakmap/android/atos/accessory/service/ICommandLink;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$1;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 53
    .line 54
    invoke-static {p2}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$300(Lcom/atakmap/android/atos/service/CommandLinkManager;)Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-interface {p1, p2}, Lcom/atakmap/android/atos/accessory/service/ICommandLink;->registerStatusInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_1
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :goto_1
    iget-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$1;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 67
    .line 68
    const/4 p2, 0x1

    .line 69
    invoke-static {p1, p2}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$402(Lcom/atakmap/android/atos/service/CommandLinkManager;Z)Z

    .line 70
    .line 71
    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string p2, "CommandLinkStatusProvider connection is "

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    sget-object p2, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->INSTANCE:Lcom/toughstump/atos/service/CommandLinkStatusProvider;

    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->getConnectionState()Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string p2, "CommandLinkManager"

    .line 96
    .line 97
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    sget-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getBluetoothScanEnabled()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_0

    .line 111
    .line 112
    iget-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$1;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 113
    .line 114
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-static {p1, p0, p2}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$500(Lcom/atakmap/android/atos/service/CommandLinkManager;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 117
    .line 118
    .line 119
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onServiceDisconnected "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "CommandLinkManager"

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$1;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$402(Lcom/atakmap/android/atos/service/CommandLinkManager;Z)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
