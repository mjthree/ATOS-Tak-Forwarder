.class Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrimaryKeyFinder"
.end annotation


# instance fields
.field pkColumns:[Ljava/lang/String;

.field pkName:Ljava/lang/String;

.field table:Ljava/lang/String;

.field final synthetic this$0:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;


# direct methods
.method public constructor <init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->this$0:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkName:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->table:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "sqlite_schema"

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_c

    .line 20
    .line 21
    const-string v0, "sqlite_master"

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto/16 :goto_a

    .line 30
    .line 31
    :cond_0
    const-string v0, "\'"

    .line 32
    .line 33
    if-eqz p2, :cond_b

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_b

    .line 44
    .line 45
    invoke-static {p1}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$000(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;)Lorg/sqlite/SQLiteConnection;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "select sql from sqlite_schema where lower(name) = lower(\'"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$100(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, "\') and type in (\'table\', \'view\')"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 80
    .line 81
    .line 82
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 83
    :try_start_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_8

    .line 88
    .line 89
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->PK_NAMED_PATTERN:Ljava/util/regex/Pattern;

    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 101
    .line 102
    .line 103
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    const-string v5, ","

    .line 105
    .line 106
    const/4 v6, 0x2

    .line 107
    if-eqz v4, :cond_1

    .line 108
    .line 109
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {p1, v3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$200(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {p1, v3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$300(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iput-object v3, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkName:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    goto/16 :goto_6

    .line 136
    .line 137
    :cond_1
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->PK_UNNAMED_PATTERN:Ljava/util/regex/Pattern;

    .line 138
    .line 139
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_2

    .line 152
    .line 153
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    .line 162
    .line 163
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    .line 164
    .line 165
    if-nez v0, :cond_6

    .line 166
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v3, "pragma table_info(\'"

    .line 173
    .line 174
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-static {p1, p2}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$400(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string p2, "\');"

    .line 185
    .line 186
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-interface {v1, p2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    .line 194
    .line 195
    .line 196
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    :cond_3
    :goto_1
    :try_start_3
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_4

    .line 202
    .line 203
    const/4 v0, 0x6

    .line 204
    invoke-interface {p2, v0}, Ljava/sql/ResultSet;->getBoolean(I)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_3

    .line 209
    .line 210
    invoke-interface {p2, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    filled-new-array {v0}, [Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    iput-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :catchall_1
    move-exception p1

    .line 222
    goto :goto_2

    .line 223
    :cond_4
    :try_start_4
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :goto_2
    if-eqz p2, :cond_5

    .line 228
    .line 229
    :try_start_5
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :catchall_2
    move-exception p2

    .line 234
    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    :cond_5
    :goto_3
    throw p1

    .line 238
    :cond_6
    :goto_4
    iget-object p2, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    .line 239
    .line 240
    if-eqz p2, :cond_7

    .line 241
    .line 242
    const/4 p2, 0x0

    .line 243
    :goto_5
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    .line 244
    .line 245
    array-length v3, v0

    .line 246
    if-ge p2, v3, :cond_7

    .line 247
    .line 248
    aget-object v3, v0, p2

    .line 249
    .line 250
    invoke-static {p1, v3}, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;->access$300(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    aput-object v3, v0, p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 255
    .line 256
    add-int/lit8 p2, p2, 0x1

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_7
    :try_start_7
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 260
    .line 261
    .line 262
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :catchall_3
    move-exception p1

    .line 267
    goto :goto_8

    .line 268
    :cond_8
    :try_start_8
    new-instance p1, Ljava/sql/SQLException;

    .line 269
    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v4, "Table not found: \'"

    .line 276
    .line 277
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 294
    :goto_6
    if-eqz v2, :cond_9

    .line 295
    .line 296
    :try_start_9
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 297
    .line 298
    .line 299
    goto :goto_7

    .line 300
    :catchall_4
    move-exception p2

    .line 301
    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 302
    .line 303
    .line 304
    :cond_9
    :goto_7
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 305
    :goto_8
    if-eqz v1, :cond_a

    .line 306
    .line 307
    :try_start_b
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 308
    .line 309
    .line 310
    goto :goto_9

    .line 311
    :catchall_5
    move-exception p2

    .line 312
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    :cond_a
    :goto_9
    throw p1

    .line 316
    :cond_b
    new-instance p1, Ljava/sql/SQLException;

    .line 317
    .line 318
    new-instance p2, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    const-string v1, "Invalid table name: \'"

    .line 324
    .line 325
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->table:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p2

    .line 340
    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw p1

    .line 344
    :cond_c
    :goto_a
    return-void
.end method


# virtual methods
.method public getColumns()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkColumns:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$PrimaryKeyFinder;->pkName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
