.class public abstract Lorg/sqlite/Function;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/Function$Window;,
        Lorg/sqlite/Function$Aggregate;
    }
.end annotation


# static fields
.field public static final FLAG_DETERMINISTIC:I = 0x800


# instance fields
.field args:I

.field private conn:Lorg/sqlite/SQLiteConnection;

.field context:J

.field private db:Lorg/sqlite/core/DB;

.field value:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/sqlite/Function;->context:J

    .line 7
    .line 8
    iput-wide v0, p0, Lorg/sqlite/Function;->value:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lorg/sqlite/Function;->args:I

    .line 12
    .line 13
    return-void
.end method

.method private checkContext()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/Function;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lorg/sqlite/Function;->context:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 21
    .line 22
    const-string v1, "no context, not allowed to read value"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method private checkValue(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/Function;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-wide v0, p0, Lorg/sqlite/Function;->value:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v0, p0, Lorg/sqlite/Function;->args:I

    .line 20
    .line 21
    if-ge p1, v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "arg "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " out bounds [0,"

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget p1, p0, Lorg/sqlite/Function;->args:I

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, ")"

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    .line 63
    .line 64
    const-string v0, "not in value access state"

    .line 65
    .line 66
    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public static create(Ljava/sql/Connection;Ljava/lang/String;Lorg/sqlite/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lorg/sqlite/Function;->create(Ljava/sql/Connection;Ljava/lang/String;Lorg/sqlite/Function;I)V

    return-void
.end method

.method public static create(Ljava/sql/Connection;Ljava/lang/String;Lorg/sqlite/Function;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 2
    invoke-static {p0, p1, p2, v0, p3}, Lorg/sqlite/Function;->create(Ljava/sql/Connection;Ljava/lang/String;Lorg/sqlite/Function;II)V

    return-void
.end method

.method public static create(Ljava/sql/Connection;Ljava/lang/String;Lorg/sqlite/Function;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    instance-of v0, p0, Lorg/sqlite/SQLiteConnection;

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {p0}, Ljava/sql/Connection;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    check-cast p0, Lorg/sqlite/SQLiteConnection;

    iput-object p0, p2, Lorg/sqlite/Function;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object p0

    iput-object p0, p2, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    const/4 v0, -0x1

    if-lt p3, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p3, v0, :cond_1

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/sqlite/core/DB;->create_function(Ljava/lang/String;Lorg/sqlite/Function;II)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/sql/SQLException;

    const-string p1, "error creating function"

    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/sql/SQLException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid args provided: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/sql/SQLException;

    const-string p1, "connection closed"

    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Ljava/sql/SQLException;

    const-string p1, "connection must be to an SQLite db"

    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static destroy(Ljava/sql/Connection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 4
    invoke-static {p0, p1, v0}, Lorg/sqlite/Function;->destroy(Ljava/sql/Connection;Ljava/lang/String;I)V

    return-void
.end method

.method public static destroy(Ljava/sql/Connection;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    instance-of p2, p0, Lorg/sqlite/SQLiteConnection;

    if-eqz p2, :cond_0

    .line 2
    check-cast p0, Lorg/sqlite/SQLiteConnection;

    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->destroy_function(Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/sql/SQLException;

    const-string p1, "connection must be to an SQLite db"

    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final declared-synchronized args()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/Function;->checkContext()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lorg/sqlite/Function;->args:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return v0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0
.end method

.method protected final declared-synchronized error(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/Function;->checkContext()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    .line 6
    .line 7
    iget-wide v1, p0, Lorg/sqlite/Function;->context:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->result_error(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw p1
.end method

.method protected final declared-synchronized result()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 13
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/Function;->checkContext()V

    .line 14
    iget-object v0, p0, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    iget-wide v1, p0, Lorg/sqlite/Function;->context:J

    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->result_null(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final declared-synchronized result(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/Function;->checkContext()V

    .line 5
    iget-object v0, p0, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    iget-wide v1, p0, Lorg/sqlite/Function;->context:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/sqlite/core/DB;->result_double(JD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected final declared-synchronized result(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/Function;->checkContext()V

    .line 8
    iget-object v0, p0, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    iget-wide v1, p0, Lorg/sqlite/Function;->context:J

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->result_int(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected final declared-synchronized result(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 10
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/Function;->checkContext()V

    .line 11
    iget-object v0, p0, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    iget-wide v1, p0, Lorg/sqlite/Function;->context:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/sqlite/core/DB;->result_long(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected final declared-synchronized result(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 16
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/Function;->checkContext()V

    .line 17
    iget-object v0, p0, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    iget-wide v1, p0, Lorg/sqlite/Function;->context:J

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->result_text(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected final declared-synchronized result([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lorg/sqlite/Function;->checkContext()V

    .line 2
    iget-object v0, p0, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    iget-wide v1, p0, Lorg/sqlite/Function;->context:J

    invoke-virtual {v0, v1, v2, p1}, Lorg/sqlite/core/DB;->result_blob(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected final declared-synchronized value_blob(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/sqlite/Function;->checkValue(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Lorg/sqlite/core/DB;->value_blob(Lorg/sqlite/Function;I)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method protected final declared-synchronized value_double(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/sqlite/Function;->checkValue(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Lorg/sqlite/core/DB;->value_double(Lorg/sqlite/Function;I)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-wide v0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method protected final declared-synchronized value_int(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/sqlite/Function;->checkValue(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Lorg/sqlite/core/DB;->value_int(Lorg/sqlite/Function;I)I

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method protected final declared-synchronized value_long(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/sqlite/Function;->checkValue(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Lorg/sqlite/core/DB;->value_long(Lorg/sqlite/Function;I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-wide v0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method protected final declared-synchronized value_text(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/sqlite/Function;->checkValue(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Lorg/sqlite/core/DB;->value_text(Lorg/sqlite/Function;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method protected final declared-synchronized value_type(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/sqlite/Function;->checkValue(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/Function;->db:Lorg/sqlite/core/DB;

    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Lorg/sqlite/core/DB;->value_type(Lorg/sqlite/Function;I)I

    .line 8
    .line 9
    .line 10
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method protected abstract xFunc()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
