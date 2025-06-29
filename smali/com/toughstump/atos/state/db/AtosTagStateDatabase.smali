.class public final Lcom/toughstump/atos/state/db/AtosTagStateDatabase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/state/db/AtosTagStateDatabase$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/state/db/AtosTagStateDatabase$Companion;
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

    new-instance v0, Lcom/toughstump/atos/state/db/AtosTagStateDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->Companion:Lcom/toughstump/atos/state/db/AtosTagStateDatabase$Companion;

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
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->getConnectionUrlFromFile(Ljava/io/File;)Ljava/lang/String;

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
    iput-object p1, p0, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const-string v1, "CREATE TABLE IF NOT EXISTS tagState (_id INTEGER PRIMARY KEY AUTOINCREMENT, uid TEXT, broadcast BOOLEAN, rab BOOLEAN, breadcrumb BOOLEAN)"

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
    iget-object p1, p0, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    const-string v0, "CREATE TABLE IF NOT EXISTS filter (_id INTEGER PRIMARY KEY AUTOINCREMENT, uid TEXT, value TEXT)"

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
    iput-boolean p1, p0, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->databaseValid:Z
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

.method private final getPreferenceVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const-string v2, "SELECT value FROM filter WHERE uid = ?"

    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v1, v0

    .line 23
    :goto_0
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    if-eqz v1, :cond_5

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    const-string v0, "value"

    .line 45
    .line 46
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 52
    .line 53
    .line 54
    :cond_5
    :goto_2
    return-object v0
.end method

.method private final insertPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "INSERT INTO filter (uid, value) VALUES(?, ?)"

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

.method private final insertTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "INSERT INTO tagState (uid, broadcast, rab, breadcrumb) VALUES (?, ?, ?, ?) "

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
    invoke-virtual {p1}, Lcom/toughstump/atos/state/model/AtosTagState;->getUid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/toughstump/atos/state/model/AtosTagState;->getBroadcastEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 33
    .line 34
    .line 35
    :cond_2
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/toughstump/atos/state/model/AtosTagState;->getRangeAndBearingEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 43
    .line 44
    .line 45
    :cond_3
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/toughstump/atos/state/model/AtosTagState;->getBreadCrumbEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 v1, 0x4

    .line 52
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 53
    .line 54
    .line 55
    :cond_4
    if-eqz v0, :cond_5

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    .line 58
    .line 59
    .line 60
    :cond_5
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_6
    :goto_2
    return-void
.end method

.method private final preferenceExists(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->getPreferenceVal(Ljava/lang/String;)Ljava/lang/String;

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

.method private final tagStateExists(Lcom/toughstump/atos/state/model/AtosTagState;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/toughstump/atos/state/model/AtosTagState;->getUid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->getTagState(Ljava/lang/String;)Lcom/toughstump/atos/state/model/AtosTagState;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private final updatePreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "UPDATE filter SET value = ? WHERE uid = ?"

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

.method private final updateTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "UPDATE tagState SET broadcast = ?, rab = ?, breadcrumb = ? WHERE uid = ?"

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
    invoke-virtual {p1}, Lcom/toughstump/atos/state/model/AtosTagState;->getBroadcastEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 23
    .line 24
    .line 25
    :cond_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/toughstump/atos/state/model/AtosTagState;->getRangeAndBearingEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 33
    .line 34
    .line 35
    :cond_2
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/toughstump/atos/state/model/AtosTagState;->getBreadCrumbEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-interface {v0, v2, v1}, Ljava/sql/PreparedStatement;->setBoolean(IZ)V

    .line 43
    .line 44
    .line 45
    :cond_3
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/toughstump/atos/state/model/AtosTagState;->getUid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v1, 0x4

    .line 52
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_4
    if-eqz v0, :cond_5

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    .line 58
    .line 59
    .line 60
    :cond_5
    if-eqz v0, :cond_6

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public getActiveFilter()Lcom/toughstump/atos/filter/AtosFilterCriteria;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "atos_current_filter"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->getPreferenceVal(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    sget-object v1, Lcom/toughstump/atos/filter/AtosFilterCriteria;->Companion:Lcom/toughstump/atos/filter/AtosFilterCriteria$Companion;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/toughstump/atos/filter/AtosFilterCriteria$Companion;->fromJson(Ljava/lang/String;)Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->getPreferenceVal(Ljava/lang/String;)Ljava/lang/String;

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

.method public getTagState(Ljava/lang/String;)Lcom/toughstump/atos/state/model/AtosTagState;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "uid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->databaseConnection:Ljava/sql/Connection;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v2, "SELECT * FROM tagState WHERE uid = ?"

    .line 19
    .line 20
    invoke-interface {v0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v0, v1

    .line 26
    :goto_0
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-interface {v0, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    if-eqz v0, :cond_5

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    const-string v1, "rab"

    .line 48
    .line 49
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const-string v3, "broadcast"

    .line 54
    .line 55
    invoke-interface {v2, v3}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const-string v4, "breadcrumb"

    .line 60
    .line 61
    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    new-instance v5, Lcom/toughstump/atos/state/model/AtosTagState;

    .line 66
    .line 67
    invoke-direct {v5, p1, v3, v1, v4}, Lcom/toughstump/atos/state/model/AtosTagState;-><init>(Ljava/lang/String;ZZZ)V

    .line 68
    .line 69
    .line 70
    move-object v1, v5

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_2
    return-object v1
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->databaseValid:Z

    .line 2
    .line 3
    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public setFilterCriteria(Lcom/toughstump/atos/filter/AtosFilterCriteria;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/filter/AtosFilterCriteria;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "filter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/filter/AtosFilterCriteria;->Companion:Lcom/toughstump/atos/filter/AtosFilterCriteria$Companion;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/filter/AtosFilterCriteria$Companion;->toJson(Lcom/toughstump/atos/filter/AtosFilterCriteria;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "atos_current_filter"

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setPreference(Ljava/lang/String;Ljava/lang/String;)V
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
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->preferenceExists(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->updatePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->insertPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public setTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/state/model/AtosTagState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tagState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->tagStateExists(Lcom/toughstump/atos/state/model/AtosTagState;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->updateTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->insertTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setValid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/toughstump/atos/state/db/AtosTagStateDatabase;->databaseValid:Z

    .line 2
    .line 3
    return-void
.end method
