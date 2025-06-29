.class public Lorg/sqlite/core/SafeStmtPtr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/core/SafeStmtPtr$SafePtrConsumer;,
        Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;,
        Lorg/sqlite/core/SafeStmtPtr$SafePtrDoubleFunction;,
        Lorg/sqlite/core/SafeStmtPtr$SafePtrLongFunction;,
        Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;
    }
.end annotation


# instance fields
.field private closeException:Ljava/sql/SQLException;

.field private volatile closed:Z

.field private closedRC:I

.field private final db:Lorg/sqlite/core/DB;

.field private final ptr:J


# direct methods
.method public constructor <init>(Lorg/sqlite/core/DB;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/sqlite/core/SafeStmtPtr;->closed:Z

    .line 6
    .line 7
    iput-object p1, p0, Lorg/sqlite/core/SafeStmtPtr;->db:Lorg/sqlite/core/DB;

    .line 8
    .line 9
    iput-wide p2, p0, Lorg/sqlite/core/SafeStmtPtr;->ptr:J

    .line 10
    .line 11
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/sqlite/core/SafeStmtPtr;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 7
    .line 8
    const-string v1, "stmt pointer is closed"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method private internalClose()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lorg/sqlite/core/SafeStmtPtr;->closed:Z

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lorg/sqlite/core/SafeStmtPtr;->closeException:Ljava/sql/SQLException;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lorg/sqlite/core/SafeStmtPtr;->closedRC:I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    iput-boolean v0, p0, Lorg/sqlite/core/SafeStmtPtr;->closed:Z

    .line 13
    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    throw v1

    .line 20
    :cond_1
    iget-object v1, p0, Lorg/sqlite/core/SafeStmtPtr;->db:Lorg/sqlite/core/DB;

    .line 21
    .line 22
    iget-wide v2, p0, Lorg/sqlite/core/SafeStmtPtr;->ptr:J

    .line 23
    .line 24
    invoke-virtual {v1, p0, v2, v3}, Lorg/sqlite/core/DB;->finalize(Lorg/sqlite/core/SafeStmtPtr;J)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Lorg/sqlite/core/SafeStmtPtr;->closedRC:I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    iput-boolean v0, p0, Lorg/sqlite/core/SafeStmtPtr;->closed:Z

    .line 31
    .line 32
    return v1

    .line 33
    :goto_0
    :try_start_2
    iput-object v1, p0, Lorg/sqlite/core/SafeStmtPtr;->closeException:Ljava/sql/SQLException;

    .line 34
    .line 35
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :goto_1
    iput-boolean v0, p0, Lorg/sqlite/core/SafeStmtPtr;->closed:Z

    .line 37
    .line 38
    throw v1
.end method


# virtual methods
.method public close()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/SafeStmtPtr;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/core/SafeStmtPtr;->internalClose()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    monitor-exit v0

    .line 9
    return v1

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Lorg/sqlite/core/SafeStmtPtr;

    .line 20
    .line 21
    iget-wide v2, p0, Lorg/sqlite/core/SafeStmtPtr;->ptr:J

    .line 22
    .line 23
    iget-wide v4, p1, Lorg/sqlite/core/SafeStmtPtr;->ptr:J

    .line 24
    .line 25
    cmp-long p1, v2, v4

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v0, v1

    .line 31
    :goto_0
    return v0

    .line 32
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/sqlite/core/SafeStmtPtr;->ptr:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/sqlite/core/SafeStmtPtr;->closed:Z

    .line 2
    .line 3
    return v0
.end method

.method public safeRun(Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction<",
            "TT;TE;>;)TT;^",
            "Ljava/sql/SQLException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/SafeStmtPtr;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/core/SafeStmtPtr;->ensureOpen()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/sqlite/core/SafeStmtPtr;->db:Lorg/sqlite/core/DB;

    .line 8
    .line 9
    iget-wide v2, p0, Lorg/sqlite/core/SafeStmtPtr;->ptr:J

    .line 10
    .line 11
    invoke-interface {p1, v1, v2, v3}, Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;->run(Lorg/sqlite/core/DB;J)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    monitor-exit v0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method public safeRunConsume(Lorg/sqlite/core/SafeStmtPtr$SafePtrConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/sqlite/core/SafeStmtPtr$SafePtrConsumer<",
            "TE;>;)V^",
            "Ljava/sql/SQLException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/SafeStmtPtr;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/core/SafeStmtPtr;->ensureOpen()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/sqlite/core/SafeStmtPtr;->db:Lorg/sqlite/core/DB;

    .line 8
    .line 9
    iget-wide v2, p0, Lorg/sqlite/core/SafeStmtPtr;->ptr:J

    .line 10
    .line 11
    invoke-interface {p1, v1, v2, v3}, Lorg/sqlite/core/SafeStmtPtr$SafePtrConsumer;->run(Lorg/sqlite/core/DB;J)V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public safeRunDouble(Lorg/sqlite/core/SafeStmtPtr$SafePtrDoubleFunction;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/sqlite/core/SafeStmtPtr$SafePtrDoubleFunction<",
            "TE;>;)D^",
            "Ljava/sql/SQLException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/SafeStmtPtr;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/core/SafeStmtPtr;->ensureOpen()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/sqlite/core/SafeStmtPtr;->db:Lorg/sqlite/core/DB;

    .line 8
    .line 9
    iget-wide v2, p0, Lorg/sqlite/core/SafeStmtPtr;->ptr:J

    .line 10
    .line 11
    invoke-interface {p1, v1, v2, v3}, Lorg/sqlite/core/SafeStmtPtr$SafePtrDoubleFunction;->run(Lorg/sqlite/core/DB;J)D

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    monitor-exit v0

    .line 16
    return-wide v1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method public safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction<",
            "TE;>;)I^",
            "Ljava/sql/SQLException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/SafeStmtPtr;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/core/SafeStmtPtr;->ensureOpen()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/sqlite/core/SafeStmtPtr;->db:Lorg/sqlite/core/DB;

    .line 8
    .line 9
    iget-wide v2, p0, Lorg/sqlite/core/SafeStmtPtr;->ptr:J

    .line 10
    .line 11
    invoke-interface {p1, v1, v2, v3}, Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;->run(Lorg/sqlite/core/DB;J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    monitor-exit v0

    .line 16
    return p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method public safeRunLong(Lorg/sqlite/core/SafeStmtPtr$SafePtrLongFunction;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lorg/sqlite/core/SafeStmtPtr$SafePtrLongFunction<",
            "TE;>;)J^",
            "Ljava/sql/SQLException;",
            "^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/SafeStmtPtr;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/core/SafeStmtPtr;->ensureOpen()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lorg/sqlite/core/SafeStmtPtr;->db:Lorg/sqlite/core/DB;

    .line 8
    .line 9
    iget-wide v2, p0, Lorg/sqlite/core/SafeStmtPtr;->ptr:J

    .line 10
    .line 11
    invoke-interface {p1, v1, v2, v3}, Lorg/sqlite/core/SafeStmtPtr$SafePtrLongFunction;->run(Lorg/sqlite/core/DB;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    monitor-exit v0

    .line 16
    return-wide v1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method
