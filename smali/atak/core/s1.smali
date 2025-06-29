.class public Latak/core/s1;
.super Latak/core/Fm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Latak/core/s1$b;,
        Latak/core/s1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,368:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Latak/core/s1$a;

.field private static final g:I = 0x10000

.field private static final h:J

.field private static head:Latak/core/s1;

.field private static final i:J


# instance fields
.field private e:Z

.field private f:J

.field private next:Latak/core/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Latak/core/s1$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Latak/core/s1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Latak/core/s1;->Companion:Latak/core/s1$a;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0x3c

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Latak/core/s1;->h:J

    .line 18
    .line 19
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    sput-wide v0, Latak/core/s1;->i:J

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Latak/core/Fm;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(J)J
    .locals 2

    .line 2
    iget-wide v0, p0, Latak/core/s1;->f:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public static final synthetic a(Latak/core/s1;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Latak/core/s1;->f:J

    return-wide v0
.end method

.method public static final synthetic access$getHead$cp()Latak/core/s1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Latak/core/s1;->head:Latak/core/s1;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_MILLIS$cp()J
    .locals 2

    .line 1
    sget-wide v0, Latak/core/s1;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_NANOS$cp()J
    .locals 2

    .line 1
    sget-wide v0, Latak/core/s1;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getNext$p(Latak/core/s1;)Latak/core/s1;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p0, p0, Latak/core/s1;->next:Latak/core/s1;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$remainingNanos(Latak/core/s1;J)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Latak/core/s1;->a(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$setHead$cp(Latak/core/s1;)V
    .locals 0
    .param p0    # Latak/core/s1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p0, Latak/core/s1;->head:Latak/core/s1;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setNext$p(Latak/core/s1;Latak/core/s1;)V
    .locals 0
    .param p1    # Latak/core/s1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Latak/core/s1;->next:Latak/core/s1;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setTimeoutAt$p(Latak/core/s1;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Latak/core/s1;->f:J

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final b(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cause"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Latak/core/s1;->exit()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Latak/core/s1;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public final c(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Latak/core/s1;->exit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Latak/core/s1;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    throw p1

    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public final enter()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Latak/core/s1;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Latak/core/Fm;->timeoutNanos()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p0}, Latak/core/Fm;->hasDeadline()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    cmp-long v3, v0, v3

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v3, 0x1

    .line 23
    iput-boolean v3, p0, Latak/core/s1;->e:Z

    .line 24
    .line 25
    sget-object v3, Latak/core/s1;->Companion:Latak/core/s1$a;

    .line 26
    .line 27
    invoke-static {v3, p0, v0, v1, v2}, Latak/core/s1$a;->b(Latak/core/s1$a;Latak/core/s1;JZ)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v1, "Unbalanced enter/exit"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public final exit()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Latak/core/s1;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iput-boolean v1, p0, Latak/core/s1;->e:Z

    .line 8
    .line 9
    sget-object v0, Latak/core/s1;->Companion:Latak/core/s1$a;

    .line 10
    .line 11
    invoke-static {v0, p0}, Latak/core/s1$a;->a(Latak/core/s1$a;Latak/core/s1;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 2
    .line 3
    const-string v1, "timeout"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final sink(Latak/core/Gk;)Latak/core/Gk;
    .locals 1
    .param p1    # Latak/core/Gk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Latak/core/s1$c;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Latak/core/s1$c;-><init>(Latak/core/s1;Latak/core/Gk;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final source(Latak/core/Pk;)Latak/core/Pk;
    .locals 1
    .param p1    # Latak/core/Pk;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Latak/core/s1$d;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Latak/core/s1$d;-><init>(Latak/core/s1;Latak/core/Pk;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    return-void
.end method
