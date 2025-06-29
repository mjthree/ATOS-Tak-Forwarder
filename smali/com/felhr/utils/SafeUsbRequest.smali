.class public Lcom/felhr/utils/SafeUsbRequest;
.super Landroid/hardware/usb/UsbRequest;
.source "SourceFile"


# static fields
.field static final usbRqBufferField:Ljava/lang/String; = "mBuffer"

.field static final usbRqLengthField:Ljava/lang/String; = "mLength"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public queue(Ljava/nio/ByteBuffer;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-class v2, Landroid/hardware/usb/UsbRequest;

    .line 4
    .line 5
    :try_start_0
    const-string v3, "mBuffer"

    .line 6
    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const-string v4, "mLength"

    .line 12
    .line 13
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-array v4, v1, [Ljava/lang/reflect/AccessibleObject;

    .line 18
    .line 19
    aput-object v3, v4, v0

    .line 20
    .line 21
    invoke-static {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 22
    .line 23
    .line 24
    new-array v4, v1, [Ljava/lang/reflect/AccessibleObject;

    .line 25
    .line 26
    aput-object v2, v4, v0

    .line 27
    .line 28
    invoke-static {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    invoke-super {p0, p1, p2}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    new-instance p2, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw p2
.end method
