.class public final Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/record/db/IAtosTrackRecordingDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosTrackRecordingDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingDatabase.kt\ncom/toughstump/atos/record/db/AtosTrackRecordingDatabase\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,410:1\n1849#2,2:411\n*S KotlinDebug\n*F\n+ 1 AtosTrackRecordingDatabase.kt\ncom/toughstump/atos/record/db/AtosTrackRecordingDatabase\n*L\n152#1:411,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DatabaseName:Ljava/lang/String; = "atos_history.sqlite"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UriDefault:Ljava/lang/String; = "jdbc:sqlite::memory:"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UriStart:Ljava/lang/String; = "jdbc:sqlite:"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private allTracksQuery:Ljava/sql/PreparedStatement;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private databaseConnection:Ljava/sql/Connection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private databaseValid:Z

.field private final dbFile:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private insertStatement:Ljava/sql/PreparedStatement;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private insertStatementUid:Ljava/sql/PreparedStatement;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->Companion:Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->dbFile:Ljava/io/File;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getConnectionUrlFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :try_start_0
    invoke-static {p1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    invoke-interface {p1, v0}, Ljava/sql/Connection;->setAutoCommit(Z)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object p1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const-string v1, "CREATE TABLE IF NOT EXISTS records (_id INTEGER PRIMARY KEY AUTOINCREMENT, uid TEXT, label TEXT, cot_type TEXT, color TEXT, time INTEGER,tag_id INTEGER,lat REAL,lon REAL,hae REAL,circular_error REAL,linear_error REAL,course REAL,speed REAL,vspeed REAL,temperature REAL,payload BLOB,CONSTRAINT UQ_record UNIQUE (uid,time) );"

    .line 40
    .line 41
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move-object p1, v0

    .line 49
    :goto_1
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z

    .line 52
    .line 53
    .line 54
    :cond_3
    if-eqz p1, :cond_4

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget-object p1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 60
    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    const-string v0, "CREATE TABLE IF NOT EXISTS uids ( _id INTEGER PRIMARY KEY, uid TEXT, CONSTRAINT UQ_uid UNIQUE (uid) );"

    .line 64
    .line 65
    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_5
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    .line 72
    .line 73
    .line 74
    :cond_6
    if-eqz v0, :cond_7

    .line 75
    .line 76
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 77
    .line 78
    .line 79
    :cond_7
    const/4 p1, 0x1

    .line 80
    iput-boolean p1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseValid:Z

    .line 81
    .line 82
    invoke-direct {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->prepareStatements()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    :goto_3
    return-void
.end method

.method private final getConnectionUrlFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "jdbc:sqlite::memory:"

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "jdbc:sqlite:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method private final getTrackRecordFromCursor(Ljava/sql/ResultSet;)Lcom/toughstump/atos/record/db/TrackRecord;
    .locals 30

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "uid"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    const-string v2, "label"

    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_1
    const-string v2, "cot_type"

    .line 23
    .line 24
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    if-nez v5, :cond_2

    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_2
    const-string v2, "time"

    .line 32
    .line 33
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v7

    .line 37
    const-string v2, "tag_id"

    .line 38
    .line 39
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    const-string v2, "lat"

    .line 44
    .line 45
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getDouble(Ljava/lang/String;)D

    .line 46
    .line 47
    .line 48
    move-result-wide v12

    .line 49
    const-string v2, "lon"

    .line 50
    .line 51
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getDouble(Ljava/lang/String;)D

    .line 52
    .line 53
    .line 54
    move-result-wide v14

    .line 55
    const-string v2, "hae"

    .line 56
    .line 57
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getDouble(Ljava/lang/String;)D

    .line 58
    .line 59
    .line 60
    move-result-wide v16

    .line 61
    const-string v2, "circular_error"

    .line 62
    .line 63
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getDouble(Ljava/lang/String;)D

    .line 64
    .line 65
    .line 66
    move-result-wide v18

    .line 67
    const-string v2, "linear_error"

    .line 68
    .line 69
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getDouble(Ljava/lang/String;)D

    .line 70
    .line 71
    .line 72
    move-result-wide v20

    .line 73
    const-string v2, "course"

    .line 74
    .line 75
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getDouble(Ljava/lang/String;)D

    .line 76
    .line 77
    .line 78
    move-result-wide v22

    .line 79
    const-string v2, "speed"

    .line 80
    .line 81
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getDouble(Ljava/lang/String;)D

    .line 82
    .line 83
    .line 84
    move-result-wide v24

    .line 85
    const-string v2, "vspeed"

    .line 86
    .line 87
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getDouble(Ljava/lang/String;)D

    .line 88
    .line 89
    .line 90
    move-result-wide v26

    .line 91
    const-string v2, "temperature"

    .line 92
    .line 93
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getDouble(Ljava/lang/String;)D

    .line 94
    .line 95
    .line 96
    move-result-wide v28

    .line 97
    const-string v2, "color"

    .line 98
    .line 99
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const-string v2, "result.getString(COLUMN_COLOR)"

    .line 104
    .line 105
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string v2, "payload"

    .line 109
    .line 110
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_3
    new-instance v1, Lcom/toughstump/atos/record/db/TrackRecord;

    .line 118
    .line 119
    move-object v2, v1

    .line 120
    new-instance v11, Lkot/KotPoint;

    .line 121
    .line 122
    move-object v10, v11

    .line 123
    invoke-direct/range {v11 .. v21}, Lkot/KotPoint;-><init>(DDDDD)V

    .line 124
    .line 125
    .line 126
    move-wide/from16 v11, v22

    .line 127
    .line 128
    move-wide/from16 v13, v24

    .line 129
    .line 130
    move-wide/from16 v15, v26

    .line 131
    .line 132
    move-wide/from16 v17, v28

    .line 133
    .line 134
    move-object/from16 v19, v0

    .line 135
    .line 136
    invoke-direct/range {v2 .. v19}, Lcom/toughstump/atos/record/db/TrackRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILkot/KotPoint;DDDD[B)V

    .line 137
    .line 138
    .line 139
    return-object v1
.end method

.method private final getTrackSummaryFromCursor(Ljava/sql/ResultSet;)Lcom/toughstump/atos/record/db/RecordingTrackSummary;
    .locals 13

    .line 1
    const-string v0, "uid"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    const-string v1, "label"

    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    const-string v1, "cot_type"

    .line 21
    .line 22
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-nez v4, :cond_2

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_2
    const-string v1, "color"

    .line 30
    .line 31
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-nez v5, :cond_3

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_3
    const-string v0, "tag_id"

    .line 39
    .line 40
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const-string v0, "min_time"

    .line 45
    .line 46
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v8

    .line 50
    const-string v0, "max_time"

    .line 51
    .line 52
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v10

    .line 56
    const-string v0, "track_count"

    .line 57
    .line 58
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const-string v0, "payload"

    .line 63
    .line 64
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getBytes(Ljava/lang/String;)[B

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "result.getBytes(COLUMN_PAYLOAD)"

    .line 69
    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 74
    .line 75
    new-instance v12, Ljava/lang/String;

    .line 76
    .line 77
    invoke-direct {v12, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Lcom/toughstump/atos/record/db/RecordingTrackSummary;

    .line 81
    .line 82
    move-object v1, p1

    .line 83
    invoke-direct/range {v1 .. v12}, Lcom/toughstump/atos/record/db/RecordingTrackSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-object p1
.end method

.method private final getTypeStatement(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SELECT * FROM records WHERE cot_type like \'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "%\' ORDER BY time ASC"

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method private final getUidCountLegacy()Ljava/lang/Integer;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v2, "SELECT COUNT(DISTINCT(uid)) as uid_count from records;"

    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v0, v1

    .line 21
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move-object v2, v1

    .line 29
    :goto_1
    if-nez v2, :cond_3

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_4

    .line 37
    .line 38
    const-string v1, "uid_count"

    .line 39
    .line 40
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_2

    .line 49
    :cond_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method private final getUidCountNew()Ljava/lang/Integer;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v2, "SELECT COUNT(uid) as uid_count FROM uids"

    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v0, v1

    .line 21
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move-object v2, v1

    .line 29
    :goto_1
    if-nez v2, :cond_3

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_4

    .line 37
    .line 38
    const-string v1, "uid_count"

    .line 39
    .line 40
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_2

    .line 49
    :cond_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method private final prepareStatements()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v2, "INSERT INTO records (uid, label, cot_type, color, time, tag_id, lat, lon, hae, circular_error, linear_error ,course, speed, vspeed, temperature, payload) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    .line 7
    .line 8
    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    iput-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v2, "INSERT INTO uids (uid) VALUES (?);"

    .line 21
    .line 22
    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v0, v1

    .line 28
    :goto_1
    iput-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatementUid:Ljava/sql/PreparedStatement;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const-string v1, "SELECT * FROM records ORDER BY time ASC"

    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_2
    iput-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->allTracksQuery:Ljava/sql/PreparedStatement;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public getAllTracks()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string v2, "SELECT * FROM records ORDER BY time ASC"

    .line 18
    .line 19
    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    iput-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->allTracksQuery:Ljava/sql/PreparedStatement;

    .line 26
    .line 27
    if-eqz v1, :cond_6

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_5

    .line 41
    .line 42
    invoke-direct {p0, v1}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getTrackRecordFromCursor(Ljava/sql/ResultSet;)Lcom/toughstump/atos/record/db/TrackRecord;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {v2}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    new-instance v4, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-virtual {v2}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ljava/util/List;

    .line 86
    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->allTracksQuery:Ljava/sql/PreparedStatement;

    .line 94
    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 98
    .line 99
    .line 100
    :cond_6
    :goto_2
    return-object v0
.end method

.method public getAllTracksByTime(JJ)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string v2, "SELECT * FROM records WHERE time BETWEEN ? AND ? ORDER BY time ASC"

    .line 18
    .line 19
    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-eqz v1, :cond_2

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-interface {v1, v2, p1, p2}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 29
    .line 30
    .line 31
    :cond_2
    if-eqz v1, :cond_3

    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    invoke-interface {v1, p1, p3, p4}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 35
    .line 36
    .line 37
    :cond_3
    if-eqz v1, :cond_8

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_7

    .line 51
    .line 52
    invoke-direct {p0, p1}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getTrackRecordFromCursor(Ljava/sql/ResultSet;)Lcom/toughstump/atos/record/db/TrackRecord;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    if-nez p2, :cond_5

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_5
    invoke-virtual {p2}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    if-eqz p3, :cond_4

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-nez p3, :cond_6

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    new-instance p4, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_6
    invoke-virtual {p2}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    check-cast p3, Ljava/util/List;

    .line 96
    .line 97
    if-eqz p3, :cond_4

    .line 98
    .line 99
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_7
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 104
    .line 105
    .line 106
    :cond_8
    :goto_2
    return-object v0
.end method

.method public getAllTracksByType(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cotType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->isValid()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getTypeStatement(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v1, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_0
    if-eqz p1, :cond_6

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_5

    .line 46
    .line 47
    invoke-direct {p0, v1}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getTrackRecordFromCursor(Ljava/sql/ResultSet;)Lcom/toughstump/atos/record/db/TrackRecord;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-virtual {v2}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-virtual {v2}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Ljava/util/List;

    .line 91
    .line 92
    if-eqz v3, :cond_2

    .line 93
    .line 94
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    .line 99
    .line 100
    .line 101
    :cond_6
    :goto_2
    return-object v0
.end method

.method public getAllTracksByUid(Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "trackUid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->isValid()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    const-string v2, "SELECT * FROM records WHERE uid = ? ORDER BY time ASC"

    .line 23
    .line 24
    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_0
    if-eqz v1, :cond_2

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    if-eqz v1, :cond_6

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_5

    .line 50
    .line 51
    invoke-direct {p0, p1}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getTrackRecordFromCursor(Ljava/sql/ResultSet;)Lcom/toughstump/atos/record/db/TrackRecord;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    invoke-virtual {v2}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_5
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 69
    .line 70
    .line 71
    :cond_6
    :goto_2
    return-object v0
.end method

.method public getAllTracksCollection()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "SELECT * FROM records ORDER BY time ASC"

    .line 11
    .line 12
    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    iput-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->allTracksQuery:Ljava/sql/PreparedStatement;

    .line 19
    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-direct {p0, v1}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getTrackRecordFromCursor(Ljava/sql/ResultSet;)Lcom/toughstump/atos/record/db/TrackRecord;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->allTracksQuery:Ljava/sql/PreparedStatement;

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 51
    .line 52
    .line 53
    :cond_4
    :goto_2
    return-object v0
.end method

.method public getAllTracksInBounds(Lcom/toughstump/atos/record/geo/GeoBounds;)Ljava/util/Map;
    .locals 1
    .param p1    # Lcom/toughstump/atos/record/geo/GeoBounds;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/toughstump/atos/record/geo/GeoBounds;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "geoBounds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public final getDbFile()Ljava/io/File;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->dbFile:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxTimeMillis()Ljava/lang/Long;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v2, "SELECT time as max_time FROM records ORDER BY _id DESC LIMIT 1;"

    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v0, v1

    .line 21
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move-object v2, v1

    .line 29
    :goto_1
    if-nez v2, :cond_3

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_4

    .line 37
    .line 38
    const-string v1, "max_time"

    .line 39
    .line 40
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_2

    .line 49
    :cond_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method public final getMinTimeMillis()Ljava/lang/Long;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v2, "SELECT time as min_time FROM records ORDER BY _id ASC LIMIT 1;"

    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v0, v1

    .line 21
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move-object v2, v1

    .line 29
    :goto_1
    if-nez v2, :cond_3

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_4

    .line 37
    .line 38
    const-string v1, "min_time"

    .line 39
    .line 40
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getLong(Ljava/lang/String;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_2

    .line 49
    :cond_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method public getSummary()Lcom/toughstump/atos/record/db/RecordingSummary;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getMaxTimeMillis()Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v6

    .line 12
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getMinTimeMillis()Ljava/lang/Long;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getTrackCount()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getUidCount()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    new-instance v0, Lcom/toughstump/atos/record/db/RecordingSummary;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->dbFile:Ljava/io/File;

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-static {v2}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    :cond_0
    move-object v9, v1

    .line 53
    move-object v2, v0

    .line 54
    invoke-direct/range {v2 .. v9}, Lcom/toughstump/atos/record/db/RecordingSummary;-><init>(IJJILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_1
    return-object v1
.end method

.method public final getTrackCount()Ljava/lang/Integer;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v2, "SELECT _id as track_count FROM records ORDER BY _id DESC LIMIT 1;"

    .line 14
    .line 15
    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v0, v1

    .line 21
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    move-object v2, v1

    .line 29
    :goto_1
    if-nez v2, :cond_3

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_4

    .line 37
    .line 38
    const-string v1, "track_count"

    .line 39
    .line 40
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_2

    .line 49
    :cond_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method public getTrackSummaries()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/record/db/RecordingTrackSummary;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->isValid()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string v2, "SELECT uid, label, cot_type, color, tag_id, payload, MIN(time) as min_time, MAX(time) as max_time,COUNT(uid) as track_count FROM records GROUP BY uid ORDER BY tag_id ASC"

    .line 18
    .line 19
    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-eqz v1, :cond_5

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    invoke-direct {p0, v2}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getTrackSummaryFromCursor(Ljava/sql/ResultSet;)Lcom/toughstump/atos/record/db/RecordingTrackSummary;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-virtual {v3}, Lcom/toughstump/atos/record/db/RecordingTrackSummary;->getUid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/toughstump/atos/record/db/RecordingTrackSummary;->getUid()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 62
    .line 63
    .line 64
    :cond_5
    :goto_2
    return-object v0
.end method

.method public final getUidCount()Ljava/lang/Integer;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getUidCountNew()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :catch_0
    const-string v0, "new way of doing uid count didn\'t work"

    .line 15
    .line 16
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->getUidCountLegacy()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseValid:Z

    .line 2
    .line 3
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public record(Lcom/toughstump/atos/record/db/TrackRecord;)V
    .locals 5
    .param p1    # Lcom/toughstump/atos/record/db/TrackRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "trackRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getLabel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getCotType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getColor()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x5

    invoke-interface {v0, v4, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getTagId()I

    move-result v2

    const/4 v3, 0x6

    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    move-result-object v2

    invoke-virtual {v2}, Lkot/KotPoint;->getLatitude()D

    move-result-wide v2

    const/4 v4, 0x7

    invoke-interface {v0, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 8
    :cond_6
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    move-result-object v2

    invoke-virtual {v2}, Lkot/KotPoint;->getLongitude()D

    move-result-wide v2

    const/16 v4, 0x8

    invoke-interface {v0, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 9
    :cond_7
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    move-result-object v2

    invoke-virtual {v2}, Lkot/KotPoint;->getAltitude()D

    move-result-wide v2

    const/16 v4, 0x9

    invoke-interface {v0, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 10
    :cond_8
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    move-result-object v2

    invoke-virtual {v2}, Lkot/KotPoint;->getCircularError()D

    move-result-wide v2

    const/16 v4, 0xa

    invoke-interface {v0, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 11
    :cond_9
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    move-result-object v2

    invoke-virtual {v2}, Lkot/KotPoint;->getLinearError()D

    move-result-wide v2

    const/16 v4, 0xb

    invoke-interface {v0, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 12
    :cond_a
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getHeadingDegTrue()D

    move-result-wide v2

    const/16 v4, 0xc

    invoke-interface {v0, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 13
    :cond_b
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getSpeedMps()D

    move-result-wide v2

    const/16 v4, 0xd

    invoke-interface {v0, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 14
    :cond_c
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getVerticalSpeedMps()D

    move-result-wide v2

    const/16 v4, 0xe

    invoke-interface {v0, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 15
    :cond_d
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getTemperatureDegC()D

    move-result-wide v2

    const/16 v4, 0xf

    invoke-interface {v0, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 16
    :cond_e
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getPayload()[B

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {v0, v3, v2}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 17
    :cond_f
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    .line 18
    :cond_10
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatementUid:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 19
    :cond_11
    iget-object p1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatementUid:Ljava/sql/PreparedStatement;

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 20
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error during recording: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_12
    :goto_2
    return-void
.end method

.method public record(Ljava/util/Collection;)V
    .locals 5
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trackRecords"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    if-eqz v0, :cond_0

    const-string v1, "INSERT INTO records (uid, label, cot_type, color, time, tag_id, lat, lon, hae, circular_error, linear_error ,course, speed, vspeed, temperature, payload) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    .line 22
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/toughstump/atos/record/db/TrackRecord;

    .line 23
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 24
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getLabel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 25
    :cond_3
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getCotType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 26
    :cond_4
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getColor()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 27
    :cond_5
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x5

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 28
    :cond_6
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getTagId()I

    move-result v2

    const/4 v3, 0x6

    invoke-interface {v1, v3, v2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 29
    :cond_7
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    move-result-object v2

    invoke-virtual {v2}, Lkot/KotPoint;->getLatitude()D

    move-result-wide v2

    const/4 v4, 0x7

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 30
    :cond_8
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    move-result-object v2

    invoke-virtual {v2}, Lkot/KotPoint;->getLongitude()D

    move-result-wide v2

    const/16 v4, 0x8

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 31
    :cond_9
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    move-result-object v2

    invoke-virtual {v2}, Lkot/KotPoint;->getAltitude()D

    move-result-wide v2

    const/16 v4, 0x9

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 32
    :cond_a
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    move-result-object v2

    invoke-virtual {v2}, Lkot/KotPoint;->getCircularError()D

    move-result-wide v2

    const/16 v4, 0xa

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 33
    :cond_b
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getLocation()Lkot/KotPoint;

    move-result-object v2

    invoke-virtual {v2}, Lkot/KotPoint;->getLinearError()D

    move-result-wide v2

    const/16 v4, 0xb

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 34
    :cond_c
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getHeadingDegTrue()D

    move-result-wide v2

    const/16 v4, 0xc

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 35
    :cond_d
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getSpeedMps()D

    move-result-wide v2

    const/16 v4, 0xd

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 36
    :cond_e
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getVerticalSpeedMps()D

    move-result-wide v2

    const/16 v4, 0xe

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 37
    :cond_f
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getTemperatureDegC()D

    move-result-wide v2

    const/16 v4, 0xf

    invoke-interface {v1, v4, v2, v3}, Ljava/sql/PreparedStatement;->setDouble(ID)V

    .line 38
    :cond_10
    iget-object v1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/TrackRecord;->getPayload()[B

    move-result-object v0

    const/16 v2, 0x10

    invoke-interface {v1, v2, v0}, Ljava/sql/PreparedStatement;->setBytes(I[B)V

    .line 39
    :cond_11
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->addBatch()V

    goto/16 :goto_1

    .line 40
    :cond_12
    iget-object p1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/sql/Statement;->executeBatch()[I

    .line 41
    :cond_13
    iget-object p1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/sql/Connection;->commit()V

    .line 42
    :cond_14
    iget-object p1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->insertStatement:Ljava/sql/PreparedStatement;

    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/sql/Statement;->clearBatch()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 43
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_15
    :goto_4
    return-void
.end method

.method public recordExists(Lcom/toughstump/atos/record/db/TrackRecord;)Z
    .locals 4
    .param p1    # Lcom/toughstump/atos/record/db/TrackRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "trackRecord"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "SELECT * FROM records WHERE uid = ? AND time = ?"

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getUid()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-virtual {p1}, Lcom/toughstump/atos/record/db/TrackRecord;->getTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-interface {v0, v1, v2, v3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 36
    .line 37
    .line 38
    :cond_2
    if-eqz v0, :cond_4

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->isBeforeFirst()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 52
    .line 53
    .line 54
    return p1

    .line 55
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 56
    return p1
.end method

.method public setValid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/toughstump/atos/record/db/AtosTrackRecordingDatabase;->databaseValid:Z

    .line 2
    .line 3
    return-void
.end method
