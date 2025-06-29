.class public Lcom/felhr/usbserial/SerialBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;
    }
.end annotation


# static fields
.field static final DEFAULT_READ_BUFFER_SIZE:I = 0x4000

.field static final MAX_BULK_BUFFER:I = 0x4000


# instance fields
.field private debugging:Z

.field private readBuffer:Ljava/nio/ByteBuffer;

.field private readBufferCompatible:[B

.field private final writeBuffer:Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/felhr/usbserial/SerialBuffer;->debugging:Z

    .line 6
    .line 7
    new-instance v0, Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;-><init>(Lcom/felhr/usbserial/SerialBuffer;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/felhr/usbserial/SerialBuffer;->writeBuffer:Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;

    .line 13
    .line 14
    const/16 v0, 0x4000

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/felhr/usbserial/SerialBuffer;->readBuffer:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-array p1, v0, [B

    .line 26
    .line 27
    iput-object p1, p0, Lcom/felhr/usbserial/SerialBuffer;->readBufferCompatible:[B

    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/felhr/usbserial/SerialBuffer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/felhr/usbserial/SerialBuffer;->debugging:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public clearReadBuffer()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/felhr/usbserial/SerialBuffer;->readBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v0
.end method

.method public debug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/felhr/usbserial/SerialBuffer;->debugging:Z

    .line 2
    .line 3
    return-void
.end method

.method public getBufferCompatible()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/SerialBuffer;->readBufferCompatible:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getDataReceived()[B
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/felhr/usbserial/SerialBuffer;->readBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    new-array v1, v0, [B

    .line 9
    .line 10
    iget-object v2, p0, Lcom/felhr/usbserial/SerialBuffer;->readBuffer:Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/felhr/usbserial/SerialBuffer;->readBuffer:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/felhr/usbserial/SerialBuffer;->debugging:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-static {v1, v0}, Lcom/felhr/usbserial/UsbSerialDebugger;->printReadLogGet([BZ)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit p0

    .line 33
    return-object v1

    .line 34
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v0
.end method

.method public getDataReceivedCompatible(I)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/SerialBuffer;->readBufferCompatible:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public getReadBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/felhr/usbserial/SerialBuffer;->readBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public getWriteBuffer()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/SerialBuffer;->writeBuffer:Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;->get()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public putWriteBuffer([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/felhr/usbserial/SerialBuffer;->writeBuffer:Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;->put([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
