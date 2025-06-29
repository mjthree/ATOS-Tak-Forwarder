.class public abstract Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;
.super Lorg/sqlite/core/CoreDatabaseMetaData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;,
        Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;
    }
.end annotation


# static fields
.field protected static final PK_NAMED_PATTERN:Ljava/util/regex/Pattern;

.field protected static final PK_UNNAMED_PATTERN:Ljava/util/regex/Pattern;

.field private static final RULE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final TYPE_FLOAT:Ljava/util/regex/Pattern;

.field protected static final TYPE_INTEGER:Ljava/util/regex/Pattern;

.field protected static final TYPE_VARCHAR:Ljava/util/regex/Pattern;

.field private static driverName:Ljava/lang/String;

.field private static driverVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sqlite-jdbc.properties"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_1
    new-instance v1, Ljava/util/Properties;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "name"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sput-object v2, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverName:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "version"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sput-object v1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverVersion:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    .line 46
    .line 47
    const-string v2, "Cannot load sqlite-jdbc.properties from jar"

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :goto_0
    if-eqz v0, :cond_1

    .line 54
    .line 55
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_1
    move-exception v0

    .line 60
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 64
    :catch_0
    const-string v0, "SQLite JDBC"

    .line 65
    .line 66
    sput-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverName:Ljava/lang/String;

    .line 67
    .line 68
    const-string v0, "3.0.0-UNKNOWN"

    .line 69
    .line 70
    sput-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverVersion:Ljava/lang/String;

    .line 71
    .line 72
    :goto_2
    const-string v0, ".*(INT|BOOL).*"

    .line 73
    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->TYPE_INTEGER:Ljava/util/regex/Pattern;

    .line 79
    .line 80
    const-string v0, ".*(CHAR|CLOB|TEXT|BLOB).*"

    .line 81
    .line 82
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->TYPE_VARCHAR:Ljava/util/regex/Pattern;

    .line 87
    .line 88
    const-string v0, ".*(REAL|FLOA|DOUB|DEC|NUM).*"

    .line 89
    .line 90
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->TYPE_FLOAT:Ljava/util/regex/Pattern;

    .line 95
    .line 96
    new-instance v0, Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->RULE_MAP:Ljava/util/Map;

    .line 102
    .line 103
    const/4 v1, 0x3

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string v2, "NO ACTION"

    .line 109
    .line 110
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    const/4 v1, 0x0

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const-string v2, "CASCADE"

    .line 119
    .line 120
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const/4 v1, 0x1

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const-string v2, "RESTRICT"

    .line 129
    .line 130
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    const/4 v1, 0x2

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v2, "SET NULL"

    .line 139
    .line 140
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    const/4 v1, 0x4

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    const-string v2, "SET DEFAULT"

    .line 149
    .line 150
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    const-string v0, ".*PRIMARY\\s+KEY\\s*\\((.*?)\\).*"

    .line 154
    .line 155
    const/16 v1, 0x22

    .line 156
    .line 157
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sput-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->PK_UNNAMED_PATTERN:Ljava/util/regex/Pattern;

    .line 162
    .line 163
    const-string v0, ".*CONSTRAINT\\s*(.*?)\\s*PRIMARY\\s+KEY\\s*\\((.*?)\\).*"

    .line 164
    .line 165
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    sput-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->PK_NAMED_PATTERN:Ljava/util/regex/Pattern;

    .line 170
    .line 171
    return-void
.end method

.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/core/CoreDatabaseMetaData;-><init>(Lorg/sqlite/SQLiteConnection;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->lambda$getTables$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;)Lorg/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$200(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$300(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->unquoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$400(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$500(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;)Lorg/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$700(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;)Lorg/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private appendDummyForeignKeyList(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2

    .line 1
    const-string v0, "select -1 as ks, \'\' as ptn, \'\' as fcn, \'\' as pcn, "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    const-string v1, " as ur, "

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " as dr, "

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, " \'\' as fkn, "

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, " \'\' as pkn "

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ") limit 0;"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method private static synthetic lambda$getTables$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private unquoteIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x2

    .line 13
    if-le v0, v1, :cond_4

    .line 14
    .line 15
    const-string v0, "`"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    :cond_1
    const-string v0, "\""

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    :cond_2
    const-string v0, "["

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    const-string v0, "]"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v1, 0x1

    .line 64
    sub-int/2addr v0, v1

    .line 65
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :cond_4
    return-object p1
.end method


# virtual methods
.method public allProceduresAreCallable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public allTablesAreSelectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createStruct(Ljava/lang/String;[Ljava/lang/Object;)Ljava/sql/Struct;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/sql/SQLFeatureNotSupportedException;

    .line 2
    .line 3
    const-string p2, "Not yet implemented by SQLite JDBC driver"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public dataDefinitionCausesTransactionCommit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dataDefinitionIgnoredInTransactions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public deletesAreDetected(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public doesMaxRowSizeIncludeBlobs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreDatabaseMetaData;->close()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getAttributes:Ljava/sql/PreparedStatement;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    const-string p2, "select null as TYPE_CAT, null as TYPE_SCHEM, null as TYPE_NAME, null as ATTR_NAME, null as DATA_TYPE, null as ATTR_TYPE_NAME, null as ATTR_SIZE, null as DECIMAL_DIGITS, null as NUM_PREC_RADIX, null as NULLABLE, null as REMARKS, null as ATTR_DEF, null as SQL_DATA_TYPE, null as SQL_DATETIME_SUB, null as CHAR_OCTET_LENGTH, null as ORDINAL_POSITION, null as IS_NULLABLE, null as SCOPE_CATALOG, null as SCOPE_SCHEMA, null as SCOPE_TABLE, null as SOURCE_DATA_TYPE limit 0;"

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getAttributes:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getAttributes:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getBestRowIdentifier:Ljava/sql/PreparedStatement;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    const-string p2, "select null as SCOPE, null as COLUMN_NAME, null as DATA_TYPE, null as TYPE_NAME, null as COLUMN_SIZE, null as BUFFER_LENGTH, null as DECIMAL_DIGITS, null as PSEUDO_COLUMN limit 0;"

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getBestRowIdentifier:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getBestRowIdentifier:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getCatalogSeparator()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    return-object v0
.end method

.method public getCatalogTerm()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "catalog"

    .line 2
    .line 3
    return-object v0
.end method

.method public getCatalogs()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getCatalogs:Ljava/sql/PreparedStatement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    const-string v1, "select null as TABLE_CAT limit 0;"

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getCatalogs:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getCatalogs:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnPrivileges:Ljava/sql/PreparedStatement;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    const-string p2, "select null as TABLE_CAT, null as TABLE_SCHEM, null as TABLE_NAME, null as COLUMN_NAME, null as GRANTOR, null as GRANTEE, null as PRIVILEGE, null as IS_GRANTABLE limit 0;"

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnPrivileges:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnPrivileges:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    const-string v3, "\'"

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/sqlite/core/CoreDatabaseMetaData;->checkOpen()V

    .line 8
    .line 9
    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const/16 v0, 0x2bc

    .line 13
    .line 14
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const-string v0, "select null as TABLE_CAT, null as TABLE_SCHEM, tblname as TABLE_NAME, "

    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "cn as COLUMN_NAME, ct as DATA_TYPE, tn as TYPE_NAME, colSize as COLUMN_SIZE, "

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, "2000000000 as BUFFER_LENGTH, colDecimalDigits as DECIMAL_DIGITS, 10   as NUM_PREC_RADIX, "

    .line 28
    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "colnullable as NULLABLE, null as REMARKS, colDefault as COLUMN_DEF, "

    .line 33
    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "0    as SQL_DATA_TYPE, 0    as SQL_DATETIME_SUB, 2000000000 as CHAR_OCTET_LENGTH, "

    .line 38
    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, "ordpos as ORDINAL_POSITION, (case colnullable when 0 then \'NO\' when 1 then \'YES\' else \'\' end)"

    .line 43
    .line 44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, "    as IS_NULLABLE, null as SCOPE_CATALOG, null as SCOPE_SCHEMA, "

    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, "null as SCOPE_TABLE, null as SOURCE_DATA_TYPE, "

    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "(case colautoincrement when 0 then \'NO\' when 1 then \'YES\' else \'\' end) as IS_AUTOINCREMENT, "

    .line 58
    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, "(case colgenerated when 0 then \'NO\' when 1 then \'YES\' else \'\' end) as IS_GENERATEDCOLUMN from ("

    .line 63
    .line 64
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    move-object/from16 v0, p1

    .line 69
    .line 70
    move-object/from16 v6, p2

    .line 71
    .line 72
    move-object/from16 v7, p3

    .line 73
    .line 74
    :try_start_0
    invoke-virtual {v1, v0, v6, v7, v5}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 75
    .line 76
    .line 77
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    .line 78
    const/4 v8, 0x0

    .line 79
    :goto_0
    :try_start_1
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v9, 0x1

    .line 84
    if-eqz v0, :cond_13

    .line 85
    .line 86
    const/4 v10, 0x3

    .line 87
    invoke-interface {v6, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    iget-object v0, v1, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 94
    .line 95
    .line 96
    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 97
    :try_start_2
    iget-object v0, v1, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v13, "SELECT LIKE(\'%autoincrement%\', LOWER(sql)) FROM sqlite_schema WHERE LOWER(name) = LOWER(\'"

    .line 109
    .line 110
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v11}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v13, "\') AND TYPE IN (\'table\', \'view\')"

    .line 121
    .line 122
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-interface {v12, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 130
    .line 131
    .line 132
    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    .line 133
    :try_start_3
    invoke-interface {v13}, Ljava/sql/ResultSet;->next()Z

    .line 134
    .line 135
    .line 136
    invoke-interface {v13, v9}, Ljava/sql/ResultSet;->getInt(I)I

    .line 137
    .line 138
    .line 139
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    .line 140
    if-ne v0, v9, :cond_0

    .line 141
    .line 142
    move v14, v9

    .line 143
    goto :goto_1

    .line 144
    :cond_0
    const/4 v14, 0x0

    .line 145
    :goto_1
    :try_start_4
    invoke-interface {v13}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    move-object v2, v0

    .line 151
    move-object v5, v6

    .line 152
    goto/16 :goto_1e

    .line 153
    .line 154
    :catch_0
    move-exception v0

    .line 155
    move-object v13, v0

    .line 156
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 157
    .line 158
    .line 159
    :goto_2
    :try_start_6
    invoke-interface {v12}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :catch_1
    move-exception v0

    .line 164
    move-object v12, v0

    .line 165
    :try_start_7
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v12, "PRAGMA table_xinfo(\'"

    .line 174
    .line 175
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v11}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v12, "\')"

    .line 186
    .line 187
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v12, v1, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 195
    .line 196
    invoke-interface {v12}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 197
    .line 198
    .line 199
    move-result-object v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 200
    :try_start_8
    invoke-interface {v12, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 201
    .line 202
    .line 203
    move-result-object v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 204
    const/4 v0, 0x0

    .line 205
    :goto_4
    :try_start_9
    invoke-interface {v13}, Ljava/sql/ResultSet;->next()Z

    .line 206
    .line 207
    .line 208
    move-result v15

    .line 209
    if-eqz v15, :cond_e

    .line 210
    .line 211
    const/4 v15, 0x2

    .line 212
    invoke-interface {v13, v15}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-interface {v13, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v16

    .line 220
    const/4 v10, 0x4

    .line 221
    invoke-interface {v13, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v15

    .line 225
    const/4 v10, 0x5

    .line 226
    invoke-interface {v13, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    const-string v9, "1"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 231
    .line 232
    const/4 v7, 0x6

    .line 233
    move-object/from16 v17, v6

    .line 234
    .line 235
    :try_start_a
    invoke-interface {v13, v7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    const/4 v9, 0x7

    .line 244
    invoke-interface {v13, v9}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 248
    if-eqz v15, :cond_1

    .line 249
    .line 250
    :try_start_b
    const-string v7, "0"

    .line 251
    .line 252
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v15

    .line 256
    goto :goto_5

    .line 257
    :catchall_1
    move-exception v0

    .line 258
    move-object v2, v0

    .line 259
    move-object/from16 p3, v12

    .line 260
    .line 261
    move-object/from16 v18, v13

    .line 262
    .line 263
    goto/16 :goto_15

    .line 264
    .line 265
    :cond_1
    const/4 v15, 0x2

    .line 266
    :goto_5
    if-eqz v8, :cond_2

    .line 267
    .line 268
    const-string v7, " union all "

    .line 269
    .line 270
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    :cond_2
    if-nez v16, :cond_3

    .line 274
    .line 275
    const-string v7, "TEXT"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_3
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    :goto_6
    if-eqz v6, :cond_4

    .line 283
    .line 284
    if-eqz v14, :cond_4

    .line 285
    .line 286
    const/4 v6, 0x1

    .line 287
    goto :goto_7

    .line 288
    :cond_4
    const/4 v6, 0x0

    .line 289
    :goto_7
    sget-object v8, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->TYPE_INTEGER:Ljava/util/regex/Pattern;

    .line 290
    .line 291
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 292
    .line 293
    .line 294
    move-result-object v8

    .line 295
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    if-eqz v8, :cond_5

    .line 300
    .line 301
    move/from16 p2, v14

    .line 302
    .line 303
    const/4 v8, 0x4

    .line 304
    :goto_8
    const/16 v19, 0x0

    .line 305
    .line 306
    goto :goto_9

    .line 307
    :cond_5
    sget-object v8, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->TYPE_VARCHAR:Ljava/util/regex/Pattern;

    .line 308
    .line 309
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 314
    .line 315
    .line 316
    move-result v8

    .line 317
    const/16 v16, 0xc

    .line 318
    .line 319
    if-eqz v8, :cond_6

    .line 320
    .line 321
    move/from16 p2, v14

    .line 322
    .line 323
    move/from16 v8, v16

    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_6
    sget-object v8, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->TYPE_FLOAT:Ljava/util/regex/Pattern;

    .line 327
    .line 328
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    const/16 v19, 0xa

    .line 337
    .line 338
    if-eqz v8, :cond_7

    .line 339
    .line 340
    move/from16 p2, v14

    .line 341
    .line 342
    const/4 v8, 0x6

    .line 343
    goto :goto_9

    .line 344
    :cond_7
    move/from16 p2, v14

    .line 345
    .line 346
    move/from16 v8, v16

    .line 347
    .line 348
    :goto_9
    const/16 v14, 0x28

    .line 349
    .line 350
    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(I)I

    .line 351
    .line 352
    .line 353
    move-result v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 354
    const v16, 0x77359400

    .line 355
    .line 356
    .line 357
    if-lez v14, :cond_b

    .line 358
    .line 359
    move-object/from16 p3, v12

    .line 360
    .line 361
    const/16 v12, 0x29

    .line 362
    .line 363
    :try_start_d
    invoke-virtual {v7, v12, v14}, Ljava/lang/String;->indexOf(II)I

    .line 364
    .line 365
    .line 366
    move-result v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 367
    if-lez v12, :cond_a

    .line 368
    .line 369
    move-object/from16 v18, v13

    .line 370
    .line 371
    const/16 v13, 0x2c

    .line 372
    .line 373
    :try_start_e
    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->indexOf(II)I

    .line 374
    .line 375
    .line 376
    move-result v13

    .line 377
    if-lez v13, :cond_8

    .line 378
    .line 379
    add-int/lit8 v2, v14, 0x1

    .line 380
    .line 381
    invoke-virtual {v7, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    add-int/lit8 v13, v13, 0x1

    .line 386
    .line 387
    invoke-virtual {v7, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v12

    .line 391
    goto :goto_b

    .line 392
    :catchall_2
    move-exception v0

    .line 393
    :goto_a
    move-object v2, v0

    .line 394
    goto/16 :goto_15

    .line 395
    .line 396
    :cond_8
    add-int/lit8 v2, v14, 0x1

    .line 397
    .line 398
    invoke-virtual {v7, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 402
    const/4 v12, 0x0

    .line 403
    :goto_b
    :try_start_f
    invoke-static {v2}, Latakplugin/atos/Y;->a(Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    if-eqz v12, :cond_9

    .line 408
    .line 409
    invoke-static {v12}, Latakplugin/atos/Z;->a(Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    move-result v12
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 413
    add-int/2addr v2, v12

    .line 414
    move/from16 v16, v2

    .line 415
    .line 416
    move/from16 v19, v12

    .line 417
    .line 418
    goto :goto_c

    .line 419
    :cond_9
    move/from16 v16, v2

    .line 420
    .line 421
    const/16 v19, 0x0

    .line 422
    .line 423
    :catch_2
    :goto_c
    const/4 v2, 0x0

    .line 424
    goto :goto_d

    .line 425
    :cond_a
    move-object/from16 v18, v13

    .line 426
    .line 427
    goto :goto_c

    .line 428
    :goto_d
    :try_start_10
    invoke-virtual {v7, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v7

    .line 432
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    :goto_e
    move/from16 v12, v16

    .line 437
    .line 438
    move/from16 v13, v19

    .line 439
    .line 440
    goto :goto_10

    .line 441
    :catchall_3
    move-exception v0

    .line 442
    :goto_f
    move-object/from16 v18, v13

    .line 443
    .line 444
    goto :goto_a

    .line 445
    :cond_b
    move-object/from16 p3, v12

    .line 446
    .line 447
    move-object/from16 v18, v13

    .line 448
    .line 449
    const/4 v2, 0x0

    .line 450
    goto :goto_e

    .line 451
    :goto_10
    const-string v14, "2"

    .line 452
    .line 453
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v9

    .line 457
    const-string v14, "select "

    .line 458
    .line 459
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const/4 v14, 0x1

    .line 463
    add-int/2addr v0, v14

    .line 464
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string v14, " as ordpos, "

    .line 468
    .line 469
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const-string v14, " as colnullable,"

    .line 476
    .line 477
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v8, " as ct, "

    .line 484
    .line 485
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v8, " as colSize, "

    .line 492
    .line 493
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v8, " as colDecimalDigits, "

    .line 500
    .line 501
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    const-string v8, "\' as tblname, "

    .line 511
    .line 512
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v1, v5}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v5

    .line 522
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v5, "\' as cn, "

    .line 526
    .line 527
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1, v7}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    const-string v5, "\' as tn, "

    .line 541
    .line 542
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    if-nez v10, :cond_c

    .line 546
    .line 547
    const/4 v5, 0x0

    .line 548
    goto :goto_11

    .line 549
    :cond_c
    invoke-virtual {v1, v10}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    :goto_11
    invoke-static {v5}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    const-string v5, " as colDefault,"

    .line 561
    .line 562
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    const-string v5, " as colautoincrement,"

    .line 569
    .line 570
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    const-string v5, " as colgenerated"

    .line 577
    .line 578
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    move-object/from16 v5, p4

    .line 582
    .line 583
    if-eqz v5, :cond_d

    .line 584
    .line 585
    const-string v6, " where upper(cn) like upper(\'"

    .line 586
    .line 587
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1, v5}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v6

    .line 594
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    const-string v6, "\') ESCAPE \'"

    .line 598
    .line 599
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual/range {p0 .. p0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getSearchStringEscape()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v6

    .line 606
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 610
    .line 611
    .line 612
    :cond_d
    move/from16 v14, p2

    .line 613
    .line 614
    move-object/from16 v12, p3

    .line 615
    .line 616
    move-object v2, v5

    .line 617
    move-object/from16 v6, v17

    .line 618
    .line 619
    move-object/from16 v13, v18

    .line 620
    .line 621
    const/4 v5, 0x0

    .line 622
    const/4 v8, 0x1

    .line 623
    const/4 v9, 0x1

    .line 624
    const/4 v10, 0x3

    .line 625
    goto/16 :goto_4

    .line 626
    .line 627
    :catchall_4
    move-exception v0

    .line 628
    :goto_12
    move-object/from16 p3, v12

    .line 629
    .line 630
    goto/16 :goto_f

    .line 631
    .line 632
    :catchall_5
    move-exception v0

    .line 633
    move-object/from16 v17, v6

    .line 634
    .line 635
    goto :goto_12

    .line 636
    :cond_e
    move-object v5, v2

    .line 637
    move-object/from16 v17, v6

    .line 638
    .line 639
    move-object/from16 p3, v12

    .line 640
    .line 641
    move-object/from16 v18, v13

    .line 642
    .line 643
    const/4 v2, 0x0

    .line 644
    :try_start_11
    invoke-interface/range {v18 .. v18}, Ljava/sql/ResultSet;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 645
    .line 646
    .line 647
    :try_start_12
    invoke-interface/range {p3 .. p3}, Ljava/sql/Statement;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 648
    .line 649
    .line 650
    move-object v2, v5

    .line 651
    move-object/from16 v6, v17

    .line 652
    .line 653
    const/4 v5, 0x0

    .line 654
    goto/16 :goto_0

    .line 655
    .line 656
    :catchall_6
    move-exception v0

    .line 657
    :goto_13
    move-object v2, v0

    .line 658
    move-object/from16 v5, v17

    .line 659
    .line 660
    goto/16 :goto_1e

    .line 661
    .line 662
    :catchall_7
    move-exception v0

    .line 663
    :goto_14
    move-object v2, v0

    .line 664
    goto :goto_17

    .line 665
    :goto_15
    if-eqz v18, :cond_f

    .line 666
    .line 667
    :try_start_13
    invoke-interface/range {v18 .. v18}, Ljava/sql/ResultSet;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 668
    .line 669
    .line 670
    goto :goto_16

    .line 671
    :catchall_8
    move-exception v0

    .line 672
    move-object v3, v0

    .line 673
    :try_start_14
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 674
    .line 675
    .line 676
    :cond_f
    :goto_16
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 677
    :catchall_9
    move-exception v0

    .line 678
    move-object/from16 v17, v6

    .line 679
    .line 680
    move-object/from16 p3, v12

    .line 681
    .line 682
    goto :goto_14

    .line 683
    :goto_17
    if-eqz p3, :cond_10

    .line 684
    .line 685
    :try_start_15
    invoke-interface/range {p3 .. p3}, Ljava/sql/Statement;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 686
    .line 687
    .line 688
    goto :goto_18

    .line 689
    :catchall_a
    move-exception v0

    .line 690
    move-object v3, v0

    .line 691
    :try_start_16
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 692
    .line 693
    .line 694
    :cond_10
    :goto_18
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 695
    :catchall_b
    move-exception v0

    .line 696
    move-object/from16 v17, v6

    .line 697
    .line 698
    goto :goto_13

    .line 699
    :catchall_c
    move-exception v0

    .line 700
    move-object/from16 v17, v6

    .line 701
    .line 702
    move-object v2, v0

    .line 703
    move-object v5, v13

    .line 704
    goto :goto_19

    .line 705
    :catchall_d
    move-exception v0

    .line 706
    move-object/from16 v17, v6

    .line 707
    .line 708
    move-object v2, v0

    .line 709
    const/4 v5, 0x0

    .line 710
    :goto_19
    if-eqz v5, :cond_11

    .line 711
    .line 712
    :try_start_17
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 713
    .line 714
    .line 715
    goto :goto_1a

    .line 716
    :catch_3
    move-exception v0

    .line 717
    move-object v3, v0

    .line 718
    :try_start_18
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 719
    .line 720
    .line 721
    :cond_11
    :goto_1a
    if-eqz v12, :cond_12

    .line 722
    .line 723
    :try_start_19
    invoke-interface {v12}, Ljava/sql/Statement;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 724
    .line 725
    .line 726
    goto :goto_1b

    .line 727
    :catch_4
    move-exception v0

    .line 728
    move-object v3, v0

    .line 729
    :try_start_1a
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 730
    .line 731
    .line 732
    :cond_12
    :goto_1b
    throw v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 733
    :cond_13
    move-object/from16 v17, v6

    .line 734
    .line 735
    :try_start_1b
    invoke-interface/range {v17 .. v17}, Ljava/sql/ResultSet;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5

    .line 736
    .line 737
    .line 738
    goto :goto_1c

    .line 739
    :catch_5
    move-exception v0

    .line 740
    move-object v2, v0

    .line 741
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 742
    .line 743
    .line 744
    :goto_1c
    if-eqz v8, :cond_14

    .line 745
    .line 746
    const-string v0, ") order by TABLE_SCHEM, TABLE_NAME, ORDINAL_POSITION;"

    .line 747
    .line 748
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    .line 750
    .line 751
    goto :goto_1d

    .line 752
    :cond_14
    const-string v0, "select null as ordpos, null as colnullable, null as ct, null as colsize, null as colDecimalDigits, null as tblname, null as cn, null as tn, null as colDefault, null as colautoincrement, null as colgenerated) limit 0;"

    .line 753
    .line 754
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    :goto_1d
    iget-object v0, v1, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 758
    .line 759
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    check-cast v0, Lorg/sqlite/core/CoreStatement;

    .line 764
    .line 765
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    const/4 v3, 0x1

    .line 770
    invoke-virtual {v0, v2, v3}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    return-object v0

    .line 775
    :catchall_e
    move-exception v0

    .line 776
    move-object v2, v0

    .line 777
    const/4 v5, 0x0

    .line 778
    :goto_1e
    if-eqz v5, :cond_15

    .line 779
    .line 780
    :try_start_1c
    invoke-interface {v5}, Ljava/sql/ResultSet;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_6

    .line 781
    .line 782
    .line 783
    goto :goto_1f

    .line 784
    :catch_6
    move-exception v0

    .line 785
    move-object v3, v0

    .line 786
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 787
    .line 788
    .line 789
    :cond_15
    :goto_1f
    throw v2
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p4, p5, p6}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    if-nez p6, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "select "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, " as PKTABLE_CAT, "

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, " as PKTABLE_SCHEM, "

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {p3}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p1, " as PKTABLE_NAME, \'\' as PKCOLUMN_NAME, "

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {p4}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, " as FKTABLE_CAT, "

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-static {p5}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, " as FKTABLE_SCHEM, "

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-static {p6}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p1, " as FKTABLE_NAME, \'\' as FKCOLUMN_NAME, -1 as KEY_SEQ, 3 as UPDATE_RULE, 3 as DELETE_RULE, \'\' as FK_NAME, \'\' as PK_NAME, "

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x5

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, " as DEFERRABILITY limit 0 "

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object p2, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 111
    .line 112
    invoke-interface {p2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Lorg/sqlite/core/CoreStatement;

    .line 117
    .line 118
    const/4 p3, 0x1

    .line 119
    invoke-virtual {p2, p1, p3}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1
.end method

.method public getDatabaseMajorVersion()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->libversion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "\\."

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    aget-object v0, v0, v1

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public getDatabaseMinorVersion()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->libversion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "\\."

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    aget-object v0, v0, v1

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method public getDatabaseProductName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SQLite"

    .line 2
    .line 3
    return-object v0
.end method

.method public getDatabaseProductVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->libversion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDefaultTransactionIsolation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getDriverMajorVersion()I
    .locals 2

    .line 1
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverVersion:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "\\."

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    aget-object v0, v0, v1

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getDriverMinorVersion()I
    .locals 2

    .line 1
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverVersion:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "\\."

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    aget-object v0, v0, v1

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->driverVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    new-instance v2, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;

    .line 6
    .line 7
    invoke-direct {v2, v1, v0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;-><init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getColumns()[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object v4, v1, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 15
    .line 16
    invoke-interface {v4}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/4 v5, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v6, v5

    .line 29
    :goto_0
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-static/range {p2 .. p2}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object v7, v5

    .line 37
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const/16 v9, 0x200

    .line 40
    .line 41
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    .line 43
    .line 44
    const-string v10, "select "

    .line 45
    .line 46
    const/4 v12, 0x1

    .line 47
    if-eqz v3, :cond_10

    .line 48
    .line 49
    const-string v13, "select name from sqlite_schema where type = \'table\'"

    .line 50
    .line 51
    invoke-interface {v4, v13}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_2
    invoke-interface {v13}, Ljava/sql/ResultSet;->next()Z

    .line 61
    .line 62
    .line 63
    move-result v15

    .line 64
    if-eqz v15, :cond_3

    .line 65
    .line 66
    invoke-interface {v13, v12}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v15

    .line 70
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-eqz v16, :cond_2

    .line 78
    .line 79
    move-object v5, v15

    .line 80
    goto :goto_2

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    move-object v2, v0

    .line 83
    goto/16 :goto_d

    .line 84
    .line 85
    :cond_3
    invoke-interface {v13}, Ljava/sql/ResultSet;->close()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/4 v13, 0x0

    .line 93
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    if-eqz v14, :cond_e

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v14

    .line 103
    check-cast v14, Ljava/lang/String;

    .line 104
    .line 105
    new-instance v15, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;

    .line 106
    .line 107
    invoke-direct {v15, v1, v14}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;-><init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v15}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->getFkList()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v15

    .line 114
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v16

    .line 122
    if-eqz v16, :cond_4

    .line 123
    .line 124
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v16

    .line 128
    move-object/from16 v9, v16

    .line 129
    .line 130
    check-cast v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;

    .line 131
    .line 132
    invoke-virtual {v9}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getPkTableName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    if-eqz v11, :cond_5

    .line 137
    .line 138
    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    if-nez v11, :cond_6

    .line 143
    .line 144
    :cond_5
    move-object/from16 p3, v0

    .line 145
    .line 146
    move-object/from16 p2, v5

    .line 147
    .line 148
    move-object/from16 v19, v15

    .line 149
    .line 150
    const/16 v17, 0x0

    .line 151
    .line 152
    goto/16 :goto_c

    .line 153
    .line 154
    :cond_6
    const/4 v11, 0x0

    .line 155
    :goto_4
    invoke-virtual {v9}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getColumnMappingCount()I

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    if-ge v11, v12, :cond_d

    .line 160
    .line 161
    add-int/lit8 v12, v11, 0x1

    .line 162
    .line 163
    invoke-virtual {v9, v11}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getColumnMapping(I)[Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    const/16 v16, 0x1

    .line 168
    .line 169
    aget-object v17, v11, v16

    .line 170
    .line 171
    const-string v18, ""

    .line 172
    .line 173
    move-object/from16 p3, v0

    .line 174
    .line 175
    if-nez v17, :cond_7

    .line 176
    .line 177
    move-object/from16 v0, v18

    .line 178
    .line 179
    :goto_5
    const/16 v17, 0x0

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_7
    move-object/from16 v0, v17

    .line 183
    .line 184
    goto :goto_5

    .line 185
    :goto_6
    aget-object v11, v11, v17

    .line 186
    .line 187
    move-object/from16 p2, v5

    .line 188
    .line 189
    if-nez v11, :cond_8

    .line 190
    .line 191
    move-object/from16 v11, v18

    .line 192
    .line 193
    :cond_8
    array-length v5, v3

    .line 194
    move-object/from16 v19, v15

    .line 195
    .line 196
    move/from16 v15, v17

    .line 197
    .line 198
    :goto_7
    if-ge v15, v5, :cond_9

    .line 199
    .line 200
    move/from16 v20, v5

    .line 201
    .line 202
    aget-object v5, v3, v15

    .line 203
    .line 204
    if-eqz v5, :cond_a

    .line 205
    .line 206
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-eqz v5, :cond_a

    .line 211
    .line 212
    invoke-virtual {v2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getName()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    if-eqz v5, :cond_9

    .line 217
    .line 218
    invoke-virtual {v2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getName()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v18

    .line 222
    :cond_9
    move-object/from16 v5, v18

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 226
    .line 227
    move/from16 v5, v20

    .line 228
    .line 229
    goto :goto_7

    .line 230
    :goto_8
    if-lez v13, :cond_b

    .line 231
    .line 232
    const-string v15, " union all select "

    .line 233
    .line 234
    goto :goto_9

    .line 235
    :cond_b
    move-object v15, v10

    .line 236
    :goto_9
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v15, " as ks, \'"

    .line 243
    .line 244
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v14}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v15

    .line 251
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v15, "\' as fkt, \'"

    .line 255
    .line 256
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v11}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v11

    .line 263
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v11, "\' as fcn, \'"

    .line 267
    .line 268
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v0}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v0, "\' as pcn, \'"

    .line 279
    .line 280
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v5}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v0, "\' as pkn, "

    .line 291
    .line 292
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->RULE_MAP:Ljava/util/Map;

    .line 296
    .line 297
    invoke-virtual {v9}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getOnUpdate()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v5, " as ur, "

    .line 309
    .line 310
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v9}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getOnDelete()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v0, " as dr, "

    .line 325
    .line 326
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v9}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getFkName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    if-eqz v0, :cond_c

    .line 334
    .line 335
    const-string v5, "\'"

    .line 336
    .line 337
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v0}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v0, "\' as fkn"

    .line 348
    .line 349
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_c
    const-string v0, "\'\' as fkn"

    .line 354
    .line 355
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    :goto_a
    add-int/lit8 v13, v13, 0x1

    .line 359
    .line 360
    move-object/from16 v5, p2

    .line 361
    .line 362
    move-object/from16 v0, p3

    .line 363
    .line 364
    move v11, v12

    .line 365
    move-object/from16 v15, v19

    .line 366
    .line 367
    goto/16 :goto_4

    .line 368
    .line 369
    :cond_d
    const/16 v17, 0x0

    .line 370
    .line 371
    :goto_b
    const/16 v9, 0x200

    .line 372
    .line 373
    const/4 v12, 0x1

    .line 374
    goto/16 :goto_3

    .line 375
    .line 376
    :goto_c
    move-object/from16 v5, p2

    .line 377
    .line 378
    move-object/from16 v0, p3

    .line 379
    .line 380
    move-object/from16 v15, v19

    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_e
    move-object/from16 p2, v5

    .line 384
    .line 385
    const/16 v17, 0x0

    .line 386
    .line 387
    goto :goto_f

    .line 388
    :goto_d
    if-eqz v13, :cond_f

    .line 389
    .line 390
    :try_start_1
    invoke-interface {v13}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 391
    .line 392
    .line 393
    goto :goto_e

    .line 394
    :catchall_1
    move-exception v0

    .line 395
    move-object v3, v0

    .line 396
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 397
    .line 398
    .line 399
    :cond_f
    :goto_e
    throw v2

    .line 400
    :cond_10
    const/16 v17, 0x0

    .line 401
    .line 402
    move/from16 v13, v17

    .line 403
    .line 404
    :goto_f
    if-lez v13, :cond_11

    .line 405
    .line 406
    const/4 v11, 0x1

    .line 407
    goto :goto_10

    .line 408
    :cond_11
    move/from16 v11, v17

    .line 409
    .line 410
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    const/16 v2, 0x200

    .line 413
    .line 414
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v2, " as PKTABLE_CAT, "

    .line 424
    .line 425
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string v2, " as PKTABLE_SCHEM, "

    .line 432
    .line 433
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-static {v5}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v2, " as PKTABLE_NAME, "

    .line 444
    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v2, "\'\'"

    .line 449
    .line 450
    if-eqz v11, :cond_12

    .line 451
    .line 452
    const-string v3, "pcn"

    .line 453
    .line 454
    goto :goto_11

    .line 455
    :cond_12
    move-object v3, v2

    .line 456
    :goto_11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    const-string v3, " as PKCOLUMN_NAME, "

    .line 460
    .line 461
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string v3, " as FKTABLE_CAT, "

    .line 468
    .line 469
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const-string v3, " as FKTABLE_SCHEM, "

    .line 476
    .line 477
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    if-eqz v11, :cond_13

    .line 481
    .line 482
    const-string v3, "fkt"

    .line 483
    .line 484
    goto :goto_12

    .line 485
    :cond_13
    move-object v3, v2

    .line 486
    :goto_12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v3, " as FKTABLE_NAME, "

    .line 490
    .line 491
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    if-eqz v11, :cond_14

    .line 495
    .line 496
    const-string v3, "fcn"

    .line 497
    .line 498
    goto :goto_13

    .line 499
    :cond_14
    move-object v3, v2

    .line 500
    :goto_13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string v3, " as FKCOLUMN_NAME, "

    .line 504
    .line 505
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    if-eqz v11, :cond_15

    .line 509
    .line 510
    const-string v3, "ks"

    .line 511
    .line 512
    goto :goto_14

    .line 513
    :cond_15
    const-string v3, "-1"

    .line 514
    .line 515
    :goto_14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    const-string v3, " as KEY_SEQ, "

    .line 519
    .line 520
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    const-string v3, "3"

    .line 524
    .line 525
    if-eqz v11, :cond_16

    .line 526
    .line 527
    const-string v5, "ur"

    .line 528
    .line 529
    goto :goto_15

    .line 530
    :cond_16
    move-object v5, v3

    .line 531
    :goto_15
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    const-string v5, " as UPDATE_RULE, "

    .line 535
    .line 536
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    if-eqz v11, :cond_17

    .line 540
    .line 541
    const-string v3, "dr"

    .line 542
    .line 543
    :cond_17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v3, " as DELETE_RULE, "

    .line 547
    .line 548
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    if-eqz v11, :cond_18

    .line 552
    .line 553
    const-string v3, "fkn"

    .line 554
    .line 555
    goto :goto_16

    .line 556
    :cond_18
    move-object v3, v2

    .line 557
    :goto_16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    const-string v3, " as FK_NAME, "

    .line 561
    .line 562
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    if-eqz v11, :cond_19

    .line 566
    .line 567
    const-string v2, "pkn"

    .line 568
    .line 569
    :cond_19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    const-string v2, " as PK_NAME, "

    .line 573
    .line 574
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const/4 v2, 0x5

    .line 578
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    const-string v2, " as DEFERRABILITY "

    .line 582
    .line 583
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    if-eqz v11, :cond_1a

    .line 587
    .line 588
    const-string v2, "from ("

    .line 589
    .line 590
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    const-string v2, ") ORDER BY FKTABLE_CAT, FKTABLE_SCHEM, FKTABLE_NAME, KEY_SEQ"

    .line 597
    .line 598
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    goto :goto_17

    .line 602
    :cond_1a
    const-string v2, "limit 0"

    .line 603
    .line 604
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    :goto_17
    check-cast v4, Lorg/sqlite/core/CoreStatement;

    .line 608
    .line 609
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    const/4 v2, 0x1

    .line 614
    invoke-virtual {v4, v0, v2}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    return-object v0
.end method

.method public getExtraNameCharacters()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/sql/SQLFeatureNotSupportedException;

    .line 2
    .line 3
    const-string p2, "Not yet implemented by SQLite JDBC driver"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public getGeneratedKeys()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getGeneratedKeys:Ljava/sql/PreparedStatement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    const-string v1, "select last_insert_rowid();"

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getGeneratedKeys:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getGeneratedKeys:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public getIdentifierQuoteString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\""

    .line 2
    .line 3
    return-object v0
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget-object v2, v0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v4, 0x2bc

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const-string v4, "select "

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static/range {p1 .. p1}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v5, " as PKTABLE_CAT, "

    .line 31
    .line 32
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static/range {p2 .. p2}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v5, " as PKTABLE_SCHEM, "

    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v5, "ptn as PKTABLE_NAME, pcn as PKCOLUMN_NAME, "

    .line 48
    .line 49
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static/range {p1 .. p1}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v5, " as FKTABLE_CAT, "

    .line 60
    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static/range {p2 .. p2}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v5, " as FKTABLE_SCHEM, "

    .line 72
    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-static/range {p3 .. p3}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v5, " as FKTABLE_NAME, "

    .line 84
    .line 85
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, "fcn as FKCOLUMN_NAME, ks as KEY_SEQ, ur as UPDATE_RULE, dr as DELETE_RULE, fkn as FK_NAME, pkn as PK_NAME, "

    .line 89
    .line 90
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const/4 v5, 0x5

    .line 94
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v6, " as DEFERRABILITY from ("

    .line 98
    .line 99
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const/4 v6, 0x1

    .line 103
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v8, "pragma foreign_key_list(\'"

    .line 109
    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v8, "\');"

    .line 121
    .line 122
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-interface {v2, v7}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 130
    .line 131
    .line 132
    move-result-object v7
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 133
    new-instance v8, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;

    .line 134
    .line 135
    invoke-direct {v8, v0, v1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;-><init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->getFkList()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const/4 v8, 0x0

    .line 143
    move v9, v8

    .line 144
    :goto_0
    invoke-interface {v7}, Ljava/sql/ResultSet;->next()Z

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    if-eqz v10, :cond_5

    .line 149
    .line 150
    const/4 v10, 0x2

    .line 151
    invoke-interface {v7, v10}, Ljava/sql/ResultSet;->getInt(I)I

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    add-int/2addr v11, v6

    .line 156
    invoke-interface {v7, v6}, Ljava/sql/ResultSet;->getInt(I)I

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    const/4 v13, 0x3

    .line 161
    invoke-interface {v7, v13}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    const/4 v15, 0x4

    .line 166
    invoke-interface {v7, v15}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-interface {v7, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v16

    .line 174
    const/16 v17, 0x0

    .line 175
    .line 176
    :try_start_1
    new-instance v5, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;

    .line 177
    .line 178
    invoke-direct {v5, v0, v14}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;-><init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v18
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    if-nez v16, :cond_0

    .line 186
    .line 187
    :try_start_2
    invoke-virtual {v5}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getColumns()[Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    aget-object v16, v5, v8
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    .line 193
    :catch_0
    :cond_0
    :goto_1
    move-object/from16 v5, v16

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :catch_1
    move-object/from16 v18, v17

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :goto_2
    const/4 v15, 0x6

    .line 200
    invoke-interface {v7, v15}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v15

    .line 204
    const/4 v6, 0x7

    .line 205
    invoke-interface {v7, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    if-lez v9, :cond_1

    .line 210
    .line 211
    const-string v8, " union all "

    .line 212
    .line 213
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    if-le v8, v12, :cond_2

    .line 221
    .line 222
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    check-cast v8, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;

    .line 227
    .line 228
    invoke-virtual {v8}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->getFkName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v17

    .line 232
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v8, " as ks,"

    .line 239
    .line 240
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v8, "\'"

    .line 244
    .line 245
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v14}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v11

    .line 252
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v11, "\' as ptn, \'"

    .line 256
    .line 257
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v10}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v10

    .line 264
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v10, "\' as fcn, \'"

    .line 268
    .line 269
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v5}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v5, "\' as pcn,"

    .line 280
    .line 281
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v5, "case \'"

    .line 285
    .line 286
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v15}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v10

    .line 293
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    const-string v10, " when \'NO ACTION\' then "

    .line 300
    .line 301
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string v11, " when \'CASCADE\' then "

    .line 308
    .line 309
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const/4 v12, 0x0

    .line 313
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v12, " when \'RESTRICT\' then "

    .line 317
    .line 318
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const/4 v14, 0x1

    .line 322
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v14, " when \'SET NULL\' then "

    .line 326
    .line 327
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const/4 v15, 0x2

    .line 331
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v15, " when \'SET DEFAULT\' then "

    .line 335
    .line 336
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const/4 v13, 0x4

    .line 340
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v13, " end as ur, "

    .line 344
    .line 345
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v6}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v5

    .line 355
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const/4 v5, 0x3

    .line 365
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const/4 v5, 0x0

    .line 372
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const/4 v6, 0x1

    .line 379
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const/4 v6, 0x2

    .line 386
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const/4 v6, 0x4

    .line 393
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v6, " end as dr, "

    .line 397
    .line 398
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string v6, "\'\'"

    .line 402
    .line 403
    if-nez v17, :cond_3

    .line 404
    .line 405
    move-object v8, v6

    .line 406
    goto :goto_3

    .line 407
    :cond_3
    invoke-static/range {v17 .. v17}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v8

    .line 411
    :goto_3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v8, " as fkn, "

    .line 415
    .line 416
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    if-nez v18, :cond_4

    .line 420
    .line 421
    goto :goto_4

    .line 422
    :cond_4
    invoke-static/range {v18 .. v18}, Lorg/sqlite/core/CoreDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    :goto_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v6, " as pkn"

    .line 430
    .line 431
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    add-int/lit8 v9, v9, 0x1

    .line 435
    .line 436
    move v8, v5

    .line 437
    const/4 v5, 0x5

    .line 438
    const/4 v6, 0x1

    .line 439
    goto/16 :goto_0

    .line 440
    .line 441
    :cond_5
    invoke-interface {v7}, Ljava/sql/ResultSet;->close()V

    .line 442
    .line 443
    .line 444
    if-nez v9, :cond_6

    .line 445
    .line 446
    invoke-direct {v0, v3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->appendDummyForeignKeyList(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    goto :goto_5

    .line 451
    :cond_6
    const-string v1, ") ORDER BY PKTABLE_CAT, PKTABLE_SCHEM, PKTABLE_NAME, KEY_SEQ;"

    .line 452
    .line 453
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    :goto_5
    check-cast v2, Lorg/sqlite/core/CoreStatement;

    .line 457
    .line 458
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    const/4 v3, 0x1

    .line 463
    invoke-virtual {v2, v1, v3}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    return-object v1

    .line 468
    :catch_2
    invoke-direct {v0, v3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->appendDummyForeignKeyList(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    check-cast v2, Lorg/sqlite/core/CoreStatement;

    .line 473
    .line 474
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    const/4 v3, 0x1

    .line 479
    invoke-virtual {v2, v1, v3}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    return-object v1
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const/16 p4, 0x1f4

    .line 10
    .line 11
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-string p4, "select null as TABLE_CAT, null as TABLE_SCHEM, \'"

    .line 15
    .line 16
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p3}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p4, "\' as TABLE_NAME, un as NON_UNIQUE, null as INDEX_QUALIFIER, n as INDEX_NAME, "

    .line 27
    .line 28
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/4 p4, 0x3

    .line 32
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p5

    .line 36
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p5, " as TYPE, op as ORDINAL_POSITION, "

    .line 40
    .line 41
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p5, "cn as COLUMN_NAME, null as ASC_OR_DESC, 0 as CARDINALITY, 0 as PAGES, null as FILTER_CONDITION from ("

    .line 45
    .line 46
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    new-instance p5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v0, "pragma index_list(\'"

    .line 55
    .line 56
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p3}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p3, "\');"

    .line 67
    .line 68
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p5

    .line 75
    invoke-interface {p1, p5}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 76
    .line 77
    .line 78
    move-result-object p5

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    :goto_0
    invoke-interface {p5}, Ljava/sql/ResultSet;->next()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v2, 0x1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    sub-int/2addr v1, v2

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/util/ArrayList;

    .line 109
    .line 110
    const/4 v3, 0x2

    .line 111
    invoke-interface {p5, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    sub-int/2addr v1, v2

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-interface {p5, p4}, Ljava/sql/ResultSet;->getInt(I)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {p5}, Ljava/sql/ResultSet;->close()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result p5

    .line 148
    if-nez p5, :cond_1

    .line 149
    .line 150
    const-string p3, "select null as un, null as n, null as op, null as cn) limit 0;"

    .line 151
    .line 152
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    check-cast p1, Lorg/sqlite/core/CoreStatement;

    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-virtual {p1, p2, v2}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    return-object p1

    .line 166
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object p5

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_4

    .line 180
    .line 181
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Ljava/util/ArrayList;

    .line 186
    .line 187
    const/4 v3, 0x0

    .line 188
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    const-string v5, "pragma index_info(\'"

    .line 202
    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p0, v3}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-interface {p1, v4}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    :goto_2
    invoke-interface {v4}, Ljava/sql/ResultSet;->next()Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-eqz v5, :cond_3

    .line 229
    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-interface {v4, p4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    const-string v7, "select "

    .line 240
    .line 241
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    check-cast v7, Ljava/lang/Integer;

    .line 249
    .line 250
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    rsub-int/lit8 v7, v7, 0x1

    .line 255
    .line 256
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v7, " as un,\'"

    .line 260
    .line 261
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, v3}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v7, "\' as n,"

    .line 272
    .line 273
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-interface {v4, v2}, Ljava/sql/ResultSet;->getInt(I)I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    add-int/2addr v7, v2

    .line 281
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v7, " as op,"

    .line 285
    .line 286
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    if-nez v6, :cond_2

    .line 290
    .line 291
    const-string v6, "null"

    .line 292
    .line 293
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_2
    const-string v7, "\'"

    .line 298
    .line 299
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0, v6}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    :goto_3
    const-string v6, " as cn"

    .line 313
    .line 314
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    goto :goto_2

    .line 325
    :cond_3
    invoke-interface {v4}, Ljava/sql/ResultSet;->close()V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_1

    .line 329
    .line 330
    :cond_4
    const-string p3, " union all "

    .line 331
    .line 332
    invoke-static {v0, p3}, Lorg/sqlite/util/StringUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p3

    .line 336
    check-cast p1, Lorg/sqlite/core/CoreStatement;

    .line 337
    .line 338
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string p3, ");"

    .line 342
    .line 343
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p2

    .line 350
    invoke-virtual {p1, p2, v2}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    return-object p1
.end method

.method public getJDBCMajorVersion()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getJDBCMinorVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getMaxBinaryLiteralLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCatalogNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCharLiteralLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInGroupBy()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInOrderBy()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInSelect()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInTable()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxConnections()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCursorNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxIndexLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxProcedureNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRowSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSchemaNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatementLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatements()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTableNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTablesInSelect()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxUserNameLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNumericFunctions()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance p1, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;

    .line 2
    .line 3
    invoke-direct {p1, p0, p3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;-><init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getColumns()[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const/16 v2, 0x200

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const-string v2, "select null as TABLE_CAT, null as TABLE_SCHEM, \'"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p3}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p3, "\' as TABLE_NAME, cn as COLUMN_NAME, ks as KEY_SEQ, pk as PK_NAME from ("

    .line 36
    .line 37
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/4 p3, 0x1

    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    const-string p1, "select null as cn, null as pk, 0 as ks) limit 0;"

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    check-cast v0, Lorg/sqlite/core/CoreStatement;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1, p3}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :cond_0
    invoke-virtual {p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "\'"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :cond_1
    const/4 v2, 0x0

    .line 86
    :goto_0
    array-length v3, p2

    .line 87
    if-ge v2, v3, :cond_3

    .line 88
    .line 89
    if-lez v2, :cond_2

    .line 90
    .line 91
    const-string v3, " union "

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string v3, "select "

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v3, " as pk, \'"

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    aget-object v3, p2, v2

    .line 110
    .line 111
    invoke-direct {p0, v3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->unquoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {p0, v3}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v3, "\' as cn, "

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    add-int/lit8 v2, v2, 0x1

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v3, " as ks"

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_3
    check-cast v0, Lorg/sqlite/core/CoreStatement;

    .line 139
    .line 140
    const-string p1, ") order by cn;"

    .line 141
    .line 142
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {v0, p1, p3}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    return-object p1
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedureColumns:Ljava/sql/PreparedStatement;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    const-string p2, "select null as PROCEDURE_CAT, null as PROCEDURE_SCHEM, null as PROCEDURE_NAME, null as COLUMN_NAME, null as COLUMN_TYPE, null as DATA_TYPE, null as TYPE_NAME, null as PRECISION, null as LENGTH, null as SCALE, null as RADIX, null as NULLABLE, null as REMARKS limit 0;"

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedureColumns:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedureColumns:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getProcedureTerm()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "not_implemented"

    .line 2
    .line 3
    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedures:Ljava/sql/PreparedStatement;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    const-string p2, "select null as PROCEDURE_CAT, null as PROCEDURE_SCHEM, null as PROCEDURE_NAME, null as UNDEF1, null as UNDEF2, null as UNDEF3, null as REMARKS, null as PROCEDURE_TYPE limit 0;"

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedures:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedures:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getResultSetHoldability()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSQLKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ABORT,ACTION,AFTER,ANALYZE,ATTACH,AUTOINCREMENT,BEFORE,CASCADE,CONFLICT,DATABASE,DEFERRABLE,DEFERRED,DESC,DETACH,EXCLUSIVE,EXPLAIN,FAIL,GLOB,IGNORE,INDEX,INDEXED,INITIALLY,INSTEAD,ISNULL,KEY,LIMIT,NOTNULL,OFFSET,PLAN,PRAGMA,QUERY,RAISE,REGEXP,REINDEX,RENAME,REPLACE,RESTRICT,TEMP,TEMPORARY,TRANSACTION,VACUUM,VIEW,VIRTUAL"

    .line 2
    .line 3
    return-object v0
.end method

.method public getSQLStateType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSchemaTerm()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "schema"

    .line 2
    .line 3
    return-object v0
.end method

.method public getSchemas()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSchemas:Ljava/sql/PreparedStatement;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    const-string v1, "select null as TABLE_SCHEM, null as TABLE_CATALOG limit 0;"

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSchemas:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSchemas:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public getSearchStringEscape()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\\"

    .line 2
    .line 3
    return-object v0
.end method

.method public getStringFunctions()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getSuperTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTables:Ljava/sql/PreparedStatement;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    const-string p2, "select null as TABLE_CAT, null as TABLE_SCHEM, null as TABLE_NAME, null as SUPERTABLE_NAME limit 0;"

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTables:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTables:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getSuperTypes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTypes:Ljava/sql/PreparedStatement;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    const-string p2, "select null as TYPE_CAT, null as TYPE_SCHEM, null as TYPE_NAME, null as SUPERTYPE_CAT, null as SUPERTYPE_SCHEM, null as SUPERTYPE_NAME limit 0;"

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTypes:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTypes:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getSystemFunctions()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public getTablePrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTablePrivileges:Ljava/sql/PreparedStatement;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    const-string p2, "select  null as TABLE_CAT, null as TABLE_SCHEM, null as TABLE_NAME, null as GRANTOR, null GRANTEE,  null as PRIVILEGE, null as IS_GRANTABLE limit 0;"

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTablePrivileges:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTablePrivileges:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getTableTypes()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreDatabaseMetaData;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 9
    .line 10
    const-string v1, "SELECT \'TABLE\' AS TABLE_TYPE UNION SELECT \'VIEW\' AS TABLE_TYPE UNION SELECT \'SYSTEM TABLE\' AS TABLE_TYPE UNION SELECT \'GLOBAL TEMPORARY\' AS TABLE_TYPE;"

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->clearParameters()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public declared-synchronized getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
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
    invoke-virtual {p0}, Lorg/sqlite/core/CoreDatabaseMetaData;->checkOpen()V

    .line 3
    .line 4
    .line 5
    if-eqz p3, :cond_1

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p3}, Lorg/sqlite/core/CoreDatabaseMetaData;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_1

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_1
    :goto_0
    const-string p1, "%"

    .line 25
    .line 26
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string p3, "SELECT"

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p3, "\n"

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p3, "  NULL AS TABLE_CAT,"

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p3, "\n"

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p3, "  NULL AS TABLE_SCHEM,"

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p3, "\n"

    .line 57
    .line 58
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p3, "  NAME AS TABLE_NAME,"

    .line 62
    .line 63
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string p3, "\n"

    .line 67
    .line 68
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p3, "  TYPE AS TABLE_TYPE,"

    .line 72
    .line 73
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p3, "\n"

    .line 77
    .line 78
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p3, "  NULL AS REMARKS,"

    .line 82
    .line 83
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p3, "\n"

    .line 87
    .line 88
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p3, "  NULL AS TYPE_CAT,"

    .line 92
    .line 93
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p3, "\n"

    .line 97
    .line 98
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p3, "  NULL AS TYPE_SCHEM,"

    .line 102
    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p3, "\n"

    .line 107
    .line 108
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string p3, "  NULL AS TYPE_NAME,"

    .line 112
    .line 113
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p3, "\n"

    .line 117
    .line 118
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p3, "  NULL AS SELF_REFERENCING_COL_NAME,"

    .line 122
    .line 123
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p3, "\n"

    .line 127
    .line 128
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p3, "  NULL AS REF_GENERATION"

    .line 132
    .line 133
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p3, "\n"

    .line 137
    .line 138
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p3, "FROM"

    .line 142
    .line 143
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p3, "\n"

    .line 147
    .line 148
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p3, "  ("

    .line 152
    .line 153
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p3, "\n"

    .line 157
    .line 158
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p3, "    SELECT\n"

    .line 162
    .line 163
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string p3, "      \'sqlite_schema\' AS NAME,\n"

    .line 167
    .line 168
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string p3, "      \'SYSTEM TABLE\' AS TYPE"

    .line 172
    .line 173
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p3, "    UNION ALL"

    .line 177
    .line 178
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string p3, "\n"

    .line 182
    .line 183
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string p3, "    SELECT"

    .line 187
    .line 188
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string p3, "\n"

    .line 192
    .line 193
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string p3, "      NAME,"

    .line 197
    .line 198
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string p3, "\n"

    .line 202
    .line 203
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string p3, "      UPPER(TYPE) AS TYPE"

    .line 207
    .line 208
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string p3, "\n"

    .line 212
    .line 213
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string p3, "    FROM"

    .line 217
    .line 218
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string p3, "\n"

    .line 222
    .line 223
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string p3, "      sqlite_schema"

    .line 227
    .line 228
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    const-string p3, "\n"

    .line 232
    .line 233
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string p3, "    WHERE"

    .line 237
    .line 238
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string p3, "\n"

    .line 242
    .line 243
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string p3, "      NAME NOT LIKE \'sqlite\\_%\' ESCAPE \'\\\'"

    .line 247
    .line 248
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string p3, "\n"

    .line 252
    .line 253
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string p3, "      AND UPPER(TYPE) IN (\'TABLE\', \'VIEW\')"

    .line 257
    .line 258
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string p3, "\n"

    .line 262
    .line 263
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string p3, "    UNION ALL"

    .line 267
    .line 268
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string p3, "\n"

    .line 272
    .line 273
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string p3, "    SELECT"

    .line 277
    .line 278
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string p3, "\n"

    .line 282
    .line 283
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string p3, "      NAME,"

    .line 287
    .line 288
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string p3, "\n"

    .line 292
    .line 293
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string p3, "      \'GLOBAL TEMPORARY\' AS TYPE"

    .line 297
    .line 298
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string p3, "\n"

    .line 302
    .line 303
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string p3, "    FROM"

    .line 307
    .line 308
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string p3, "\n"

    .line 312
    .line 313
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string p3, "      sqlite_temp_master"

    .line 317
    .line 318
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string p3, "\n"

    .line 322
    .line 323
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string p3, "    UNION ALL"

    .line 327
    .line 328
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string p3, "\n"

    .line 332
    .line 333
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string p3, "    SELECT"

    .line 337
    .line 338
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string p3, "\n"

    .line 342
    .line 343
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string p3, "      NAME,"

    .line 347
    .line 348
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string p3, "\n"

    .line 352
    .line 353
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string p3, "      \'SYSTEM TABLE\' AS TYPE"

    .line 357
    .line 358
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string p3, "\n"

    .line 362
    .line 363
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string p3, "    FROM"

    .line 367
    .line 368
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string p3, "\n"

    .line 372
    .line 373
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string p3, "      sqlite_schema"

    .line 377
    .line 378
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string p3, "\n"

    .line 382
    .line 383
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string p3, "    WHERE"

    .line 387
    .line 388
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string p3, "\n"

    .line 392
    .line 393
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string p3, "      NAME LIKE \'sqlite\\_%\' ESCAPE \'\\\'"

    .line 397
    .line 398
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    const-string p3, "\n"

    .line 402
    .line 403
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string p3, "  )"

    .line 407
    .line 408
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string p3, "\n"

    .line 412
    .line 413
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string p3, " WHERE TABLE_NAME LIKE \'"

    .line 417
    .line 418
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string p1, "\' ESCAPE \'"

    .line 425
    .line 426
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->getSearchStringEscape()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const-string p1, "\'"

    .line 437
    .line 438
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    if-eqz p4, :cond_2

    .line 442
    .line 443
    array-length p1, p4

    .line 444
    if-eqz p1, :cond_2

    .line 445
    .line 446
    const-string p1, " AND TABLE_TYPE IN ("

    .line 447
    .line 448
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-static {p4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    new-instance p3, Latakplugin/atos/b0;

    .line 456
    .line 457
    invoke-direct {p3}, Latakplugin/atos/b0;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    const-string p3, ","

    .line 465
    .line 466
    invoke-static {p3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 467
    .line 468
    .line 469
    move-result-object p3

    .line 470
    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    check-cast p1, Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string p1, ")"

    .line 480
    .line 481
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    :cond_2
    const-string p1, " ORDER BY TABLE_TYPE, TABLE_NAME;"

    .line 485
    .line 486
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 490
    .line 491
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    check-cast p1, Lorg/sqlite/core/CoreStatement;

    .line 496
    .line 497
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object p2

    .line 501
    const/4 p3, 0x1

    .line 502
    invoke-virtual {p1, p2, p3}, Lorg/sqlite/core/CoreStatement;->executeQuery(Ljava/lang/String;Z)Ljava/sql/ResultSet;

    .line 503
    .line 504
    .line 505
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    .line 507
    return-object p1

    .line 508
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    throw p1
.end method

.method public getTimeDateFunctions()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DATE,TIME,DATETIME,JULIANDAY,STRFTIME"

    .line 2
    .line 3
    return-object v0
.end method

.method public getTypeInfo()Ljava/sql/ResultSet;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    iget-object v5, v0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    .line 8
    .line 9
    if-nez v5, :cond_0

    .line 10
    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v22, "SQL_DATETIME_SUB"

    .line 17
    .line 18
    const-string v23, "NUM_PREC_RADIX"

    .line 19
    .line 20
    const-string v6, "TYPE_NAME"

    .line 21
    .line 22
    const-string v7, "DATA_TYPE"

    .line 23
    .line 24
    const-string v8, "PRECISION"

    .line 25
    .line 26
    const-string v9, "LITERAL_PREFIX"

    .line 27
    .line 28
    const-string v10, "LITERAL_SUFFIX"

    .line 29
    .line 30
    const-string v11, "CREATE_PARAMS"

    .line 31
    .line 32
    const-string v12, "NULLABLE"

    .line 33
    .line 34
    const-string v13, "CASE_SENSITIVE"

    .line 35
    .line 36
    const-string v14, "SEARCHABLE"

    .line 37
    .line 38
    const-string v15, "UNSIGNED_ATTRIBUTE"

    .line 39
    .line 40
    const-string v16, "FIXED_PREC_SCALE"

    .line 41
    .line 42
    const-string v17, "AUTO_INCREMENT"

    .line 43
    .line 44
    const-string v18, "LOCAL_TYPE_NAME"

    .line 45
    .line 46
    const-string v19, "MINIMUM_SCALE"

    .line 47
    .line 48
    const-string v20, "MAXIMUM_SCALE"

    .line 49
    .line 50
    const-string v21, "SQL_DATA_TYPE"

    .line 51
    .line 52
    filled-new-array/range {v6 .. v23}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    const/16 v7, 0x7d4

    .line 61
    .line 62
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v14

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v16

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v17

    .line 86
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v18

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v19

    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v21

    .line 98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v22

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v23

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v24

    .line 110
    const/16 v7, 0xa

    .line 111
    .line 112
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v25

    .line 116
    const-string v8, "BLOB"

    .line 117
    .line 118
    const/4 v11, 0x0

    .line 119
    const/4 v12, 0x0

    .line 120
    const/4 v13, 0x0

    .line 121
    const/16 v20, 0x0

    .line 122
    .line 123
    filled-new-array/range {v8 .. v25}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v15

    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v16

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v17

    .line 151
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v18

    .line 155
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v19

    .line 159
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v20

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v22

    .line 167
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v23

    .line 171
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v24

    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v25

    .line 179
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v26

    .line 183
    const-string v9, "INTEGER"

    .line 184
    .line 185
    const/4 v14, 0x0

    .line 186
    const/16 v21, 0x0

    .line 187
    .line 188
    filled-new-array/range {v9 .. v26}, [Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v12

    .line 204
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v16

    .line 208
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v17

    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v18

    .line 216
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 217
    .line 218
    .line 219
    move-result-object v19

    .line 220
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v20

    .line 224
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v21

    .line 228
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v23

    .line 232
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    .line 234
    .line 235
    move-result-object v24

    .line 236
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v25

    .line 240
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v26

    .line 244
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v27

    .line 248
    const-string v10, "NULL"

    .line 249
    .line 250
    const/4 v15, 0x0

    .line 251
    const/16 v22, 0x0

    .line 252
    .line 253
    filled-new-array/range {v10 .. v27}, [Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    const/4 v11, 0x7

    .line 262
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v13

    .line 266
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v14

    .line 270
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v18

    .line 274
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v19

    .line 278
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v20

    .line 282
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v21

    .line 286
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v22

    .line 290
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 291
    .line 292
    .line 293
    move-result-object v23

    .line 294
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v25

    .line 298
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v26

    .line 302
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v27

    .line 306
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v28

    .line 310
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v29

    .line 314
    const-string v12, "REAL"

    .line 315
    .line 316
    const/16 v16, 0x0

    .line 317
    .line 318
    const/16 v17, 0x0

    .line 319
    .line 320
    const/16 v24, 0x0

    .line 321
    .line 322
    filled-new-array/range {v12 .. v29}, [Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v11

    .line 330
    const/16 v12, 0xc

    .line 331
    .line 332
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    move-result-object v14

    .line 336
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v15

    .line 340
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v19

    .line 344
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v20

    .line 348
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    .line 350
    .line 351
    move-result-object v21

    .line 352
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object v22

    .line 356
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v23

    .line 360
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object v24

    .line 364
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v26

    .line 368
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v27

    .line 372
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 373
    .line 374
    .line 375
    move-result-object v28

    .line 376
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v29

    .line 380
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v30

    .line 384
    const-string v13, "TEXT"

    .line 385
    .line 386
    const/16 v18, 0x0

    .line 387
    .line 388
    const/16 v25, 0x0

    .line 389
    .line 390
    filled-new-array/range {v13 .. v30}, [Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v7

    .line 394
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 395
    .line 396
    .line 397
    move-result-object v7

    .line 398
    const/4 v12, 0x5

    .line 399
    new-array v12, v12, [Ljava/util/List;

    .line 400
    .line 401
    aput-object v8, v12, v4

    .line 402
    .line 403
    aput-object v9, v12, v3

    .line 404
    .line 405
    const/4 v3, 0x2

    .line 406
    aput-object v10, v12, v3

    .line 407
    .line 408
    aput-object v11, v12, v2

    .line 409
    .line 410
    aput-object v7, v12, v1

    .line 411
    .line 412
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-static {v6, v1}, Lorg/sqlite/util/QueryUtils;->valuesQuery(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v1, " order by DATA_TYPE"

    .line 424
    .line 425
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    iget-object v2, v0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 433
    .line 434
    invoke-interface {v2, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    iput-object v1, v0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    .line 439
    .line 440
    :cond_0
    iget-object v1, v0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    .line 441
    .line 442
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->clearParameters()V

    .line 443
    .line 444
    .line 445
    iget-object v1, v0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    .line 446
    .line 447
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    return-object v1
.end method

.method public getUDTs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    const-string p2, "select  null as TYPE_CAT, null as TYPE_SCHEM, null as TYPE_NAME,  null as CLASS_NAME,  null as DATA_TYPE, null as REMARKS, null as BASE_TYPE limit 0;"

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->clearParameters()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getVersionColumns:Ljava/sql/PreparedStatement;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 6
    .line 7
    const-string p2, "select null as SCOPE, null as COLUMN_NAME, null as DATA_TYPE, null as TYPE_NAME, null as COLUMN_SIZE, null as BUFFER_LENGTH, null as DECIMAL_DIGITS, null as PSEUDO_COLUMN limit 0;"

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getVersionColumns:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getVersionColumns:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public insertsAreDetected(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCatalogAtStart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/sql/Connection;->isReadOnly()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public locatorsUpdateCopy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nullPlusNonNullIsNull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nullsAreSortedAtEnd()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->nullsAreSortedAtStart()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public nullsAreSortedAtStart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nullsAreSortedHigh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nullsAreSortedLow()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->nullsAreSortedHigh()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public othersDeletesAreVisible(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public othersInsertsAreVisible(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public othersUpdatesAreVisible(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ownDeletesAreVisible(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ownInsertsAreVisible(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public ownUpdatesAreVisible(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public storesLowerCaseIdentifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public storesLowerCaseQuotedIdentifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public storesMixedCaseIdentifiers()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public storesMixedCaseQuotedIdentifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public storesUpperCaseIdentifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public storesUpperCaseQuotedIdentifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92EntryLevelSQL()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92FullSQL()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92IntermediateSQL()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithAddColumn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithDropColumn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsBatchUpdates()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInDataManipulation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInIndexDefinitions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInPrivilegeDefinitions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInProcedureCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInTableDefinitions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsColumnAliasing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public supportsConvert(II)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public supportsCoreSQLGrammar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCorrelatedSubqueries()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsDataDefinitionAndDataManipulationTransactions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsDataManipulationTransactionsOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsDifferentTableCorrelationNames()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsExpressionsInOrderBy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsExtendedSQLGrammar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsFullOuterJoins()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnection;->libversion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "\\."

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    aget-object v2, v0, v1

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x3

    .line 21
    if-lt v2, v3, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aget-object v0, v0, v2

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/16 v3, 0x27

    .line 31
    .line 32
    if-lt v0, v3, :cond_0

    .line 33
    .line 34
    move v1, v2

    .line 35
    :cond_0
    return v1
.end method

.method public supportsGetGeneratedKeys()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupBy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByBeyondSelect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsGroupByUnrelated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsIntegrityEnhancementFacility()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsLikeEscapeClause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsLimitedOuterJoins()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMinimumSQLGrammar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMixedCaseIdentifiers()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMixedCaseQuotedIdentifiers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleOpenResults()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleResultSets()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleTransactions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsNamedParameters()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsNonNullableColumns()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOpenCursorsAcrossCommit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenCursorsAcrossRollback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossCommit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossRollback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOrderByUnrelated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOuterJoins()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsPositionedDelete()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsPositionedUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsResultSetConcurrency(II)Z
    .locals 1

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3ef

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsResultSetHoldability(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsResultSetType(I)Z
    .locals 1

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsSavepoints()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInDataManipulation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInIndexDefinitions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInPrivilegeDefinitions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInProcedureCalls()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInTableDefinitions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSelectForUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsStatementPooling()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsStoredProcedures()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSubqueriesInComparisons()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSubqueriesInExists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInIns()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInQuantifieds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsTableCorrelationNames()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportsTransactionIsolationLevel(I)Z
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsTransactions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnionAll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updatesAreDetected(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public usesLocalFilePerTable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFiles()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
