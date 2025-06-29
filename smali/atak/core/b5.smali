.class public Latak/core/b5;
.super Latak/core/Fm;
.source "SourceFile"


# instance fields
.field private a:Latak/core/Fm;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Latak/core/Fm;)V
    .locals 1
    .param p1    # Latak/core/Fm;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Latak/core/Fm;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Latak/core/b5;->a:Latak/core/Fm;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Latak/core/Fm;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "delegate"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/b5;->a:Latak/core/Fm;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Latak/core/Fm;)Latak/core/b5;
    .locals 1
    .param p1    # Latak/core/Fm;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Latak/core/b5;->a:Latak/core/Fm;

    .line 7
    .line 8
    return-object p0
.end method

.method public final synthetic c(Latak/core/Fm;)V
    .locals 1
    .param p1    # Latak/core/Fm;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Latak/core/b5;->a:Latak/core/Fm;

    .line 7
    .line 8
    return-void
.end method

.method public clearDeadline()Latak/core/Fm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/b5;->a:Latak/core/Fm;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/Fm;->clearDeadline()Latak/core/Fm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public clearTimeout()Latak/core/Fm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/b5;->a:Latak/core/Fm;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/Fm;->clearTimeout()Latak/core/Fm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Latak/core/b5;->a:Latak/core/Fm;

    invoke-virtual {v0}, Latak/core/Fm;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Latak/core/Fm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Latak/core/b5;->a:Latak/core/Fm;

    invoke-virtual {v0, p1, p2}, Latak/core/Fm;->deadlineNanoTime(J)Latak/core/Fm;

    move-result-object p1

    return-object p1
.end method

.method public hasDeadline()Z
    .locals 1

    .line 1
    iget-object v0, p0, Latak/core/b5;->a:Latak/core/Fm;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/Fm;->hasDeadline()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public throwIfReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/b5;->a:Latak/core/Fm;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/Fm;->throwIfReached()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Latak/core/Fm;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "unit"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Latak/core/b5;->a:Latak/core/Fm;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Latak/core/Fm;->timeout(JLjava/util/concurrent/TimeUnit;)Latak/core/Fm;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public timeoutNanos()J
    .locals 2

    .line 1
    iget-object v0, p0, Latak/core/b5;->a:Latak/core/Fm;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/Fm;->timeoutNanos()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
