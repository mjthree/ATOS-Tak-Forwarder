.class public final Lcom/toughstump/atos/state/db/TagStateDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLUMN_FILTER_PREF_UID:Ljava/lang/String; = "uid"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_FILTER_PREF_VALUE:Ljava/lang/String; = "value"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_STATE_BREADCRUMB:Ljava/lang/String; = "breadcrumb"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_STATE_BROADCAST:Ljava/lang/String; = "broadcast"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_STATE_RAB:Ljava/lang/String; = "rab"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final COLUMN_STATE_UID:Ljava/lang/String; = "uid"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FILTER_STATEMENT_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS filter (_id INTEGER PRIMARY KEY AUTOINCREMENT, uid TEXT, value TEXT)"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FileName:Ljava/lang/String; = "atos_tag_state.sqlite"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/toughstump/atos/state/db/TagStateDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PREFERENCE_STATEMENT_GET:Ljava/lang/String; = "SELECT value FROM filter WHERE uid = ?"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PREFERENCE_STATEMENT_INSERT:Ljava/lang/String; = "INSERT INTO filter (uid, value) VALUES(?, ?)"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PREFERENCE_STATEMENT_UPDATE:Ljava/lang/String; = "UPDATE filter SET value = ? WHERE uid = ?"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PREF_CURRENT_FILTER_KEY:Ljava/lang/String; = "atos_current_filter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TABLE_FILTER:Ljava/lang/String; = "filter"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TABLE_TAG_STATE:Ljava/lang/String; = "tagState"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG_STATE_STATEMENT_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS tagState (_id INTEGER PRIMARY KEY AUTOINCREMENT, uid TEXT, broadcast BOOLEAN, rab BOOLEAN, breadcrumb BOOLEAN)"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG_STATE_STATEMENT_GET:Ljava/lang/String; = "SELECT * FROM tagState WHERE uid = ?"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG_STATE_STATEMENT_INSERT:Ljava/lang/String; = "INSERT INTO tagState (uid, broadcast, rab, breadcrumb) VALUES (?, ?, ?, ?) "
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG_STATE_STATEMENT_UPDATE:Ljava/lang/String; = "UPDATE tagState SET broadcast = ?, rab = ?, breadcrumb = ? WHERE uid = ?"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toughstump/atos/state/db/TagStateDatabase;

    invoke-direct {v0}, Lcom/toughstump/atos/state/db/TagStateDatabase;-><init>()V

    sput-object v0, Lcom/toughstump/atos/state/db/TagStateDatabase;->INSTANCE:Lcom/toughstump/atos/state/db/TagStateDatabase;

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
