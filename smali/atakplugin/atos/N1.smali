.class public final synthetic Latakplugin/atos/N1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/felhr/usbserial/UsbSerialDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/felhr/usbserial/UsbSerialDevice;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/N1;->a:Lcom/felhr/usbserial/UsbSerialDevice;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Latakplugin/atos/N1;->a:Lcom/felhr/usbserial/UsbSerialDevice;

    check-cast p1, Lcom/felhr/usbserial/UsbSerialDevice;

    invoke-static {v0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->d(Lcom/felhr/usbserial/UsbSerialDevice;Lcom/felhr/usbserial/UsbSerialDevice;)Z

    move-result p1

    return p1
.end method
