.class public Lorg/sqlite/SQLiteDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/sql/DataSource;


# instance fields
.field private config:Lorg/sqlite/SQLiteConfig;

.field private databaseName:Ljava/lang/String;

.field private transient logger:Ljava/io/PrintWriter;

.field private loginTimeout:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/sqlite/SQLiteDataSource;->loginTimeout:I

    .line 3
    const-string v0, "jdbc:sqlite:"

    iput-object v0, p0, Lorg/sqlite/SQLiteDataSource;->url:Ljava/lang/String;

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lorg/sqlite/SQLiteDataSource;->databaseName:Ljava/lang/String;

    .line 5
    new-instance v0, Lorg/sqlite/SQLiteConfig;

    invoke-direct {v0}, Lorg/sqlite/SQLiteConfig;-><init>()V

    iput-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    return-void
.end method

.method public constructor <init>(Lorg/sqlite/SQLiteConfig;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lorg/sqlite/SQLiteDataSource;->loginTimeout:I

    .line 8
    const-string v0, "jdbc:sqlite:"

    iput-object v0, p0, Lorg/sqlite/SQLiteDataSource;->url:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lorg/sqlite/SQLiteDataSource;->databaseName:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    return-void
.end method


# virtual methods
.method public getConfig()Lorg/sqlite/SQLiteConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Lorg/sqlite/SQLiteDataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Lorg/sqlite/SQLiteConnection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/SQLiteDataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Lorg/sqlite/SQLiteConnection;

    move-result-object p1

    return-object p1
.end method

.method public getConnection(Ljava/lang/String;Ljava/lang/String;)Lorg/sqlite/SQLiteConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConfig;->toProperties()Ljava/util/Properties;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 4
    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    const-string p1, "pass"

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object p1, p0, Lorg/sqlite/SQLiteDataSource;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/sqlite/JDBC;->createConnection(Ljava/lang/String;Ljava/util/Properties;)Lorg/sqlite/SQLiteConnection;

    move-result-object p1

    return-object p1
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->databaseName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogWriter()Ljava/io/PrintWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->logger:Ljava/io/PrintWriter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoginTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/sqlite/SQLiteDataSource;->loginTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLFeatureNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    .line 2
    .line 3
    const-string v1, "getParentLogger"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public setBusyTimeout(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setBusyTimeout(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCacheSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setCacheSize(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCaseSensitiveLike(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableCaseSensitiveLike(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setConfig(Lorg/sqlite/SQLiteConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    return-void
.end method

.method public setCountChanges(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableCountChanges(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDatabaseName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/sqlite/SQLiteDataSource;->databaseName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDefaultCacheSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setDefaultCacheSize(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$Encoding;->getEncoding(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$Encoding;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setEncoding(Lorg/sqlite/SQLiteConfig$Encoding;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setEnforceForeignKeys(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enforceForeignKeys(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFullColumnNames(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableFullColumnNames(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFullSync(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableFullSync(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIncrementalVacuum(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->incrementalVacuum(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setJournalMode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$JournalMode;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$JournalMode;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setJournalMode(Lorg/sqlite/SQLiteConfig$JournalMode;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setJournalSizeLimit(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setJounalSizeLimit(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLegacyAlterTable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setLegacyAlterTable(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLegacyFileFormat(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->useLegacyFileFormat(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLoadExtension(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableLoadExtension(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLockingMode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$LockingMode;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$LockingMode;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setLockingMode(Lorg/sqlite/SQLiteConfig$LockingMode;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setLogWriter(Ljava/io/PrintWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/sqlite/SQLiteDataSource;->logger:Ljava/io/PrintWriter;

    .line 2
    .line 3
    return-void
.end method

.method public setLoginTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lorg/sqlite/SQLiteDataSource;->loginTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaxPageCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setMaxPageCount(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPageSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setPageSize(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setReadOnly(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setReadUncommited(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setReadUncommited(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRecursiveTriggers(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableRecursiveTriggers(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setReverseUnorderedSelects(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableReverseUnorderedSelects(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSharedCache(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setSharedCache(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShortColumnNames(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->enableShortColumnNames(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSynchronous(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$SynchronousMode;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$SynchronousMode;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setSynchronous(Lorg/sqlite/SQLiteConfig$SynchronousMode;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setTempStore(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$TempStore;->valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$TempStore;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setTempStore(Lorg/sqlite/SQLiteConfig$TempStore;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setTempStoreDirectory(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setTempStoreDirectory(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTransactionMode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setTransactionMode(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/sqlite/SQLiteDataSource;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUserVersion(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteDataSource;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setUserVersion(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-object p0
.end method
