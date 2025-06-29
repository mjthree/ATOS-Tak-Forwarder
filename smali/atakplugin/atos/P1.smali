.class public final synthetic Latakplugin/atos/P1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/Function;


# instance fields
.field public final synthetic a:Lcom/felhr/usbserial/SerialPortBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/felhr/usbserial/SerialPortBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/P1;->a:Lcom/felhr/usbserial/SerialPortBuilder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Latakplugin/atos/P1;->a:Lcom/felhr/usbserial/SerialPortBuilder;

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    invoke-static {v0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->c(Lcom/felhr/usbserial/SerialPortBuilder;Landroid/hardware/usb/UsbDevice;)Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;

    move-result-object p1

    return-object p1
.end method
