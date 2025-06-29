.class abstract Lcom/felhr/usbserial/AbstractWorkerThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field firstTime:Z

.field private volatile keep:Z

.field private volatile workingThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/felhr/usbserial/AbstractWorkerThread;->firstTime:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/felhr/usbserial/AbstractWorkerThread;->keep:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method abstract doRun()V
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/felhr/usbserial/AbstractWorkerThread;->keep:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/felhr/usbserial/AbstractWorkerThread;->workingThread:Ljava/lang/Thread;

    .line 11
    .line 12
    :goto_0
    iget-boolean v0, p0, Lcom/felhr/usbserial/AbstractWorkerThread;->keep:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/felhr/usbserial/AbstractWorkerThread;->workingThread:Ljava/lang/Thread;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/felhr/usbserial/AbstractWorkerThread;->doRun()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method stopThread()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/felhr/usbserial/AbstractWorkerThread;->keep:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/felhr/usbserial/AbstractWorkerThread;->workingThread:Ljava/lang/Thread;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/felhr/usbserial/AbstractWorkerThread;->workingThread:Ljava/lang/Thread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
