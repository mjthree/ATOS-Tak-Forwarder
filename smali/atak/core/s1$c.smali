.class public final Latak/core/s1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latak/core/Gk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latak/core/s1;->sink(Latak/core/Gk;)Latak/core/Gk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic O:Latak/core/s1;

.field final synthetic P:Latak/core/Gk;


# direct methods
.method constructor <init>(Latak/core/s1;Latak/core/Gk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Latak/core/Gk;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 2
    .line 3
    iput-object p2, p0, Latak/core/s1$c;->P:Latak/core/Gk;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/s1;->enter()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Latak/core/s1$c;->P:Latak/core/Gk;

    .line 7
    .line 8
    invoke-interface {v0}, Latak/core/Gk;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iget-object v1, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Latak/core/s1;->c(Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    :try_start_1
    iget-object v1, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Latak/core/s1;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :goto_0
    iget-object v1, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Latak/core/s1;->c(Z)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-object v0, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 2
    .line 3
    invoke-virtual {v0}, Latak/core/s1;->enter()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Latak/core/s1$c;->P:Latak/core/Gk;

    .line 7
    .line 8
    invoke-interface {v0}, Latak/core/Gk;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iget-object v1, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Latak/core/s1;->c(Z)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    :try_start_1
    iget-object v1, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Latak/core/s1;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :goto_0
    iget-object v1, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Latak/core/s1;->c(Z)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public s()Latak/core/s1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic timeout()Latak/core/Fm;
    .locals 1

    .line 1
    invoke-virtual {p0}, Latak/core/s1$c;->s()Latak/core/s1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AsyncTimeout.sink("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Latak/core/s1$c;->P:Latak/core/Gk;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
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
    invoke-virtual {p1}, Latak/core/G1;->size()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    move-wide v5, p2

    .line 13
    invoke-static/range {v1 .. v6}, Latakplugin/atos/c;->e(JJJ)V

    .line 14
    .line 15
    .line 16
    :goto_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    cmp-long v2, p2, v0

    .line 19
    .line 20
    if-lez v2, :cond_3

    .line 21
    .line 22
    iget-object v2, p1, Latak/core/G1;->O:Latak/core/Eh;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_1
    const/high16 v3, 0x10000

    .line 30
    .line 31
    int-to-long v3, v3

    .line 32
    cmp-long v3, v0, v3

    .line 33
    .line 34
    if-gez v3, :cond_2

    .line 35
    .line 36
    iget v3, v2, Latak/core/Eh;->c:I

    .line 37
    .line 38
    iget v4, v2, Latak/core/Eh;->b:I

    .line 39
    .line 40
    sub-int/2addr v3, v4

    .line 41
    int-to-long v3, v3

    .line 42
    add-long/2addr v0, v3

    .line 43
    cmp-long v3, v0, p2

    .line 44
    .line 45
    if-ltz v3, :cond_1

    .line 46
    .line 47
    move-wide v0, p2

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    iget-object v2, v2, Latak/core/Eh;->f:Latak/core/Eh;

    .line 50
    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_2
    iget-object v2, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 58
    .line 59
    invoke-virtual {v2}, Latak/core/s1;->enter()V

    .line 60
    .line 61
    .line 62
    :try_start_0
    iget-object v2, p0, Latak/core/s1$c;->P:Latak/core/Gk;

    .line 63
    .line 64
    invoke-interface {v2, p1, v0, v1}, Latak/core/Gk;->write(Latak/core/G1;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    sub-long/2addr p2, v0

    .line 68
    const/4 v0, 0x1

    .line 69
    iget-object v1, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Latak/core/s1;->c(Z)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_3

    .line 77
    :catch_0
    move-exception p1

    .line 78
    :try_start_1
    iget-object p2, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Latak/core/s1;->b(Ljava/io/IOException;)Ljava/io/IOException;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :goto_3
    iget-object p2, p0, Latak/core/s1$c;->O:Latak/core/s1;

    .line 86
    .line 87
    const/4 p3, 0x0

    .line 88
    invoke-virtual {p2, p3}, Latak/core/s1;->c(Z)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_3
    return-void
.end method
