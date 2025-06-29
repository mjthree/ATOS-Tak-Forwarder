.class public final synthetic Lcom/felhr/usbserial/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/felhr/usbserial/SerialPortBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/felhr/usbserial/SerialPortBuilder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/felhr/usbserial/a;->a:Lcom/felhr/usbserial/SerialPortBuilder;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/a;->a:Lcom/felhr/usbserial/SerialPortBuilder;

    check-cast p1, Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;

    invoke-static {v0, p1}, Lcom/felhr/usbserial/SerialPortBuilder;->e(Lcom/felhr/usbserial/SerialPortBuilder;Lcom/felhr/usbserial/SerialPortBuilder$UsbDeviceStatus;)Z

    move-result p1

    return p1
.end method
