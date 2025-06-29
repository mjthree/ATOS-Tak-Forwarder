.class public abstract Lorg/sqlite/core/DB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/core/Codes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/core/DB$ProgressObserver;
    }
.end annotation


# instance fields
.field volatile begin:Lorg/sqlite/core/SafeStmtPtr;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile commit:Lorg/sqlite/core/SafeStmtPtr;

.field private final commitListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/sqlite/SQLiteCommitListener;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lorg/sqlite/SQLiteConfig;

.field private final fileName:Ljava/lang/String;

.field private final stmts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/sqlite/core/SafeStmtPtr;",
            ">;"
        }
    .end annotation
.end field

.field private final updateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/sqlite/SQLiteUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/SQLiteConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/sqlite/core/DB;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/sqlite/core/DB;->stmts:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/sqlite/core/DB;->updateListeners:Ljava/util/Set;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/sqlite/core/DB;->commitListeners:Ljava/util/Set;

    .line 31
    .line 32
    iput-object p1, p0, Lorg/sqlite/core/DB;->url:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p2, p0, Lorg/sqlite/core/DB;->fileName:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p3, p0, Lorg/sqlite/core/DB;->config:Lorg/sqlite/SQLiteConfig;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic a(Lorg/sqlite/core/DB;JLorg/sqlite/core/DB;J)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/sqlite/core/DB;->lambda$ensureAutoCommit$2(JLorg/sqlite/core/DB;J)V

    return-void
.end method

.method public static synthetic b(Lorg/sqlite/core/DB;I[Ljava/lang/Object;ZLorg/sqlite/core/DB;J)[J
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lorg/sqlite/core/DB;->lambda$executeBatch$0(I[Ljava/lang/Object;ZLorg/sqlite/core/DB;J)[J

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/sqlite/core/DB;[Ljava/lang/Object;Lorg/sqlite/core/DB;J)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/sqlite/core/DB;->lambda$execute$1([Ljava/lang/Object;Lorg/sqlite/core/DB;J)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/sqlite/core/DB;Lorg/sqlite/core/DB;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/sqlite/core/DB;->lambda$ensureAutoCommit$3(Lorg/sqlite/core/DB;J)V

    return-void
.end method

.method private ensureAutocommit(JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->step(J)I

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    const/16 v1, 0x65

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->reset(J)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p3, p4}, Lorg/sqlite/core/DB;->reset(J)I

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_1
    invoke-virtual {p0, p3, p4}, Lorg/sqlite/core/DB;->step(J)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p3, p4}, Lorg/sqlite/core/DB;->reset(J)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lorg/sqlite/core/DB;->throwex(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->reset(J)I

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p3, p4}, Lorg/sqlite/core/DB;->reset(J)I

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->reset(J)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p3, p4}, Lorg/sqlite/core/DB;->reset(J)I

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method private ensureBeginAndCommit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/DB;->begin:Lorg/sqlite/core/SafeStmtPtr;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/sqlite/core/DB;->begin:Lorg/sqlite/core/SafeStmtPtr;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "begin;"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lorg/sqlite/core/DB;->prepare(Ljava/lang/String;)Lorg/sqlite/core/SafeStmtPtr;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/sqlite/core/DB;->begin:Lorg/sqlite/core/SafeStmtPtr;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit p0

    .line 22
    goto :goto_2

    .line 23
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0

    .line 25
    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/sqlite/core/DB;->commit:Lorg/sqlite/core/SafeStmtPtr;

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    monitor-enter p0

    .line 30
    :try_start_1
    iget-object v0, p0, Lorg/sqlite/core/DB;->commit:Lorg/sqlite/core/SafeStmtPtr;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    const-string v0, "commit;"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lorg/sqlite/core/DB;->prepare(Ljava/lang/String;)Lorg/sqlite/core/SafeStmtPtr;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lorg/sqlite/core/DB;->commit:Lorg/sqlite/core/SafeStmtPtr;

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :catchall_1
    move-exception v0

    .line 44
    goto :goto_4

    .line 45
    :cond_2
    :goto_3
    monitor-exit p0

    .line 46
    goto :goto_5

    .line 47
    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    throw v0

    .line 49
    :cond_3
    :goto_5
    return-void
.end method

.method private declared-synchronized execute(J[Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_2

    .line 9
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->bind_parameter_count(J)I

    move-result v0

    .line 10
    array-length v1, p3

    if-gt v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 11
    aget-object v2, p3, v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/sqlite/core/DB;->sqlbind(JILjava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {p0, v2}, Lorg/sqlite/core/DB;->throwex(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assertion failure: param count ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") > value count ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->step(J)I

    move-result p3

    and-int/lit16 v0, p3, 0xff

    const/16 v1, 0x65

    if-ne v0, v1, :cond_3

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->reset(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_3
    monitor-exit p0

    return p3

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized executeBatch(JI[Ljava/lang/Object;Z)[J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    if-lt p3, v0, :cond_5

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->bind_parameter_count(J)I

    move-result v0

    .line 3
    new-array v5, p3, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_4

    .line 4
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->reset(J)I

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    mul-int v4, v2, v0

    add-int/2addr v4, v3

    .line 5
    aget-object v4, p4, v4

    invoke-virtual {p0, p1, p2, v3, v4}, Lorg/sqlite/core/DB;->sqlbind(JILjava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {p0, v4}, Lorg/sqlite/core/DB;->throwex(I)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->step(J)I

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_3

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->reset(J)I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2

    .line 9
    invoke-virtual {p0, v3}, Lorg/sqlite/core/DB;->throwex(I)V

    goto :goto_3

    .line 10
    :cond_2
    new-instance p1, Ljava/sql/BatchUpdateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "batch entry "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": query returns results"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[JLjava/lang/Throwable;)V

    throw p1

    .line 11
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lorg/sqlite/core/DB;->changes()J

    move-result-wide v3

    aput-wide v3, v5, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :goto_4
    :try_start_2
    invoke-virtual {p0, p5}, Lorg/sqlite/core/DB;->ensureAutoCommit(Z)V

    .line 13
    throw p1

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 14
    :cond_4
    invoke-virtual {p0, p5}, Lorg/sqlite/core/DB;->ensureAutoCommit(Z)V

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->reset(J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    monitor-exit p0

    return-object v5

    .line 17
    :cond_5
    :try_start_3
    new-instance p1, Ljava/sql/SQLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "count ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") < 1"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :goto_5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private synthetic lambda$ensureAutoCommit$2(JLorg/sqlite/core/DB;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4, p5}, Lorg/sqlite/core/DB;->ensureAutocommit(JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$ensureAutoCommit$3(Lorg/sqlite/core/DB;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/core/DB;->commit:Lorg/sqlite/core/SafeStmtPtr;

    .line 2
    .line 3
    new-instance v0, Latakplugin/atos/J;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2, p3}, Latakplugin/atos/J;-><init>(Lorg/sqlite/core/DB;J)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lorg/sqlite/core/SafeStmtPtr;->safeRunConsume(Lorg/sqlite/core/SafeStmtPtr$SafePtrConsumer;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$execute$1([Ljava/lang/Object;Lorg/sqlite/core/DB;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p4, p1}, Lorg/sqlite/core/DB;->execute(J[Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method private synthetic lambda$executeBatch$0(I[Ljava/lang/Object;ZLorg/sqlite/core/DB;J)[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-wide v1, p5

    .line 3
    move v3, p1

    .line 4
    move-object v4, p2

    .line 5
    move v5, p3

    .line 6
    invoke-direct/range {v0 .. v5}, Lorg/sqlite/core/DB;->executeBatch(JI[Ljava/lang/Object;Z)[J

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method private newSQLException(I)Lorg/sqlite/SQLiteException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lorg/sqlite/core/DB;->errmsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/sqlite/core/DB;->newSQLException(ILjava/lang/String;)Lorg/sqlite/SQLiteException;

    move-result-object p1

    return-object p1
.end method

.method public static newSQLException(ILjava/lang/String;)Lorg/sqlite/SQLiteException;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/sqlite/SQLiteErrorCode;->getErrorCode(I)Lorg/sqlite/SQLiteErrorCode;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/sqlite/SQLiteErrorCode;->UNKNOWN_ERROR:Lorg/sqlite/SQLiteErrorCode;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s:%s (%s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    const-string p0, "%s (%s)"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    :goto_0
    new-instance p1, Lorg/sqlite/SQLiteException;

    invoke-direct {p1, p0, v0}, Lorg/sqlite/SQLiteException;-><init>(Ljava/lang/String;Lorg/sqlite/SQLiteErrorCode;)V

    return-object p1
.end method

.method static throwex(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    invoke-static {p0, p1}, Lorg/sqlite/core/DB;->newSQLException(ILjava/lang/String;)Lorg/sqlite/SQLiteException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected abstract _close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract _exec(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected abstract _open(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public declared-synchronized addCommitListener(Lorg/sqlite/SQLiteCommitListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/sqlite/core/DB;->commitListeners:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lorg/sqlite/core/DB;->commitListeners:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lorg/sqlite/core/DB;->set_commit_listener(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public declared-synchronized addUpdateListener(Lorg/sqlite/SQLiteUpdateListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/sqlite/core/DB;->updateListeners:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lorg/sqlite/core/DB;->updateListeners:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lorg/sqlite/core/DB;->set_update_listener(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public abstract backup(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/core/DB$ProgressObserver;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract backup(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/core/DB$ProgressObserver;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_blob(JI[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_double(JID)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_int(JII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_long(JIJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_null(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_parameter_count(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract bind_text(JILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract busy_handler(Lorg/sqlite/BusyHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract busy_timeout(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract changes()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract clear_bindings(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract clear_progress_handler()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public final declared-synchronized close()V
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
    iget-object v0, p0, Lorg/sqlite/core/DB;->stmts:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lorg/sqlite/core/SafeStmtPtr;

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/sqlite/core/SafeStmtPtr;->close()I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/DB;->begin:Lorg/sqlite/core/SafeStmtPtr;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lorg/sqlite/core/DB;->begin:Lorg/sqlite/core/SafeStmtPtr;

    .line 31
    .line 32
    invoke-virtual {v0}, Lorg/sqlite/core/SafeStmtPtr;->close()I

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lorg/sqlite/core/DB;->commit:Lorg/sqlite/core/SafeStmtPtr;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lorg/sqlite/core/DB;->commit:Lorg/sqlite/core/SafeStmtPtr;

    .line 40
    .line 41
    invoke-virtual {v0}, Lorg/sqlite/core/SafeStmtPtr;->close()I

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lorg/sqlite/core/DB;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lorg/sqlite/core/DB;->_close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw v0
.end method

.method public abstract column_blob(JI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_count(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_decltype(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_double(JI)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_int(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_long(JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract column_metadata(J)[[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_name(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public final declared-synchronized column_names(J)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->column_count(J)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    new-array v1, v0, [Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, v2}, Lorg/sqlite/core/DB;->column_name(JI)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    monitor-exit p0

    .line 23
    return-object v1

    .line 24
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p1
.end method

.method public abstract column_table_name(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_text(JI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract column_type(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract create_collation(Ljava/lang/String;Lorg/sqlite/Collation;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract create_function(Ljava/lang/String;Lorg/sqlite/Function;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract destroy_collation(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract destroy_function(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract enable_load_extension(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method final ensureAutoCommit(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/sqlite/core/DB;->ensureBeginAndCommit()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lorg/sqlite/core/DB;->begin:Lorg/sqlite/core/SafeStmtPtr;

    .line 8
    .line 9
    new-instance v0, Latakplugin/atos/I;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Latakplugin/atos/I;-><init>(Lorg/sqlite/core/DB;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/sqlite/core/SafeStmtPtr;->safeRunConsume(Lorg/sqlite/core/SafeStmtPtr$SafePtrConsumer;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method abstract errmsg()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public final declared-synchronized exec(Ljava/lang/String;Z)V
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
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->prepare(Ljava/lang/String;)Lorg/sqlite/core/SafeStmtPtr;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    new-instance v0, Latakplugin/atos/M;

    .line 7
    .line 8
    invoke-direct {v0}, Latakplugin/atos/M;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x64

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x65

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lorg/sqlite/core/DB;->throwex(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    .line 25
    .line 26
    :try_start_2
    invoke-virtual {p1}, Lorg/sqlite/core/SafeStmtPtr;->close()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :catchall_1
    move-exception p2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_3
    invoke-virtual {p0, p2}, Lorg/sqlite/core/DB;->ensureAutoCommit(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_4
    invoke-virtual {p1}, Lorg/sqlite/core/SafeStmtPtr;->close()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :cond_1
    :try_start_5
    invoke-virtual {p1}, Lorg/sqlite/core/SafeStmtPtr;->close()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_0
    :try_start_6
    invoke-virtual {p1}, Lorg/sqlite/core/SafeStmtPtr;->close()I

    .line 49
    .line 50
    .line 51
    throw p2

    .line 52
    :goto_1
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 53
    throw p1
.end method

.method final declared-synchronized execute(Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 17
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->_exec(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/16 v1, 0x64

    if-eq p1, v1, :cond_1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    .line 18
    invoke-virtual {p0, p2}, Lorg/sqlite/core/DB;->ensureAutoCommit(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/sqlite/core/DB;->newSQLException(I)Lorg/sqlite/SQLiteException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 22
    :cond_2
    monitor-exit p0

    return v0

    .line 23
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized execute(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    new-instance v1, Latakplugin/atos/L;

    invoke-direct {v1, p0, p2}, Latakplugin/atos/L;-><init>(Lorg/sqlite/core/DB;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    move-result p2

    and-int/lit16 v0, p2, 0xff

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Lorg/sqlite/core/CoreStatement;->conn:Lorg/sqlite/SQLiteConnection;

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->ensureAutoCommit(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    iget-object p1, p1, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    invoke-virtual {p1}, Lorg/sqlite/core/SafeStmtPtr;->close()I

    .line 5
    invoke-direct {p0, p2}, Lorg/sqlite/core/DB;->newSQLException(I)Lorg/sqlite/SQLiteException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_2
    :try_start_2
    invoke-direct {p0, p2}, Lorg/sqlite/core/DB;->newSQLException(I)Lorg/sqlite/SQLiteException;

    move-result-object p1

    throw p1

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method final declared-synchronized executeBatch(Lorg/sqlite/core/SafeStmtPtr;I[Ljava/lang/Object;Z)[J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Latakplugin/atos/K;

    invoke-direct {v0, p0, p2, p3, p4}, Latakplugin/atos/K;-><init>(Lorg/sqlite/core/DB;I[Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lorg/sqlite/core/SafeStmtPtr;->safeRun(Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized executeUpdate(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)J
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
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->execute(Lorg/sqlite/core/CoreStatement;[Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    if-nez p2, :cond_1

    .line 7
    .line 8
    :try_start_1
    iget-object p2, p1, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 9
    .line 10
    invoke-virtual {p2}, Lorg/sqlite/core/SafeStmtPtr;->isClosed()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 17
    .line 18
    new-instance p2, Latakplugin/atos/H;

    .line 19
    .line 20
    invoke-direct {p2}, Latakplugin/atos/H;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/sqlite/core/DB;->changes()J

    .line 30
    .line 31
    .line 32
    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit p0

    .line 34
    return-wide p1

    .line 35
    :cond_1
    :try_start_2
    new-instance p2, Ljava/sql/SQLException;

    .line 36
    .line 37
    const-string v0, "query returns results"

    .line 38
    .line 39
    invoke-direct {p2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    :catchall_1
    move-exception p2

    .line 44
    :try_start_3
    iget-object v0, p1, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 45
    .line 46
    invoke-virtual {v0}, Lorg/sqlite/core/SafeStmtPtr;->isClosed()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    iget-object p1, p1, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 53
    .line 54
    new-instance v0, Latakplugin/atos/H;

    .line 55
    .line 56
    invoke-direct {v0}, Latakplugin/atos/H;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    throw p2

    .line 63
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    throw p1
.end method

.method protected abstract finalize(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public declared-synchronized finalize(Lorg/sqlite/core/SafeStmtPtr;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lorg/sqlite/core/DB;->finalize(J)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object p3, p0, Lorg/sqlite/core/DB;->stmts:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 4
    :try_start_2
    iget-object p3, p0, Lorg/sqlite/core/DB;->stmts:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    throw p2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public getConfig()Lorg/sqlite/SQLiteConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/DB;->config:Lorg/sqlite/SQLiteConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/DB;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract interrupt()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/DB;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public abstract libversion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract limit(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method onCommit(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/sqlite/core/DB;->commitListeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lorg/sqlite/SQLiteCommitListener;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-interface {v1}, Lorg/sqlite/SQLiteCommitListener;->onCommit()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {v1}, Lorg/sqlite/SQLiteCommitListener;->onRollback()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p1
.end method

.method onUpdate(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/sqlite/core/DB;->updateListeners:Ljava/util/Set;

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Lorg/sqlite/SQLiteUpdateListener;

    .line 26
    .line 27
    const/16 v1, 0x9

    .line 28
    .line 29
    if-eq p1, v1, :cond_2

    .line 30
    .line 31
    const/16 v1, 0x12

    .line 32
    .line 33
    if-eq p1, v1, :cond_1

    .line 34
    .line 35
    const/16 v1, 0x17

    .line 36
    .line 37
    if-ne p1, v1, :cond_0

    .line 38
    .line 39
    sget-object v1, Lorg/sqlite/SQLiteUpdateListener$Type;->UPDATE:Lorg/sqlite/SQLiteUpdateListener$Type;

    .line 40
    .line 41
    :goto_1
    move-object v3, v1

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    .line 44
    .line 45
    new-instance p3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string p4, "Unknown type: "

    .line 51
    .line 52
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    throw p2

    .line 66
    :cond_1
    sget-object v1, Lorg/sqlite/SQLiteUpdateListener$Type;->INSERT:Lorg/sqlite/SQLiteUpdateListener$Type;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    sget-object v1, Lorg/sqlite/SQLiteUpdateListener$Type;->DELETE:Lorg/sqlite/SQLiteUpdateListener$Type;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :goto_2
    move-object v4, p2

    .line 73
    move-object v5, p3

    .line 74
    move-wide v6, p4

    .line 75
    invoke-interface/range {v2 .. v7}, Lorg/sqlite/SQLiteUpdateListener;->onUpdate(Lorg/sqlite/SQLiteUpdateListener$Type;Ljava/lang/String;Ljava/lang/String;J)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-void

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw p1
.end method

.method public final declared-synchronized open(Ljava/lang/String;I)V
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
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/DB;->_open(Ljava/lang/String;I)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lorg/sqlite/core/DB;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lorg/sqlite/core/DB;->fileName:Ljava/lang/String;

    .line 12
    .line 13
    const-string p2, "file:"

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lorg/sqlite/core/DB;->fileName:Ljava/lang/String;

    .line 22
    .line 23
    const-string p2, "cache="

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lorg/sqlite/core/DB;->config:Lorg/sqlite/SQLiteConfig;

    .line 32
    .line 33
    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig;->isEnabledSharedCache()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->shared_cache(Z)I

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/sqlite/core/DB;->config:Lorg/sqlite/SQLiteConfig;

    .line 44
    .line 45
    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig;->isEnabledLoadExtension()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->enable_load_extension(Z)I

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lorg/sqlite/core/DB;->config:Lorg/sqlite/SQLiteConfig;

    .line 53
    .line 54
    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig;->getBusyTimeout()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->busy_timeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return-void

    .line 63
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p1
.end method

.method protected abstract prepare(Ljava/lang/String;)Lorg/sqlite/core/SafeStmtPtr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public final declared-synchronized prepare(Lorg/sqlite/core/CoreStatement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lorg/sqlite/core/CoreStatement;->sql:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/sqlite/core/SafeStmtPtr;->close()I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p1, Lorg/sqlite/core/CoreStatement;->sql:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/sqlite/core/DB;->prepare(Ljava/lang/String;)Lorg/sqlite/core/SafeStmtPtr;

    move-result-object v0

    iput-object v0, p1, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 5
    iget-object p1, p0, Lorg/sqlite/core/DB;->stmts:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already added pointer to statements set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 9
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract register_progress_handler(ILorg/sqlite/ProgressHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public declared-synchronized removeCommitListener(Lorg/sqlite/SQLiteCommitListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/sqlite/core/DB;->commitListeners:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lorg/sqlite/core/DB;->commitListeners:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->set_commit_listener(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public declared-synchronized removeUpdateListener(Lorg/sqlite/SQLiteUpdateListener;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/sqlite/core/DB;->updateListeners:Ljava/util/Set;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lorg/sqlite/core/DB;->updateListeners:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Lorg/sqlite/core/DB;->set_update_listener(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p1
.end method

.method public abstract reset(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract restore(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/core/DB$ProgressObserver;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract restore(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/core/DB$ProgressObserver;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_blob(J[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_double(JD)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_error(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_int(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_long(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_null(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract result_text(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method abstract set_commit_listener(Z)V
.end method

.method abstract set_update_listener(Z)V
.end method

.method public abstract shared_cache(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method final declared-synchronized sqlbind(JILjava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    add-int/lit8 v3, p3, 0x1

    .line 3
    .line 4
    if-nez p4, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1, p2, v3}, Lorg/sqlite/core/DB;->bind_null(JI)I

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    :try_start_1
    instance-of p3, p4, Ljava/lang/Integer;

    .line 16
    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    check-cast p4, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/sqlite/core/DB;->bind_int(JII)I

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    monitor-exit p0

    .line 30
    return p1

    .line 31
    :cond_1
    :try_start_2
    instance-of p3, p4, Ljava/lang/Short;

    .line 32
    .line 33
    if-eqz p3, :cond_2

    .line 34
    .line 35
    check-cast p4, Ljava/lang/Short;

    .line 36
    .line 37
    invoke-virtual {p4}, Ljava/lang/Short;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    invoke-virtual {p0, p1, p2, v3, p3}, Lorg/sqlite/core/DB;->bind_int(JII)I

    .line 42
    .line 43
    .line 44
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    monitor-exit p0

    .line 46
    return p1

    .line 47
    :cond_2
    :try_start_3
    instance-of p3, p4, Ljava/lang/Long;

    .line 48
    .line 49
    if-eqz p3, :cond_3

    .line 50
    .line 51
    check-cast p4, Ljava/lang/Long;

    .line 52
    .line 53
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    move-object v0, p0

    .line 58
    move-wide v1, p1

    .line 59
    invoke-virtual/range {v0 .. v5}, Lorg/sqlite/core/DB;->bind_long(JIJ)I

    .line 60
    .line 61
    .line 62
    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    monitor-exit p0

    .line 64
    return p1

    .line 65
    :cond_3
    :try_start_4
    instance-of p3, p4, Ljava/lang/Float;

    .line 66
    .line 67
    if-eqz p3, :cond_4

    .line 68
    .line 69
    check-cast p4, Ljava/lang/Float;

    .line 70
    .line 71
    invoke-virtual {p4}, Ljava/lang/Float;->doubleValue()D

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    move-object v0, p0

    .line 76
    move-wide v1, p1

    .line 77
    invoke-virtual/range {v0 .. v5}, Lorg/sqlite/core/DB;->bind_double(JID)I

    .line 78
    .line 79
    .line 80
    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 81
    monitor-exit p0

    .line 82
    return p1

    .line 83
    :cond_4
    :try_start_5
    instance-of p3, p4, Ljava/lang/Double;

    .line 84
    .line 85
    if-eqz p3, :cond_5

    .line 86
    .line 87
    check-cast p4, Ljava/lang/Double;

    .line 88
    .line 89
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    move-object v0, p0

    .line 94
    move-wide v1, p1

    .line 95
    invoke-virtual/range {v0 .. v5}, Lorg/sqlite/core/DB;->bind_double(JID)I

    .line 96
    .line 97
    .line 98
    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    monitor-exit p0

    .line 100
    return p1

    .line 101
    :cond_5
    :try_start_6
    instance-of p3, p4, Ljava/lang/String;

    .line 102
    .line 103
    if-eqz p3, :cond_6

    .line 104
    .line 105
    check-cast p4, Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p0, p1, p2, v3, p4}, Lorg/sqlite/core/DB;->bind_text(JILjava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 111
    monitor-exit p0

    .line 112
    return p1

    .line 113
    :cond_6
    :try_start_7
    instance-of p3, p4, [B

    .line 114
    .line 115
    if-eqz p3, :cond_7

    .line 116
    .line 117
    check-cast p4, [B

    .line 118
    .line 119
    invoke-virtual {p0, p1, p2, v3, p4}, Lorg/sqlite/core/DB;->bind_blob(JI[B)I

    .line 120
    .line 121
    .line 122
    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 123
    monitor-exit p0

    .line 124
    return p1

    .line 125
    :cond_7
    :try_start_8
    new-instance p1, Ljava/sql/SQLException;

    .line 126
    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string p3, "unexpected param type: "

    .line 133
    .line 134
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :goto_0
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 153
    throw p1
.end method

.method public abstract step(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method final throwex()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/sql/SQLException;

    invoke-virtual {p0}, Lorg/sqlite/core/DB;->errmsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final throwex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/sqlite/core/DB;->newSQLException(I)Lorg/sqlite/SQLiteException;

    move-result-object p1

    throw p1
.end method

.method public abstract total_changes()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract value_blob(Lorg/sqlite/Function;I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract value_double(Lorg/sqlite/Function;I)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract value_int(Lorg/sqlite/Function;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract value_long(Lorg/sqlite/Function;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract value_text(Lorg/sqlite/Function;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract value_type(Lorg/sqlite/Function;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
