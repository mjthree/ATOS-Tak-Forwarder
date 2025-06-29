.class public final synthetic Latakplugin/atos/L1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# instance fields
.field public final synthetic a:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/L1;->a:Landroid/hardware/usb/UsbDevice;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Latakplugin/atos/L1;->a:Landroid/hardware/usb/UsbDevice;

    check-cast p1, Lcom/felhr/usbserial/UsbSerialDevice;

    invoke-static {v0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->a(Landroid/hardware/usb/UsbDevice;Lcom/felhr/usbserial/UsbSerialDevice;)Z

    move-result p1

    return p1
.end method
