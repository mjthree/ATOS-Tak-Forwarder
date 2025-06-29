.class public Lorg/sqlite/JDBC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/sql/Driver;


# static fields
.field public static final PREFIX:Ljava/lang/String; = "jdbc:sqlite:"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lorg/sqlite/JDBC;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/sqlite/JDBC;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createConnection(Ljava/lang/String;Ljava/util/Properties;)Lorg/sqlite/SQLiteConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/sqlite/JDBC;->isValidURL(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-instance v0, Lorg/sqlite/jdbc4/JDBC4Connection;

    .line 14
    .line 15
    invoke-static {p0}, Lorg/sqlite/JDBC;->extractAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, p0, v1, p1}, Lorg/sqlite/jdbc4/JDBC4Connection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method static extractAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static isValidURL(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "jdbc:sqlite:"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method


# virtual methods
.method public acceptsURL(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/sqlite/JDBC;->isValidURL(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lorg/sqlite/JDBC;->createConnection(Ljava/lang/String;Ljava/util/Properties;)Lorg/sqlite/SQLiteConnection;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getMajorVersion()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/sqlite/SQLiteJDBCLoader;->getMajorVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .line 1
    invoke-static {}, Lorg/sqlite/SQLiteJDBCLoader;->getMinorVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLFeatureNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyInfo(Ljava/lang/String;Ljava/util/Properties;)[Ljava/sql/DriverPropertyInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/sqlite/SQLiteConfig;->getDriverPropertyInfo()[Ljava/sql/DriverPropertyInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public jdbcCompliant()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
