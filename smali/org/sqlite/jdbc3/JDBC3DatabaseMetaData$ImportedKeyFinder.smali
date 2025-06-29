.class Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImportedKeyFinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;
    }
.end annotation


# instance fields
.field private final FK_NAMED_PATTERN:Ljava/util/regex/Pattern;

.field private final fkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;",
            ">;"
        }
    .end annotation
.end field

.field private final fkTableName:Ljava/lang/String;

.field final synthetic this$0:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;


# direct methods
.method public constructor <init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    iput-object v0, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->this$0:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "CONSTRAINT\\s*\"?([A-Za-z_][A-Za-z\\d_]*)?\"?\\s*FOREIGN\\s+KEY\\s*\\((.*?)\\)"

    .line 13
    .line 14
    const/16 v3, 0x22

    .line 15
    .line 16
    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iput-object v2, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->FK_NAMED_PATTERN:Ljava/util/regex/Pattern;

    .line 21
    .line 22
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v2, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkList:Ljava/util/List;

    .line 28
    .line 29
    if-eqz v1, :cond_6

    .line 30
    .line 31
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_6

    .line 40
    .line 41
    iput-object v1, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkTableName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {v9, v1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->getForeignKeyNames(Ljava/lang/String;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-static/range {p1 .. p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$500(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;)Lorg/sqlite/SQLiteConnection;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v3, "pragma foreign_key_list(\'"

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$600(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, "\')"

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v11, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 86
    .line 87
    .line 88
    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    const/4 v1, -0x1

    .line 90
    const/4 v2, 0x0

    .line 91
    move v13, v2

    .line 92
    const/4 v2, 0x0

    .line 93
    :goto_0
    :try_start_1
    invoke-interface {v12}, Ljava/sql/ResultSet;->next()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    const/4 v3, 0x1

    .line 100
    invoke-interface {v12, v3}, Ljava/sql/ResultSet;->getInt(I)I

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    const/4 v3, 0x3

    .line 105
    invoke-interface {v12, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const/4 v3, 0x4

    .line 110
    invoke-interface {v12, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v15

    .line 114
    const/4 v3, 0x5

    .line 115
    invoke-interface {v12, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    const/4 v3, 0x6

    .line 120
    invoke-interface {v12, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    const/4 v3, 0x7

    .line 125
    invoke-interface {v12, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    const/16 v3, 0x8

    .line 130
    .line 131
    invoke-interface {v12, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v16

    .line 135
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-le v3, v13, :cond_0

    .line 140
    .line 141
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Ljava/lang/String;

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    move-object v1, v0

    .line 150
    goto :goto_3

    .line 151
    :cond_0
    const/4 v3, 0x0

    .line 152
    :goto_1
    if-eq v14, v1, :cond_1

    .line 153
    .line 154
    new-instance v5, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;

    .line 155
    .line 156
    iget-object v2, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkTableName:Ljava/lang/String;

    .line 157
    .line 158
    move-object v1, v5

    .line 159
    move-object/from16 v17, v2

    .line 160
    .line 161
    move-object/from16 v2, p0

    .line 162
    .line 163
    move-object v0, v5

    .line 164
    move-object/from16 v5, v17

    .line 165
    .line 166
    move-object/from16 v17, v10

    .line 167
    .line 168
    move-object v10, v8

    .line 169
    move-object/from16 v8, v16

    .line 170
    .line 171
    invoke-direct/range {v1 .. v8}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;-><init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v9, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkList:Ljava/util/List;

    .line 175
    .line 176
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    add-int/lit8 v13, v13, 0x1

    .line 180
    .line 181
    move-object v2, v0

    .line 182
    move v1, v14

    .line 183
    goto :goto_2

    .line 184
    :cond_1
    move-object/from16 v17, v10

    .line 185
    .line 186
    move-object v10, v8

    .line 187
    :goto_2
    if-eqz v2, :cond_2

    .line 188
    .line 189
    invoke-virtual {v2, v15, v10}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->addColumnMapping(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .line 191
    .line 192
    :cond_2
    move-object/from16 v10, v17

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_3
    :try_start_2
    invoke-interface {v12}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 196
    .line 197
    .line 198
    invoke-interface {v11}, Ljava/sql/Statement;->close()V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :catchall_1
    move-exception v0

    .line 203
    move-object v1, v0

    .line 204
    goto :goto_5

    .line 205
    :goto_3
    if-eqz v12, :cond_4

    .line 206
    .line 207
    :try_start_3
    invoke-interface {v12}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :catchall_2
    move-exception v0

    .line 212
    move-object v2, v0

    .line 213
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    :cond_4
    :goto_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    :goto_5
    if-eqz v11, :cond_5

    .line 218
    .line 219
    :try_start_5
    invoke-interface {v11}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 220
    .line 221
    .line 222
    goto :goto_6

    .line 223
    :catchall_3
    move-exception v0

    .line 224
    move-object v2, v0

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    :cond_5
    :goto_6
    throw v1

    .line 229
    :cond_6
    new-instance v0, Ljava/sql/SQLException;

    .line 230
    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v3, "Invalid table name: \'"

    .line 237
    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v1, "\'"

    .line 245
    .line 246
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw v0
.end method

.method private getForeignKeyNames(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->this$0:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;

    .line 10
    .line 11
    invoke-static {v1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$700(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;)Lorg/sqlite/SQLiteConnection;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "select sql from sqlite_schema where lower(name) = lower(\'"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->this$0:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;

    .line 30
    .line 31
    invoke-static {v3, p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$800(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, "\')"

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {v1, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 48
    .line 49
    .line 50
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    iget-object v2, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->FK_NAMED_PATTERN:Ljava/util/regex/Pattern;

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    :try_start_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    .line 86
    .line 87
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    return-object v0

    .line 94
    :catchall_1
    move-exception p1

    .line 95
    goto :goto_3

    .line 96
    :goto_1
    if-eqz p1, :cond_2

    .line 97
    .line 98
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catchall_2
    move-exception p1

    .line 103
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    :goto_3
    if-eqz v1, :cond_3

    .line 108
    .line 109
    :try_start_5
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :catchall_3
    move-exception v0

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_4
    throw p1
.end method


# virtual methods
.method public getFkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFkTableName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;->fkTableName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
