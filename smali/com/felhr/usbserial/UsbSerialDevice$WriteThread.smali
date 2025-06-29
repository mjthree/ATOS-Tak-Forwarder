.class Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;
.super Lcom/felhr/usbserial/AbstractWorkerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/UsbSerialDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteThread"
.end annotation


# instance fields
.field private outEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field final synthetic this$0:Lcom/felhr/usbserial/UsbSerialDevice;


# direct methods
.method private constructor <init>(Lcom/felhr/usbserial/UsbSerialDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    invoke-direct {p0}, Lcom/felhr/usbserial/AbstractWorkerThread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felhr/usbserial/UsbSerialDevice;Lcom/felhr/usbserial/UsbSerialDevice$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;-><init>(Lcom/felhr/usbserial/UsbSerialDevice;)V

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/felhr/usbserial/UsbSerialDevice;->serialBuffer:Lcom/felhr/usbserial/SerialBuffer;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/felhr/usbserial/SerialBuffer;->getWriteBuffer()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;->this$0:Lcom/felhr/usbserial/UsbSerialDevice;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/felhr/usbserial/UsbSerialDevice;->connection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 17
    .line 18
    array-length v3, v0

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setUsbEndpoint(Landroid/hardware/usb/UsbEndpoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/UsbSerialDevice$WriteThread;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 2
    .line 3
    return-void
.end method
