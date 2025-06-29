.class public final Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/manifest/db/AtosManifestDatabase$Companion;
    }
.end annotation


# static fields
.field private static final COLUMN_ID:Ljava/lang/String; = "_id"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COLUMN_JSON:Ljava/lang/String; = "json"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COLUMN_NAME:Ljava/lang/String; = "name"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COLUMN_UID:Ljava/lang/String; = "uid"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/toughstump/atos/manifest/db/AtosManifestDatabase$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DatabaseName:Ljava/lang/String; = "atos_manifest.sqlite"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MANIFEST_STATEMENT_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS missionTable (_id INTEGER PRIMARY KEY AUTOINCREMENT, uid TEXT, name TEXT, json TEXT)"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MANIFEST_STATEMENT_DELETE:Ljava/lang/String; = "DELETE FROM missionTable WHERE uid = ?"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MANIFEST_STATEMENT_GET_ALL:Ljava/lang/String; = "SELECT * FROM missionTable"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MANIFEST_STATEMENT_GET_UID:Ljava/lang/String; = "SELECT * FROM missionTable WHERE uid = ?"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MANIFEST_STATEMENT_INSERT:Ljava/lang/String; = "INSERT INTO missionTable (uid, name, json) VALUES (?, ?, ?)"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MANIFEST_STATEMENT_UPDATE:Ljava/lang/String; = "UPDATE missionTable SET name = ?, json = ? WHERE uid = ?"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREFERENCE_STATEMENT_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS preferences (_id INTEGER PRIMARY KEY AUTOINCREMENT, uid TEXT, value TEXT)"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREFERENCE_STATEMENT_GET:Ljava/lang/String; = "SELECT value FROM preferences WHERE uid = ?"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREFERENCE_STATEMENT_INSERT:Ljava/lang/String; = "INSERT INTO preferences (uid, value) VALUES(?, ?)"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREFERENCE_STATEMENT_UPDATE:Ljava/lang/String; = "UPDATE preferences SET value = ? WHERE uid = ?"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PREF_CURRENT_MANIFEST_KEY:Ljava/lang/String; = "atos_current_manifest"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TABLE_MANIFESTS:Ljava/lang/String; = "missionTable"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TABLE_PREFERENCES:Ljava/lang/String; = "preferences"
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
.field private databaseConnection:Ljava/sql/Connection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private databaseValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->Companion:Lcom/toughstump/atos/manifest/db/AtosManifestDatabase$Companion;

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
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->getConnectionUrlFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :try_start_0
    invoke-static {p1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const-string v1, "CREATE TABLE IF NOT EXISTS missionTable (_id INTEGER PRIMARY KEY AUTOINCREMENT, uid TEXT, name TEXT, json TEXT)"

    .line 29
    .line 30
    invoke-interface {p1, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object p1, v0

    .line 38
    :goto_0
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->execute()Z

    .line 41
    .line 42
    .line 43
    :cond_2
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object p1, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    const-string v0, "CREATE TABLE IF NOT EXISTS preferences (_id INTEGER PRIMARY KEY AUTOINCREMENT, uid TEXT, value TEXT)"

    .line 53
    .line 54
    invoke-interface {p1, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_4
    if-eqz v0, :cond_5

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    .line 61
    .line 62
    .line 63
    :cond_5
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 66
    .line 67
    .line 68
    :cond_6
    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseValid:Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    return-void
.end method

.method private final addManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->toJson()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-string v3, "INSERT INTO missionTable (uid, name, json) VALUES (?, ?, ?)"

    .line 18
    .line 19
    invoke-interface {v2, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-interface {v2, v3, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    if-eqz v2, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    invoke-interface {v2, v0, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    if-eqz v2, :cond_3

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    invoke-interface {v2, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    if-eqz v2, :cond_4

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->execute()Z

    .line 48
    .line 49
    .line 50
    :cond_4
    if-eqz v2, :cond_5

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_5
    :goto_2
    return-void
.end method

.method private final changeManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->toJson()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-string v3, "UPDATE missionTable SET name = ?, json = ? WHERE uid = ?"

    .line 18
    .line 19
    invoke-interface {v2, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-eqz v2, :cond_1

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-interface {v2, v3, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    if-eqz v2, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-interface {v2, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    if-eqz v2, :cond_3

    .line 40
    .line 41
    const/4 p1, 0x3

    .line 42
    invoke-interface {v2, p1, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    if-eqz v2, :cond_4

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->execute()Z

    .line 48
    .line 49
    .line 50
    :cond_4
    if-eqz v2, :cond_5

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_5
    :goto_2
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

.method private final getManifestFromCursor(Ljava/sql/ResultSet;)Lcom/toughstump/atos/manifest/AtosManifest;
    .locals 1

    .line 1
    const-string v0, "json"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    sget-object v0, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->fromJson(Ljava/lang/String;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final getPreferenceVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

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
    iget-object v0, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v2, "SELECT value FROM preferences WHERE uid = ?"

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
    const/4 v2, 0x1

    .line 24
    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    if-eqz v0, :cond_5

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    const-string v1, "value"

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    goto :goto_1

    .line 49
    :cond_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 50
    .line 51
    .line 52
    :cond_5
    :goto_2
    return-object v1
.end method

.method private final insertPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "INSERT INTO preferences (uid, value) VALUES(?, ?)"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    .line 30
    .line 31
    .line 32
    :cond_3
    if-eqz v0, :cond_4

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_4
    :goto_2
    return-void
.end method

.method private final manifestExists(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

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
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v2, "SELECT * FROM missionTable WHERE uid = ?"

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
    const/4 v0, 0x0

    .line 21
    :goto_0
    const/4 v2, 0x1

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    if-eqz v0, :cond_5

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    const-string v3, ""

    .line 37
    .line 38
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_4

    .line 43
    .line 44
    const-string v3, "json"

    .line 45
    .line 46
    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "result.getString(COLUMN_JSON)"

    .line 51
    .line 52
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 57
    .line 58
    .line 59
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-lez p1, :cond_5

    .line 64
    .line 65
    move v1, v2

    .line 66
    :cond_5
    :goto_2
    return v1
.end method

.method private final preferenceExists(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->getPreferenceVal(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method private final updatePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "UPDATE preferences SET value = ? WHERE uid = ?"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-interface {v0, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/4 p2, 0x2

    .line 24
    invoke-interface {v0, p2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_2
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    .line 30
    .line 31
    .line 32
    :cond_3
    if-eqz v0, :cond_4

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public deleteManifest(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "uid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "DELETE FROM missionTable WHERE uid = ?"

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
    :catch_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    .line 29
    .line 30
    .line 31
    :cond_2
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_2
    return-void
.end method

.method public getAllManifests()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/manifest/AtosManifest;",
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
    invoke-virtual {p0}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->isValid()Z

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
    iget-object v1, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string v2, "SELECT * FROM missionTable"

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
    invoke-direct {p0, v2}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->getManifestFromCursor(Ljava/sql/ResultSet;)Lcom/toughstump/atos/manifest/AtosManifest;

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
    invoke-virtual {v3}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

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

.method public getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "atos_current_manifest"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->getPreferenceVal(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    const-string v3, "SELECT * FROM missionTable WHERE uid = ?"

    .line 16
    .line 17
    invoke-interface {v2, v3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v2, v1

    .line 23
    :goto_0
    if-eqz v2, :cond_2

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-interface {v2, v3, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    if-eqz v2, :cond_6

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    const-string v3, ""

    .line 39
    .line 40
    :goto_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_4

    .line 45
    .line 46
    const-string v3, "json"

    .line 47
    .line 48
    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "result.getString(COLUMN_JSON)"

    .line 53
    .line 54
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    .line 59
    .line 60
    .line 61
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_5
    sget-object v0, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->fromJson(Ljava/lang/String;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0

    .line 75
    :cond_6
    :goto_2
    return-object v1
.end method

.method public getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "uidKey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "defaultValue"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->getPreferenceVal(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_0
    return-object p1
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseValid:Z

    .line 2
    .line 3
    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseConnection:Ljava/sql/Connection;

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

.method public setCurrentManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 2
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "atos_current_manifest"

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->updateManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "uidKey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->preferenceExists(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->updatePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->insertPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public setValid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->databaseValid:Z

    .line 2
    .line 3
    return-void
.end method

.method public updateManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-direct {p0, v0}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->manifestExists(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->changeManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/manifest/db/AtosManifestDatabase;->addManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
