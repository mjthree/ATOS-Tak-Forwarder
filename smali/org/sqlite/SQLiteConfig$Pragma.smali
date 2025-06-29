.class public final enum Lorg/sqlite/SQLiteConfig$Pragma;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/SQLiteConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pragma"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteConfig$Pragma;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum APPLICATION_ID:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum BUSY_TIMEOUT:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum CASE_SENSITIVE_LIKE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum COUNT_CHANGES:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum DATE_CLASS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum DATE_PRECISION:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum DATE_STRING_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum DEFAULT_CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum DEFER_FOREIGN_KEYS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum EMPTY_RESULT_CALLBACKS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum ENCODING:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum FOREIGN_KEYS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum FULL_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum FULL_SYNC:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum HEXKEY_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum INCREMENTAL_VACUUM:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum JDBC_EXPLICIT_READONLY:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum JOURNAL_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum JOURNAL_SIZE_LIMIT:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LEGACY_ALTER_TABLE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LEGACY_FILE_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LIMIT_ATTACHED:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LIMIT_COLUMN:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LIMIT_COMPOUND_SELECT:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LIMIT_EXPR_DEPTH:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LIMIT_FUNCTION_ARG:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LIMIT_LENGTH:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LIMIT_LIKE_PATTERN_LENGTH:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LIMIT_PAGE_COUNT:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LIMIT_SQL_LENGTH:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LIMIT_TRIGGER_DEPTH:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LIMIT_VARIABLE_NUMBER:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LIMIT_VDBE_OP:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LIMIT_WORKER_THREADS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LOAD_EXTENSION:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum LOCKING_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum MAX_PAGE_COUNT:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum MMAP_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum OPEN_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum PAGE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum PASSWORD:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum READ_UNCOMMITTED:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum RECURSIVE_TRIGGERS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum REVERSE_UNORDERED_SELECTS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum SECURE_DELETE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum SHARED_CACHE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum SHORT_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum SYNCHRONOUS:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum TEMP_STORE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum TEMP_STORE_DIRECTORY:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum TRANSACTION_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

.field public static final enum USER_VERSION:Lorg/sqlite/SQLiteConfig$Pragma;


# instance fields
.field public final choices:[Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final pragmaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 74

    .line 1
    new-instance v7, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object v6, v7

    const-string v4, "Database open-mode flag"

    const/4 v5, 0x0

    const-string v1, "OPEN_MODE"

    const/4 v2, 0x0

    const-string v3, "open_mode"

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v7, Lorg/sqlite/SQLiteConfig$Pragma;->OPEN_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object v7, v0

    const-string v12, "Enable SQLite Shared-Cache mode, native driver only"

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v13

    const-string v9, "SHARED_CACHE"

    const/4 v10, 0x1

    const-string v11, "shared_cache"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SHARED_CACHE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 3
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object v8, v0

    const-string v18, "Enable SQLite load_extension() function, native driver only"

    .line 4
    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v19

    const-string v15, "LOAD_EXTENSION"

    const/16 v16, 0x2

    const-string v17, "enable_load_extension"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LOAD_EXTENSION:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 5
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object v9, v0

    const-string v24, "Maximum number of database disk pages that SQLite will hold in memory at once per open database file"

    const/16 v25, 0x0

    const-string v21, "CACHE_SIZE"

    const/16 v22, 0x3

    const-string v23, "cache_size"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 6
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object v10, v0

    const-string v15, "Maximum number of bytes that are set aside for memory-mapped I/O on a single database"

    const/16 v16, 0x0

    const-string v12, "MMAP_SIZE"

    const/4 v13, 0x4

    const-string v14, "mmap_size"

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->MMAP_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 7
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object v11, v0

    const-string v21, "Installs a new application-defined LIKE function that is either case sensitive or insensitive depending on the value"

    .line 8
    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v22

    const-string v18, "CASE_SENSITIVE_LIKE"

    const/16 v19, 0x5

    const-string v20, "case_sensitive_like"

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->CASE_SENSITIVE_LIKE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 9
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object v12, v0

    const-string v27, "Deprecated"

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v28

    const-string v24, "COUNT_CHANGES"

    const/16 v25, 0x6

    const-string v26, "count_changes"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->COUNT_CHANGES:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 10
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object v13, v0

    const-string v18, "Deprecated"

    const/16 v19, 0x0

    const-string v15, "DEFAULT_CACHE_SIZE"

    const/16 v16, 0x7

    const-string v17, "default_cache_size"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DEFAULT_CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 11
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object v14, v0

    const-string v24, "When the defer_foreign_keys PRAGMA is on, enforcement of all foreign key constraints is delayed until the outermost transaction is committed. The defer_foreign_keys pragma defaults to OFF so that foreign key constraints are only deferred if they are created as \"DEFERRABLE INITIALLY DEFERRED\". The defer_foreign_keys pragma is automatically switched off at each COMMIT or ROLLBACK. Hence, the defer_foreign_keys pragma must be separately enabled for each transaction. This pragma is only meaningful if foreign key constraints are enabled, of course."

    .line 12
    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v25

    const-string v21, "DEFER_FOREIGN_KEYS"

    const/16 v22, 0x8

    const-string v23, "defer_foreign_keys"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DEFER_FOREIGN_KEYS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 13
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object v15, v0

    const-string v30, "Deprecated"

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v31

    const-string v27, "EMPTY_RESULT_CALLBACKS"

    const/16 v28, 0x9

    const-string v29, "empty_result_callback"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->EMPTY_RESULT_CALLBACKS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 14
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v16, v0

    .line 15
    invoke-static {}, Lorg/sqlite/SQLiteConfig$Encoding;->values()[Lorg/sqlite/SQLiteConfig$Encoding;

    move-result-object v1

    invoke-static {v1}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v22

    const-string v18, "ENCODING"

    const/16 v19, 0xa

    const-string v20, "encoding"

    const-string v21, "Set the encoding that the main database will be created with if it is created by this session"

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->ENCODING:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 16
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v17, v0

    const-string v27, "Set the enforcement of foreign key constraints"

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v28

    const-string v24, "FOREIGN_KEYS"

    const/16 v25, 0xb

    const-string v26, "foreign_keys"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->FOREIGN_KEYS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 17
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v18, v0

    const-string v33, "Deprecated"

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v34

    const-string v30, "FULL_COLUMN_NAMES"

    const/16 v31, 0xc

    const-string v32, "full_column_names"

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->FULL_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 18
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v19, v0

    const-string v24, "Whether or not the F_FULLFSYNC syncing method is used on systems that support it. Only Mac OS X supports F_FULLFSYNC."

    .line 19
    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v25

    const-string v21, "FULL_SYNC"

    const/16 v22, 0xd

    const-string v23, "fullsync"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->FULL_SYNC:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 20
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v20, v0

    const-string v30, "Causes up to N pages to be removed from the freelist. The database file is truncated by the same amount. The incremental_vacuum pragma has no effect if the database is not in auto_vacuum=incremental mode or if there are no pages on the freelist. If there are fewer than N pages on the freelist, or if N is less than 1, or if the \"(N)\" argument is omitted, then the entire freelist is cleared."

    const/16 v31, 0x0

    const-string v27, "INCREMENTAL_VACUUM"

    const/16 v28, 0xe

    const-string v29, "incremental_vacuum"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->INCREMENTAL_VACUUM:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 21
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v21, v0

    .line 22
    invoke-static {}, Lorg/sqlite/SQLiteConfig$JournalMode;->values()[Lorg/sqlite/SQLiteConfig$JournalMode;

    move-result-object v1

    invoke-static {v1}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v37

    const-string v33, "JOURNAL_MODE"

    const/16 v34, 0xf

    const-string v35, "journal_mode"

    const-string v36, "Set the journal mode for databases associated with the current database connection"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->JOURNAL_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 23
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v22, v0

    const-string v27, "Limit the size of rollback-journal and WAL files left in the file-system after transactions or checkpoints"

    const/16 v28, 0x0

    const-string v24, "JOURNAL_SIZE_LIMIT"

    const/16 v25, 0x10

    const-string v26, "journal_size_limit"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->JOURNAL_SIZE_LIMIT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 24
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v23, v0

    const-string v33, "Use legacy alter table behavior"

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v34

    const-string v30, "LEGACY_ALTER_TABLE"

    const/16 v31, 0x11

    const-string v32, "legacy_alter_table"

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LEGACY_ALTER_TABLE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 25
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v24, v0

    const-string v39, "No-op"

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v40

    const-string v36, "LEGACY_FILE_FORMAT"

    const/16 v37, 0x12

    const-string v38, "legacy_file_format"

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v40}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LEGACY_FILE_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 26
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v25, v0

    .line 27
    invoke-static {}, Lorg/sqlite/SQLiteConfig$LockingMode;->values()[Lorg/sqlite/SQLiteConfig$LockingMode;

    move-result-object v1

    invoke-static {v1}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v31

    const-string v27, "LOCKING_MODE"

    const/16 v28, 0x13

    const-string v29, "locking_mode"

    const-string v30, "Set the database connection locking-mode"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LOCKING_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 28
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v26, v0

    const-string v36, "Set the page size of the database. The page size must be a power of two between 512 and 65536 inclusive."

    const/16 v37, 0x0

    const-string v33, "PAGE_SIZE"

    const/16 v34, 0x14

    const-string v35, "page_size"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->PAGE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 29
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v27, v0

    const-string v42, "Set the maximum number of pages in the database file"

    const/16 v43, 0x0

    const-string v39, "MAX_PAGE_COUNT"

    const/16 v40, 0x15

    const-string v41, "max_page_count"

    move-object/from16 v38, v0

    invoke-direct/range {v38 .. v43}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->MAX_PAGE_COUNT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 30
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v28, v0

    const-string v33, "Set READ UNCOMMITTED isolation"

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v34

    const-string v30, "READ_UNCOMMITTED"

    const/16 v31, 0x16

    const-string v32, "read_uncommitted"

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->READ_UNCOMMITTED:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 31
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v29, v0

    const-string v39, "Set the recursive trigger capability"

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v40

    const-string v36, "RECURSIVE_TRIGGERS"

    const/16 v37, 0x17

    const-string v38, "recursive_triggers"

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v40}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->RECURSIVE_TRIGGERS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 32
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v30, v0

    const-string v45, "When enabled, this PRAGMA causes many SELECT statements without an ORDER BY clause to emit their results in the reverse order from what they normally would"

    .line 33
    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v46

    const-string v42, "REVERSE_UNORDERED_SELECTS"

    const/16 v43, 0x18

    const-string v44, "reverse_unordered_selects"

    move-object/from16 v41, v0

    invoke-direct/range {v41 .. v46}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->REVERSE_UNORDERED_SELECTS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 34
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v31, v0

    const-string v1, "false"

    const-string v2, "fast"

    const-string v3, "true"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v37

    const-string v33, "SECURE_DELETE"

    const/16 v34, 0x19

    const-string v35, "secure_delete"

    const-string v36, "When secure_delete is on, SQLite overwrites deleted content with zeros"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SECURE_DELETE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 35
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v32, v0

    const-string v42, "Deprecated"

    invoke-static {}, Lorg/sqlite/SQLiteConfig;->access$000()[Ljava/lang/String;

    move-result-object v43

    const-string v39, "SHORT_COLUMN_NAMES"

    const/16 v40, 0x1a

    const-string v41, "short_column_names"

    move-object/from16 v38, v0

    invoke-direct/range {v38 .. v43}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SHORT_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 36
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v33, v0

    .line 37
    invoke-static {}, Lorg/sqlite/SQLiteConfig$SynchronousMode;->values()[Lorg/sqlite/SQLiteConfig$SynchronousMode;

    move-result-object v1

    invoke-static {v1}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v49

    const-string v45, "SYNCHRONOUS"

    const/16 v46, 0x1b

    const-string v47, "synchronous"

    const-string v48, "Set the \"synchronous\" flag"

    move-object/from16 v44, v0

    invoke-direct/range {v44 .. v49}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SYNCHRONOUS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 38
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v34, v0

    .line 39
    invoke-static {}, Lorg/sqlite/SQLiteConfig$TempStore;->values()[Lorg/sqlite/SQLiteConfig$TempStore;

    move-result-object v1

    invoke-static {v1}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v40

    const-string v36, "TEMP_STORE"

    const/16 v37, 0x1c

    const-string v38, "temp_store"

    const-string v39, "When temp_store is DEFAULT (0), the compile-time C preprocessor macro SQLITE_TEMP_STORE is used to determine where temporary tables and indices are stored. When temp_store is MEMORY (2) temporary tables and indices are kept as if they were in pure in-memory databases. When temp_store is FILE (1) temporary tables and indices are stored in a file. The temp_store_directory pragma can be used to specify the directory containing temporary files when FILE is specified. When the temp_store setting is changed, all existing temporary tables, indices, triggers, and views are immediately deleted."

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v40}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->TEMP_STORE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 40
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v35, v0

    const-string v45, "Deprecated"

    const/16 v46, 0x0

    const-string v42, "TEMP_STORE_DIRECTORY"

    const/16 v43, 0x1d

    const-string v44, "temp_store_directory"

    move-object/from16 v41, v0

    invoke-direct/range {v41 .. v46}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->TEMP_STORE_DIRECTORY:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 41
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v36, v0

    const-string v51, "Set the value of the user-version integer at offset 60 in the database header. The user-version is an integer that is available to applications to use however they want. SQLite makes no use of the user-version itself."

    const/16 v52, 0x0

    const-string v48, "USER_VERSION"

    const/16 v49, 0x1e

    const-string v50, "user_version"

    move-object/from16 v47, v0

    invoke-direct/range {v47 .. v52}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->USER_VERSION:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 42
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v37, v0

    const-string v42, "Set the 32-bit signed big-endian \"Application ID\" integer located at offset 68 into the database header. Applications that use SQLite as their application file-format should set the Application ID integer to a unique integer so that utilities such as file(1) can determine the specific file type rather than just reporting \"SQLite3 Database\""

    const/16 v43, 0x0

    const-string v39, "APPLICATION_ID"

    const/16 v40, 0x1f

    const-string v41, "application_id"

    move-object/from16 v38, v0

    invoke-direct/range {v38 .. v43}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->APPLICATION_ID:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 43
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v38, v0

    const-string v48, "The maximum size of any string or BLOB or table row, in bytes."

    const/16 v49, 0x0

    const-string v45, "LIMIT_LENGTH"

    const/16 v46, 0x20

    const-string v47, "limit_length"

    move-object/from16 v44, v0

    invoke-direct/range {v44 .. v49}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_LENGTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 44
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v39, v0

    const-string v54, "The maximum length of an SQL statement, in bytes."

    const/16 v55, 0x0

    const-string v51, "LIMIT_SQL_LENGTH"

    const/16 v52, 0x21

    const-string v53, "limit_sql_length"

    move-object/from16 v50, v0

    invoke-direct/range {v50 .. v55}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_SQL_LENGTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 45
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v40, v0

    const-string v45, "The maximum number of columns in a table definition or in the result set of a SELECT or the maximum number of columns in an index or in an ORDER BY or GROUP BY clause."

    const/16 v46, 0x0

    const-string v42, "LIMIT_COLUMN"

    const/16 v43, 0x22

    const-string v44, "limit_column"

    move-object/from16 v41, v0

    invoke-direct/range {v41 .. v46}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_COLUMN:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 46
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v41, v0

    const-string v51, "The maximum depth of the parse tree on any expression."

    const/16 v52, 0x0

    const-string v48, "LIMIT_EXPR_DEPTH"

    const/16 v49, 0x23

    const-string v50, "limit_expr_depth"

    move-object/from16 v47, v0

    invoke-direct/range {v47 .. v52}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_EXPR_DEPTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 47
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v42, v0

    const-string v57, "The maximum number of terms in a compound SELECT statement."

    const/16 v58, 0x0

    const-string v54, "LIMIT_COMPOUND_SELECT"

    const/16 v55, 0x24

    const-string v56, "limit_compound_select"

    move-object/from16 v53, v0

    invoke-direct/range {v53 .. v58}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_COMPOUND_SELECT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 48
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v43, v0

    const-string v48, "The maximum number of instructions in a virtual machine program used to implement an SQL statement. If sqlite3_prepare_v2() or the equivalent tries to allocate space for more than this many opcodes in a single prepared statement, an SQLITE_NOMEM error is returned."

    const/16 v49, 0x0

    const-string v45, "LIMIT_VDBE_OP"

    const/16 v46, 0x25

    const-string v47, "limit_vdbe_op"

    move-object/from16 v44, v0

    invoke-direct/range {v44 .. v49}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_VDBE_OP:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 49
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v44, v0

    const-string v54, "The maximum number of arguments on a function."

    const/16 v55, 0x0

    const-string v51, "LIMIT_FUNCTION_ARG"

    const/16 v52, 0x26

    const-string v53, "limit_function_arg"

    move-object/from16 v50, v0

    invoke-direct/range {v50 .. v55}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_FUNCTION_ARG:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 50
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v45, v0

    const-string v60, "The maximum number of attached databases."

    const/16 v61, 0x0

    const-string v57, "LIMIT_ATTACHED"

    const/16 v58, 0x27

    const-string v59, "limit_attached"

    move-object/from16 v56, v0

    invoke-direct/range {v56 .. v61}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_ATTACHED:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 51
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v46, v0

    const-string v51, "The maximum length of the pattern argument to the LIKE or GLOB operators."

    const/16 v52, 0x0

    const-string v48, "LIMIT_LIKE_PATTERN_LENGTH"

    const/16 v49, 0x28

    const-string v50, "limit_like_pattern_length"

    move-object/from16 v47, v0

    invoke-direct/range {v47 .. v52}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_LIKE_PATTERN_LENGTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 52
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v47, v0

    const-string v57, "The maximum index number of any parameter in an SQL statement."

    const/16 v58, 0x0

    const-string v54, "LIMIT_VARIABLE_NUMBER"

    const/16 v55, 0x29

    const-string v56, "limit_variable_number"

    move-object/from16 v53, v0

    invoke-direct/range {v53 .. v58}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_VARIABLE_NUMBER:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 53
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v48, v0

    const-string v63, "The maximum depth of recursion for triggers."

    const/16 v64, 0x0

    const-string v60, "LIMIT_TRIGGER_DEPTH"

    const/16 v61, 0x2a

    const-string v62, "limit_trigger_depth"

    move-object/from16 v59, v0

    invoke-direct/range {v59 .. v64}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_TRIGGER_DEPTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 54
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v49, v0

    const-string v54, "The maximum number of auxiliary worker threads that a single prepared statement may start."

    const/16 v55, 0x0

    const-string v51, "LIMIT_WORKER_THREADS"

    const/16 v52, 0x2b

    const-string v53, "limit_worker_threads"

    move-object/from16 v50, v0

    invoke-direct/range {v50 .. v55}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_WORKER_THREADS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 55
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v50, v0

    const-string v60, "The maximum number of pages allowed in a single database file."

    const/16 v61, 0x0

    const-string v57, "LIMIT_PAGE_COUNT"

    const/16 v58, 0x2c

    const-string v59, "limit_page_count"

    move-object/from16 v56, v0

    invoke-direct/range {v56 .. v61}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_PAGE_COUNT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 56
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v51, v0

    .line 57
    invoke-static {}, Lorg/sqlite/SQLiteConfig$TransactionMode;->values()[Lorg/sqlite/SQLiteConfig$TransactionMode;

    move-result-object v1

    invoke-static {v1}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v67

    const-string v63, "TRANSACTION_MODE"

    const/16 v64, 0x2d

    const-string v65, "transaction_mode"

    const-string v66, "Set the transaction mode"

    move-object/from16 v62, v0

    invoke-direct/range {v62 .. v67}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->TRANSACTION_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 58
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v52, v0

    .line 59
    invoke-static {}, Lorg/sqlite/SQLiteConfig$DatePrecision;->values()[Lorg/sqlite/SQLiteConfig$DatePrecision;

    move-result-object v1

    invoke-static {v1}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v58

    const-string v54, "DATE_PRECISION"

    const/16 v55, 0x2e

    const-string v56, "date_precision"

    const-string v57, "\"seconds\": Read and store integer dates as seconds from the Unix Epoch (SQLite standard).\n\"milliseconds\": (DEFAULT) Read and store integer dates as milliseconds from the Unix Epoch (Java standard)."

    move-object/from16 v53, v0

    invoke-direct/range {v53 .. v58}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_PRECISION:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 60
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v53, v0

    .line 61
    invoke-static {}, Lorg/sqlite/SQLiteConfig$DateClass;->values()[Lorg/sqlite/SQLiteConfig$DateClass;

    move-result-object v1

    invoke-static {v1}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v64

    const-string v60, "DATE_CLASS"

    const/16 v61, 0x2f

    const-string v62, "date_class"

    const-string v63, "\"integer\": (Default) store dates as number of seconds or milliseconds from the Unix Epoch\n\"text\": store dates as a string of text\n\"real\": store dates as Julian Dates"

    move-object/from16 v59, v0

    invoke-direct/range {v59 .. v64}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_CLASS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 62
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v54, v0

    const-string v69, "Format to store and retrieve dates stored as text. Defaults to \"yyyy-MM-dd HH:mm:ss.SSS\""

    const/16 v70, 0x0

    const-string v66, "DATE_STRING_FORMAT"

    const/16 v67, 0x30

    const-string v68, "date_string_format"

    move-object/from16 v65, v0

    invoke-direct/range {v65 .. v70}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_STRING_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 63
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v55, v0

    const-string v60, "Sets a busy handler that sleeps for a specified amount of time when a table is locked"

    const/16 v61, 0x0

    const-string v57, "BUSY_TIMEOUT"

    const/16 v58, 0x31

    const-string v59, "busy_timeout"

    move-object/from16 v56, v0

    invoke-direct/range {v56 .. v61}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->BUSY_TIMEOUT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 64
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v56, v0

    invoke-static {}, Lorg/sqlite/SQLiteConfig$HexKeyMode;->values()[Lorg/sqlite/SQLiteConfig$HexKeyMode;

    move-result-object v1

    invoke-static {v1}, Lorg/sqlite/SQLiteConfig;->access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    move-result-object v67

    const-string v63, "HEXKEY_MODE"

    const/16 v64, 0x32

    const-string v65, "hexkey_mode"

    const-string v66, "Mode of the secret key"

    move-object/from16 v62, v0

    invoke-direct/range {v62 .. v67}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->HEXKEY_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 65
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v57, v0

    const-string v72, "Database password"

    const/16 v73, 0x0

    const-string v69, "PASSWORD"

    const/16 v70, 0x33

    const-string v71, "password"

    move-object/from16 v68, v0

    invoke-direct/range {v68 .. v73}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->PASSWORD:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 66
    new-instance v0, Lorg/sqlite/SQLiteConfig$Pragma;

    move-object/from16 v58, v0

    const-string v63, "Set explicit read only transactions"

    const/16 v64, 0x0

    const-string v60, "JDBC_EXPLICIT_READONLY"

    const/16 v61, 0x34

    const-string v62, "jdbc.explicit_readonly"

    move-object/from16 v59, v0

    invoke-direct/range {v59 .. v64}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->JDBC_EXPLICIT_READONLY:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 67
    filled-new-array/range {v6 .. v58}, [Lorg/sqlite/SQLiteConfig$Pragma;

    move-result-object v0

    sput-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->$VALUES:[Lorg/sqlite/SQLiteConfig$Pragma;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lorg/sqlite/SQLiteConfig$Pragma;->description:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lorg/sqlite/SQLiteConfig$Pragma;->choices:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/sqlite/SQLiteConfig$Pragma;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$Pragma;
    .locals 1

    .line 1
    const-class v0, Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/sqlite/SQLiteConfig$Pragma;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteConfig$Pragma;
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->$VALUES:[Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/sqlite/SQLiteConfig$Pragma;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/sqlite/SQLiteConfig$Pragma;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getPragmaName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
