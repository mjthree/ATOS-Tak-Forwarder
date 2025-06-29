.class public abstract Lorg/sqlite/jdbc3/JDBC3Statement;
.super Lorg/sqlite/core/CoreStatement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable;,
        Lorg/sqlite/jdbc3/JDBC3Statement$BackupObserver;
    }
.end annotation


# instance fields
.field private exhaustedResults:Z

.field private queryTimeout:I

.field protected updateCount:J


# direct methods
.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/core/CoreStatement;-><init>(Lorg/sqlite/SQLiteConnection;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->exhaustedResults:Z

    .line 6
    .line 7
    iput p1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->queryTimeout:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Statement;->lambda$executeBatch$3(J)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/sqlite/jdbc3/JDBC3Statement;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Statement;->lambda$execute$0(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/sqlite/jdbc3/JDBC3Statement;Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Statement;->lambda$executeLargeUpdate$2(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/sqlite/jdbc3/JDBC3Statement;)Ljava/sql/ResultSet;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->lambda$executeQuery$1()Ljava/sql/ResultSet;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$execute$0(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/sqlite/ExtendedCommand;->parse(Ljava/lang/String;)Lorg/sqlite/ExtendedCommand$SQLExtension;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p1}, Lorg/sqlite/ExtendedCommand$SQLExtension;->execute(Lorg/sqlite/core/DB;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    iput-object p1, p0, Lorg/sqlite/core/CoreStatement;->sql:Ljava/lang/String;

    .line 20
    .line 21
    iget-object p1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1, p0}, Lorg/sqlite/core/DB;->prepare(Lorg/sqlite/core/CoreStatement;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->exec()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->getDatabase()Lorg/sqlite/core/DB;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->changes()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->updateCount:J

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->exhaustedResults:Z

    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method private static synthetic lambda$executeBatch$3(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method

.method private synthetic lambda$executeLargeUpdate$2(Ljava/lang/String;)Ljava/lang/Long;
    .locals 5
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
    invoke-static {p1}, Lorg/sqlite/ExtendedCommand;->parse(Ljava/lang/String;)Lorg/sqlite/ExtendedCommand$SQLExtension;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1, v0}, Lorg/sqlite/ExtendedCommand$SQLExtension;->execute(Lorg/sqlite/core/DB;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->total_changes()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-virtual {v0, p1}, Lorg/sqlite/core/DB;->_exec(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->total_changes()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    sub-long v0, v3, v1

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->internalClose()V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :try_start_1
    const-string v0, ""

    .line 46
    .line 47
    invoke-static {p1, v0}, Lorg/sqlite/core/DB;->newSQLException(ILjava/lang/String;)Lorg/sqlite/SQLiteException;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :goto_1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->internalClose()V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method private synthetic lambda$executeQuery$1()Ljava/sql/ResultSet;
    .locals 4
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
    invoke-virtual {v0, p0}, Lorg/sqlite/core/DB;->prepare(Lorg/sqlite/core/CoreStatement;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->exec()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->exhaustedResults:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->getResultSet()Ljava/sql/ResultSet;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->internalClose()V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/sql/SQLException;

    .line 28
    .line 29
    const-string v1, "SQLITE_DONE"

    .line 30
    .line 31
    const/16 v2, 0x65

    .line 32
    .line 33
    const-string v3, "query does not return ResultSet"

    .line 34
    .line 35
    invoke-direct {v0, v3, v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method


# virtual methods
.method public addBatch(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->internalClose()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    array-length v0, v0

    .line 13
    if-lt v1, v0, :cond_2

    .line 14
    .line 15
    :cond_0
    iget v0, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    const/16 v1, 0xa

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    array-length v2, v1

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iput-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 39
    .line 40
    iget v1, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    .line 41
    .line 42
    add-int/lit8 v2, v1, 0x1

    .line 43
    .line 44
    iput v2, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    .line 45
    .line 46
    aput-object p1, v0, v1

    .line 47
    .line 48
    return-void
.end method

.method public cancel()V
    .locals 1
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
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->interrupt()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public clearBatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    .line 3
    .line 4
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    :goto_0
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 9
    .line 10
    array-length v2, v1

    .line 11
    if-ge v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v2, v1, v0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public clearWarnings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->internalClose()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->internalClose()V

    .line 2
    new-instance v0, Latakplugin/atos/r0;

    invoke-direct {v0, p0, p1}, Latakplugin/atos/r0;-><init>(Lorg/sqlite/jdbc3/JDBC3Statement;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3Statement;->withConnectionTimeout(Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Statement;->execute(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public execute(Ljava/lang/String;[I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->unsupported()Ljava/sql/SQLException;

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

    .line 5
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->unsupported()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeBatch()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->executeLargeBatch()[J

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Latakplugin/atos/q0;

    .line 10
    .line 11
    invoke-direct {v1}, Latakplugin/atos/q0;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/stream/LongStream;->mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public executeLargeBatch()[J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->internalClose()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget v0, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_5

    .line 14
    :cond_0
    new-array v6, v0, [J

    .line 15
    .line 16
    iget-object v2, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 17
    .line 18
    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    monitor-enter v8

    .line 23
    :goto_0
    if-ge v1, v0, :cond_3

    .line 24
    .line 25
    :try_start_0
    iget-object v2, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 26
    .line 27
    aget-object v2, v2, v1

    .line 28
    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    iput-object v2, p0, Lorg/sqlite/core/CoreStatement;->sql:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v8, p0}, Lorg/sqlite/core/DB;->prepare(Lorg/sqlite/core/CoreStatement;)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v8, p0, v2}, Lorg/sqlite/core/DB;->executeUpdate(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    aput-wide v2, v6, v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    .line 43
    :try_start_1
    iget-object v2, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2}, Lorg/sqlite/core/SafeStmtPtr;->close()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_3

    .line 53
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_1
    move-exception v0

    .line 57
    goto :goto_2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    move-object v7, v0

    .line 60
    :try_start_2
    new-instance v0, Ljava/sql/BatchUpdateException;

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v3, "batch entry "

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ": "

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const/4 v4, 0x0

    .line 92
    const/4 v5, 0x0

    .line 93
    move-object v2, v0

    .line 94
    invoke-direct/range {v2 .. v7}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[JLjava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    :goto_2
    :try_start_3
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 99
    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    invoke-virtual {v1}, Lorg/sqlite/core/SafeStmtPtr;->close()I

    .line 103
    .line 104
    .line 105
    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->clearBatch()V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :catchall_2
    move-exception v0

    .line 111
    goto :goto_4

    .line 112
    :cond_3
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->clearBatch()V

    .line 113
    .line 114
    .line 115
    monitor-exit v8

    .line 116
    return-object v6

    .line 117
    :goto_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 118
    throw v0

    .line 119
    :cond_4
    :goto_5
    new-array v0, v1, [J

    .line 120
    .line 121
    return-object v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->internalClose()V

    .line 2
    iput-object p1, p0, Lorg/sqlite/core/CoreStatement;->sql:Ljava/lang/String;

    .line 3
    new-instance v0, Latakplugin/atos/t0;

    invoke-direct {v0, p0, p1}, Latakplugin/atos/t0;-><init>(Lorg/sqlite/jdbc3/JDBC3Statement;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3Statement;->withConnectionTimeout(Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public executeLargeUpdate(Ljava/lang/String;I)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Statement;->executeLargeUpdate(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public executeLargeUpdate(Ljava/lang/String;[I)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->unsupported()Ljava/sql/SQLException;

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

    .line 6
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->unsupported()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->internalClose()V

    .line 4
    iput-object p1, p0, Lorg/sqlite/core/CoreStatement;->sql:Ljava/lang/String;

    .line 5
    new-instance p1, Latakplugin/atos/s0;

    invoke-direct {p1, p0}, Latakplugin/atos/s0;-><init>(Lorg/sqlite/jdbc3/JDBC3Statement;)V

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Statement;->withConnectionTimeout(Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/ResultSet;

    return-object p1
.end method

.method public executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    iput-boolean p2, v0, Lorg/sqlite/core/CoreResultSet;->closeStmt:Z

    .line 2
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public executeUpdate(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Statement;->executeLargeUpdate(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public executeUpdate(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Statement;->executeUpdate(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public executeUpdate(Ljava/lang/String;[I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->unsupported()Ljava/sql/SQLException;

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

    .line 4
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->unsupported()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFetchDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3e8

    return v0
.end method

.method public getFetchSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    .line 2
    .line 3
    check-cast v0, Ljava/sql/ResultSet;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/sql/ResultSet;->getFetchSize()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getSQLiteDatabaseMetaData()Lorg/sqlite/core/CoreDatabaseMetaData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/sqlite/core/CoreDatabaseMetaData;->getGeneratedKeys()Ljava/sql/ResultSet;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getLargeMaxRows()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    .line 2
    .line 3
    iget-wide v0, v0, Lorg/sqlite/core/CoreResultSet;->maxRows:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public getLargeUpdateCount()J
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
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/sqlite/core/SafeStmtPtr;->isClosed()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->isOpen()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-boolean v0, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 27
    .line 28
    new-instance v1, Latakplugin/atos/G;

    .line 29
    .line 30
    invoke-direct {v1}, Latakplugin/atos/G;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    iget-wide v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->updateCount:J

    .line 40
    .line 41
    return-wide v0

    .line 42
    :cond_0
    const-wide/16 v0, -0x1

    .line 43
    .line 44
    return-wide v0
.end method

.method public getMaxFieldSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRows()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    .line 2
    .line 3
    iget-wide v0, v0, Lorg/sqlite/core/CoreResultSet;->maxRows:J

    .line 4
    .line 5
    long-to-int v0, v0

    .line 6
    return v0
.end method

.method public getMoreResults()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3Statement;->getMoreResults(I)Z

    move-result v0

    return v0
.end method

.method public getMoreResults(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->checkOpen()V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {p1}, Lorg/sqlite/core/CoreResultSet;->close()V

    const-wide/16 v1, -0x1

    .line 4
    iput-wide v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->updateCount:J

    .line 5
    iput-boolean v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->exhaustedResults:Z

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Invalid argument"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/sql/SQLFeatureNotSupportedException;

    const-string v0, "Argument not supported: Statement.KEEP_CURRENT_RESULT or Statement.CLOSE_ALL_RESULTS"

    invoke-direct {p1, v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getQueryTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->queryTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public getResultSet()Ljava/sql/ResultSet;
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
    iget-boolean v0, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->exhaustedResults:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->isOpen()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 19
    .line 20
    new-instance v2, Latakplugin/atos/G;

    .line 21
    .line 22
    invoke-direct {v2}, Latakplugin/atos/G;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    .line 33
    .line 34
    iget-object v1, v0, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 39
    .line 40
    new-instance v2, Latakplugin/atos/F;

    .line 41
    .line 42
    invoke-direct {v2}, Latakplugin/atos/F;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lorg/sqlite/core/SafeStmtPtr;->safeRun(Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, [Ljava/lang/String;

    .line 50
    .line 51
    iput-object v1, v0, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    .line 54
    .line 55
    iget-object v1, v0, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    .line 56
    .line 57
    iput-object v1, v0, Lorg/sqlite/core/CoreResultSet;->cols:[Ljava/lang/String;

    .line 58
    .line 59
    iget-boolean v1, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    xor-int/2addr v1, v2

    .line 63
    iput-boolean v1, v0, Lorg/sqlite/core/CoreResultSet;->emptyResultSet:Z

    .line 64
    .line 65
    iput-boolean v2, v0, Lorg/sqlite/core/CoreResultSet;->open:Z

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z

    .line 69
    .line 70
    check-cast v0, Ljava/sql/ResultSet;

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_3
    new-instance v0, Ljava/sql/SQLException;

    .line 74
    .line 75
    const-string v1, "ResultSet already requested"

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0
.end method

.method public getResultSetConcurrency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3ef

    return v0
.end method

.method public getResultSetHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    return v0
.end method

.method public getResultSetType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3eb

    return v0
.end method

.method public getUpdateCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->getLargeUpdateCount()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-int v0, v0

    .line 6
    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public setCursorName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setEscapeProcessing(Z)V
    .locals 0

    return-void
.end method

.method public setFetchDirection(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/sql/SQLException;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "Unknown fetch direction "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, ". Must be one of FETCH_FORWARD, FETCH_REVERSE, or FETCH_UNKNOWN in java.sql.ResultSet"

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :pswitch_0
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setFetchSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    .line 2
    .line 3
    check-cast v0, Ljava/sql/ResultSet;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/sql/ResultSet;->setFetchSize(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setLargeMaxRows(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    .line 8
    .line 9
    iput-wide p1, v0, Lorg/sqlite/core/CoreResultSet;->maxRows:J

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    .line 13
    .line 14
    const-string p2, "max row count must be >= 0"

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public setMaxFieldSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "max field size "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, " cannot be negative"

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public setMaxRows(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/sqlite/jdbc3/JDBC3Statement;->setLargeMaxRows(J)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setQueryTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->queryTimeout:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    .line 7
    .line 8
    const-string v0, "query timeout must be >= 0"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
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

.method protected withConnectionTimeout(Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getBusyTimeout()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->queryTimeout:I

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 12
    .line 13
    mul-int/lit16 v1, v1, 0x3e8

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lorg/sqlite/SQLiteConnection;->setBusyTimeout(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable;->call()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->queryTimeout:I

    .line 23
    .line 24
    if-lez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lorg/sqlite/SQLiteConnection;->setBusyTimeout(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    iget v1, p0, Lorg/sqlite/jdbc3/JDBC3Statement;->queryTimeout:I

    .line 34
    .line 35
    if-lez v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lorg/sqlite/SQLiteConnection;->setBusyTimeout(I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    throw p1
.end method
