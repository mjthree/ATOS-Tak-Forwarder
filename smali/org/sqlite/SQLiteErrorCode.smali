.class public final enum Lorg/sqlite/SQLiteErrorCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_ABORT:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_ABORT_ROLLBACK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_AUTH:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_AUTH_USER:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_BUSY:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_BUSY_RECOVERY:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_BUSY_SNAPSHOT:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_BUSY_TIMEOUT:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CANTOPEN:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CANTOPEN_CONVPATH:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CANTOPEN_DIRTYWAL:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CANTOPEN_FULLPATH:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CANTOPEN_ISDIR:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CANTOPEN_NOTEMPDIR:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CANTOPEN_SYMLINK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CONSTRAINT:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CONSTRAINT_CHECK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CONSTRAINT_COMMITHOOK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CONSTRAINT_DATATYPE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CONSTRAINT_FOREIGNKEY:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CONSTRAINT_FUNCTION:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CONSTRAINT_NOTNULL:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CONSTRAINT_PINNED:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CONSTRAINT_PRIMARYKEY:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CONSTRAINT_ROWID:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CONSTRAINT_TRIGGER:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CONSTRAINT_UNIQUE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CONSTRAINT_VTAB:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CORRUPT:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CORRUPT_INDEX:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CORRUPT_SEQUENCE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_CORRUPT_VTAB:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_DONE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_EMPTY:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_ERROR:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_ERROR_MISSING_COLLSEQ:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_ERROR_RETRY:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_ERROR_SNAPSHOT:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_FORMAT:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_FULL:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_INTERNAL:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_INTERRUPT:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_ACCESS:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_AUTH:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_BEGIN_ATOMIC:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_BLOCKED:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_CHECKRESERVEDLOCK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_CLOSE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_COMMIT_ATOMIC:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_CONVPATH:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_CORRUPTFS:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_DATA:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_DELETE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_DELETE_NOENT:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_DIR_CLOSE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_DIR_FSYNC:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_FSTAT:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_FSYNC:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_GETTEMPPATH:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_LOCK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_MMAP:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_NOMEM:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_RDLOCK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_READ:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_ROLLBACK_ATOMIC:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_SEEK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_SHMLOCK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_SHMMAP:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_SHMOPEN:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_SHMSIZE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_SHORT_READ:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_TRUNCATE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_UNLOCK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_VNODE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_IOERR_WRITE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_LOCKED:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_LOCKED_SHAREDCACHE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_LOCKED_VTAB:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_MISMATCH:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_MISUSE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_NOLFS:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_NOMEM:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_NOTADB:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_NOTFOUND:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_NOTICE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_NOTICE_RECOVER_ROLLBACK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_NOTICE_RECOVER_WAL:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_OK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_OK_LOAD_PERMANENTLY:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_PERM:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_PROTOCOL:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_RANGE:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_READONLY:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_READONLY_CANTINIT:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_READONLY_CANTLOCK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_READONLY_DBMOVED:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_READONLY_DIRECTORY:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_READONLY_RECOVERY:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_READONLY_ROLLBACK:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_ROW:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_SCHEMA:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_TOOBIG:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_WARNING:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum SQLITE_WARNING_AUTOINDEX:Lorg/sqlite/SQLiteErrorCode;

.field public static final enum UNKNOWN_ERROR:Lorg/sqlite/SQLiteErrorCode;


# instance fields
.field public final code:I

.field public final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 113

    .line 1
    new-instance v1, Lorg/sqlite/SQLiteErrorCode;

    move-object v0, v1

    const/4 v2, -0x1

    const-string v3, "unknown error"

    const-string v4, "UNKNOWN_ERROR"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/sqlite/SQLiteErrorCode;->UNKNOWN_ERROR:Lorg/sqlite/SQLiteErrorCode;

    .line 2
    new-instance v2, Lorg/sqlite/SQLiteErrorCode;

    move-object v1, v2

    const-string v3, "Successful result"

    const-string v4, "SQLITE_OK"

    const/4 v6, 0x1

    invoke-direct {v2, v4, v6, v5, v3}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lorg/sqlite/SQLiteErrorCode;->SQLITE_OK:Lorg/sqlite/SQLiteErrorCode;

    .line 3
    new-instance v3, Lorg/sqlite/SQLiteErrorCode;

    move-object v2, v3

    const-string v4, "SQL error or missing database"

    const-string v5, "SQLITE_ERROR"

    const/4 v7, 0x2

    invoke-direct {v3, v5, v7, v6, v4}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/sqlite/SQLiteErrorCode;->SQLITE_ERROR:Lorg/sqlite/SQLiteErrorCode;

    .line 4
    new-instance v4, Lorg/sqlite/SQLiteErrorCode;

    move-object v3, v4

    const-string v5, "Internal logic error in SQLite"

    const-string v6, "SQLITE_INTERNAL"

    const/4 v8, 0x3

    invoke-direct {v4, v6, v8, v7, v5}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lorg/sqlite/SQLiteErrorCode;->SQLITE_INTERNAL:Lorg/sqlite/SQLiteErrorCode;

    .line 5
    new-instance v5, Lorg/sqlite/SQLiteErrorCode;

    move-object v4, v5

    const-string v6, "Access permission denied"

    const-string v7, "SQLITE_PERM"

    const/4 v9, 0x4

    invoke-direct {v5, v7, v9, v8, v6}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/sqlite/SQLiteErrorCode;->SQLITE_PERM:Lorg/sqlite/SQLiteErrorCode;

    .line 6
    new-instance v6, Lorg/sqlite/SQLiteErrorCode;

    move-object v5, v6

    const-string v7, "Callback routine requested an abort"

    const-string v8, "SQLITE_ABORT"

    const/4 v10, 0x5

    invoke-direct {v6, v8, v10, v9, v7}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lorg/sqlite/SQLiteErrorCode;->SQLITE_ABORT:Lorg/sqlite/SQLiteErrorCode;

    .line 7
    new-instance v7, Lorg/sqlite/SQLiteErrorCode;

    move-object v6, v7

    const-string v8, "The database file is locked"

    const-string v9, "SQLITE_BUSY"

    const/4 v11, 0x6

    invoke-direct {v7, v9, v11, v10, v8}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lorg/sqlite/SQLiteErrorCode;->SQLITE_BUSY:Lorg/sqlite/SQLiteErrorCode;

    .line 8
    new-instance v8, Lorg/sqlite/SQLiteErrorCode;

    move-object v7, v8

    const-string v9, "A table in the database is locked"

    const-string v10, "SQLITE_LOCKED"

    const/4 v12, 0x7

    invoke-direct {v8, v10, v12, v11, v9}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/sqlite/SQLiteErrorCode;->SQLITE_LOCKED:Lorg/sqlite/SQLiteErrorCode;

    .line 9
    new-instance v9, Lorg/sqlite/SQLiteErrorCode;

    move-object v8, v9

    const-string v10, "A malloc() failed"

    const-string v11, "SQLITE_NOMEM"

    const/16 v13, 0x8

    invoke-direct {v9, v11, v13, v12, v10}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lorg/sqlite/SQLiteErrorCode;->SQLITE_NOMEM:Lorg/sqlite/SQLiteErrorCode;

    .line 10
    new-instance v10, Lorg/sqlite/SQLiteErrorCode;

    move-object v9, v10

    const-string v11, "Attempt to write a readonly database"

    const-string v12, "SQLITE_READONLY"

    const/16 v14, 0x9

    invoke-direct {v10, v12, v14, v13, v11}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lorg/sqlite/SQLiteErrorCode;->SQLITE_READONLY:Lorg/sqlite/SQLiteErrorCode;

    .line 11
    new-instance v11, Lorg/sqlite/SQLiteErrorCode;

    move-object v10, v11

    const-string v12, "Operation terminated by sqlite3_interrupt()"

    const-string v13, "SQLITE_INTERRUPT"

    const/16 v15, 0xa

    invoke-direct {v11, v13, v15, v14, v12}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lorg/sqlite/SQLiteErrorCode;->SQLITE_INTERRUPT:Lorg/sqlite/SQLiteErrorCode;

    .line 12
    new-instance v12, Lorg/sqlite/SQLiteErrorCode;

    move-object v11, v12

    const-string v13, "Some kind of disk I/O error occurred"

    const-string v14, "SQLITE_IOERR"

    move-object/from16 v106, v0

    const/16 v0, 0xb

    invoke-direct {v12, v14, v0, v15, v13}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR:Lorg/sqlite/SQLiteErrorCode;

    .line 13
    new-instance v13, Lorg/sqlite/SQLiteErrorCode;

    move-object v12, v13

    const-string v14, "The database disk image is malformed"

    const-string v15, "SQLITE_CORRUPT"

    move-object/from16 v107, v1

    const/16 v1, 0xc

    invoke-direct {v13, v15, v1, v0, v14}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CORRUPT:Lorg/sqlite/SQLiteErrorCode;

    .line 14
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object v13, v0

    const-string v14, "NOT USED. Table or record not found"

    const-string v15, "SQLITE_NOTFOUND"

    move-object/from16 v108, v2

    const/16 v2, 0xd

    invoke-direct {v0, v15, v2, v1, v14}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_NOTFOUND:Lorg/sqlite/SQLiteErrorCode;

    .line 15
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object v14, v0

    const-string v1, "Insertion failed because database is full"

    const-string v15, "SQLITE_FULL"

    move-object/from16 v109, v3

    const/16 v3, 0xe

    invoke-direct {v0, v15, v3, v2, v1}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_FULL:Lorg/sqlite/SQLiteErrorCode;

    .line 16
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object v15, v0

    const-string v1, "Unable to open the database file"

    const-string v2, "SQLITE_CANTOPEN"

    move-object/from16 v110, v4

    const/16 v4, 0xf

    invoke-direct {v0, v2, v4, v3, v1}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CANTOPEN:Lorg/sqlite/SQLiteErrorCode;

    .line 17
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v16, v0

    const-string v1, "NOT USED. Database lock protocol error"

    const-string v2, "SQLITE_PROTOCOL"

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_PROTOCOL:Lorg/sqlite/SQLiteErrorCode;

    .line 18
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v17, v0

    const-string v1, "Database is empty"

    const-string v2, "SQLITE_EMPTY"

    const/16 v4, 0x11

    invoke-direct {v0, v2, v4, v3, v1}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_EMPTY:Lorg/sqlite/SQLiteErrorCode;

    .line 19
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v18, v0

    const-string v1, "The database schema changed"

    const-string v2, "SQLITE_SCHEMA"

    const/16 v3, 0x12

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_SCHEMA:Lorg/sqlite/SQLiteErrorCode;

    .line 20
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v19, v0

    const-string v1, "String or BLOB exceeds size limit"

    const-string v2, "SQLITE_TOOBIG"

    const/16 v4, 0x13

    invoke-direct {v0, v2, v4, v3, v1}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_TOOBIG:Lorg/sqlite/SQLiteErrorCode;

    .line 21
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-string v2, "Abort due to constraint violation"

    const-string v3, "SQLITE_CONSTRAINT"

    invoke-direct {v0, v3, v1, v4, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CONSTRAINT:Lorg/sqlite/SQLiteErrorCode;

    .line 22
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v21, v0

    const-string v2, "Data type mismatch"

    const-string v3, "SQLITE_MISMATCH"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_MISMATCH:Lorg/sqlite/SQLiteErrorCode;

    .line 23
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v22, v0

    const/16 v1, 0x15

    const-string v2, "Library used incorrectly"

    const-string v3, "SQLITE_MISUSE"

    const/16 v4, 0x16

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_MISUSE:Lorg/sqlite/SQLiteErrorCode;

    .line 24
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v23, v0

    const/16 v1, 0x16

    const-string v2, "Uses OS features not supported on host"

    const-string v3, "SQLITE_NOLFS"

    const/16 v4, 0x17

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_NOLFS:Lorg/sqlite/SQLiteErrorCode;

    .line 25
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v24, v0

    const/16 v1, 0x17

    const-string v2, "Authorization denied"

    const-string v3, "SQLITE_AUTH"

    const/16 v4, 0x18

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_AUTH:Lorg/sqlite/SQLiteErrorCode;

    .line 26
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v25, v0

    const/16 v1, 0x18

    const-string v2, "Auxiliary database format error"

    const-string v3, "SQLITE_FORMAT"

    const/16 v4, 0x19

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_FORMAT:Lorg/sqlite/SQLiteErrorCode;

    .line 27
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v26, v0

    const/16 v1, 0x19

    const-string v2, "2nd parameter to sqlite3_bind out of range"

    const-string v3, "SQLITE_RANGE"

    const/16 v4, 0x1a

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_RANGE:Lorg/sqlite/SQLiteErrorCode;

    .line 28
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v27, v0

    const/16 v1, 0x1a

    const-string v2, "File opened that is not a database file"

    const-string v3, "SQLITE_NOTADB"

    const/16 v4, 0x1b

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_NOTADB:Lorg/sqlite/SQLiteErrorCode;

    .line 29
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v28, v0

    const/16 v1, 0x1b

    const-string v2, "Notifications from sqlite3_log()"

    const-string v3, "SQLITE_NOTICE"

    const/16 v4, 0x1c

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_NOTICE:Lorg/sqlite/SQLiteErrorCode;

    .line 30
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v29, v0

    const/16 v1, 0x1c

    const-string v2, "Warnings from sqlite3_log()"

    const-string v3, "SQLITE_WARNING"

    const/16 v4, 0x1d

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_WARNING:Lorg/sqlite/SQLiteErrorCode;

    .line 31
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v30, v0

    const/16 v1, 0x64

    const-string v2, "sqlite3_step() has another row ready"

    const-string v3, "SQLITE_ROW"

    const/16 v4, 0x1e

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_ROW:Lorg/sqlite/SQLiteErrorCode;

    .line 32
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v31, v0

    const/16 v1, 0x65

    const-string v2, "sqlite3_step() has finished executing"

    const-string v3, "SQLITE_DONE"

    const/16 v4, 0x1f

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_DONE:Lorg/sqlite/SQLiteErrorCode;

    .line 33
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v32, v0

    const/16 v1, 0x204

    const-string v2, "The transaction that was active when the SQL statement first started was rolled back"

    const-string v3, "SQLITE_ABORT_ROLLBACK"

    const/16 v4, 0x20

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_ABORT_ROLLBACK:Lorg/sqlite/SQLiteErrorCode;

    .line 34
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v33, v0

    const/16 v1, 0x117

    const-string v2, "An operation was attempted on a database for which the logged in user lacks sufficient authorization"

    const-string v3, "SQLITE_AUTH_USER"

    const/16 v4, 0x21

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_AUTH_USER:Lorg/sqlite/SQLiteErrorCode;

    .line 35
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v34, v0

    const/16 v1, 0x105

    const-string v2, "Another process is busy recovering a WAL mode database file following a crash"

    const-string v3, "SQLITE_BUSY_RECOVERY"

    const/16 v4, 0x22

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_BUSY_RECOVERY:Lorg/sqlite/SQLiteErrorCode;

    .line 36
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v35, v0

    const/16 v1, 0x205

    const-string v2, "Another database connection has already written to the database"

    const-string v3, "SQLITE_BUSY_SNAPSHOT"

    const/16 v4, 0x23

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_BUSY_SNAPSHOT:Lorg/sqlite/SQLiteErrorCode;

    .line 37
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v36, v0

    const/16 v1, 0x305

    const-string v2, "A blocking Posix advisory file lock request in the VFS layer failed due to a timeout"

    const-string v3, "SQLITE_BUSY_TIMEOUT"

    const/16 v4, 0x24

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_BUSY_TIMEOUT:Lorg/sqlite/SQLiteErrorCode;

    .line 38
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v37, v0

    const/16 v1, 0x40e

    const-string v2, "cygwin_conv_path() system call failed while trying to open a file"

    const-string v3, "SQLITE_CANTOPEN_CONVPATH"

    const/16 v4, 0x25

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CANTOPEN_CONVPATH:Lorg/sqlite/SQLiteErrorCode;

    .line 39
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v38, v0

    const/16 v1, 0x50e

    const-string v2, "Not used"

    const-string v3, "SQLITE_CANTOPEN_DIRTYWAL"

    const/16 v4, 0x26

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CANTOPEN_DIRTYWAL:Lorg/sqlite/SQLiteErrorCode;

    .line 40
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v39, v0

    const/16 v1, 0x30e

    const-string v2, "The operating system was unable to convert the filename into a full pathname"

    const-string v3, "SQLITE_CANTOPEN_FULLPATH"

    const/16 v4, 0x27

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CANTOPEN_FULLPATH:Lorg/sqlite/SQLiteErrorCode;

    .line 41
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v40, v0

    const/16 v1, 0x20e

    const-string v2, "The file is really a directory"

    const-string v3, "SQLITE_CANTOPEN_ISDIR"

    const/16 v4, 0x28

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CANTOPEN_ISDIR:Lorg/sqlite/SQLiteErrorCode;

    .line 42
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v41, v0

    const/16 v1, 0x10e

    const-string v2, "No longer used"

    const-string v3, "SQLITE_CANTOPEN_NOTEMPDIR"

    const/16 v4, 0x29

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CANTOPEN_NOTEMPDIR:Lorg/sqlite/SQLiteErrorCode;

    .line 43
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v42, v0

    const/16 v1, 0x60e

    const-string v2, "The file is a symbolic link but SQLITE_OPEN_NOFOLLOW flag is used"

    const-string v3, "SQLITE_CANTOPEN_SYMLINK"

    const/16 v4, 0x2a

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CANTOPEN_SYMLINK:Lorg/sqlite/SQLiteErrorCode;

    .line 44
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v43, v0

    const/16 v1, 0x113

    const-string v2, "A CHECK constraint failed"

    const-string v3, "SQLITE_CONSTRAINT_CHECK"

    const/16 v4, 0x2b

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CONSTRAINT_CHECK:Lorg/sqlite/SQLiteErrorCode;

    .line 45
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v44, v0

    const/16 v1, 0x213

    const-string v2, "A commit hook callback returned non-zero"

    const-string v3, "SQLITE_CONSTRAINT_COMMITHOOK"

    const/16 v4, 0x2c

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CONSTRAINT_COMMITHOOK:Lorg/sqlite/SQLiteErrorCode;

    .line 46
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v45, v0

    const/16 v1, 0xc13

    const-string v2, "An insert or update attempted to store a value inconsistent with the column\'s declared type in a table defined as STRICT"

    const-string v3, "SQLITE_CONSTRAINT_DATATYPE"

    const/16 v4, 0x2d

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CONSTRAINT_DATATYPE:Lorg/sqlite/SQLiteErrorCode;

    .line 47
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v46, v0

    const/16 v1, 0x313

    const-string v2, "A foreign key constraint failed"

    const-string v3, "SQLITE_CONSTRAINT_FOREIGNKEY"

    const/16 v4, 0x2e

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CONSTRAINT_FOREIGNKEY:Lorg/sqlite/SQLiteErrorCode;

    .line 48
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v47, v0

    const/16 v1, 0x413

    const-string v2, "Error reported by extension function"

    const-string v3, "SQLITE_CONSTRAINT_FUNCTION"

    const/16 v4, 0x2f

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CONSTRAINT_FUNCTION:Lorg/sqlite/SQLiteErrorCode;

    .line 49
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v48, v0

    const/16 v1, 0x513

    const-string v2, "A NOT NULL constraint failed"

    const-string v3, "SQLITE_CONSTRAINT_NOTNULL"

    const/16 v4, 0x30

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CONSTRAINT_NOTNULL:Lorg/sqlite/SQLiteErrorCode;

    .line 50
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v49, v0

    const/16 v1, 0xb13

    const-string v2, "An UPDATE trigger attempted to delete the row that was being updated in the middle of the update"

    const-string v3, "SQLITE_CONSTRAINT_PINNED"

    const/16 v4, 0x31

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CONSTRAINT_PINNED:Lorg/sqlite/SQLiteErrorCode;

    .line 51
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v50, v0

    const/16 v1, 0x613

    const-string v2, "A PRIMARY KEY constraint failed"

    const-string v3, "SQLITE_CONSTRAINT_PRIMARYKEY"

    const/16 v4, 0x32

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CONSTRAINT_PRIMARYKEY:Lorg/sqlite/SQLiteErrorCode;

    .line 52
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v51, v0

    const/16 v1, 0xa13

    const-string v2, "rowid is not unique"

    const-string v3, "SQLITE_CONSTRAINT_ROWID"

    const/16 v4, 0x33

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CONSTRAINT_ROWID:Lorg/sqlite/SQLiteErrorCode;

    .line 53
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v52, v0

    const/16 v1, 0x713

    const-string v2, "A RAISE function within a trigger fired, causing the SQL statement to abort"

    const-string v3, "SQLITE_CONSTRAINT_TRIGGER"

    const/16 v4, 0x34

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CONSTRAINT_TRIGGER:Lorg/sqlite/SQLiteErrorCode;

    .line 54
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v53, v0

    const/16 v1, 0x813

    const-string v2, "A UNIQUE constraint failed"

    const-string v3, "SQLITE_CONSTRAINT_UNIQUE"

    const/16 v4, 0x35

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CONSTRAINT_UNIQUE:Lorg/sqlite/SQLiteErrorCode;

    .line 55
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v54, v0

    const/16 v1, 0x913

    const-string v2, "Error reported by application-defined virtual table"

    const-string v3, "SQLITE_CONSTRAINT_VTAB"

    const/16 v4, 0x36

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CONSTRAINT_VTAB:Lorg/sqlite/SQLiteErrorCode;

    .line 56
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v55, v0

    const/16 v1, 0x30b

    const-string v2, "SQLite detected an entry is or was missing from an index"

    const-string v3, "SQLITE_CORRUPT_INDEX"

    const/16 v4, 0x37

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CORRUPT_INDEX:Lorg/sqlite/SQLiteErrorCode;

    .line 57
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v56, v0

    const/16 v1, 0x20b

    const-string v2, "the schema of the sqlite_sequence table is corrupt"

    const-string v3, "SQLITE_CORRUPT_SEQUENCE"

    const/16 v4, 0x38

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CORRUPT_SEQUENCE:Lorg/sqlite/SQLiteErrorCode;

    .line 58
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v57, v0

    const/16 v1, 0x10b

    const-string v2, "Content in the virtual table is corrupt"

    const-string v3, "SQLITE_CORRUPT_VTAB"

    const/16 v4, 0x39

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_CORRUPT_VTAB:Lorg/sqlite/SQLiteErrorCode;

    .line 59
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v58, v0

    const/16 v1, 0x101

    const-string v2, "An SQL statement could not be prepared because a collating sequence named in that SQL statement could not be located"

    const-string v3, "SQLITE_ERROR_MISSING_COLLSEQ"

    const/16 v4, 0x3a

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_ERROR_MISSING_COLLSEQ:Lorg/sqlite/SQLiteErrorCode;

    .line 60
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v59, v0

    const/16 v1, 0x201

    const-string v2, "used internally"

    const-string v3, "SQLITE_ERROR_RETRY"

    const/16 v4, 0x3b

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_ERROR_RETRY:Lorg/sqlite/SQLiteErrorCode;

    .line 61
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v60, v0

    const/16 v1, 0x301

    const-string v2, "the historical snapshot is no longer available"

    const-string v3, "SQLITE_ERROR_SNAPSHOT"

    const/16 v4, 0x3c

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_ERROR_SNAPSHOT:Lorg/sqlite/SQLiteErrorCode;

    .line 62
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v61, v0

    const/16 v1, 0xd0a

    const-string v2, "I/O error within the xAccess"

    const-string v3, "SQLITE_IOERR_ACCESS"

    const/16 v4, 0x3d

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_ACCESS:Lorg/sqlite/SQLiteErrorCode;

    .line 63
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v62, v0

    const-string v1, "SQLITE_IOERR_AUTH"

    const/16 v2, 0x3e

    const/16 v3, 0x1c0a

    const-string v4, "reserved for use by extensions"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_AUTH:Lorg/sqlite/SQLiteErrorCode;

    .line 64
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v63, v0

    const/16 v1, 0x1d0a

    const-string v2, "the underlying operating system reported and error on the SQLITE_FCNTL_BEGIN_ATOMIC_WRITE file-control"

    const-string v3, "SQLITE_IOERR_BEGIN_ATOMIC"

    move-object/from16 v111, v5

    const/16 v5, 0x3f

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_BEGIN_ATOMIC:Lorg/sqlite/SQLiteErrorCode;

    .line 65
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v64, v0

    const-string v1, "SQLITE_IOERR_BLOCKED"

    const/16 v2, 0x40

    const/16 v3, 0xb0a

    const-string v5, "no longer used"

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_BLOCKED:Lorg/sqlite/SQLiteErrorCode;

    .line 66
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v65, v0

    const/16 v1, 0xe0a

    const-string v2, "I/O error within xCheckReservedLock"

    const-string v3, "SQLITE_IOERR_CHECKRESERVEDLOCK"

    move-object/from16 v112, v6

    const/16 v6, 0x41

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_CHECKRESERVEDLOCK:Lorg/sqlite/SQLiteErrorCode;

    .line 67
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v66, v0

    const/16 v1, 0x100a

    const-string v2, "I/O error within xClose"

    const-string v3, "SQLITE_IOERR_CLOSE"

    const/16 v6, 0x42

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_CLOSE:Lorg/sqlite/SQLiteErrorCode;

    .line 68
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v67, v0

    const/16 v1, 0x1e0a

    const-string v2, "the underlying operating system reported and error on the SQLITE_FCNTL_COMMIT_ATOMIC_WRITE file-control"

    const-string v3, "SQLITE_IOERR_COMMIT_ATOMIC"

    const/16 v6, 0x43

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_COMMIT_ATOMIC:Lorg/sqlite/SQLiteErrorCode;

    .line 69
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v68, v0

    const/16 v1, 0x1a0a

    const-string v2, "cygwin_conv_path() system call failed"

    const-string v3, "SQLITE_IOERR_CONVPATH"

    const/16 v6, 0x44

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_CONVPATH:Lorg/sqlite/SQLiteErrorCode;

    .line 70
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v69, v0

    const/16 v1, 0x210a

    const-string v2, "I/O error in the VFS layer, a seek or read failure was due to the request not falling within the file\'s boundary rather than an ordinary device failure"

    const-string v3, "SQLITE_IOERR_CORRUPTFS"

    const/16 v6, 0x45

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_CORRUPTFS:Lorg/sqlite/SQLiteErrorCode;

    .line 71
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v70, v0

    const/16 v1, 0x200a

    const-string v2, "I/O error in the VFS shim, the checksum on a page of the database file is incorrect"

    const-string v3, "SQLITE_IOERR_DATA"

    const/16 v6, 0x46

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_DATA:Lorg/sqlite/SQLiteErrorCode;

    .line 72
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v71, v0

    const/16 v1, 0xa0a

    const-string v2, "I/O error within xDelete"

    const-string v3, "SQLITE_IOERR_DELETE"

    const/16 v6, 0x47

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_DELETE:Lorg/sqlite/SQLiteErrorCode;

    .line 73
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v72, v0

    const/16 v1, 0x170a

    const-string v2, "The file being deleted does not exist"

    const-string v3, "SQLITE_IOERR_DELETE_NOENT"

    const/16 v6, 0x48

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_DELETE_NOENT:Lorg/sqlite/SQLiteErrorCode;

    .line 74
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v73, v0

    const/16 v1, 0x49

    const/16 v2, 0x110a

    const-string v3, "SQLITE_IOERR_DIR_CLOSE"

    invoke-direct {v0, v3, v1, v2, v5}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_DIR_CLOSE:Lorg/sqlite/SQLiteErrorCode;

    .line 75
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v74, v0

    const/16 v1, 0x50a

    const-string v2, "I/O error in the VFS layer while trying to invoke fsync() on a directory"

    const-string v3, "SQLITE_IOERR_DIR_FSYNC"

    const/16 v6, 0x4a

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_DIR_FSYNC:Lorg/sqlite/SQLiteErrorCode;

    .line 76
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v75, v0

    const/16 v1, 0x70a

    const-string v2, "I/O error in the VFS layer while trying to invoke fstat()"

    const-string v3, "SQLITE_IOERR_FSTAT"

    const/16 v6, 0x4b

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_FSTAT:Lorg/sqlite/SQLiteErrorCode;

    .line 77
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v76, v0

    const/16 v1, 0x40a

    const-string v2, "I/O error in the VFS layer while trying to flush previously written content"

    const-string v3, "SQLITE_IOERR_FSYNC"

    const/16 v6, 0x4c

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_FSYNC:Lorg/sqlite/SQLiteErrorCode;

    .line 78
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v77, v0

    const/16 v1, 0x190a

    const-string v2, "Unable to determine a suitable directory in which to place temporary files"

    const-string v3, "SQLITE_IOERR_GETTEMPPATH"

    const/16 v6, 0x4d

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_GETTEMPPATH:Lorg/sqlite/SQLiteErrorCode;

    .line 79
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v78, v0

    const/16 v1, 0xf0a

    const-string v2, "I/O error in the advisory file locking logic"

    const-string v3, "SQLITE_IOERR_LOCK"

    const/16 v6, 0x4e

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_LOCK:Lorg/sqlite/SQLiteErrorCode;

    .line 80
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v79, v0

    const/16 v1, 0x180a

    const-string v2, "I/O error while trying to map or unmap part of the database file"

    const-string v3, "SQLITE_IOERR_MMAP"

    const/16 v6, 0x4f

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_MMAP:Lorg/sqlite/SQLiteErrorCode;

    .line 81
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v80, v0

    const/16 v1, 0xc0a

    const-string v2, "Unable to allocate sufficient memory"

    const-string v3, "SQLITE_IOERR_NOMEM"

    const/16 v6, 0x50

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_NOMEM:Lorg/sqlite/SQLiteErrorCode;

    .line 82
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v81, v0

    const/16 v1, 0x90a

    const-string v2, "I/O error within xLock"

    const-string v3, "SQLITE_IOERR_RDLOCK"

    const/16 v6, 0x51

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_RDLOCK:Lorg/sqlite/SQLiteErrorCode;

    .line 83
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v82, v0

    const/16 v1, 0x10a

    const-string v2, "I/O error in the VFS layer while trying to read from a file on disk"

    const-string v3, "SQLITE_IOERR_READ"

    const/16 v6, 0x52

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_READ:Lorg/sqlite/SQLiteErrorCode;

    .line 84
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v83, v0

    const/16 v1, 0x1f0a

    const-string v2, "the underlying operating system reported and error on the SQLITE_FCNTL_ROLLBACK_ATOMIC_WRITE file-control"

    const-string v3, "SQLITE_IOERR_ROLLBACK_ATOMIC"

    const/16 v6, 0x53

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_ROLLBACK_ATOMIC:Lorg/sqlite/SQLiteErrorCode;

    .line 85
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v84, v0

    const/16 v1, 0x160a

    const-string v2, "I/O error while trying to seek a file descriptor"

    const-string v3, "SQLITE_IOERR_SEEK"

    const/16 v6, 0x54

    invoke-direct {v0, v3, v6, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_SEEK:Lorg/sqlite/SQLiteErrorCode;

    .line 86
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v85, v0

    const/16 v1, 0x55

    const/16 v2, 0x140a

    const-string v3, "SQLITE_IOERR_SHMLOCK"

    invoke-direct {v0, v3, v1, v2, v5}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_SHMLOCK:Lorg/sqlite/SQLiteErrorCode;

    .line 87
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v86, v0

    const/16 v1, 0x150a

    const-string v2, "I/O error within xShmMap while trying to map a shared memory segment"

    const-string v3, "SQLITE_IOERR_SHMMAP"

    const/16 v5, 0x56

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_SHMMAP:Lorg/sqlite/SQLiteErrorCode;

    .line 88
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v87, v0

    const/16 v1, 0x120a

    const-string v2, "I/O error within xShmMap while trying to open a new shared memory segment"

    const-string v3, "SQLITE_IOERR_SHMOPEN"

    const/16 v5, 0x57

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_SHMOPEN:Lorg/sqlite/SQLiteErrorCode;

    .line 89
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v88, v0

    const/16 v1, 0x130a

    const-string v2, "I/O error within xShmMap while trying to resize an existing shared memory segment"

    const-string v3, "SQLITE_IOERR_SHMSIZE"

    const/16 v5, 0x58

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_SHMSIZE:Lorg/sqlite/SQLiteErrorCode;

    .line 90
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v89, v0

    const/16 v1, 0x20a

    const-string v2, "The VFS layer was unable to obtain as many bytes as was requested"

    const-string v3, "SQLITE_IOERR_SHORT_READ"

    const/16 v5, 0x59

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_SHORT_READ:Lorg/sqlite/SQLiteErrorCode;

    .line 91
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v90, v0

    const/16 v1, 0x60a

    const-string v2, "I/O error in the VFS layer while trying to truncate a file to a smaller size"

    const-string v3, "SQLITE_IOERR_TRUNCATE"

    const/16 v5, 0x5a

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_TRUNCATE:Lorg/sqlite/SQLiteErrorCode;

    .line 92
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v91, v0

    const/16 v1, 0x80a

    const-string v2, "I/O error within xUnlock"

    const-string v3, "SQLITE_IOERR_UNLOCK"

    const/16 v5, 0x5b

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_UNLOCK:Lorg/sqlite/SQLiteErrorCode;

    .line 93
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v92, v0

    const/16 v1, 0x5c

    const/16 v2, 0x1b0a

    const-string v3, "SQLITE_IOERR_VNODE"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_VNODE:Lorg/sqlite/SQLiteErrorCode;

    .line 94
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v93, v0

    const/16 v1, 0x30a

    const-string v2, "I/O error in the VFS layer while trying to write to a file on disk"

    const-string v3, "SQLITE_IOERR_WRITE"

    const/16 v5, 0x5d

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_IOERR_WRITE:Lorg/sqlite/SQLiteErrorCode;

    .line 95
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v94, v0

    const/16 v1, 0x106

    const-string v2, "Contention with a different database connection that shares the cache"

    const-string v3, "SQLITE_LOCKED_SHAREDCACHE"

    const/16 v5, 0x5e

    invoke-direct {v0, v3, v5, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_LOCKED_SHAREDCACHE:Lorg/sqlite/SQLiteErrorCode;

    .line 96
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v95, v0

    const/16 v1, 0x5f

    const/16 v2, 0x206

    const-string v3, "SQLITE_LOCKED_VTAB"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_LOCKED_VTAB:Lorg/sqlite/SQLiteErrorCode;

    .line 97
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v96, v0

    const/16 v1, 0x21b

    const-string v2, "a hot journal is rolled back"

    const-string v3, "SQLITE_NOTICE_RECOVER_ROLLBACK"

    const/16 v4, 0x60

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_NOTICE_RECOVER_ROLLBACK:Lorg/sqlite/SQLiteErrorCode;

    .line 98
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v97, v0

    const/16 v1, 0x11b

    const-string v2, "a WAL mode database file is recovered"

    const-string v3, "SQLITE_NOTICE_RECOVER_WAL"

    const/16 v4, 0x61

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_NOTICE_RECOVER_WAL:Lorg/sqlite/SQLiteErrorCode;

    .line 99
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v98, v0

    const/16 v1, 0x100

    const-string v2, "the extension remains loaded into the process address space after the database connection closes"

    const-string v3, "SQLITE_OK_LOAD_PERMANENTLY"

    const/16 v4, 0x62

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_OK_LOAD_PERMANENTLY:Lorg/sqlite/SQLiteErrorCode;

    .line 100
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v99, v0

    const/16 v1, 0x508

    const-string v2, "the current process does not have write permission on the shared memory region"

    const-string v3, "SQLITE_READONLY_CANTINIT"

    const/16 v4, 0x63

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_READONLY_CANTINIT:Lorg/sqlite/SQLiteErrorCode;

    .line 101
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v100, v0

    const/16 v1, 0x208

    const-string v2, "The shared-memory file associated with that database is read-only"

    const-string v3, "SQLITE_READONLY_CANTLOCK"

    const/16 v4, 0x64

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_READONLY_CANTLOCK:Lorg/sqlite/SQLiteErrorCode;

    .line 102
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v101, v0

    const/16 v1, 0x408

    const-string v2, "The database file has been moved since it was opened"

    const-string v3, "SQLITE_READONLY_DBMOVED"

    const/16 v4, 0x65

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_READONLY_DBMOVED:Lorg/sqlite/SQLiteErrorCode;

    .line 103
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v102, v0

    const/16 v1, 0x608

    const-string v2, "Process does not have permission to create a journal file in the same directory as the database and the creation of a journal file is a prerequisite for writing"

    const-string v3, "SQLITE_READONLY_DIRECTORY"

    const/16 v4, 0x66

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_READONLY_DIRECTORY:Lorg/sqlite/SQLiteErrorCode;

    .line 104
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v103, v0

    const/16 v1, 0x108

    const-string v2, "The database file needs to be recovered"

    const-string v3, "SQLITE_READONLY_RECOVERY"

    const/16 v4, 0x67

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_READONLY_RECOVERY:Lorg/sqlite/SQLiteErrorCode;

    .line 105
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v104, v0

    const/16 v1, 0x308

    const-string v2, "Hot journal needs to be rolled back"

    const-string v3, "SQLITE_READONLY_ROLLBACK"

    const/16 v4, 0x68

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_READONLY_ROLLBACK:Lorg/sqlite/SQLiteErrorCode;

    .line 106
    new-instance v0, Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v105, v0

    const/16 v1, 0x11c

    const-string v2, "automatic indexing is used"

    const-string v3, "SQLITE_WARNING_AUTOINDEX"

    const/16 v4, 0x69

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/sqlite/SQLiteErrorCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->SQLITE_WARNING_AUTOINDEX:Lorg/sqlite/SQLiteErrorCode;

    move-object/from16 v0, v106

    move-object/from16 v1, v107

    move-object/from16 v2, v108

    move-object/from16 v3, v109

    move-object/from16 v4, v110

    move-object/from16 v5, v111

    move-object/from16 v6, v112

    .line 107
    filled-new-array/range {v0 .. v105}, [Lorg/sqlite/SQLiteErrorCode;

    move-result-object v0

    sput-object v0, Lorg/sqlite/SQLiteErrorCode;->$VALUES:[Lorg/sqlite/SQLiteErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/sqlite/SQLiteErrorCode;->code:I

    .line 5
    .line 6
    iput-object p4, p0, Lorg/sqlite/SQLiteErrorCode;->message:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static getErrorCode(I)Lorg/sqlite/SQLiteErrorCode;
    .locals 5

    .line 1
    invoke-static {}, Lorg/sqlite/SQLiteErrorCode;->values()[Lorg/sqlite/SQLiteErrorCode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lorg/sqlite/SQLiteErrorCode;->code:I

    .line 12
    .line 13
    if-ne p0, v4, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    sget-object p0, Lorg/sqlite/SQLiteErrorCode;->UNKNOWN_ERROR:Lorg/sqlite/SQLiteErrorCode;

    .line 20
    .line 21
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteErrorCode;
    .locals 1

    .line 1
    const-class v0, Lorg/sqlite/SQLiteErrorCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/sqlite/SQLiteErrorCode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteErrorCode;->$VALUES:[Lorg/sqlite/SQLiteErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/sqlite/SQLiteErrorCode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/sqlite/SQLiteErrorCode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/sqlite/SQLiteErrorCode;->message:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "[%s] %s"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
