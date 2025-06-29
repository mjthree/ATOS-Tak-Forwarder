.class public Lcom/felhr/usbserial/SerialPortBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;,
        Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;,
        Lcom/felhr/usbserial/SerialPortBuilder$InitSerialPortThread;
    }
.end annotation


# static fields
.field private static final ACTION_USB_PERMISSION:Ljava/lang/String; = "com.felhr.usbserial.USB_PERMISSION"

.field private static final MODE_OPEN:I = 0x1

.field private static final MODE_START:I

.field private static SerialPortBuilder:Lcom/felhr/usbserial/SerialPortBuilder;


# instance fields
.field private baudRate:I

.field private broadcastRegistered:Z

.field private currentPendingPermission:Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;

.field private dataBits:I

.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;",
            ">;"
        }
    .end annotation
.end field

.field private flowControl:I

.field private mode:I

.field private parity:I

.field private volatile processingPermission:Z

.field private final queuedPermissions:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;",
            ">;"
        }
    .end annotation
.end field

.field private serialDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/felhr/usbserial/UsbSerialDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final serialPortCallback:Lcom/felhr/usbserial/SerialPortCallback;

.field private stopBits:I

.field private usbManager:Landroid/hardware/usb/UsbManager;

.field private final usbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Lcom/felhr/usbserial/SerialPortCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->serialDevices:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 12
    .line 13
    const/16 v1, 0x64

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->queuedPermissions:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->processingPermission:Z

    .line 22
    .line 23
    iput v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->mode:I

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->broadcastRegistered:Z

    .line 26
    .line 27
    new-instance v0, Lcom/felhr/usbserial/SerialPortBuilder$1;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/felhr/usbserial/SerialPortBuilder$1;-><init>(Lcom/felhr/usbserial/SerialPortBuilder;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->usbReceiver:Landroid/content/BroadcastReceiver;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder;->serialPortCallback:Lcom/felhr/usbserial/SerialPortCallback;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic a(Landroid/hardware/usb/UsbDevice;Lcom/felhr/usbserial/UsbSerialDevice;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->lambda$disconnectDevice$5(Landroid/hardware/usb/UsbDevice;Lcom/felhr/usbserial/UsbSerialDevice;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/felhr/usbserial/SerialPortBuilder;)Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->currentPendingPermission:Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1000(Lcom/felhr/usbserial/SerialPortBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->dataBits:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1100(Lcom/felhr/usbserial/SerialPortBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->stopBits:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1200(Lcom/felhr/usbserial/SerialPortBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->parity:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1300(Lcom/felhr/usbserial/SerialPortBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->flowControl:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/felhr/usbserial/SerialPortBuilder;Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->createAllPorts(Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/felhr/usbserial/SerialPortBuilder;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->queuedPermissions:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/felhr/usbserial/SerialPortBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/SerialPortBuilder;->launchPermission()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$502(Lcom/felhr/usbserial/SerialPortBuilder;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/SerialPortBuilder;->processingPermission:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lcom/felhr/usbserial/SerialPortBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->mode:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$700(Lcom/felhr/usbserial/SerialPortBuilder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->serialDevices:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/felhr/usbserial/SerialPortBuilder;)Lcom/felhr/usbserial/SerialPortCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->serialPortCallback:Lcom/felhr/usbserial/SerialPortCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/felhr/usbserial/SerialPortBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->baudRate:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic b(Lcom/felhr/usbserial/SerialPortBuilder;Landroid/hardware/usb/UsbDevice;)Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->lambda$getSerialPorts$0(Landroid/hardware/usb/UsbDevice;)Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/felhr/usbserial/SerialPortBuilder;Landroid/hardware/usb/UsbDevice;)Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->lambda$getSerialPorts$1(Landroid/hardware/usb/UsbDevice;)Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;

    move-result-object p0

    return-object p0
.end method

.method private createAllPorts(Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 9
    .line 10
    if-gt v1, v2, :cond_1

    .line 11
    .line 12
    iget-object v2, p1, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/felhr/usbserial/SerialPortBuilder;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 17
    .line 18
    iget-object v3, p1, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p1, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 25
    .line 26
    :cond_0
    iget-object v2, p1, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 27
    .line 28
    iget-object v3, p1, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;->usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 29
    .line 30
    invoke-static {v2, v3, v1}, Lcom/felhr/usbserial/UsbSerialDevice;->createUsbSerialDevice(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbDeviceConnection;I)Lcom/felhr/usbserial/UsbSerialDevice;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/felhr/usbserial/SerialPortBuilder;->serialDevices:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method

.method public static createSerialPortBuilder(Lcom/felhr/usbserial/SerialPortCallback;)Lcom/felhr/usbserial/SerialPortBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcom/felhr/usbserial/SerialPortBuilder;->SerialPortBuilder:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/felhr/usbserial/SerialPortBuilder;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/felhr/usbserial/SerialPortBuilder;-><init>(Lcom/felhr/usbserial/SerialPortCallback;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/felhr/usbserial/SerialPortBuilder;->SerialPortBuilder:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method private createUsbPermission(Landroid/content/Context;Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;)Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.felhr.usbserial.USB_PERMISSION"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.hardware.usb"

    .line 9
    .line 10
    const-string v2, "UsbManager"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/high16 v1, 0x2000000

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, p0, v1}, Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;-><init>(Lcom/felhr/usbserial/SerialPortBuilder;Lcom/felhr/usbserial/SerialPortBuilder$1;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, v0, Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;->pendingIntent:Landroid/app/PendingIntent;

    .line 30
    .line 31
    iput-object p2, v0, Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;->usbDeviceStatus:Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;

    .line 32
    .line 33
    return-object v0
.end method

.method public static synthetic d(Lcom/felhr/usbserial/UsbSerialDevice;Lcom/felhr/usbserial/UsbSerialDevice;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->lambda$disconnectDevice$3(Lcom/felhr/usbserial/UsbSerialDevice;Lcom/felhr/usbserial/UsbSerialDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/felhr/usbserial/SerialPortBuilder;Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->lambda$getSerialPorts$2(Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Landroid/hardware/usb/UsbDevice;Lcom/felhr/usbserial/UsbSerialDevice;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->lambda$disconnectDevice$4(Landroid/hardware/usb/UsbDevice;Lcom/felhr/usbserial/UsbSerialDevice;)Z

    move-result p0

    return p0
.end method

.method private initReceiver(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant",
            "UnspecifiedRegisterReceiverFlag"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->broadcastRegistered:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "com.felhr.usbserial.USB_PERMISSION"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v2, 0x1a

    .line 18
    .line 19
    if-lt v1, v2, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/felhr/usbserial/SerialPortBuilder;->usbReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    invoke-static {p1, v1, v0, v2}, Latakplugin/atos/t;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v1, "SerialPortBuilder"

    .line 29
    .line 30
    const-string v2, "Old android version, not specifying receiver exported"

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/felhr/usbserial/SerialPortBuilder;->usbReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    :goto_0
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/felhr/usbserial/SerialPortBuilder;->broadcastRegistered:Z

    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method private static synthetic lambda$disconnectDevice$3(Lcom/felhr/usbserial/UsbSerialDevice;Lcom/felhr/usbserial/UsbSerialDevice;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/felhr/usbserial/UsbSerialDevice;->getDeviceId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Lcom/felhr/usbserial/UsbSerialDevice;->getDeviceId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method private static synthetic lambda$disconnectDevice$4(Landroid/hardware/usb/UsbDevice;Lcom/felhr/usbserial/UsbSerialDevice;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Lcom/felhr/usbserial/UsbSerialDevice;->getDeviceId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method private static synthetic lambda$disconnectDevice$5(Landroid/hardware/usb/UsbDevice;Lcom/felhr/usbserial/UsbSerialDevice;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-virtual {p1}, Lcom/felhr/usbserial/UsbSerialDevice;->getDeviceId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method private synthetic lambda$getSerialPorts$0(Landroid/hardware/usb/UsbDevice;)Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;
    .locals 1

    .line 1
    new-instance v0, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;-><init>(Lcom/felhr/usbserial/SerialPortBuilder;Landroid/hardware/usb/UsbDevice;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private synthetic lambda$getSerialPorts$1(Landroid/hardware/usb/UsbDevice;)Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;
    .locals 1

    .line 1
    new-instance v0, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;-><init>(Lcom/felhr/usbserial/SerialPortBuilder;Landroid/hardware/usb/UsbDevice;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private synthetic lambda$getSerialPorts$2(Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->devices:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    return p1
.end method

.method private launchPermission()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->processingPermission:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->queuedPermissions:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->currentPendingPermission:Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/felhr/usbserial/SerialPortBuilder;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 15
    .line 16
    iget-object v2, v0, Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;->usbDeviceStatus:Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;->pendingIntent:Landroid/app/PendingIntent;

    .line 21
    .line 22
    invoke-virtual {v1, v2, v0}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->processingPermission:Z

    .line 32
    .line 33
    :goto_0
    return-void
.end method


# virtual methods
.method public disconnectDevice(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->serialDevices:Ljava/util/List;

    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    move-result-object v0

    new-instance v1, Latakplugin/atos/K1;

    invoke-direct {v1, p1}, Latakplugin/atos/K1;-><init>(Landroid/hardware/usb/UsbDevice;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/felhr/usbserial/UsbSerialDevice;

    .line 7
    invoke-virtual {v4}, Lcom/felhr/usbserial/UsbSerialDevice;->syncClose()V

    .line 8
    iget-object v4, p0, Lcom/felhr/usbserial/SerialPortBuilder;->serialDevices:Ljava/util/List;

    new-instance v5, Latakplugin/atos/L1;

    invoke-direct {v5, p1}, Latakplugin/atos/L1;-><init>(Landroid/hardware/usb/UsbDevice;)V

    invoke-static {v4, v5}, Lcom/felhr/utils/Utils;->removeIf(Ljava/util/Collection;Lcom/annimon/stream/function/Predicate;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/felhr/usbserial/SerialPortBuilder;->serialDevices:Ljava/util/List;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne v3, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public disconnectDevice(Lcom/felhr/usbserial/UsbSerialDevice;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/felhr/usbserial/UsbSerialDevice;->syncClose()V

    .line 2
    iget-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->serialDevices:Ljava/util/List;

    new-instance v1, Latakplugin/atos/N1;

    invoke-direct {v1, p1}, Latakplugin/atos/N1;-><init>(Lcom/felhr/usbserial/UsbSerialDevice;)V

    invoke-static {v0, v1}, Lcom/felhr/utils/Utils;->removeIf(Ljava/util/Collection;Lcom/annimon/stream/function/Predicate;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder;->serialDevices:Ljava/util/List;

    const/4 p1, 0x1

    return p1
.end method

.method public getPossibleSerialPorts(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "usb"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Latakplugin/atos/M1;

    .line 24
    .line 25
    invoke-direct {v0}, Latakplugin/atos/M1;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public getSerialPorts(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->initReceiver(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->devices:Ljava/util/List;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->getPossibleSerialPorts(Landroid/content/Context;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v2, Latakplugin/atos/P1;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Latakplugin/atos/P1;-><init>(Lcom/felhr/usbserial/SerialPortBuilder;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/annimon/stream/Stream;->map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v2, Lcom/felhr/usbserial/a;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/felhr/usbserial/a;-><init>(Lcom/felhr/usbserial/SerialPortBuilder;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/annimon/stream/Stream;->filter(Lcom/annimon/stream/function/Predicate;)Lcom/annimon/stream/Stream;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    return v1

    .line 53
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;

    .line 68
    .line 69
    iget-object v3, p0, Lcom/felhr/usbserial/SerialPortBuilder;->queuedPermissions:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 70
    .line 71
    invoke-direct {p0, p1, v2}, Lcom/felhr/usbserial/SerialPortBuilder;->createUsbPermission(Landroid/content/Context;Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;)Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    iget-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder;->devices:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    .line 83
    .line 84
    iget-boolean p1, p0, Lcom/felhr/usbserial/SerialPortBuilder;->processingPermission:Z

    .line 85
    .line 86
    if-nez p1, :cond_6

    .line 87
    .line 88
    invoke-direct {p0}, Lcom/felhr/usbserial/SerialPortBuilder;->launchPermission()V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->getPossibleSerialPorts(Landroid/content/Context;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/annimon/stream/Stream;->of(Ljava/lang/Iterable;)Lcom/annimon/stream/Stream;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v2, Latakplugin/atos/O1;

    .line 101
    .line 102
    invoke-direct {v2, p0}, Latakplugin/atos/O1;-><init>(Lcom/felhr/usbserial/SerialPortBuilder;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lcom/annimon/stream/Stream;->map(Lcom/annimon/stream/function/Function;)Lcom/annimon/stream/Stream;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/annimon/stream/Stream;->toList()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->devices:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_4

    .line 120
    .line 121
    return v1

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->devices:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_5

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;

    .line 139
    .line 140
    iget-object v2, p0, Lcom/felhr/usbserial/SerialPortBuilder;->queuedPermissions:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 141
    .line 142
    invoke-direct {p0, p1, v1}, Lcom/felhr/usbserial/SerialPortBuilder;->createUsbPermission(Landroid/content/Context;Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;)Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    iget-boolean p1, p0, Lcom/felhr/usbserial/SerialPortBuilder;->processingPermission:Z

    .line 151
    .line 152
    if-nez p1, :cond_6

    .line 153
    .line 154
    invoke-direct {p0}, Lcom/felhr/usbserial/SerialPortBuilder;->launchPermission()V

    .line 155
    .line 156
    .line 157
    :cond_6
    :goto_3
    const/4 p1, 0x1

    .line 158
    return p1
.end method

.method public openSerialPorts(Landroid/content/Context;IIIII)Z
    .locals 0

    .line 1
    iput p2, p0, Lcom/felhr/usbserial/SerialPortBuilder;->baudRate:I

    .line 2
    .line 3
    iput p3, p0, Lcom/felhr/usbserial/SerialPortBuilder;->dataBits:I

    .line 4
    .line 5
    iput p4, p0, Lcom/felhr/usbserial/SerialPortBuilder;->stopBits:I

    .line 6
    .line 7
    iput p5, p0, Lcom/felhr/usbserial/SerialPortBuilder;->parity:I

    .line 8
    .line 9
    iput p6, p0, Lcom/felhr/usbserial/SerialPortBuilder;->flowControl:I

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    iput p2, p0, Lcom/felhr/usbserial/SerialPortBuilder;->mode:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->getSerialPorts(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public unregisterListeners(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->broadcastRegistered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder;->usbReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/felhr/usbserial/SerialPortBuilder;->broadcastRegistered:Z

    .line 12
    .line 13
    :cond_0
    return-void
.end method
