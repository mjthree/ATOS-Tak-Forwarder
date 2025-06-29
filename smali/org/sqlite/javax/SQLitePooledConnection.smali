.class public Lorg/sqlite/javax/SQLitePooledConnection;
.super Lorg/sqlite/jdbc4/JDBC4PooledConnection;
.source "SourceFile"


# instance fields
.field protected volatile handleConn:Ljava/sql/Connection;

.field protected listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/sql/ConnectionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected physicalConn:Lorg/sqlite/SQLiteConnection;


# direct methods
.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/sqlite/jdbc4/JDBC4PooledConnection;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public addConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->handleConn:Ljava/sql/Connection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->handleConn:Ljava/sql/Connection;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    iput-object v1, p0, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->handleConn:Ljava/sql/Connection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->handleConn:Ljava/sql/Connection;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-class v1, Ljava/sql/Connection;

    .line 19
    .line 20
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lorg/sqlite/javax/SQLitePooledConnection$1;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lorg/sqlite/javax/SQLitePooledConnection$1;-><init>(Lorg/sqlite/javax/SQLitePooledConnection;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/sql/Connection;

    .line 34
    .line 35
    iput-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->handleConn:Ljava/sql/Connection;

    .line 36
    .line 37
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->handleConn:Ljava/sql/Connection;

    .line 38
    .line 39
    return-object v0
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/sql/ConnectionEventListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPhysicalConn()Lorg/sqlite/SQLiteConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->physicalConn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    return-object v0
.end method

.method public removeConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/javax/SQLitePooledConnection;->listeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
