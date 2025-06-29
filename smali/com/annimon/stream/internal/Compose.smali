.class public final Lcom/annimon/stream/internal/Compose;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static closeables(Ljava/io/Closeable;Ljava/io/Closeable;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/internal/Compose$2;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/internal/Compose$2;-><init>(Ljava/io/Closeable;Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static runnables(Ljava/lang/Runnable;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/internal/Compose$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/internal/Compose$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
