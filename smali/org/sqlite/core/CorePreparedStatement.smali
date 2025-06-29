.class public abstract Lorg/sqlite/core/CorePreparedStatement;
.super Lorg/sqlite/jdbc4/JDBC4Statement;
.source "SourceFile"


# instance fields
.field protected batchQueryCount:I

.field protected columnCount:I

.field protected paramCount:I


# direct methods
.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc4/JDBC4Statement;-><init>(Lorg/sqlite/SQLiteConnection;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lorg/sqlite/core/CoreStatement;->sql:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0}, Lorg/sqlite/core/DB;->prepare(Lorg/sqlite/core/CoreStatement;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lorg/sqlite/core/CoreStatement;->rs:Lorg/sqlite/core/CoreResultSet;

    .line 14
    .line 15
    iget-object p2, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 16
    .line 17
    new-instance v0, Latakplugin/atos/F;

    .line 18
    .line 19
    invoke-direct {v0}, Latakplugin/atos/F;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lorg/sqlite/core/SafeStmtPtr;->safeRun(Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, [Ljava/lang/String;

    .line 27
    .line 28
    iput-object p2, p1, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    .line 29
    .line 30
    iget-object p1, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 31
    .line 32
    new-instance p2, Latakplugin/atos/G;

    .line 33
    .line 34
    invoke-direct {p2}, Latakplugin/atos/G;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Lorg/sqlite/core/CorePreparedStatement;->columnCount:I

    .line 42
    .line 43
    iget-object p1, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 44
    .line 45
    new-instance p2, Lorg/sqlite/core/a;

    .line 46
    .line 47
    invoke-direct {p2}, Lorg/sqlite/core/a;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput p1, p0, Lorg/sqlite/core/CorePreparedStatement;->paramCount:I

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lorg/sqlite/core/CorePreparedStatement;->batchQueryCount:I

    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    iput-object p2, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 61
    .line 62
    iput p1, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    .line 63
    .line 64
    return-void
.end method

.method public static synthetic e(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/sqlite/core/CorePreparedStatement;->lambda$executeBatch$0(J)I

    move-result p0

    return p0
.end method

.method public static synthetic f(Lorg/sqlite/core/CorePreparedStatement;)[J
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/sqlite/core/CorePreparedStatement;->lambda$executeLargeBatch$1()[J

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$executeBatch$0(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method

.method private synthetic lambda$executeLargeBatch$1()[J
    .locals 5
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
    iget-object v1, p0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 8
    .line 9
    iget v2, p0, Lorg/sqlite/core/CorePreparedStatement;->batchQueryCount:I

    .line 10
    .line 11
    iget-object v3, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v4, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 14
    .line 15
    invoke-virtual {v4}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/sqlite/core/DB;->executeBatch(Lorg/sqlite/core/SafeStmtPtr;I[Ljava/lang/Object;Z)[J

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-virtual {p0}, Lorg/sqlite/core/CorePreparedStatement;->clearBatch()V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    invoke-virtual {p0}, Lorg/sqlite/core/CorePreparedStatement;->clearBatch()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method


# virtual methods
.method protected batch(ILjava/lang/Object;)V
    .locals 2
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
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget v0, p0, Lorg/sqlite/core/CorePreparedStatement;->paramCount:I

    .line 9
    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->batch:[Ljava/lang/Object;

    .line 15
    .line 16
    iget v1, p0, Lorg/sqlite/core/CoreStatement;->batchPos:I

    .line 17
    .line 18
    add-int/2addr v1, p1

    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    aput-object p2, v0, v1

    .line 22
    .line 23
    return-void
.end method

.method public clearBatch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lorg/sqlite/jdbc3/JDBC3Statement;->clearBatch()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/sqlite/core/CorePreparedStatement;->batchQueryCount:I

    .line 6
    .line 7
    return-void
.end method

.method public executeBatch()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CorePreparedStatement;->executeLargeBatch()[J

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
    new-instance v1, Latakplugin/atos/E;

    .line 10
    .line 11
    invoke-direct {v1}, Latakplugin/atos/E;-><init>()V

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/sqlite/core/CorePreparedStatement;->batchQueryCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [J

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    .line 10
    .line 11
    instance-of v1, v0, Lorg/sqlite/jdbc3/JDBC3Connection;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    check-cast v0, Lorg/sqlite/jdbc3/JDBC3Connection;

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/sqlite/jdbc3/JDBC3Connection;->tryEnforceTransactionMode()V

    .line 18
    .line 19
    .line 20
    :cond_1
    new-instance v0, Latakplugin/atos/D;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Latakplugin/atos/D;-><init>(Lorg/sqlite/core/CorePreparedStatement;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3Statement;->withConnectionTimeout(Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, [J

    .line 30
    .line 31
    return-object v0
.end method

.method protected setDateByMilliseconds(ILjava/lang/Long;Ljava/util/Calendar;)V
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
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/sqlite/core/CorePreparedStatement$1;->$SwitchMap$org$sqlite$SQLiteConfig$DateClass:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getDateClass()Lorg/sqlite/SQLiteConfig$DateClass;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aget v1, v1, v2

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const/4 p3, 0x2

    .line 23
    if-eq v1, p3, :cond_0

    .line 24
    .line 25
    new-instance p3, Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    div-long/2addr v1, v3

    .line 36
    invoke-direct {p3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, p3}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p3, Ljava/lang/Double;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    long-to-double v0, v0

    .line 50
    const-wide v2, 0x4194997000000000L    # 8.64E7

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    div-double/2addr v0, v2

    .line 56
    const-wide v2, 0x41429ec5c0000000L    # 2440587.5

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    add-double/2addr v0, v2

    .line 62
    invoke-direct {p3, v0, v1}, Ljava/lang/Double;-><init>(D)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1, p3}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getDateStringFormat()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-static {v0, p3}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/sqlite/date/FastDateFormat;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    new-instance v0, Ljava/sql/Date;

    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, v0}, Lorg/sqlite/date/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->batch(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method
