.class Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/SerialPortBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbDeviceStatus"
.end annotation


# instance fields
.field public open:Z

.field final synthetic this$0:Lcom/felhr/usbserial/SerialPortBuilder;

.field public usbDevice:Landroid/hardware/usb/UsbDevice;

.field public usbDeviceConnection:Landroid/hardware/usb/UsbDeviceConnection;


# direct methods
.method public constructor <init>(Lcom/felhr/usbserial/SerialPortBuilder;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;->this$0:Lcom/felhr/usbserial/SerialPortBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;->usbDevice:Landroid/hardware/usb/UsbDevice;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method
