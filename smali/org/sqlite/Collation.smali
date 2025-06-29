.class public abstract Lorg/sqlite/Collation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private conn:Lorg/sqlite/SQLiteConnection;

.field private db:Lorg/sqlite/core/DB;


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

.method public static final create(Ljava/sql/Connection;Ljava/lang/String;Lorg/sqlite/Collation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    instance-of v0, p0, Lorg/sqlite/SQLiteConnection;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/sql/Connection;->isClosed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Lorg/sqlite/SQLiteConnection;

    .line 14
    .line 15
    iput-object p0, p2, Lorg/sqlite/Collation;->conn:Lorg/sqlite/SQLiteConnection;

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iput-object p0, p2, Lorg/sqlite/Collation;->db:Lorg/sqlite/core/DB;

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->create_collation(Ljava/lang/String;Lorg/sqlite/Collation;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p0, Ljava/sql/SQLException;

    .line 31
    .line 32
    const-string p1, "error creating collation"

    .line 33
    .line 34
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    new-instance p0, Ljava/sql/SQLException;

    .line 39
    .line 40
    const-string p1, "connection closed"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_2
    new-instance p0, Ljava/sql/SQLException;

    .line 47
    .line 48
    const-string p1, "connection must be to an SQLite db"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public static final destroy(Ljava/sql/Connection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    instance-of v0, p0, Lorg/sqlite/SQLiteConnection;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Lorg/sqlite/SQLiteConnection;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->destroy_collation(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/sql/SQLException;

    .line 18
    .line 19
    const-string p1, "connection must be to an SQLite db"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method


# virtual methods
.method protected abstract xCompare(Ljava/lang/String;Ljava/lang/String;)I
.end method
