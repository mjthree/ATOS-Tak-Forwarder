.class public abstract Lorg/sqlite/core/CoreStatement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/core/Codes;


# instance fields
.field protected batch:[Ljava/lang/Object;

.field protected batchPos:I

.field public final conn:Lorg/sqlite/SQLiteConnection;

.field public pointer:Lorg/sqlite/core/SafeStmtPtr;

.field protected resultsWaiting:Z

.field protected final rs:Lorg/sqlite/core/CoreResultSet;

.field protected sql:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/sqlite/core/CoreStatement;->sql:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z

    .line 11
    .line 12
    iput-object p1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 13
    .line 14
    new-instance p1, Lorg/sqlite/jdbc4/JDBC4ResultSet;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lorg/sqlite/jdbc4/JDBC4ResultSet;-><init>(Lorg/sqlite/core/CoreStatement;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method protected final checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/core/SafeStmtPtr;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 11
    .line 12
    const-string v1, "statement is not executing"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method protected exec()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->sql:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    instance-of v1, v0, Lorg/sqlite/jdbc3/JDBC3Connection;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lorg/sqlite/jdbc3/JDBC3Connection;

    invoke-virtual {v0}, Lorg/sqlite/jdbc3/JDBC3Connection;->tryEnforceTransactionMode()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/sqlite/core/DB;->execute(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->notifyFirstStatementExecuted()V

    .line 7
    iput-boolean v1, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z

    .line 8
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    new-instance v2, Latakplugin/atos/G;

    invoke-direct {v2}, Latakplugin/atos/G;-><init>()V

    invoke-virtual {v1, v2}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    .line 9
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->notifyFirstStatementExecuted()V

    .line 10
    iput-boolean v0, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z

    .line 11
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    invoke-virtual {v0}, Lorg/sqlite/core/SafeStmtPtr;->close()I

    .line 12
    throw v1

    .line 13
    :cond_2
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "SQLite JDBC internal error: rs.isOpen() on exec."

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "SQLiteJDBC internal error: sql==null"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected exec(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 15
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    instance-of v1, v0, Lorg/sqlite/jdbc3/JDBC3Connection;

    if-eqz v1, :cond_0

    .line 17
    check-cast v0, Lorg/sqlite/jdbc3/JDBC3Connection;

    invoke-virtual {v0}, Lorg/sqlite/jdbc3/JDBC3Connection;->tryEnforceTransactionMode()V

    :cond_0
    const/4 v0, 0x0

    .line 18
    :try_start_0
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v1

    iget-object v2, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lorg/sqlite/core/DB;->execute(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->notifyFirstStatementExecuted()V

    .line 20
    iput-boolean p1, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z

    .line 21
    iget-object p1, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    new-instance v1, Latakplugin/atos/G;

    invoke-direct {v1}, Latakplugin/atos/G;-><init>()V

    invoke-virtual {p1, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception p1

    .line 22
    invoke-virtual {p0}, Lorg/sqlite/core/CoreStatement;->notifyFirstStatementExecuted()V

    .line 23
    iput-boolean v0, p0, Lorg/sqlite/core/CoreStatement;->resultsWaiting:Z

    .line 24
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {v0}, Lorg/sqlite/core/SafeStmtPtr;->close()I

    .line 26
    :cond_2
    throw p1

    .line 27
    :cond_3
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "SQLite JDBC internal error: rs.isOpen() on exec."

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_4
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "SQLiteJDBC internal error: sql==null"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDatabase()Lorg/sqlite/core/DB;
    .locals 1

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
    return-object v0
.end method

.method protected internalClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/sqlite/core/SafeStmtPtr;->isClosed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->isClosed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/sqlite/core/CoreResultSet;->close()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    .line 29
    .line 30
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/sqlite/core/SafeStmtPtr;->close()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/16 v1, 0x15

    .line 39
    .line 40
    if-eq v0, v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 43
    .line 44
    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Lorg/sqlite/core/DB;->throwex(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x1

    .line 53
    const-string v1, "Connection is closed"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lorg/sqlite/core/DB;->newSQLException(ILjava/lang/String;)Lorg/sqlite/SQLiteException;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    throw v0

    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method isOpen()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/core/SafeStmtPtr;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method protected notifyFirstStatementExecuted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/sqlite/SQLiteConnection;->setFirstStatementExecuted(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
