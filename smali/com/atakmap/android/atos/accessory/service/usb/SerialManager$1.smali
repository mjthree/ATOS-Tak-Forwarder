.class Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->setArduinoListener(Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;


# direct methods
.method constructor <init>(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$1;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$1;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$200(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager$1;->this$0:Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;->access$100(Lcom/atakmap/android/atos/accessory/service/usb/SerialManager;)Landroid/hardware/usb/UsbDevice;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/atakmap/android/atos/accessory/service/usb/UsbCallbackInterface;->onUsbAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
