.class public final Lcom/toughstump/atos/record/db/IAtosTrackRecordingDatabase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/record/db/IAtosTrackRecordingDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/toughstump/atos/record/db/IAtosTrackRecordingDatabase$Companion;

.field public static final COLUMN_CIRCULAR_ERROR:Ljava/lang/String; = "circular_error"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_COLOR:Ljava/lang/String; = "color"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_COURSE:Ljava/lang/String; = "course"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_HAE:Ljava/lang/String; = "hae"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_LABEL:Ljava/lang/String; = "label"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_LAT:Ljava/lang/String; = "lat"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_LINEAR_ERROR:Ljava/lang/String; = "linear_error"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_LON:Ljava/lang/String; = "lon"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_PAYLOAD:Ljava/lang/String; = "payload"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_SPEED:Ljava/lang/String; = "speed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_TAG_ID:Ljava/lang/String; = "tag_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_TEMPERATURE:Ljava/lang/String; = "temperature"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_TIME:Ljava/lang/String; = "time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_TYPE:Ljava/lang/String; = "cot_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_UID:Ljava/lang/String; = "uid"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_VERTICAL_SPEED:Ljava/lang/String; = "vspeed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS records (_id INTEGER PRIMARY KEY AUTOINCREMENT, uid TEXT, label TEXT, cot_type TEXT, color TEXT, time INTEGER,tag_id INTEGER,lat REAL,lon REAL,hae REAL,circular_error REAL,linear_error REAL,course REAL,speed REAL,vspeed REAL,temperature REAL,payload BLOB,CONSTRAINT UQ_record UNIQUE (uid,time) );"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_CREATE_TABLE_UIDS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS uids ( _id INTEGER PRIMARY KEY, uid TEXT, CONSTRAINT UQ_uid UNIQUE (uid) );"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_GET_ALL:Ljava/lang/String; = "SELECT * FROM records ORDER BY time ASC"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_GET_BY_TIME:Ljava/lang/String; = "SELECT * FROM records WHERE time BETWEEN ? AND ? ORDER BY time ASC"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_GET_BY_UID:Ljava/lang/String; = "SELECT * FROM records WHERE uid = ? ORDER BY time ASC"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_GET_MAX_TIME:Ljava/lang/String; = "SELECT time as max_time FROM records ORDER BY _id DESC LIMIT 1;"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_GET_MIN_TIME:Ljava/lang/String; = "SELECT time as min_time FROM records ORDER BY _id ASC LIMIT 1;"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_GET_SUMMARIES:Ljava/lang/String; = "SELECT uid, label, cot_type, color, tag_id, payload, MIN(time) as min_time, MAX(time) as max_time,COUNT(uid) as track_count FROM records GROUP BY uid ORDER BY tag_id ASC"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_GET_TRACK_COUNT:Ljava/lang/String; = "SELECT _id as track_count FROM records ORDER BY _id DESC LIMIT 1;"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_GET_UID_COUNT:Ljava/lang/String; = "SELECT COUNT(uid) as uid_count FROM uids"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_GET_UID_COUNT_LEGACY:Ljava/lang/String; = "SELECT COUNT(DISTINCT(uid)) as uid_count from records;"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_INSERT:Ljava/lang/String; = "INSERT INTO records (uid, label, cot_type, color, time, tag_id, lat, lon, hae, circular_error, linear_error ,course, speed, vspeed, temperature, payload) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_INSERT_UID:Ljava/lang/String; = "INSERT INTO uids (uid) VALUES (?);"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final HISTORY_STATEMENT_RECORD_EXISTS:Ljava/lang/String; = "SELECT * FROM records WHERE uid = ? AND time = ?"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final QUERY_MAX_TIME:Ljava/lang/String; = "max_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final QUERY_MIN_TIME:Ljava/lang/String; = "min_time"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final QUERY_TRACK_COUNT:Ljava/lang/String; = "track_count"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final QUERY_UID_COUNT:Ljava/lang/String; = "uid_count"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TABLE_PREFERENCES:Ljava/lang/String; = "preferences"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TABLE_RECORDS:Ljava/lang/String; = "records"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TABLE_UIDS:Ljava/lang/String; = "uids"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toughstump/atos/record/db/IAtosTrackRecordingDatabase$Companion;

    invoke-direct {v0}, Lcom/toughstump/atos/record/db/IAtosTrackRecordingDatabase$Companion;-><init>()V

    sput-object v0, Lcom/toughstump/atos/record/db/IAtosTrackRecordingDatabase$Companion;->$$INSTANCE:Lcom/toughstump/atos/record/db/IAtosTrackRecordingDatabase$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
