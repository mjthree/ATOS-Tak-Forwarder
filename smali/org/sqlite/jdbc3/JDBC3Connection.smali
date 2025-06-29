.class public abstract Lorg/sqlite/jdbc3/JDBC3Connection;
.super Lorg/sqlite/SQLiteConnection;
.source "SourceFile"


# instance fields
.field private readOnly:Z

.field private final savePoint:Ljava/util/concurrent/atomic/AtomicInteger;

.field private typeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/sqlite/SQLiteConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->savePoint:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    iput-boolean p2, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->readOnly:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public clearWarnings()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3ef

    const/4 v1, 0x2

    const/16 v2, 0x3eb

    .line 1
    invoke-virtual {p0, v2, v0, v1}, Lorg/sqlite/jdbc3/JDBC3Connection;->createStatement(III)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/sqlite/jdbc3/JDBC3Connection;->createStatement(III)Ljava/sql/Statement;

    move-result-object p1

    return-object p1
.end method

.method public abstract createStatement(III)Ljava/sql/Statement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/sql/SQLFeatureNotSupportedException;

    .line 2
    .line 3
    const-string p2, "not implemented by SQLite JDBC driver"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method public getHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    return v0
.end method

.method public getTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->typeMap:Ljava/util/Map;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->typeMap:Ljava/util/Map;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->typeMap:Ljava/util/Map;

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0
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

.method public isReadOnly()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConfig;->getOpenModeFlags()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v2, Lorg/sqlite/SQLiteOpenMode;->READONLY:Lorg/sqlite/SQLiteOpenMode;

    .line 14
    .line 15
    iget v2, v2, Lorg/sqlite/SQLiteOpenMode;->flag:I

    .line 16
    .line 17
    and-int/2addr v1, v2

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConfig;->isExplicitReadOnly()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-boolean v0, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->readOnly:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 34
    :goto_1
    return v0
.end method

.method public nativeSQL(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3ef

    const/4 v1, 0x2

    const/16 v2, 0x3eb

    .line 1
    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "SQLite does not support Stored Procedures"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3eb

    const/16 v1, 0x3ef

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public abstract prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public releaseSavepoint(Ljava/sql/Savepoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "RELEASE SAVEPOINT %s"

    .line 23
    .line 24
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, p1, v1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    .line 34
    .line 35
    const-string v0, "database in auto-commit mode"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p1}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v1, "ROLLBACK TO SAVEPOINT %s"

    .line 23
    .line 24
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, p1, v1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    .line 37
    .line 38
    const-string v0, "database in auto-commit mode"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setHoldability(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    .line 9
    .line 10
    const-string v0, "SQLite only supports CLOSE_CURSORS_AT_COMMIT"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public setReadOnly(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConfig;->isExplicitReadOnly()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->readOnly:Z

    .line 16
    .line 17
    if-eq p1, v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->isFirstStatementExecuted()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    .line 27
    .line 28
    const-string v0, "Cannot change Read-Only status of this connection: the first statement was already executed and the transaction is open."

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->isReadOnly()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ne p1, v0, :cond_3

    .line 39
    .line 40
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->readOnly:Z

    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    new-instance p1, Ljava/sql/SQLException;

    .line 44
    .line 45
    const-string v0, "Cannot change read-only flag after establishing a connection. Use SQLiteConfig#setReadOnly and SQLiteConfig.createConnection()."

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public setSavepoint()Ljava/sql/Savepoint;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/sqlite/SQLiteConnectionConfig;->setAutoCommit(Z)V

    .line 4
    :cond_0
    new-instance v0, Lorg/sqlite/jdbc3/JDBC3Savepoint;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->savePoint:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/sqlite/jdbc3/JDBC3Savepoint;-><init>(I)V

    .line 5
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object v2

    invoke-interface {v0}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "SAVEPOINT %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public setSavepoint(Ljava/lang/String;)Ljava/sql/Savepoint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 7
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/sqlite/SQLiteConnectionConfig;->setAutoCommit(Z)V

    .line 9
    :cond_0
    new-instance v0, Lorg/sqlite/jdbc3/JDBC3Savepoint;

    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->savePoint:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v0, v2, p1}, Lorg/sqlite/jdbc3/JDBC3Savepoint;-><init>(ILjava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object p1

    invoke-interface {v0}, Ljava/sql/Savepoint;->getSavepointName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "SAVEPOINT %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public setTypeMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3Connection;->typeMap:Ljava/util/Map;

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw p1
.end method

.method public tryEnforceTransactionMode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConfig;->isExplicitReadOnly()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getCurrentTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3Connection;->isReadOnly()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "PRAGMA query_only = true;"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lorg/sqlite/core/DB;->_exec(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getCurrentTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 48
    .line 49
    if-eq v0, v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getCurrentTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v1, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFFERED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 56
    .line 57
    if-ne v0, v1, :cond_3

    .line 58
    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->isFirstStatementExecuted()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "commit; /* need to explicitly upgrade transaction */"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lorg/sqlite/core/DB;->_exec(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "PRAGMA query_only = false;"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lorg/sqlite/core/DB;->_exec(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "BEGIN IMMEDIATE; /* explicitly upgrade transaction */"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lorg/sqlite/core/DB;->_exec(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    sget-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->IMMEDIATE:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lorg/sqlite/SQLiteConnection;->setCurrentTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    new-instance v0, Ljava/sql/SQLException;

    .line 99
    .line 100
    const-string v1, "A statement has already been executed on this connection; cannot upgrade to write transaction"

    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_3
    :goto_0
    return-void
.end method
