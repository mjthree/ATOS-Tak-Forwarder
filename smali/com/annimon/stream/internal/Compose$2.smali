.class final Lcom/annimon/stream/internal/Compose$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/internal/Compose;->closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Ljava/io/Closeable;

.field final synthetic val$b:Ljava/io/Closeable;


# direct methods
.method constructor <init>(Ljava/io/Closeable;Ljava/io/Closeable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/internal/Compose$2;->val$a:Ljava/io/Closeable;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/internal/Compose$2;->val$b:Ljava/io/Closeable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/annimon/stream/internal/Compose$2;->val$a:Ljava/io/Closeable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    .line 5
    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/annimon/stream/internal/Compose$2;->val$b:Ljava/io/Closeable;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    instance-of v1, v0, Ljava/lang/Error;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Ljava/lang/Error;

    .line 22
    .line 23
    throw v0

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    check-cast v0, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    throw v0

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    :try_start_2
    iget-object v1, p0, Lcom/annimon/stream/internal/Compose$2;->val$b:Ljava/io/Closeable;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 37
    .line 38
    .line 39
    :catchall_2
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    check-cast v0, Ljava/lang/RuntimeException;

    .line 44
    .line 45
    throw v0

    .line 46
    :cond_2
    check-cast v0, Ljava/lang/Error;

    .line 47
    .line 48
    throw v0
.end method
