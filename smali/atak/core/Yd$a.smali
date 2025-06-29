.class public final Latak/core/Yd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latak/core/Gk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latak/core/Yd;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n*L\n1#1,133:1\n*E\n"
.end annotation


# instance fields
.field private final O:Latak/core/Fm;

.field final synthetic P:Latak/core/Yd;


# direct methods
.method constructor <init>(Latak/core/Yd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Latak/core/Fm;

    .line 7
    .line 8
    invoke-direct {p1}, Latak/core/Fm;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Latak/core/Yd$a;->O:Latak/core/Fm;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/Yd;->c()Latak/core/G1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 9
    .line 10
    invoke-virtual {v1}, Latak/core/Yd;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_1
    iget-object v1, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 19
    .line 20
    invoke-virtual {v1}, Latak/core/Yd;->f()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget-object v1, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 27
    .line 28
    invoke-virtual {v1}, Latak/core/Yd;->c()Latak/core/G1;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Latak/core/G1;->size()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    const-wide/16 v3, 0x0

    .line 37
    .line 38
    cmp-long v1, v1, v3

    .line 39
    .line 40
    if-gtz v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 44
    .line 45
    const-string v2, "source is closed"

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_0
    iget-object v1, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-virtual {v1, v2}, Latak/core/Yd;->g(Z)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 60
    .line 61
    invoke-virtual {v1}, Latak/core/Yd;->c()Latak/core/G1;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 68
    .line 69
    .line 70
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :cond_3
    :try_start_2
    new-instance v1, Lkotlin/TypeCastException;

    .line 75
    .line 76
    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    .line 77
    .line 78
    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :goto_1
    monitor-exit v0

    .line 83
    throw v1
.end method

.method public flush()V
    .locals 5

    .line 1
    iget-object v0, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/Yd;->c()Latak/core/G1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 9
    .line 10
    invoke-virtual {v1}, Latak/core/Yd;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 17
    .line 18
    invoke-virtual {v1}, Latak/core/Yd;->f()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 25
    .line 26
    invoke-virtual {v1}, Latak/core/Yd;->c()Latak/core/G1;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Latak/core/G1;->size()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    const-wide/16 v3, 0x0

    .line 35
    .line 36
    cmp-long v1, v1, v3

    .line 37
    .line 38
    if-gtz v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 42
    .line 43
    const-string v2, "source is closed"

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :cond_2
    :try_start_1
    const-string v1, "closed"

    .line 56
    .line 57
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :goto_1
    monitor-exit v0

    .line 64
    throw v1
.end method

.method public timeout()Latak/core/Fm;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/Yd$a;->O:Latak/core/Fm;

    .line 2
    .line 3
    return-object v0
.end method

.method public write(Latak/core/G1;J)V
    .locals 7
    .param p1    # Latak/core/G1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 7
    .line 8
    invoke-virtual {v0}, Latak/core/Yd;->c()Latak/core/G1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 14
    .line 15
    invoke-virtual {v1}, Latak/core/Yd;->e()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_4

    .line 20
    .line 21
    :goto_0
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    cmp-long v3, p2, v1

    .line 24
    .line 25
    if-lez v3, :cond_3

    .line 26
    .line 27
    iget-object v3, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 28
    .line 29
    invoke-virtual {v3}, Latak/core/Yd;->f()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    iget-object v3, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 36
    .line 37
    invoke-virtual {v3}, Latak/core/Yd;->d()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    iget-object v5, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 42
    .line 43
    invoke-virtual {v5}, Latak/core/Yd;->c()Latak/core/G1;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v5}, Latak/core/G1;->size()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    sub-long/2addr v3, v5

    .line 52
    cmp-long v1, v3, v1

    .line 53
    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    iget-object v1, p0, Latak/core/Yd$a;->O:Latak/core/Fm;

    .line 57
    .line 58
    iget-object v2, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 59
    .line 60
    invoke-virtual {v2}, Latak/core/Yd;->c()Latak/core/G1;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Latak/core/Fm;->waitUntilNotified(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    iget-object v3, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 75
    .line 76
    invoke-virtual {v3}, Latak/core/Yd;->c()Latak/core/G1;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3, p1, v1, v2}, Latak/core/G1;->write(Latak/core/G1;J)V

    .line 81
    .line 82
    .line 83
    sub-long/2addr p2, v1

    .line 84
    iget-object v1, p0, Latak/core/Yd$a;->P:Latak/core/Yd;

    .line 85
    .line 86
    invoke-virtual {v1}, Latak/core/Yd;->c()Latak/core/G1;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    if-eqz v1, :cond_1

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    .line 97
    .line 98
    const-string p2, "null cannot be cast to non-null type java.lang.Object"

    .line 99
    .line 100
    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 105
    .line 106
    const-string p2, "source is closed"

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1

    .line 112
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 116
    :cond_4
    :try_start_1
    const-string p1, "closed"

    .line 117
    .line 118
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :goto_1
    monitor-exit v0

    .line 125
    throw p1
.end method
