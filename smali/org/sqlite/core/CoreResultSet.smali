.class public abstract Lorg/sqlite/core/CoreResultSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/core/Codes;


# instance fields
.field public closeStmt:Z

.field public cols:[Ljava/lang/String;

.field public colsMeta:[Ljava/lang/String;

.field protected columnNameToIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public emptyResultSet:Z

.field protected lastCol:I

.field protected limitRows:I

.field public maxRows:J

.field protected meta:[[Z

.field public open:Z

.field protected pastLastRow:Z

.field protected row:I

.field protected final stmt:Lorg/sqlite/core/CoreStatement;


# direct methods
.method protected constructor <init>(Lorg/sqlite/core/CoreStatement;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->emptyResultSet:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->open:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lorg/sqlite/core/CoreResultSet;->cols:[Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, p0, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, p0, Lorg/sqlite/core/CoreResultSet;->meta:[[Z

    .line 15
    .line 16
    iput v0, p0, Lorg/sqlite/core/CoreResultSet;->row:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->pastLastRow:Z

    .line 19
    .line 20
    iput-object v1, p0, Lorg/sqlite/core/CoreResultSet;->columnNameToIndex:Ljava/util/Map;

    .line 21
    .line 22
    iput-object p1, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method protected addColumnIndexInCache(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->columnNameToIndex:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/sqlite/core/CoreResultSet;->cols:[Ljava/lang/String;

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/sqlite/core/CoreResultSet;->columnNameToIndex:Ljava/util/Map;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->columnNameToIndex:Ljava/util/Map;

    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return p2
.end method

.method public checkCol(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-lt p1, v1, :cond_0

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    .line 11
    add-int/lit8 p1, p1, -0x1

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "column "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, " out of bounds [1,"

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    .line 35
    .line 36
    array-length p1, p1

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, "]"

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    .line 54
    .line 55
    const-string v0, "SQLite JDBC: inconsistent internal state"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public checkMeta()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/sqlite/core/CoreResultSet;->checkCol(I)I

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->meta:[[Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 12
    .line 13
    new-instance v1, Lorg/sqlite/core/b;

    .line 14
    .line 15
    invoke-direct {v1}, Lorg/sqlite/core/b;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRun(Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, [[Z

    .line 23
    .line 24
    iput-object v0, p0, Lorg/sqlite/core/CoreResultSet;->meta:[[Z

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method protected checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->open:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 7
    .line 8
    const-string v1, "ResultSet closed"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/sqlite/core/CoreResultSet;->cols:[Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/sqlite/core/CoreResultSet;->meta:[[Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lorg/sqlite/core/CoreResultSet;->limitRows:I

    .line 10
    .line 11
    iput v1, p0, Lorg/sqlite/core/CoreResultSet;->row:I

    .line 12
    .line 13
    iput-boolean v1, p0, Lorg/sqlite/core/CoreResultSet;->pastLastRow:Z

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    iput v2, p0, Lorg/sqlite/core/CoreResultSet;->lastCol:I

    .line 17
    .line 18
    iput-object v0, p0, Lorg/sqlite/core/CoreResultSet;->columnNameToIndex:Ljava/util/Map;

    .line 19
    .line 20
    iput-boolean v1, p0, Lorg/sqlite/core/CoreResultSet;->emptyResultSet:Z

    .line 21
    .line 22
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 23
    .line 24
    iget-object v0, v0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/sqlite/core/SafeStmtPtr;->isClosed()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->open:Z

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->closeStmt:Z

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 42
    .line 43
    invoke-virtual {v0}, Lorg/sqlite/core/CoreStatement;->getDatabase()Lorg/sqlite/core/DB;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v2, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 49
    .line 50
    iget-object v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 51
    .line 52
    invoke-virtual {v2}, Lorg/sqlite/core/SafeStmtPtr;->isClosed()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    iget-object v2, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 59
    .line 60
    iget-object v2, v2, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 61
    .line 62
    new-instance v3, Latakplugin/atos/H;

    .line 63
    .line 64
    invoke-direct {v3}, Latakplugin/atos/H;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    .line 68
    .line 69
    .line 70
    iget-boolean v2, p0, Lorg/sqlite/core/CoreResultSet;->closeStmt:Z

    .line 71
    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    iput-boolean v1, p0, Lorg/sqlite/core/CoreResultSet;->closeStmt:Z

    .line 75
    .line 76
    iget-object v2, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 77
    .line 78
    check-cast v2, Ljava/sql/Statement;

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iput-boolean v1, p0, Lorg/sqlite/core/CoreResultSet;->open:Z

    .line 88
    .line 89
    return-void

    .line 90
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw v1

    .line 92
    :cond_2
    :goto_2
    return-void
.end method

.method protected findColumnIndexInCache(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->columnNameToIndex:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    return-object p1
.end method

.method protected getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/core/CoreStatement;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected getDatabase()Lorg/sqlite/core/DB;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/core/CoreStatement;->getDatabase()Lorg/sqlite/core/DB;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->open:Z

    .line 2
    .line 3
    return v0
.end method

.method protected markCol(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->checkCol(I)I

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/sqlite/core/CoreResultSet;->lastCol:I

    .line 5
    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    return p1
.end method
