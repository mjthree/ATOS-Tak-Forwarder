.class Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/usbserial/SerialBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynchronizedBuffer"
.end annotation


# instance fields
.field private final buffer:Latak/core/G1;

.field final synthetic this$0:Lcom/felhr/usbserial/SerialBuffer;


# direct methods
.method constructor <init>(Lcom/felhr/usbserial/SerialBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;->this$0:Lcom/felhr/usbserial/SerialBuffer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Latak/core/G1;

    .line 7
    .line 8
    invoke-direct {p1}, Latak/core/G1;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;->buffer:Latak/core/G1;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method declared-synchronized get()[B
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;->buffer:Latak/core/G1;

    .line 3
    .line 4
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception v0

    .line 21
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 29
    .line 30
    .line 31
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;->buffer:Latak/core/G1;

    .line 32
    .line 33
    invoke-virtual {v0}, Latak/core/G1;->size()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    const-wide/16 v2, 0x4000

    .line 38
    .line 39
    cmp-long v0, v0, v2

    .line 40
    .line 41
    if-gtz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;->buffer:Latak/core/G1;

    .line 44
    .line 45
    invoke-virtual {v0}, Latak/core/G1;->A()[B

    .line 46
    .line 47
    .line 48
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;->buffer:Latak/core/G1;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v3}, Latak/core/G1;->d0(J)[B

    .line 53
    .line 54
    .line 55
    move-result-object v0
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;->this$0:Lcom/felhr/usbserial/SerialBuffer;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/felhr/usbserial/SerialBuffer;->access$000(Lcom/felhr/usbserial/SerialBuffer;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-static {v0, v1}, Lcom/felhr/usbserial/UsbSerialDebugger;->printLogGet([BZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_2
    monitor-exit p0

    .line 69
    return-object v0

    .line 70
    :catch_1
    move-exception v0

    .line 71
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    const/4 v0, 0x0

    .line 75
    new-array v0, v0, [B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-object v0

    .line 79
    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 80
    throw v0
.end method

.method declared-synchronized put([B)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    :try_start_0
    array-length v0, p1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;->this$0:Lcom/felhr/usbserial/SerialBuffer;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/felhr/usbserial/SerialBuffer;->access$000(Lcom/felhr/usbserial/SerialBuffer;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-static {p1, v0}, Lcom/felhr/usbserial/UsbSerialDebugger;->printLogPut([BZ)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/felhr/usbserial/SerialBuffer$SynchronizedBuffer;->buffer:Latak/core/G1;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Latak/core/G1;->k1([B)Latak/core/G1;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1

    .line 35
    :cond_2
    :goto_2
    monitor-exit p0

    .line 36
    return-void
.end method
