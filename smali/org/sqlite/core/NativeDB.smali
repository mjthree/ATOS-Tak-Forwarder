.class public final Lorg/sqlite/core/NativeDB;
.super Lorg/sqlite/core/DB;
.source "SourceFile"


# static fields
.field private static final DEFAULT_BACKUP_BUSY_SLEEP_TIME_MILLIS:I = 0x64

.field private static final DEFAULT_BACKUP_NUM_BUSY_BEFORE_FAIL:I = 0x3

.field private static final DEFAULT_PAGES_PER_BACKUP_STEP:I = 0x64

.field private static isLoaded:Z

.field private static loadSucceeded:Z


# instance fields
.field private busyHandler:J

.field private commitListener:J

.field private pointer:J

.field private progressHandler:J

.field private updateListener:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "java.vm.vendor"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "The Android Project"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "sqlitejdbc"

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    sput-boolean v0, Lorg/sqlite/core/NativeDB;->isLoaded:Z

    .line 22
    .line 23
    sput-boolean v0, Lorg/sqlite/core/NativeDB;->loadSucceeded:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lorg/sqlite/core/NativeDB;->isLoaded:Z

    .line 28
    .line 29
    sput-boolean v0, Lorg/sqlite/core/NativeDB;->loadSucceeded:Z

    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/SQLiteConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/sqlite/core/DB;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/SQLiteConfig;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 p1, 0x0

    .line 5
    .line 6
    iput-wide p1, p0, Lorg/sqlite/core/NativeDB;->pointer:J

    .line 7
    .line 8
    iput-wide p1, p0, Lorg/sqlite/core/NativeDB;->busyHandler:J

    .line 9
    .line 10
    iput-wide p1, p0, Lorg/sqlite/core/NativeDB;->commitListener:J

    .line 11
    .line 12
    iput-wide p1, p0, Lorg/sqlite/core/NativeDB;->updateListener:J

    .line 13
    .line 14
    return-void
.end method

.method public static load()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-boolean v0, Lorg/sqlite/core/NativeDB;->isLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lorg/sqlite/core/NativeDB;->loadSucceeded:Z

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_0
    invoke-static {}, Lorg/sqlite/SQLiteJDBCLoader;->initialize()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sput-boolean v1, Lorg/sqlite/core/NativeDB;->loadSucceeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    sput-boolean v0, Lorg/sqlite/core/NativeDB;->isLoaded:Z

    .line 16
    .line 17
    return v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    sput-boolean v0, Lorg/sqlite/core/NativeDB;->isLoaded:Z

    .line 20
    .line 21
    throw v1
.end method

.method private nameToUtf8ByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lorg/sqlite/core/NativeDB;->stringToUtf8ByteArray(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    array-length v1, v0

    .line 16
    const/16 v2, 0xff

    .line 17
    .line 18
    if-gt v1, v2, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "invalid "

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " name: \'"

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "\'"

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method static stringToUtf8ByteArray(Ljava/lang/String;)[B
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method static throwex(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/sql/SQLException;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method static utf8ByteBufferToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/lang/String;

    .line 15
    .line 16
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method


# virtual methods
.method protected synchronized native _close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public declared-synchronized _exec(Ljava/lang/String;)I
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "DriverManager ["

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "] [SQLite EXEC] "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lorg/sqlite/core/NativeDB;->stringToUtf8ByteArray(Ljava/lang/String;)[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lorg/sqlite/core/NativeDB;->_exec_utf8([B)I

    .line 43
    .line 44
    .line 45
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    .line 47
    return p1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p1
.end method

.method synchronized native _exec_utf8([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected declared-synchronized _open(Ljava/lang/String;I)V
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
    invoke-static {p1}, Lorg/sqlite/core/NativeDB;->stringToUtf8ByteArray(Ljava/lang/String;)[B

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/NativeDB;->_open_utf8([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method synchronized native _open_utf8([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public backup(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/core/DB$ProgressObserver;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/sqlite/core/NativeDB;->stringToUtf8ByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 2
    invoke-static {p2}, Lorg/sqlite/core/NativeDB;->stringToUtf8ByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v5, 0x3

    const/16 v6, 0x64

    const/16 v4, 0x64

    move-object v0, p0

    move-object v3, p3

    .line 3
    invoke-virtual/range {v0 .. v6}, Lorg/sqlite/core/NativeDB;->backup([B[BLorg/sqlite/core/DB$ProgressObserver;III)I

    move-result p1

    return p1
.end method

.method public backup(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/core/DB$ProgressObserver;III)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lorg/sqlite/core/NativeDB;->stringToUtf8ByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 5
    invoke-static {p2}, Lorg/sqlite/core/NativeDB;->stringToUtf8ByteArray(Ljava/lang/String;)[B

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 6
    invoke-virtual/range {v0 .. v6}, Lorg/sqlite/core/NativeDB;->backup([B[BLorg/sqlite/core/DB$ProgressObserver;III)I

    move-result p1

    return p1
.end method

.method synchronized native backup([B[BLorg/sqlite/core/DB$ProgressObserver;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method synchronized native bind_blob(JI[B)I
.end method

.method synchronized native bind_double(JID)I
.end method

.method synchronized native bind_int(JII)I
.end method

.method synchronized native bind_long(JIJ)I
.end method

.method synchronized native bind_null(JI)I
.end method

.method synchronized native bind_parameter_count(J)I
.end method

.method declared-synchronized bind_text(JILjava/lang/String;)I
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p4}, Lorg/sqlite/core/NativeDB;->stringToUtf8ByteArray(Ljava/lang/String;)[B

    .line 3
    .line 4
    .line 5
    move-result-object p4

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/sqlite/core/NativeDB;->bind_text_utf8(JI[B)I

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
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method synchronized native bind_text_utf8(JI[B)I
.end method

.method public synchronized native busy_handler(Lorg/sqlite/BusyHandler;)V
.end method

.method public synchronized native busy_timeout(I)V
.end method

.method public synchronized native changes()J
.end method

.method public synchronized native clear_bindings(J)I
.end method

.method public synchronized native clear_progress_handler()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public synchronized native column_blob(JI)[B
.end method

.method public synchronized native column_count(J)I
.end method

.method public declared-synchronized column_decltype(JI)Ljava/lang/String;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/core/NativeDB;->column_decltype_utf8(JI)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lorg/sqlite/core/NativeDB;->utf8ByteBufferToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method synchronized native column_decltype_utf8(JI)Ljava/nio/ByteBuffer;
.end method

.method public synchronized native column_double(JI)D
.end method

.method public synchronized native column_int(JI)I
.end method

.method public synchronized native column_long(JI)J
.end method

.method synchronized native column_metadata(J)[[Z
.end method

.method public declared-synchronized column_name(JI)Ljava/lang/String;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/core/NativeDB;->column_name_utf8(JI)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lorg/sqlite/core/NativeDB;->utf8ByteBufferToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method synchronized native column_name_utf8(JI)Ljava/nio/ByteBuffer;
.end method

.method public declared-synchronized column_table_name(JI)Ljava/lang/String;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/core/NativeDB;->column_table_name_utf8(JI)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lorg/sqlite/core/NativeDB;->utf8ByteBufferToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method synchronized native column_table_name_utf8(JI)Ljava/nio/ByteBuffer;
.end method

.method public declared-synchronized column_text(JI)Ljava/lang/String;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/core/NativeDB;->column_text_utf8(JI)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lorg/sqlite/core/NativeDB;->utf8ByteBufferToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method synchronized native column_text_utf8(JI)Ljava/nio/ByteBuffer;
.end method

.method public synchronized native column_type(JI)I
.end method

.method public declared-synchronized create_collation(Ljava/lang/String;Lorg/sqlite/Collation;)I
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
    const-string v0, "collation"

    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lorg/sqlite/core/NativeDB;->nameToUtf8ByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/NativeDB;->create_collation_utf8([BLorg/sqlite/Collation;)I

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return p1

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

.method synchronized native create_collation_utf8([BLorg/sqlite/Collation;)I
.end method

.method public declared-synchronized create_function(Ljava/lang/String;Lorg/sqlite/Function;II)I
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
    const-string v0, "function"

    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lorg/sqlite/core/NativeDB;->nameToUtf8ByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/sqlite/core/NativeDB;->create_function_utf8([BLorg/sqlite/Function;II)I

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return p1

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

.method synchronized native create_function_utf8([BLorg/sqlite/Function;II)I
.end method

.method public declared-synchronized destroy_collation(Ljava/lang/String;)I
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
    const-string v0, "collation"

    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lorg/sqlite/core/NativeDB;->nameToUtf8ByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lorg/sqlite/core/NativeDB;->destroy_collation_utf8([B)I

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return p1

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

.method synchronized native destroy_collation_utf8([B)I
.end method

.method public declared-synchronized destroy_function(Ljava/lang/String;)I
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
    const-string v0, "function"

    .line 3
    .line 4
    invoke-direct {p0, v0, p1}, Lorg/sqlite/core/NativeDB;->nameToUtf8ByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lorg/sqlite/core/NativeDB;->destroy_function_utf8([B)I

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return p1

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

.method synchronized native destroy_function_utf8([B)I
.end method

.method public synchronized native enable_load_extension(Z)I
.end method

.method declared-synchronized errmsg()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/sqlite/core/NativeDB;->errmsg_utf8()Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lorg/sqlite/core/NativeDB;->utf8ByteBufferToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method synchronized native errmsg_utf8()Ljava/nio/ByteBuffer;
.end method

.method protected synchronized native finalize(J)I
.end method

.method getBusyHandler()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/sqlite/core/NativeDB;->busyHandler:J

    .line 2
    .line 3
    return-wide v0
.end method

.method getCommitListener()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/sqlite/core/NativeDB;->commitListener:J

    .line 2
    .line 3
    return-wide v0
.end method

.method getProgressHandler()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/sqlite/core/NativeDB;->progressHandler:J

    .line 2
    .line 3
    return-wide v0
.end method

.method getUpdateListener()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/sqlite/core/NativeDB;->updateListener:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public native interrupt()V
.end method

.method public declared-synchronized libversion()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/sqlite/core/NativeDB;->libversion_utf8()Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lorg/sqlite/core/NativeDB;->utf8ByteBufferToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method native libversion_utf8()Ljava/nio/ByteBuffer;
.end method

.method public synchronized native limit(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method protected declared-synchronized prepare(Ljava/lang/String;)Lorg/sqlite/core/SafeStmtPtr;
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v1, "DriverManager ["

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "] [SQLite PREP] "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v0, Lorg/sqlite/core/SafeStmtPtr;

    .line 39
    .line 40
    invoke-static {p1}, Lorg/sqlite/core/NativeDB;->stringToUtf8ByteArray(Ljava/lang/String;)[B

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lorg/sqlite/core/NativeDB;->prepare_utf8([B)J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-direct {v0, p0, v1, v2}, Lorg/sqlite/core/SafeStmtPtr;-><init>(Lorg/sqlite/core/DB;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-object v0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw p1
.end method

.method synchronized native prepare_utf8([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public synchronized native register_progress_handler(ILorg/sqlite/ProgressHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public synchronized native reset(J)I
.end method

.method public declared-synchronized restore(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/core/DB$ProgressObserver;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    const/4 v5, 0x3

    const/16 v6, 0x64

    const/16 v4, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lorg/sqlite/core/NativeDB;->restore(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/core/DB$ProgressObserver;III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized restore(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/core/DB$ProgressObserver;III)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lorg/sqlite/core/NativeDB;->stringToUtf8ByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 3
    invoke-static {p2}, Lorg/sqlite/core/NativeDB;->stringToUtf8ByteArray(Ljava/lang/String;)[B

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 4
    invoke-virtual/range {v0 .. v6}, Lorg/sqlite/core/NativeDB;->restore([B[BLorg/sqlite/core/DB$ProgressObserver;III)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method synchronized native restore([B[BLorg/sqlite/core/DB$ProgressObserver;III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public synchronized native result_blob(J[B)V
.end method

.method public synchronized native result_double(JD)V
.end method

.method public declared-synchronized result_error(JLjava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p3}, Lorg/sqlite/core/NativeDB;->stringToUtf8ByteArray(Ljava/lang/String;)[B

    .line 3
    .line 4
    .line 5
    move-result-object p3

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/core/NativeDB;->result_error_utf8(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method synchronized native result_error_utf8(J[B)V
.end method

.method public synchronized native result_int(JI)V
.end method

.method public synchronized native result_long(JJ)V
.end method

.method public synchronized native result_null(J)V
.end method

.method public declared-synchronized result_text(JLjava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p3}, Lorg/sqlite/core/NativeDB;->stringToUtf8ByteArray(Ljava/lang/String;)[B

    .line 3
    .line 4
    .line 5
    move-result-object p3

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/core/NativeDB;->result_text_utf8(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method synchronized native result_text_utf8(J[B)V
.end method

.method synchronized native set_commit_listener(Z)V
.end method

.method synchronized native set_update_listener(Z)V
.end method

.method public synchronized native shared_cache(Z)I
.end method

.method public synchronized native step(J)I
.end method

.method public synchronized native total_changes()J
.end method

.method public synchronized native value_blob(Lorg/sqlite/Function;I)[B
.end method

.method public synchronized native value_double(Lorg/sqlite/Function;I)D
.end method

.method public synchronized native value_int(Lorg/sqlite/Function;I)I
.end method

.method public synchronized native value_long(Lorg/sqlite/Function;I)J
.end method

.method public declared-synchronized value_text(Lorg/sqlite/Function;I)Ljava/lang/String;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/sqlite/core/NativeDB;->value_text_utf8(Lorg/sqlite/Function;I)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {p1}, Lorg/sqlite/core/NativeDB;->utf8ByteBufferToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw p1
.end method

.method synchronized native value_text_utf8(Lorg/sqlite/Function;I)Ljava/nio/ByteBuffer;
.end method

.method public synchronized native value_type(Lorg/sqlite/Function;I)I
.end method
