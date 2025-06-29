.class Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/SerialPortBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingUsbPermission"
.end annotation


# instance fields
.field public pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/felhr/usbserial/SerialPortBuilder;

.field public usbDeviceStatus:Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;


# direct methods
.method private constructor <init>(Lcom/felhr/usbserial/SerialPortBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felhr/usbserial/SerialPortBuilder;Lcom/felhr/usbserial/SerialPortBuilder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/SerialPortBuilder$PendingUsbPermission;-><init>(Lcom/felhr/usbserial/SerialPortBuilder;)V

    return-void
.end method
