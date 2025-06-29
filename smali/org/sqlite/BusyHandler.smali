.class public abstract Lorg/sqlite/BusyHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final clearHandler(Ljava/sql/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lorg/sqlite/BusyHandler;->commitHandler(Ljava/sql/Connection;Lorg/sqlite/BusyHandler;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static commitHandler(Ljava/sql/Connection;Lorg/sqlite/BusyHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/sql/Connection;->isClosed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Lorg/sqlite/SQLiteConnection;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->busy_handler(Lorg/sqlite/BusyHandler;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/sql/SQLException;

    .line 22
    .line 23
    const-string p1, "connection closed"

    .line 24
    .line 25
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p0

    .line 29
    :cond_1
    new-instance p0, Ljava/sql/SQLException;

    .line 30
    .line 31
    const-string p1, "connection must be to an SQLite db"

    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public static final setHandler(Ljava/sql/Connection;Lorg/sqlite/BusyHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/sqlite/BusyHandler;->commitHandler(Ljava/sql/Connection;Lorg/sqlite/BusyHandler;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected abstract callback(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
