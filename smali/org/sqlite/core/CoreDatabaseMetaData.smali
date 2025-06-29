.class public abstract Lorg/sqlite/core/CoreDatabaseMetaData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/sql/DatabaseMetaData;


# static fields
.field protected static final PK_NAMED_PATTERN:Ljava/util/regex/Pattern;

.field protected static final PK_UNNAMED_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected conn:Lorg/sqlite/SQLiteConnection;

.field protected getAttributes:Ljava/sql/PreparedStatement;

.field protected getBestRowIdentifier:Ljava/sql/PreparedStatement;

.field protected getCatalogs:Ljava/sql/PreparedStatement;

.field protected getColumnPrivileges:Ljava/sql/PreparedStatement;

.field protected getColumnsTblName:Ljava/sql/PreparedStatement;

.field protected getGeneratedKeys:Ljava/sql/PreparedStatement;

.field protected getIndexInfo:Ljava/sql/PreparedStatement;

.field protected getProcedureColumns:Ljava/sql/PreparedStatement;

.field protected getProcedures:Ljava/sql/PreparedStatement;

.field protected getSchemas:Ljava/sql/PreparedStatement;

.field protected getSuperTables:Ljava/sql/PreparedStatement;

.field protected getSuperTypes:Ljava/sql/PreparedStatement;

.field protected getTablePrivileges:Ljava/sql/PreparedStatement;

.field protected getTableTypes:Ljava/sql/PreparedStatement;

.field protected getTables:Ljava/sql/PreparedStatement;

.field protected getTypeInfo:Ljava/sql/PreparedStatement;

.field protected getUDTs:Ljava/sql/PreparedStatement;

.field protected getVersionColumns:Ljava/sql/PreparedStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, ".*\\sPRIMARY\\s+KEY\\s+\\((.*?,+.*?)\\).*"

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/sqlite/core/CoreDatabaseMetaData;->PK_UNNAMED_PATTERN:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    const-string v0, ".*\\sCONSTRAINT\\s+(.*?)\\s+PRIMARY\\s+KEY\\s+\\((.*?)\\).*"

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/sqlite/core/CoreDatabaseMetaData;->PK_NAMED_PATTERN:Ljava/util/regex/Pattern;

    .line 18
    .line 19
    return-void
.end method

.method protected constructor <init>(Lorg/sqlite/SQLiteConnection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTables:Ljava/sql/PreparedStatement;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    .line 8
    .line 9
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getCatalogs:Ljava/sql/PreparedStatement;

    .line 12
    .line 13
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSchemas:Ljava/sql/PreparedStatement;

    .line 14
    .line 15
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnsTblName:Ljava/sql/PreparedStatement;

    .line 18
    .line 19
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTypes:Ljava/sql/PreparedStatement;

    .line 20
    .line 21
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTables:Ljava/sql/PreparedStatement;

    .line 22
    .line 23
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTablePrivileges:Ljava/sql/PreparedStatement;

    .line 24
    .line 25
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getIndexInfo:Ljava/sql/PreparedStatement;

    .line 26
    .line 27
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedures:Ljava/sql/PreparedStatement;

    .line 28
    .line 29
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedureColumns:Ljava/sql/PreparedStatement;

    .line 30
    .line 31
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getAttributes:Ljava/sql/PreparedStatement;

    .line 32
    .line 33
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getBestRowIdentifier:Ljava/sql/PreparedStatement;

    .line 34
    .line 35
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getVersionColumns:Ljava/sql/PreparedStatement;

    .line 36
    .line 37
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnPrivileges:Ljava/sql/PreparedStatement;

    .line 38
    .line 39
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getGeneratedKeys:Ljava/sql/PreparedStatement;

    .line 40
    .line 41
    iput-object p1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 42
    .line 43
    return-void
.end method

.method protected static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string v0, "\'%s\'"

    .line 7
    .line 8
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method protected checkOpen()V
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
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 7
    .line 8
    const-string v1, "connection closed"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public declared-synchronized close()V
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
    iget-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_1
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTables:Ljava/sql/PreparedStatement;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 32
    .line 33
    .line 34
    :cond_3
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getCatalogs:Ljava/sql/PreparedStatement;

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 39
    .line 40
    .line 41
    :cond_4
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSchemas:Ljava/sql/PreparedStatement;

    .line 42
    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 46
    .line 47
    .line 48
    :cond_5
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    .line 49
    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 53
    .line 54
    .line 55
    :cond_6
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnsTblName:Ljava/sql/PreparedStatement;

    .line 56
    .line 57
    if-eqz v1, :cond_7

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 60
    .line 61
    .line 62
    :cond_7
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTypes:Ljava/sql/PreparedStatement;

    .line 63
    .line 64
    if-eqz v1, :cond_8

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 67
    .line 68
    .line 69
    :cond_8
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTables:Ljava/sql/PreparedStatement;

    .line 70
    .line 71
    if-eqz v1, :cond_9

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 74
    .line 75
    .line 76
    :cond_9
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTablePrivileges:Ljava/sql/PreparedStatement;

    .line 77
    .line 78
    if-eqz v1, :cond_a

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 81
    .line 82
    .line 83
    :cond_a
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getIndexInfo:Ljava/sql/PreparedStatement;

    .line 84
    .line 85
    if-eqz v1, :cond_b

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 88
    .line 89
    .line 90
    :cond_b
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedures:Ljava/sql/PreparedStatement;

    .line 91
    .line 92
    if-eqz v1, :cond_c

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 95
    .line 96
    .line 97
    :cond_c
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedureColumns:Ljava/sql/PreparedStatement;

    .line 98
    .line 99
    if-eqz v1, :cond_d

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 102
    .line 103
    .line 104
    :cond_d
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getAttributes:Ljava/sql/PreparedStatement;

    .line 105
    .line 106
    if-eqz v1, :cond_e

    .line 107
    .line 108
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 109
    .line 110
    .line 111
    :cond_e
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getBestRowIdentifier:Ljava/sql/PreparedStatement;

    .line 112
    .line 113
    if-eqz v1, :cond_f

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 116
    .line 117
    .line 118
    :cond_f
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getVersionColumns:Ljava/sql/PreparedStatement;

    .line 119
    .line 120
    if-eqz v1, :cond_10

    .line 121
    .line 122
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 123
    .line 124
    .line 125
    :cond_10
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnPrivileges:Ljava/sql/PreparedStatement;

    .line 126
    .line 127
    if-eqz v1, :cond_11

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 130
    .line 131
    .line 132
    :cond_11
    iget-object v1, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getGeneratedKeys:Ljava/sql/PreparedStatement;

    .line 133
    .line 134
    if-eqz v1, :cond_12

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 137
    .line 138
    .line 139
    :cond_12
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTables:Ljava/sql/PreparedStatement;

    .line 140
    .line 141
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTableTypes:Ljava/sql/PreparedStatement;

    .line 142
    .line 143
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTypeInfo:Ljava/sql/PreparedStatement;

    .line 144
    .line 145
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getCatalogs:Ljava/sql/PreparedStatement;

    .line 146
    .line 147
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSchemas:Ljava/sql/PreparedStatement;

    .line 148
    .line 149
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getUDTs:Ljava/sql/PreparedStatement;

    .line 150
    .line 151
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnsTblName:Ljava/sql/PreparedStatement;

    .line 152
    .line 153
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTypes:Ljava/sql/PreparedStatement;

    .line 154
    .line 155
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getSuperTables:Ljava/sql/PreparedStatement;

    .line 156
    .line 157
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getTablePrivileges:Ljava/sql/PreparedStatement;

    .line 158
    .line 159
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getIndexInfo:Ljava/sql/PreparedStatement;

    .line 160
    .line 161
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedures:Ljava/sql/PreparedStatement;

    .line 162
    .line 163
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getProcedureColumns:Ljava/sql/PreparedStatement;

    .line 164
    .line 165
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getAttributes:Ljava/sql/PreparedStatement;

    .line 166
    .line 167
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getBestRowIdentifier:Ljava/sql/PreparedStatement;

    .line 168
    .line 169
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getVersionColumns:Ljava/sql/PreparedStatement;

    .line 170
    .line 171
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getColumnPrivileges:Ljava/sql/PreparedStatement;

    .line 172
    .line 173
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->getGeneratedKeys:Ljava/sql/PreparedStatement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .line 175
    :try_start_2
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 176
    .line 177
    monitor-exit p0

    .line 178
    return-void

    .line 179
    :catchall_1
    move-exception v0

    .line 180
    goto :goto_2

    .line 181
    :goto_1
    :try_start_3
    iput-object v0, p0, Lorg/sqlite/core/CoreDatabaseMetaData;->conn:Lorg/sqlite/SQLiteConnection;

    .line 182
    .line 183
    throw v1

    .line 184
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    throw v0
.end method

.method protected escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/16 v4, 0x27

    .line 18
    .line 19
    if-ne v3, v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
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

.method public abstract getGeneratedKeys()Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method
