.class public abstract Lorg/sqlite/jdbc3/JDBC3PreparedStatement;
.super Lorg/sqlite/core/CorePreparedStatement;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;-><init>(Lorg/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lorg/sqlite/jdbc3/JDBC3PreparedStatement;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->lambda$execute$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/sqlite/jdbc3/JDBC3PreparedStatement;)Ljava/sql/ResultSet;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->lambda$executeQuery$1()Ljava/sql/ResultSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/sqlite/jdbc3/JDBC3PreparedStatement;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->lambda$executeLargeUpdate$2()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$execute$0()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 3
    .line 4
    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {v1, p0, v2}, Lorg/sqlite/core/DB;->execute(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput-boolean v1, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :try_start_1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->getDatabase()Lorg/sqlite/core/DB;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Lorg/sqlite/core/DB;->changes()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iput-wide v2, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->updateCount:J

    .line 26
    .line 27
    iget v2, p0, Lorg/sqlite/core/CorePreparedStatement;->columnCount:I

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    move v0, v1

    .line 32
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_0

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    move-object v4, v1

    .line 41
    move v1, v0

    .line 42
    move-object v0, v4

    .line 43
    :goto_0
    if-nez v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 46
    .line 47
    invoke-virtual {v1}, Lorg/sqlite/core/SafeStmtPtr;->isClosed()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 54
    .line 55
    new-instance v2, Latakplugin/atos/c0;

    .line 56
    .line 57
    invoke-direct {v2}, Latakplugin/atos/c0;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lorg/sqlite/core/SafeStmtPtr;->safeRunConsume(Lorg/sqlite/core/SafeStmtPtr$SafePtrConsumer;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    throw v0
.end method

.method private synthetic lambda$executeLargeUpdate$2()Ljava/lang/Long;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lorg/sqlite/core/DB;->executeUpdate(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private synthetic lambda$executeQuery$1()Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lorg/sqlite/core/DB;->execute(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->getResultSet()Ljava/sql/ResultSet;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/sqlite/core/SafeStmtPtr;->isClosed()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 30
    .line 31
    new-instance v2, Latakplugin/atos/H;

    .line 32
    .line 33
    invoke-direct {v2}, Latakplugin/atos/H;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    throw v0
.end method

.method private readBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    if-ltz p2, :cond_2

    .line 2
    .line 3
    new-array v0, p2, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, p2, :cond_1

    .line 7
    .line 8
    sub-int v2, p2, v1

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, -0x1

    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    add-int/2addr v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 20
    .line 21
    const-string p2, "End of stream has been reached"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    new-instance p2, Ljava/sql/SQLException;

    .line 29
    .line 30
    const-string v0, "Error reading stream"

    .line 31
    .line 32
    invoke-direct {p2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 36
    .line 37
    .line 38
    throw p2

    .line 39
    :cond_1
    return-object v0

    .line 40
    :cond_2
    new-instance p1, Ljava/sql/SQLException;

    .line 41
    .line 42
    const-string p2, "Error reading stream. Length should be non-negative"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method


# virtual methods
.method public addBatch()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->checkOpen()V

    .line 2
    iget v0, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    iget v1, p0, Lorg/sqlite/core/CorePreparedStatement;->paramCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    .line 3
    iget v2, p0, Lorg/sqlite/core/CorePreparedStatement;->batchQueryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/sqlite/core/CorePreparedStatement;->batchQueryCount:I

    .line 4
    iget-object v2, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 5
    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    :cond_0
    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 7
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iput-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 10
    :cond_1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    iget v1, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    iget v2, p0, Lorg/sqlite/core/CorePreparedStatement;->paramCount:I

    sub-int v3, v1, v2

    invoke-static {v0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public addBatch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public clearParameters()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 5
    .line 6
    new-instance v1, Latakplugin/atos/g0;

    .line 7
    .line 8
    invoke-direct {v1}, Latakplugin/atos/g0;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRunConsume(Lorg/sqlite/core/SafeStmtPtr$SafePtrConsumer;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    .line 19
    .line 20
    :goto_0
    iget v1, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    .line 21
    .line 22
    iget v2, p0, Lorg/sqlite/core/CorePreparedStatement;->paramCount:I

    .line 23
    .line 24
    add-int/2addr v1, v2

    .line 25
    if-ge v0, v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v2, v1, v0

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public execute()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->checkOpen()V

    .line 2
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->close()V

    .line 3
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    new-instance v1, Latakplugin/atos/c0;

    invoke-direct {v1}, Latakplugin/atos/c0;-><init>()V

    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRunConsume(Lorg/sqlite/core/SafeStmtPtr$SafePtrConsumer;)V

    .line 4
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    instance-of v1, v0, Lorg/sqlite/jdbc3/JDBC3Connection;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lorg/sqlite/jdbc3/JDBC3Connection;

    invoke-virtual {v0}, Lorg/sqlite/jdbc3/JDBC3Connection;->tryEnforceTransactionMode()V

    .line 6
    :cond_0
    new-instance v0, Latakplugin/atos/e0;

    invoke-direct {v0, p0}, Latakplugin/atos/e0;-><init>(Lorg/sqlite/jdbc3/JDBC3PreparedStatement;)V

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3Statement;->withConnectionTimeout(Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeLargeUpdate()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->checkOpen()V

    .line 2
    iget v0, p0, Lorg/sqlite/core/CorePreparedStatement;->columnCount:I

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->close()V

    .line 4
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    new-instance v1, Latakplugin/atos/c0;

    invoke-direct {v1}, Latakplugin/atos/c0;-><init>()V

    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRunConsume(Lorg/sqlite/core/SafeStmtPtr$SafePtrConsumer;)V

    .line 5
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    instance-of v1, v0, Lorg/sqlite/jdbc3/JDBC3Connection;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lorg/sqlite/jdbc3/JDBC3Connection;

    invoke-virtual {v0}, Lorg/sqlite/jdbc3/JDBC3Connection;->tryEnforceTransactionMode()V

    .line 7
    :cond_0
    new-instance v0, Latakplugin/atos/f0;

    invoke-direct {v0, p0}, Latakplugin/atos/f0;-><init>(Lorg/sqlite/jdbc3/JDBC3PreparedStatement;)V

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3Statement;->withConnectionTimeout(Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 8
    :cond_1
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Query returns results"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeLargeUpdate(Ljava/lang/String;I)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeLargeUpdate(Ljava/lang/String;[I)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeLargeUpdate(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeQuery()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->checkOpen()V

    .line 2
    iget v0, p0, Lorg/sqlite/core/CorePreparedStatement;->columnCount:I

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->close()V

    .line 4
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    new-instance v1, Latakplugin/atos/c0;

    invoke-direct {v1}, Latakplugin/atos/c0;-><init>()V

    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRunConsume(Lorg/sqlite/core/SafeStmtPtr$SafePtrConsumer;)V

    .line 5
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    instance-of v1, v0, Lorg/sqlite/jdbc3/JDBC3Connection;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lorg/sqlite/jdbc3/JDBC3Connection;

    invoke-virtual {v0}, Lorg/sqlite/jdbc3/JDBC3Connection;->tryEnforceTransactionMode()V

    .line 7
    :cond_0
    new-instance v0, Latakplugin/atos/d0;

    invoke-direct {v0, p0}, Latakplugin/atos/d0;-><init>(Lorg/sqlite/jdbc3/JDBC3PreparedStatement;)V

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3Statement;->withConnectionTimeout(Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/ResultSet;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Query does not return results"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->executeLargeUpdate()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeUpdate(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->invalid()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    .line 5
    .line 6
    check-cast v0, Ljava/sql/ResultSetMetaData;

    .line 7
    .line 8
    return-object v0
.end method

.method public getParameterClassName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->checkOpen()V

    .line 2
    .line 3
    .line 4
    const-string p1, "java.lang.String"

    .line 5
    .line 6
    return-object p1
.end method

.method public getParameterCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/sqlite/core/CorePreparedStatement;->paramCount:I

    .line 5
    .line 6
    return v0
.end method

.method public getParameterMetaData()Ljava/sql/ParameterMetaData;
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ljava/sql/ParameterMetaData;

    .line 3
    .line 4
    return-object v0
.end method

.method public getParameterMode(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getParameterType(I)I
    .locals 0

    const/16 p1, 0xc

    return p1
.end method

.method public getParameterTypeName(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, "VARCHAR"

    .line 2
    .line 3
    return-object p1
.end method

.method public getPrecision(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getScale(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getStatement()Ljava/sql/Statement;
    .locals 0

    return-object p0
.end method

.method protected invalid()Ljava/sql/SQLException;
    .locals 2

    .line 1
    new-instance v0, Ljava/sql/SQLException;

    .line 2
    .line 3
    const-string v1, "method cannot be called on a PreparedStatement"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public isNullable(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isSigned(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setArray(ILjava/sql/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unsupported()Ljava/sql/SQLException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    throw p1
.end method

.method public setAsciiStream(ILjava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setUnicodeStream(ILjava/io/InputStream;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setBigDecimal(ILjava/math/BigDecimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setBinaryStream(ILjava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setBytes(I[B)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->readBytes(Ljava/io/InputStream;I)[B

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setBytes(I[B)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setBlob(ILjava/sql/Blob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unsupported()Ljava/sql/SQLException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    throw p1
.end method

.method public setBoolean(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setInt(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setByte(IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setInt(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setBytes(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCharacterStream(ILjava/io/Reader;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance p3, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x2000

    .line 7
    .line 8
    new-array v0, v0, [C

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/Reader;->read([C)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p3, v0, v2, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :goto_1
    new-instance p2, Ljava/sql/SQLException;

    .line 32
    .line 33
    new-instance p3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v0, "Cannot read from character stream, exception message: "

    .line 39
    .line 40
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p2, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p2
.end method

.method public setClob(ILjava/sql/Clob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unsupported()Ljava/sql/SQLException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    throw p1
.end method

.method public setDate(ILjava/sql/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setDate(ILjava/sql/Date;Ljava/util/Calendar;)V

    return-void
.end method

.method public setDate(ILjava/sql/Date;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setObject(ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/core/CorePreparedStatement;->setDateByMilliseconds(ILjava/lang/Long;Ljava/util/Calendar;)V

    :goto_0
    return-void
.end method

.method public setDouble(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Double;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Float;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/lang/Float;-><init>(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setInt(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setLong(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Long;

    .line 2
    .line 3
    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setNull(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setNull(IILjava/lang/String;)V

    return-void
.end method

.method public setNull(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    return-void
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2
    :cond_0
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 3
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/sqlite/core/CorePreparedStatement;->setDateByMilliseconds(ILjava/lang/Long;Ljava/util/Calendar;)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_3
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 9
    new-instance v0, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->intValue()I

    move-result p2

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_4
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_5
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_6
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 15
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setBoolean(IZ)V

    goto :goto_0

    .line 16
    :cond_7
    instance-of v0, p2, [B

    if-eqz v0, :cond_8

    .line 17
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_8
    instance-of v0, p2, Ljava/math/BigDecimal;

    if-eqz v0, :cond_9

    .line 19
    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setBigDecimal(ILjava/math/BigDecimal;)V

    goto :goto_0

    .line 20
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setObject(ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setObject(ILjava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setRef(ILjava/sql/Ref;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unsupported()Ljava/sql/SQLException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    throw p1
.end method

.method public setShort(IS)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setInt(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setTime(ILjava/sql/Time;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setTime(ILjava/sql/Time;Ljava/util/Calendar;)V

    return-void
.end method

.method public setTime(ILjava/sql/Time;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setObject(ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/core/CorePreparedStatement;->setDateByMilliseconds(ILjava/lang/Long;Ljava/util/Calendar;)V

    :goto_0
    return-void
.end method

.method public setTimestamp(ILjava/sql/Timestamp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V

    return-void
.end method

.method public setTimestamp(ILjava/sql/Timestamp;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setObject(ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/core/CorePreparedStatement;->setDateByMilliseconds(ILjava/lang/Long;Ljava/util/Calendar;)V

    :goto_0
    return-void
.end method

.method public setURL(ILjava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->unsupported()Ljava/sql/SQLException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    throw p1
.end method

.method public setUnicodeStream(ILjava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setString(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0, p2, p3}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->readBytes(Ljava/io/InputStream;I)[B

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string p3, "UTF-8"

    .line 16
    .line 17
    invoke-direct {v0, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p1

    .line 25
    new-instance p2, Ljava/sql/SQLException;

    .line 26
    .line 27
    const-string p3, "UTF-8 is not supported"

    .line 28
    .line 29
    invoke-direct {p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    throw p2
.end method

.method protected unsupported()Ljava/sql/SQLException;
    .locals 2

    .line 1
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    .line 2
    .line 3
    const-string v1, "not implemented by SQLite JDBC driver"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
