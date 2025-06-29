.class public Lcom/atakmap/android/atos/service/CommandLinkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandLinkManager"


# instance fields
.field private _commandLink:Lcom/atakmap/android/atos/accessory/service/ICommandLink;

.field private _commandLinkBound:Z

.field private final _dataListener:Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;

.field private _ignorePermissionsRequest:Z

.field private _lastMessage:Ljava/lang/String;

.field private _lastState:Ljava/lang/String;

.field private _permissionsDialog:Landroid/app/AlertDialog;

.field private final _pluginContext:Landroid/content/Context;

.field private final _serviceConnection:Landroid/content/ServiceConnection;

.field private final _serviceContext:Landroid/content/Context;

.field private _statusCounter:I

.field private final _statusListener:Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OFF:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_lastState:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_lastMessage:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Lcom/atakmap/android/atos/service/CommandLinkManager$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/atakmap/android/atos/service/CommandLinkManager$1;-><init>(Lcom/atakmap/android/atos/service/CommandLinkManager;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_serviceConnection:Landroid/content/ServiceConnection;

    .line 22
    .line 23
    new-instance v0, Lcom/atakmap/android/atos/service/CommandLinkManager$2;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/atakmap/android/atos/service/CommandLinkManager$2;-><init>(Lcom/atakmap/android/atos/service/CommandLinkManager;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_dataListener:Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;

    .line 29
    .line 30
    const/16 v0, 0xa

    .line 31
    .line 32
    iput v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_statusCounter:I

    .line 33
    .line 34
    new-instance v0, Lcom/atakmap/android/atos/service/CommandLinkManager$3;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/atakmap/android/atos/service/CommandLinkManager$3;-><init>(Lcom/atakmap/android/atos/service/CommandLinkManager;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_statusListener:Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_pluginContext:Landroid/content/Context;

    .line 42
    .line 43
    iput-object p2, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_serviceContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/atakmap/android/atos/service/CommandLinkManager;->startService()V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getBluetoothScanEnabledEvent()Lcom/toughstump/event/Event;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance p2, Latakplugin/atos/x;

    .line 59
    .line 60
    invoke-direct {p2, p0}, Latakplugin/atos/x;-><init>(Lcom/atakmap/android/atos/service/CommandLinkManager;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static synthetic a(Lcom/atakmap/android/atos/service/CommandLinkManager;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/atakmap/android/atos/service/CommandLinkManager;->updateBluetoothServiceEnabled(Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$000(Lcom/atakmap/android/atos/service/CommandLinkManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_serviceContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/atakmap/android/atos/service/CommandLinkManager;)Lcom/atakmap/android/atos/accessory/service/ICommandLink;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_commandLink:Lcom/atakmap/android/atos/accessory/service/ICommandLink;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/atakmap/android/atos/service/CommandLinkManager;)Landroid/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_permissionsDialog:Landroid/app/AlertDialog;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/atakmap/android/atos/service/CommandLinkManager;Lcom/atakmap/android/atos/accessory/service/ICommandLink;)Lcom/atakmap/android/atos/accessory/service/ICommandLink;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_commandLink:Lcom/atakmap/android/atos/accessory/service/ICommandLink;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1100(Lcom/atakmap/android/atos/service/CommandLinkManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/atakmap/android/atos/service/CommandLinkManager;->showPermissionDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/atakmap/android/atos/service/CommandLinkManager;)Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_dataListener:Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/atakmap/android/atos/service/CommandLinkManager;)Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_statusListener:Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/atakmap/android/atos/service/CommandLinkManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_commandLinkBound:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$402(Lcom/atakmap/android/atos/service/CommandLinkManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_commandLinkBound:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$500(Lcom/atakmap/android/atos/service/CommandLinkManager;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/atakmap/android/atos/service/CommandLinkManager;->updateBluetoothServiceEnabled(Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/atakmap/android/atos/service/CommandLinkManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_lastState:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/atakmap/android/atos/service/CommandLinkManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_lastState:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$700(Lcom/atakmap/android/atos/service/CommandLinkManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_statusCounter:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$702(Lcom/atakmap/android/atos/service/CommandLinkManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_statusCounter:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$708(Lcom/atakmap/android/atos/service/CommandLinkManager;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_statusCounter:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_statusCounter:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$802(Lcom/atakmap/android/atos/service/CommandLinkManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_lastMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$900(Lcom/atakmap/android/atos/service/CommandLinkManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_ignorePermissionsRequest:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic b(Lcom/atakmap/android/atos/service/CommandLinkManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/atakmap/android/atos/service/CommandLinkManager;->lambda$showPermissionDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/atakmap/android/atos/service/CommandLinkManager;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/atakmap/android/atos/service/CommandLinkManager;->lambda$showPermissionDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$showPermissionDialog$0(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_ignorePermissionsRequest:Z

    .line 3
    .line 4
    new-instance p1, Landroid/content/Intent;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    const-class v0, Lcom/toughstump/atos/activity/AtosActivity;

    .line 9
    .line 10
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_serviceContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private synthetic lambda$showPermissionDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_ignorePermissionsRequest:Z

    .line 3
    .line 4
    return-void
.end method

.method private openAppSettings()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_permissionsDialog:Landroid/app/AlertDialog;

    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "package:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_pluginContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_serviceContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private showPermissionDialog()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_serviceContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Bluetooth Permissions Disabled"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 11
    .line 12
    .line 13
    const-string v1, "Would you like to enable the ATOS Permissions?"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 16
    .line 17
    .line 18
    new-instance v1, Latakplugin/atos/v;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Latakplugin/atos/v;-><init>(Lcom/atakmap/android/atos/service/CommandLinkManager;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "OK"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 26
    .line 27
    .line 28
    new-instance v1, Latakplugin/atos/w;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Latakplugin/atos/w;-><init>(Lcom/atakmap/android/atos/service/CommandLinkManager;)V

    .line 31
    .line 32
    .line 33
    const-string v2, "Cancel"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_permissionsDialog:Landroid/app/AlertDialog;

    .line 43
    .line 44
    return-void
.end method

.method private startService()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_pluginContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Lcom/atakmap/android/atos/accessory/service/CommandLinkService;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_serviceContext:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_serviceConnection:Landroid/content/ServiceConnection;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private updateBluetoothServiceEnabled(Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "BLE_SERVICE_START_SCAN"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string p1, "BLE_SERVICE_STOP_SCAN"

    .line 11
    .line 12
    :goto_0
    new-instance p2, Landroid/content/Intent;

    .line 13
    .line 14
    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_serviceContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getBluetoothScanEnabledEvent()Lcom/toughstump/event/Event;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Latakplugin/atos/x;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Latakplugin/atos/x;-><init>(Lcom/atakmap/android/atos/service/CommandLinkManager;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_commandLink:Lcom/atakmap/android/atos/accessory/service/ICommandLink;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_dataListener:Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/atakmap/android/atos/accessory/service/ICommandLink;->unregisterDataInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkDataListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_commandLink:Lcom/atakmap/android/atos/accessory/service/ICommandLink;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_statusListener:Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;

    .line 34
    .line 35
    invoke-interface {v0, v1}, Lcom/atakmap/android/atos/accessory/service/ICommandLink;->unregisterStatusInterface(Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_1
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    :goto_1
    iget-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_serviceContext:Landroid/content/Context;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager;->_serviceConnection:Landroid/content/ServiceConnection;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
