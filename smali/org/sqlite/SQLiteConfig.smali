.class public Lorg/sqlite/SQLiteConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/SQLiteConfig$DateClass;,
        Lorg/sqlite/SQLiteConfig$DatePrecision;,
        Lorg/sqlite/SQLiteConfig$TransactionMode;,
        Lorg/sqlite/SQLiteConfig$HexKeyMode;,
        Lorg/sqlite/SQLiteConfig$TempStore;,
        Lorg/sqlite/SQLiteConfig$SynchronousMode;,
        Lorg/sqlite/SQLiteConfig$LockingMode;,
        Lorg/sqlite/SQLiteConfig$JournalMode;,
        Lorg/sqlite/SQLiteConfig$Encoding;,
        Lorg/sqlite/SQLiteConfig$PragmaValue;,
        Lorg/sqlite/SQLiteConfig$Pragma;
    }
.end annotation


# static fields
.field public static final DEFAULT_DATE_STRING_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSS"

.field private static final DEFAULT_MAX_ATTACHED:I = 0xa

.field private static final DEFAULT_MAX_COLUMN:I = 0x7d0

.field private static final DEFAULT_MAX_FUNCTION_ARG:I = 0x64

.field private static final DEFAULT_MAX_LENGTH:I = 0x3b9aca00

.field private static final DEFAULT_MAX_PAGE_COUNT:I = 0x3fffffff

.field private static final DEFAULT_MAX_SQL_LENGTH:I = 0xf4240

.field private static final OnOff:[Ljava/lang/String;

.field static final pragmaSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private busyTimeout:I

.field private final defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

.field private explicitReadOnly:Z

.field private openModeFlag:I

.field private final pragmaTable:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "true"

    .line 2
    .line 3
    const-string v1, "false"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/sqlite/SQLiteConfig;->OnOff:[Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ljava/util/TreeSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lorg/sqlite/SQLiteConfig;->pragmaSet:Ljava/util/Set;

    .line 17
    .line 18
    invoke-static {}, Lorg/sqlite/SQLiteConfig$Pragma;->values()[Lorg/sqlite/SQLiteConfig$Pragma;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    array-length v1, v0

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_0

    .line 25
    .line 26
    aget-object v3, v0, v2

    .line 27
    .line 28
    sget-object v4, Lorg/sqlite/SQLiteConfig;->pragmaSet:Ljava/util/Set;

    .line 29
    .line 30
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, v0}, Lorg/sqlite/SQLiteConfig;-><init>(Ljava/util/Properties;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    .line 4
    iput-object p1, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 5
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->OPEN_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lorg/sqlite/SQLiteOpenMode;->READWRITE:Lorg/sqlite/SQLiteOpenMode;

    invoke-virtual {p0, v0}, Lorg/sqlite/SQLiteConfig;->setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 8
    sget-object v0, Lorg/sqlite/SQLiteOpenMode;->CREATE:Lorg/sqlite/SQLiteOpenMode;

    invoke-virtual {p0, v0}, Lorg/sqlite/SQLiteConfig;->setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 9
    :goto_0
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SHARED_CACHE:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 10
    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lorg/sqlite/SQLiteConfig;->setSharedCache(Z)V

    .line 13
    sget-object v0, Lorg/sqlite/SQLiteOpenMode;->OPEN_URI:Lorg/sqlite/SQLiteOpenMode;

    invoke-virtual {p0, v0}, Lorg/sqlite/SQLiteConfig;->setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 14
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->BUSY_TIMEOUT:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    const-string v2, "3000"

    .line 15
    invoke-virtual {p1, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Lorg/sqlite/SQLiteConfig;->setBusyTimeout(I)V

    .line 17
    invoke-static {p1}, Lorg/sqlite/SQLiteConnectionConfig;->fromPragmaTable(Ljava/util/Properties;)Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 18
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->JDBC_EXPLICIT_READONLY:Lorg/sqlite/SQLiteConfig$Pragma;

    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/sqlite/SQLiteConfig;->explicitReadOnly:Z

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig;->OnOff:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/sqlite/SQLiteConfig;->toStringArray([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getBoolean(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method static getDriverPropertyInfo()[Ljava/sql/DriverPropertyInfo;
    .locals 10

    .line 1
    invoke-static {}, Lorg/sqlite/SQLiteConfig$Pragma;->values()[Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [Ljava/sql/DriverPropertyInfo;

    .line 7
    .line 8
    invoke-static {}, Lorg/sqlite/SQLiteConfig$Pragma;->values()[Lorg/sqlite/SQLiteConfig$Pragma;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    move v5, v4

    .line 16
    :goto_0
    if-ge v4, v2, :cond_0

    .line 17
    .line 18
    aget-object v6, v1, v4

    .line 19
    .line 20
    new-instance v7, Ljava/sql/DriverPropertyInfo;

    .line 21
    .line 22
    iget-object v8, v6, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    invoke-direct {v7, v8, v9}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v8, v6, Lorg/sqlite/SQLiteConfig$Pragma;->choices:[Ljava/lang/String;

    .line 29
    .line 30
    iput-object v8, v7, Ljava/sql/DriverPropertyInfo;->choices:[Ljava/lang/String;

    .line 31
    .line 32
    iget-object v6, v6, Lorg/sqlite/SQLiteConfig$Pragma;->description:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v6, v7, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    .line 35
    .line 36
    iput-boolean v3, v7, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 37
    .line 38
    add-int/lit8 v6, v5, 0x1

    .line 39
    .line 40
    aput-object v7, v0, v5

    .line 41
    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    move v5, v6

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method

.method private parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 2
    .line 3
    iget-object v1, p1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return p2

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 13
    .line 14
    iget-object p1, p1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return p1

    .line 25
    :catch_0
    return p2
.end method

.method private set(Lorg/sqlite/SQLiteConfig$Pragma;I)V
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    return-void
.end method

.method private set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    return-void
.end method

.method private static toStringArray([Lorg/sqlite/SQLiteConfig$PragmaValue;)[Ljava/lang/String;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    aget-object v2, p0, v1

    .line 9
    .line 10
    invoke-interface {v2}, Lorg/sqlite/SQLiteConfig$PragmaValue;->getValue()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    aput-object v2, v0, v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-object v0
.end method


# virtual methods
.method public apply(Ljava/sql/Connection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lorg/sqlite/SQLiteConfig$Pragma;->values()[Lorg/sqlite/SQLiteConfig$Pragma;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_0

    .line 13
    .line 14
    aget-object v4, v1, v3

    .line 15
    .line 16
    iget-object v4, v4, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v1, p1, Lorg/sqlite/SQLiteConnection;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    move-object v1, p1

    .line 29
    check-cast v1, Lorg/sqlite/SQLiteConnection;

    .line 30
    .line 31
    sget-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_ATTACHED:Lorg/sqlite/SQLiteLimits;

    .line 32
    .line 33
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_ATTACHED:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 34
    .line 35
    const/16 v4, 0xa

    .line 36
    .line 37
    invoke-direct {p0, v3, v4}, Lorg/sqlite/SQLiteConfig;->parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v1, v2, v3}, Lorg/sqlite/SQLiteConnection;->setLimit(Lorg/sqlite/SQLiteLimits;I)V

    .line 42
    .line 43
    .line 44
    sget-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_COLUMN:Lorg/sqlite/SQLiteLimits;

    .line 45
    .line 46
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_COLUMN:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 47
    .line 48
    const/16 v4, 0x7d0

    .line 49
    .line 50
    invoke-direct {p0, v3, v4}, Lorg/sqlite/SQLiteConfig;->parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v1, v2, v3}, Lorg/sqlite/SQLiteConnection;->setLimit(Lorg/sqlite/SQLiteLimits;I)V

    .line 55
    .line 56
    .line 57
    sget-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_COMPOUND_SELECT:Lorg/sqlite/SQLiteLimits;

    .line 58
    .line 59
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_COMPOUND_SELECT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 60
    .line 61
    const/4 v4, -0x1

    .line 62
    invoke-direct {p0, v3, v4}, Lorg/sqlite/SQLiteConfig;->parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {v1, v2, v3}, Lorg/sqlite/SQLiteConnection;->setLimit(Lorg/sqlite/SQLiteLimits;I)V

    .line 67
    .line 68
    .line 69
    sget-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_EXPR_DEPTH:Lorg/sqlite/SQLiteLimits;

    .line 70
    .line 71
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_EXPR_DEPTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 72
    .line 73
    invoke-direct {p0, v3, v4}, Lorg/sqlite/SQLiteConfig;->parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {v1, v2, v3}, Lorg/sqlite/SQLiteConnection;->setLimit(Lorg/sqlite/SQLiteLimits;I)V

    .line 78
    .line 79
    .line 80
    sget-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_FUNCTION_ARG:Lorg/sqlite/SQLiteLimits;

    .line 81
    .line 82
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_FUNCTION_ARG:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 83
    .line 84
    const/16 v5, 0x64

    .line 85
    .line 86
    invoke-direct {p0, v3, v5}, Lorg/sqlite/SQLiteConfig;->parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {v1, v2, v3}, Lorg/sqlite/SQLiteConnection;->setLimit(Lorg/sqlite/SQLiteLimits;I)V

    .line 91
    .line 92
    .line 93
    sget-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_LENGTH:Lorg/sqlite/SQLiteLimits;

    .line 94
    .line 95
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_LENGTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 96
    .line 97
    const v5, 0x3b9aca00

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v3, v5}, Lorg/sqlite/SQLiteConfig;->parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-virtual {v1, v2, v3}, Lorg/sqlite/SQLiteConnection;->setLimit(Lorg/sqlite/SQLiteLimits;I)V

    .line 105
    .line 106
    .line 107
    sget-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_LIKE_PATTERN_LENGTH:Lorg/sqlite/SQLiteLimits;

    .line 108
    .line 109
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_LIKE_PATTERN_LENGTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 110
    .line 111
    invoke-direct {p0, v3, v4}, Lorg/sqlite/SQLiteConfig;->parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-virtual {v1, v2, v3}, Lorg/sqlite/SQLiteConnection;->setLimit(Lorg/sqlite/SQLiteLimits;I)V

    .line 116
    .line 117
    .line 118
    sget-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_SQL_LENGTH:Lorg/sqlite/SQLiteLimits;

    .line 119
    .line 120
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_SQL_LENGTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 121
    .line 122
    const v5, 0xf4240

    .line 123
    .line 124
    .line 125
    invoke-direct {p0, v3, v5}, Lorg/sqlite/SQLiteConfig;->parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    invoke-virtual {v1, v2, v3}, Lorg/sqlite/SQLiteConnection;->setLimit(Lorg/sqlite/SQLiteLimits;I)V

    .line 130
    .line 131
    .line 132
    sget-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_TRIGGER_DEPTH:Lorg/sqlite/SQLiteLimits;

    .line 133
    .line 134
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_TRIGGER_DEPTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 135
    .line 136
    invoke-direct {p0, v3, v4}, Lorg/sqlite/SQLiteConfig;->parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    invoke-virtual {v1, v2, v3}, Lorg/sqlite/SQLiteConnection;->setLimit(Lorg/sqlite/SQLiteLimits;I)V

    .line 141
    .line 142
    .line 143
    sget-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_VARIABLE_NUMBER:Lorg/sqlite/SQLiteLimits;

    .line 144
    .line 145
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_VARIABLE_NUMBER:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 146
    .line 147
    invoke-direct {p0, v3, v4}, Lorg/sqlite/SQLiteConfig;->parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    invoke-virtual {v1, v2, v3}, Lorg/sqlite/SQLiteConnection;->setLimit(Lorg/sqlite/SQLiteLimits;I)V

    .line 152
    .line 153
    .line 154
    sget-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_VDBE_OP:Lorg/sqlite/SQLiteLimits;

    .line 155
    .line 156
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_VDBE_OP:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 157
    .line 158
    invoke-direct {p0, v3, v4}, Lorg/sqlite/SQLiteConfig;->parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-virtual {v1, v2, v3}, Lorg/sqlite/SQLiteConnection;->setLimit(Lorg/sqlite/SQLiteLimits;I)V

    .line 163
    .line 164
    .line 165
    sget-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_WORKER_THREADS:Lorg/sqlite/SQLiteLimits;

    .line 166
    .line 167
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_WORKER_THREADS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 168
    .line 169
    invoke-direct {p0, v3, v4}, Lorg/sqlite/SQLiteConfig;->parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    invoke-virtual {v1, v2, v3}, Lorg/sqlite/SQLiteConnection;->setLimit(Lorg/sqlite/SQLiteLimits;I)V

    .line 174
    .line 175
    .line 176
    sget-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_PAGE_COUNT:Lorg/sqlite/SQLiteLimits;

    .line 177
    .line 178
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_PAGE_COUNT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 179
    .line 180
    const v4, 0x3fffffff    # 1.9999999f

    .line 181
    .line 182
    .line 183
    invoke-direct {p0, v3, v4}, Lorg/sqlite/SQLiteConfig;->parseLimitPragma(Lorg/sqlite/SQLiteConfig$Pragma;I)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    invoke-virtual {v1, v2, v3}, Lorg/sqlite/SQLiteConnection;->setLimit(Lorg/sqlite/SQLiteLimits;I)V

    .line 188
    .line 189
    .line 190
    :cond_1
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->OPEN_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 191
    .line 192
    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->SHARED_CACHE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 198
    .line 199
    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->LOAD_EXTENSION:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 205
    .line 206
    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_PRECISION:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 212
    .line 213
    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_CLASS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 219
    .line 220
    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_STRING_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 226
    .line 227
    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->PASSWORD:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 233
    .line 234
    iget-object v2, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    sget-object v2, Lorg/sqlite/SQLiteConfig$Pragma;->HEXKEY_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 240
    .line 241
    iget-object v3, v2, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_ATTACHED:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 247
    .line 248
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_COLUMN:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 254
    .line 255
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_COMPOUND_SELECT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 261
    .line 262
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_EXPR_DEPTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 268
    .line 269
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_FUNCTION_ARG:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 275
    .line 276
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_LENGTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 282
    .line 283
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_LIKE_PATTERN_LENGTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 289
    .line 290
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_SQL_LENGTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 296
    .line 297
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 298
    .line 299
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_TRIGGER_DEPTH:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 303
    .line 304
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_VARIABLE_NUMBER:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 310
    .line 311
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_VDBE_OP:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 317
    .line 318
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_WORKER_THREADS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 324
    .line 325
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->LIMIT_PAGE_COUNT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 331
    .line 332
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    sget-object v3, Lorg/sqlite/SQLiteConfig$Pragma;->JDBC_EXPLICIT_READONLY:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 338
    .line 339
    iget-object v3, v3, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    :try_start_0
    iget-object v3, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 349
    .line 350
    iget-object v4, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v3, v4}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    if-eqz v3, :cond_4

    .line 357
    .line 358
    iget-object v3, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 359
    .line 360
    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    if-eqz v1, :cond_4

    .line 367
    .line 368
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    if-nez v3, :cond_4

    .line 373
    .line 374
    iget-object v3, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 375
    .line 376
    iget-object v2, v2, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    sget-object v3, Lorg/sqlite/SQLiteConfig$HexKeyMode;->SSE:Lorg/sqlite/SQLiteConfig$HexKeyMode;

    .line 383
    .line 384
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-eqz v3, :cond_2

    .line 393
    .line 394
    const-string v2, "pragma hexkey = \'%s\'"

    .line 395
    .line 396
    goto :goto_1

    .line 397
    :catchall_0
    move-exception v0

    .line 398
    goto :goto_3

    .line 399
    :cond_2
    sget-object v3, Lorg/sqlite/SQLiteConfig$HexKeyMode;->SQLCIPHER:Lorg/sqlite/SQLiteConfig$HexKeyMode;

    .line 400
    .line 401
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-eqz v2, :cond_3

    .line 410
    .line 411
    const-string v2, "pragma key = \"x\'%s\'\""

    .line 412
    .line 413
    goto :goto_1

    .line 414
    :cond_3
    const-string v2, "pragma key = \'%s\'"

    .line 415
    .line 416
    :goto_1
    const-string v3, "\'"

    .line 417
    .line 418
    const-string v4, "\'\'"

    .line 419
    .line 420
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-interface {p1, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 433
    .line 434
    .line 435
    const-string v1, "select 1 from sqlite_schema"

    .line 436
    .line 437
    invoke-interface {p1, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 438
    .line 439
    .line 440
    :cond_4
    iget-object v1, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 441
    .line 442
    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    if-eqz v2, :cond_7

    .line 455
    .line 456
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    if-nez v3, :cond_6

    .line 469
    .line 470
    goto :goto_2

    .line 471
    :cond_6
    iget-object v3, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 472
    .line 473
    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    if-eqz v3, :cond_5

    .line 478
    .line 479
    const-string v4, "pragma %s=%s"

    .line 480
    .line 481
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    invoke-interface {p1, v2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    .line 491
    .line 492
    goto :goto_2

    .line 493
    :cond_7
    if-eqz p1, :cond_8

    .line 494
    .line 495
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    .line 496
    .line 497
    .line 498
    :cond_8
    return-void

    .line 499
    :goto_3
    if-eqz p1, :cond_9

    .line 500
    .line 501
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    .line 502
    .line 503
    .line 504
    :cond_9
    throw v0
.end method

.method public createConnection(Ljava/lang/String;)Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConfig;->toProperties()Ljava/util/Properties;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lorg/sqlite/JDBC;->createConnection(Ljava/lang/String;Ljava/util/Properties;)Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public deferForeignKeys(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DEFER_FOREIGN_KEYS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableCaseSensitiveLike(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->CASE_SENSITIVE_LIKE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableCountChanges(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->COUNT_CHANGES:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableEmptyResultCallBacks(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->EMPTY_RESULT_CALLBACKS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableFullColumnNames(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->FULL_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableFullSync(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->FULL_SYNC:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableLoadExtension(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LOAD_EXTENSION:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableRecursiveTriggers(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->RECURSIVE_TRIGGERS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableReverseUnorderedSelects(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->REVERSE_UNORDERED_SELECTS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enableShortColumnNames(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SHORT_COLUMN_NAMES:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enforceForeignKeys(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->FOREIGN_KEYS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBusyTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/sqlite/SQLiteConfig;->busyTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public getOpenModeFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    .line 2
    .line 3
    return v0
.end method

.method public getTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public incrementalVacuum(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->INCREMENTAL_VACUUM:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isEnabledLoadExtension()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LOAD_EXTENSION:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    const-string v1, "false"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lorg/sqlite/SQLiteConfig;->getBoolean(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isEnabledSharedCache()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SHARED_CACHE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    const-string v1, "false"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lorg/sqlite/SQLiteConfig;->getBoolean(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isExplicitReadOnly()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/sqlite/SQLiteConfig;->explicitReadOnly:Z

    .line 2
    .line 3
    return v0
.end method

.method public newConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->copyConfig()Lorg/sqlite/SQLiteConnectionConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public resetOpenMode(Lorg/sqlite/SQLiteOpenMode;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    .line 2
    .line 3
    iget p1, p1, Lorg/sqlite/SQLiteOpenMode;->flag:I

    .line 4
    .line 5
    not-int p1, p1

    .line 6
    and-int/2addr p1, v0

    .line 7
    iput p1, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    .line 8
    .line 9
    return-void
.end method

.method public setApplicationId(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->APPLICATION_ID:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setBusyTimeout(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->BUSY_TIMEOUT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lorg/sqlite/SQLiteConfig;->busyTimeout:I

    .line 11
    .line 12
    return-void
.end method

.method public setCacheSize(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDateClass(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$DateClass;->getDateClass(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DateClass;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setDateClass(Lorg/sqlite/SQLiteConfig$DateClass;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setDatePrecision(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$DatePrecision;->getPrecision(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DatePrecision;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setDatePrecision(Lorg/sqlite/SQLiteConfig$DatePrecision;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setDateStringFormat(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setDateStringFormat(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setDefaultCacheSize(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DEFAULT_CACHE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEncoding(Lorg/sqlite/SQLiteConfig$Encoding;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->ENCODING:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/sqlite/SQLiteConfig$Encoding;->typeName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setExplicitReadOnly(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/sqlite/SQLiteConfig;->explicitReadOnly:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHexKeyMode(Lorg/sqlite/SQLiteConfig$HexKeyMode;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->HEXKEY_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setJounalSizeLimit(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->JOURNAL_SIZE_LIMIT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setJournalMode(Lorg/sqlite/SQLiteConfig$JournalMode;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->JOURNAL_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setLegacyAlterTable(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LEGACY_ALTER_TABLE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLockingMode(Lorg/sqlite/SQLiteConfig$LockingMode;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LOCKING_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setMaxPageCount(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->MAX_PAGE_COUNT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    .line 2
    .line 3
    iget p1, p1, Lorg/sqlite/SQLiteOpenMode;->flag:I

    .line 4
    .line 5
    or-int/2addr p1, v0

    .line 6
    iput p1, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    .line 7
    .line 8
    return-void
.end method

.method public setPageSize(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->PAGE_SIZE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 2
    .line 3
    iget-object p1, p1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->READONLY:Lorg/sqlite/SQLiteOpenMode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->CREATE:Lorg/sqlite/SQLiteOpenMode;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->resetOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->READWRITE:Lorg/sqlite/SQLiteOpenMode;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->resetOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->READWRITE:Lorg/sqlite/SQLiteOpenMode;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->CREATE:Lorg/sqlite/SQLiteOpenMode;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->setOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lorg/sqlite/SQLiteOpenMode;->READONLY:Lorg/sqlite/SQLiteOpenMode;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->resetOpenMode(Lorg/sqlite/SQLiteOpenMode;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public setReadUncommited(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->READ_UNCOMMITTED:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSharedCache(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SHARED_CACHE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSynchronous(Lorg/sqlite/SQLiteConfig$SynchronousMode;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->SYNCHRONOUS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setTempStore(Lorg/sqlite/SQLiteConfig$TempStore;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->TEMP_STORE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setTempStoreDirectory(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->TEMP_STORE_DIRECTORY:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    const-string v1, "\'%s\'"

    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->setPragma(Lorg/sqlite/SQLiteConfig$Pragma;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setTransactionMode(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/sqlite/SQLiteConfig$TransactionMode;->getMode(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$TransactionMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConfig;->setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V

    return-void
.end method

.method public setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V

    return-void
.end method

.method public setUserVersion(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->USER_VERSION:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toProperties()Ljava/util/Properties;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 2
    .line 3
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->OPEN_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 4
    .line 5
    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p0, Lorg/sqlite/SQLiteConfig;->openModeFlag:I

    .line 8
    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 17
    .line 18
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->TRANSACTION_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 19
    .line 20
    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 23
    .line 24
    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnectionConfig;->getTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lorg/sqlite/SQLiteConfig$TransactionMode;->getValue()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 36
    .line 37
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_CLASS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 38
    .line 39
    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 42
    .line 43
    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnectionConfig;->getDateClass()Lorg/sqlite/SQLiteConfig$DateClass;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lorg/sqlite/SQLiteConfig$DateClass;->getValue()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 55
    .line 56
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_PRECISION:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 57
    .line 58
    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v2, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 61
    .line 62
    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnectionConfig;->getDatePrecision()Lorg/sqlite/SQLiteConfig$DatePrecision;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lorg/sqlite/SQLiteConfig$DatePrecision;->getValue()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 74
    .line 75
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_STRING_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 76
    .line 77
    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v2, p0, Lorg/sqlite/SQLiteConfig;->defaultConnectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 80
    .line 81
    invoke-virtual {v2}, Lorg/sqlite/SQLiteConnectionConfig;->getDateStringFormat()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 89
    .line 90
    sget-object v1, Lorg/sqlite/SQLiteConfig$Pragma;->JDBC_EXPLICIT_READONLY:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 91
    .line 92
    iget-object v1, v1, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 93
    .line 94
    iget-boolean v2, p0, Lorg/sqlite/SQLiteConfig;->explicitReadOnly:Z

    .line 95
    .line 96
    if-eqz v2, :cond_0

    .line 97
    .line 98
    const-string v2, "true"

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    const-string v2, "false"

    .line 102
    .line 103
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lorg/sqlite/SQLiteConfig;->pragmaTable:Ljava/util/Properties;

    .line 107
    .line 108
    return-object v0
.end method

.method public useLegacyFileFormat(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->LEGACY_FILE_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lorg/sqlite/SQLiteConfig;->set(Lorg/sqlite/SQLiteConfig$Pragma;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
