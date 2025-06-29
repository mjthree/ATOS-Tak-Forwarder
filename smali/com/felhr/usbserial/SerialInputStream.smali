.class public Lcom/felhr/usbserial/SerialInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final buffer:[B

.field private bufferSize:I

.field protected final device:Lcom/felhr/usbserial/UsbSerialInterface;

.field private maxBufferSize:I

.field private pointer:I

.field private timeout:I


# direct methods
.method public constructor <init>(Lcom/felhr/usbserial/UsbSerialInterface;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/felhr/usbserial/SerialInputStream;->timeout:I

    const/16 v1, 0x4000

    .line 3
    iput v1, p0, Lcom/felhr/usbserial/SerialInputStream;->maxBufferSize:I

    .line 4
    iput-object p1, p0, Lcom/felhr/usbserial/SerialInputStream;->device:Lcom/felhr/usbserial/UsbSerialInterface;

    .line 5
    new-array p1, v1, [B

    iput-object p1, p0, Lcom/felhr/usbserial/SerialInputStream;->buffer:[B

    .line 6
    iput v0, p0, Lcom/felhr/usbserial/SerialInputStream;->pointer:I

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/felhr/usbserial/SerialInputStream;->bufferSize:I

    return-void
.end method

.method public constructor <init>(Lcom/felhr/usbserial/UsbSerialInterface;I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/felhr/usbserial/SerialInputStream;->timeout:I

    .line 10
    iput-object p1, p0, Lcom/felhr/usbserial/SerialInputStream;->device:Lcom/felhr/usbserial/UsbSerialInterface;

    .line 11
    iput p2, p0, Lcom/felhr/usbserial/SerialInputStream;->maxBufferSize:I

    .line 12
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/felhr/usbserial/SerialInputStream;->buffer:[B

    .line 13
    iput v0, p0, Lcom/felhr/usbserial/SerialInputStream;->pointer:I

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/felhr/usbserial/SerialInputStream;->bufferSize:I

    return-void
.end method

.method private checkFromBuffer()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/felhr/usbserial/SerialInputStream;->bufferSize:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/felhr/usbserial/SerialInputStream;->pointer:I

    .line 6
    .line 7
    if-ge v1, v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/felhr/usbserial/SerialInputStream;->buffer:[B

    .line 10
    .line 11
    add-int/lit8 v2, v1, 0x1

    .line 12
    .line 13
    iput v2, p0, Lcom/felhr/usbserial/SerialInputStream;->pointer:I

    .line 14
    .line 15
    aget-byte v0, v0, v1

    .line 16
    .line 17
    and-int/lit16 v0, v0, 0xff

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/felhr/usbserial/SerialInputStream;->pointer:I

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/felhr/usbserial/SerialInputStream;->bufferSize:I

    .line 25
    .line 26
    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/felhr/usbserial/SerialInputStream;->bufferSize:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/felhr/usbserial/SerialInputStream;->pointer:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public read()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/felhr/usbserial/SerialInputStream;->checkFromBuffer()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/felhr/usbserial/SerialInputStream;->device:Lcom/felhr/usbserial/UsbSerialInterface;

    iget-object v1, p0, Lcom/felhr/usbserial/SerialInputStream;->buffer:[B

    iget v2, p0, Lcom/felhr/usbserial/SerialInputStream;->timeout:I

    invoke-interface {v0, v1, v2}, Lcom/felhr/usbserial/UsbSerialInterface;->syncRead([BI)I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    iput v0, p0, Lcom/felhr/usbserial/SerialInputStream;->bufferSize:I

    .line 4
    iget-object v0, p0, Lcom/felhr/usbserial/SerialInputStream;->buffer:[B

    iget v1, p0, Lcom/felhr/usbserial/SerialInputStream;->pointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/felhr/usbserial/SerialInputStream;->pointer:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/felhr/usbserial/SerialInputStream;->device:Lcom/felhr/usbserial/UsbSerialInterface;

    iget v1, p0, Lcom/felhr/usbserial/SerialInputStream;->timeout:I

    invoke-interface {v0, p1, v1}, Lcom/felhr/usbserial/UsbSerialInterface;->syncRead([BI)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    if-ltz p2, :cond_3

    if-ltz p3, :cond_2

    .line 6
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1

    if-nez p2, :cond_0

    .line 7
    array-length v0, p1

    if-ne p3, v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/felhr/usbserial/SerialInputStream;->read([B)I

    move-result p1

    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/felhr/usbserial/SerialInputStream;->device:Lcom/felhr/usbserial/UsbSerialInterface;

    iget v1, p0, Lcom/felhr/usbserial/SerialInputStream;->timeout:I

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/felhr/usbserial/UsbSerialInterface;->syncRead([BIII)I

    move-result p1

    return p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Length greater than b.length - off"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Length must positive"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Offset must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/felhr/usbserial/SerialInputStream;->timeout:I

    .line 2
    .line 3
    return-void
.end method
