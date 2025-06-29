.class public abstract Lorg/sqlite/SQLiteConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/sql/Connection;


# static fields
.field private static final RESOURCE_NAME_PREFIX:Ljava/lang/String; = ":resource:"


# instance fields
.field private final connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

.field private currentTransactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

.field private final db:Lorg/sqlite/core/DB;

.field private firstStatementExecuted:Z

.field private meta:Lorg/sqlite/core/CoreDatabaseMetaData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/sqlite/SQLiteConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/sqlite/SQLiteConnection;->meta:Lorg/sqlite/core/CoreDatabaseMetaData;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lorg/sqlite/SQLiteConnection;->firstStatementExecuted:Z

    .line 10
    :try_start_0
    invoke-static {p1, p2, p3}, Lorg/sqlite/SQLiteConnection;->open(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Lorg/sqlite/core/DB;

    move-result-object v0

    iput-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 11
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    move-result-object p1

    .line 12
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/sqlite/SQLiteConfig;->newConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p2

    iput-object p2, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 13
    invoke-virtual {p1, p0}, Lorg/sqlite/SQLiteConfig;->apply(Ljava/sql/Connection;)V

    .line 14
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig;->getTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/SQLiteConnection;->currentTransactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 15
    iput-boolean v1, p0, Lorg/sqlite/SQLiteConnection;->firstStatementExecuted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    .line 16
    :try_start_1
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 18
    :cond_0
    :goto_0
    throw p1
.end method

.method public constructor <init>(Lorg/sqlite/core/DB;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/sqlite/SQLiteConnection;->meta:Lorg/sqlite/core/CoreDatabaseMetaData;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/sqlite/SQLiteConnection;->firstStatementExecuted:Z

    .line 4
    iput-object p1, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 5
    invoke-virtual {p1}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConfig;->newConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    iput-object p1, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    return-void
.end method

.method protected static extractPragmasFromFilename(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x3f

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    add-int/2addr v1, v4

    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v1, "&"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    move v1, v3

    .line 37
    move v5, v1

    .line 38
    :goto_0
    array-length v6, p1

    .line 39
    if-ge v1, v6, :cond_7

    .line 40
    .line 41
    array-length v6, p1

    .line 42
    sub-int/2addr v6, v4

    .line 43
    sub-int/2addr v6, v1

    .line 44
    aget-object v6, p1, v6

    .line 45
    .line 46
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    const-string v7, "="

    .line 58
    .line 59
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    aget-object v8, v7, v3

    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    sget-object v9, Lorg/sqlite/SQLiteConfig;->pragmaSet:Ljava/util/Set;

    .line 74
    .line 75
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_4

    .line 80
    .line 81
    array-length v6, v7

    .line 82
    if-eq v6, v4, :cond_3

    .line 83
    .line 84
    aget-object v6, v7, v4

    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-nez v7, :cond_6

    .line 95
    .line 96
    invoke-virtual {p2, v8}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_2

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {p2, v8, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    new-instance p1, Ljava/sql/SQLException;

    .line 108
    .line 109
    const-string p2, "Please specify a value for PRAGMA %s in URL %s"

    .line 110
    .line 111
    filled-new-array {v8, p0}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-direct {p1, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1

    .line 123
    :cond_4
    if-nez v5, :cond_5

    .line 124
    .line 125
    move v7, v0

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    const/16 v7, 0x26

    .line 128
    .line 129
    :goto_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    add-int/lit8 v5, v5, 0x1

    .line 136
    .line 137
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0
.end method

.method private static extractResource(Ljava/net/URL;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "file"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v0, Ljava/io/IOException;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 35
    .line 36
    const-string v1, "java.io.tmpdir"

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0}, Ljava/net/URL;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "sqlite-jdbc-tmp-%d.db"

    .line 62
    .line 63
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v2, Ljava/io/File;

    .line 68
    .line 69
    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    cmp-long v0, v0, v3

    .line 91
    .line 92
    if-gez v0, :cond_1

    .line 93
    .line 94
    return-object v2

    .line 95
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v1, "failed to remove existing DB file: "

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p0

    .line 129
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    :try_start_1
    invoke-static {v2}, Latakplugin/atos/B1;->a(Ljava/io/File;)Ljava/nio/file/Path;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const/4 v3, 0x1

    .line 146
    new-array v3, v3, [Ljava/nio/file/CopyOption;

    .line 147
    .line 148
    invoke-static {}, Latak/core/Kb;->a()Ljava/nio/file/StandardCopyOption;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    aput-object v4, v3, v0

    .line 153
    .line 154
    invoke-static {p0, v1, v3}, Latakplugin/atos/C1;->a(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    .line 157
    if-eqz p0, :cond_4

    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 160
    .line 161
    .line 162
    :cond_4
    return-object v2

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    if-eqz p0, :cond_5

    .line 165
    .line 166
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :catchall_1
    move-exception p0

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    :cond_5
    :goto_1
    throw v0
.end method

.method private static open(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Lorg/sqlite/core/DB;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Properties;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, v0}, Lorg/sqlite/SQLiteConnection;->extractPragmasFromFilename(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance p2, Lorg/sqlite/SQLiteConfig;

    .line 14
    .line 15
    invoke-direct {p2, v0}, Lorg/sqlite/SQLiteConfig;-><init>(Ljava/util/Properties;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_5

    .line 23
    .line 24
    const-string v0, ":memory:"

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_5

    .line 31
    .line 32
    const-string v0, "file:"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_5

    .line 39
    .line 40
    const-string v0, "mode=memory"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_5

    .line 47
    .line 48
    const-string v0, ":resource:"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    const/16 v0, 0xa

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 77
    .line 78
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception p0

    .line 83
    new-instance p2, Ljava/sql/SQLException;

    .line 84
    .line 85
    const-string v0, "resource %s not found: %s"

    .line 86
    .line 87
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-direct {p2, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p2

    .line 99
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v0}, Lorg/sqlite/SQLiteConnection;->extractResource(Ljava/net/URL;)Ljava/io/File;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :catch_1
    move-exception p0

    .line 110
    new-instance p2, Ljava/sql/SQLException;

    .line 111
    .line 112
    const-string v0, "failed to load %s: %s"

    .line 113
    .line 114
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-direct {p2, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p2

    .line 126
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 127
    .line 128
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-nez v2, :cond_3

    .line 146
    .line 147
    move-object p0, v1

    .line 148
    :goto_1
    if-eqz v1, :cond_2

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-nez p2, :cond_2

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    move-object v3, v1

    .line 161
    move-object v1, p0

    .line 162
    move-object p0, v3

    .line 163
    goto :goto_1

    .line 164
    :cond_2
    new-instance p2, Ljava/sql/SQLException;

    .line 165
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v1, "path to \'"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p1, "\': \'"

    .line 180
    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string p0, "\' does not exist"

    .line 188
    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-direct {p2, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p2

    .line 200
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_4

    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_4

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :catch_2
    move-exception p0

    .line 217
    goto :goto_3

    .line 218
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    goto :goto_4

    .line 223
    :goto_3
    new-instance p2, Ljava/sql/SQLException;

    .line 224
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v1, "opening db: \'"

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string p1, "\': "

    .line 239
    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    invoke-direct {p2, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    throw p2

    .line 258
    :cond_5
    :goto_4
    :try_start_3
    invoke-static {}, Lorg/sqlite/core/NativeDB;->load()Z

    .line 259
    .line 260
    .line 261
    new-instance v0, Lorg/sqlite/core/NativeDB;

    .line 262
    .line 263
    invoke-direct {v0, p0, p1, p2}, Lorg/sqlite/core/NativeDB;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/sqlite/SQLiteConfig;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 264
    .line 265
    .line 266
    invoke-virtual {p2}, Lorg/sqlite/SQLiteConfig;->getOpenModeFlags()I

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    invoke-virtual {v0, p1, p0}, Lorg/sqlite/core/DB;->open(Ljava/lang/String;I)V

    .line 271
    .line 272
    .line 273
    return-object v0

    .line 274
    :catch_3
    move-exception p0

    .line 275
    new-instance p1, Ljava/sql/SQLException;

    .line 276
    .line 277
    const-string p2, "Error opening connection"

    .line 278
    .line 279
    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 283
    .line 284
    .line 285
    throw p1
.end method


# virtual methods
.method public abort(Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public addCommitListener(Lorg/sqlite/SQLiteCommitListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/core/DB;->addCommitListener(Lorg/sqlite/SQLiteCommitListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addUpdateListener(Lorg/sqlite/SQLiteUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/core/DB;->addUpdateListener(Lorg/sqlite/SQLiteUpdateListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected checkCursor(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x3eb

    .line 2
    .line 3
    if-ne p1, v0, :cond_2

    .line 4
    .line 5
    const/16 p1, 0x3ef

    .line 6
    .line 7
    if-ne p2, p1, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    if-ne p3, p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    .line 14
    .line 15
    const-string p2, "SQLite only supports closing cursors at commit"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    .line 22
    .line 23
    const-string p2, "SQLite only supports CONCUR_READ_ONLY cursors"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_2
    new-instance p1, Ljava/sql/SQLException;

    .line 30
    .line 31
    const-string p2, "SQLite only supports TYPE_FORWARD_ONLY cursors"

    .line 32
    .line 33
    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method protected checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 9
    .line 10
    const-string v1, "database connection closed"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->isClosed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->meta:Lorg/sqlite/core/CoreDatabaseMetaData;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/sqlite/core/CoreDatabaseMetaData;->close()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->close()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->isAutoCommit()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 13
    .line 14
    const-string v1, "commit;"

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->transactionPrefix()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/sqlite/SQLiteConnection;->firstStatementExecuted:Z

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lorg/sqlite/SQLiteConnection;->setCurrentTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 52
    .line 53
    const-string v1, "database in auto-commit mode"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public getAutoCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->isAutoCommit()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getBusyTimeout()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConfig;->getBusyTimeout()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->currentTransactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDatabase()Lorg/sqlite/core/DB;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLimit(Lorg/sqlite/SQLiteLimits;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/sqlite/SQLiteLimits;->getId()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-virtual {v0, p1, v1}, Lorg/sqlite/core/DB;->limit(II)I

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getMetaData()Ljava/sql/DatabaseMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getSQLiteDatabaseMetaData()Lorg/sqlite/core/CoreDatabaseMetaData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getNetworkTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getSQLiteDatabaseMetaData()Lorg/sqlite/core/CoreDatabaseMetaData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->meta:Lorg/sqlite/core/CoreDatabaseMetaData;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lorg/sqlite/jdbc4/JDBC4DatabaseMetaData;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lorg/sqlite/jdbc4/JDBC4DatabaseMetaData;-><init>(Lorg/sqlite/SQLiteConnection;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lorg/sqlite/SQLiteConnection;->meta:Lorg/sqlite/core/CoreDatabaseMetaData;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->meta:Lorg/sqlite/core/CoreDatabaseMetaData;

    .line 16
    .line 17
    return-object v0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransactionIsolation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getTransactionIsolation()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->getUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isFirstStatementExecuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/sqlite/SQLiteConnection;->firstStatementExecuted:Z

    .line 2
    .line 3
    return v0
.end method

.method public libversion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->libversion()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public removeCommitListener(Lorg/sqlite/SQLiteCommitListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/core/DB;->removeCommitListener(Lorg/sqlite/SQLiteCommitListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public removeUpdateListener(Lorg/sqlite/SQLiteUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/core/DB;->removeUpdateListener(Lorg/sqlite/SQLiteUpdateListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public rollback()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->isAutoCommit()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 13
    .line 14
    const-string v1, "rollback;"

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->transactionPrefix()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/sqlite/SQLiteConnection;->firstStatementExecuted:Z

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lorg/sqlite/SQLiteConnection;->setCurrentTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 52
    .line 53
    const-string v1, "database in auto-commit mode"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public setAutoCommit(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->isAutoCommit()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setAutoCommit(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->isAutoCommit()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 29
    .line 30
    const-string v1, "commit;"

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lorg/sqlite/SQLiteConnection;->currentTransactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 40
    .line 41
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->transactionPrefix()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1, p1}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnectionConfig;->getTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lorg/sqlite/SQLiteConnection;->currentTransactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public setBusyTimeout(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/core/DB;->getConfig()Lorg/sqlite/SQLiteConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConfig;->setBusyTimeout(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lorg/sqlite/core/DB;->busy_timeout(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setCurrentTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/sqlite/SQLiteConnection;->currentTransactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 2
    .line 3
    return-void
.end method

.method public setFirstStatementExecuted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/sqlite/SQLiteConnection;->firstStatementExecuted:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLimit(Lorg/sqlite/SQLiteLimits;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->db:Lorg/sqlite/core/DB;

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/sqlite/SQLiteLimits;->getId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {v0, p1, p2}, Lorg/sqlite/core/DB;->limit(II)I

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->checkOpen()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eq p1, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Unsupported transaction isolation level: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ". Must be one of TRANSACTION_READ_UNCOMMITTED, TRANSACTION_READ_COMMITTED, TRANSACTION_REPEATABLE_READ, or TRANSACTION_SERIALIZABLE in java.sql.Connection"

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "PRAGMA read_uncommitted = false;"

    .line 51
    .line 52
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getDatabase()Lorg/sqlite/core/DB;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "PRAGMA read_uncommitted = true;"

    .line 65
    .line 66
    invoke-virtual {p0}, Lorg/sqlite/SQLiteConnection;->getAutoCommit()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/sqlite/core/DB;->exec(Ljava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    :goto_1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setTransactionIsolation(I)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method protected setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected transactionPrefix()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnection;->connectionConfig:Lorg/sqlite/SQLiteConnectionConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->transactionPrefix()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
