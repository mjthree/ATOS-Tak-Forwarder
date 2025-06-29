.class Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/sql/NClob;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/jdbc4/JDBC4ResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SqliteClob"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field final synthetic this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;


# direct methods
.method protected constructor <init>(Lorg/sqlite/jdbc4/JDBC4ResultSet;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public free()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    .line 3
    .line 4
    return-void
.end method

.method public getAsciiStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->access$000(Lorg/sqlite/jdbc4/JDBC4ResultSet;Ljava/lang/String;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    iget-object v1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->access$100(Lorg/sqlite/jdbc4/JDBC4ResultSet;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterStream(JJ)Ljava/io/Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    iget-object p2, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->access$100(Lorg/sqlite/jdbc4/JDBC4ResultSet;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getSubString(JI)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const-wide/16 v1, 0x1

    .line 6
    .line 7
    cmp-long v1, p1, v1

    .line 8
    .line 9
    if-ltz v1, :cond_1

    .line 10
    .line 11
    if-ltz p3, :cond_0

    .line 12
    .line 13
    long-to-int p1, p1

    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    add-int/2addr p3, p1

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    .line 31
    .line 32
    const-string p2, "Length must be greater than or equal to 0"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    .line 39
    .line 40
    const-string p2, "Position must be greater than or equal to 1"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    new-instance p1, Ljava/sql/SQLException;

    .line 47
    .line 48
    const-string p2, "no data"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->data:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    return-wide v0

    .line 11
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    .line 12
    .line 13
    const-string v1, "no data"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public position(Ljava/lang/String;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unsupported()Ljava/sql/SQLException;

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public position(Ljava/sql/Clob;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unsupported()Ljava/sql/SQLException;

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public setAsciiStream(J)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unsupported()Ljava/sql/SQLException;

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public setCharacterStream(J)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unsupported()Ljava/sql/SQLException;

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1
.end method

.method public setString(JLjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unsupported()Ljava/sql/SQLException;

    const/4 p1, -0x1

    return p1
.end method

.method public setString(JLjava/lang/String;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unsupported()Ljava/sql/SQLException;

    const/4 p1, -0x1

    return p1
.end method

.method public truncate(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/sqlite/jdbc4/JDBC4ResultSet$SqliteClob;->this$0:Lorg/sqlite/jdbc4/JDBC4ResultSet;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/sqlite/jdbc4/JDBC4ResultSet;->unsupported()Ljava/sql/SQLException;

    .line 4
    .line 5
    .line 6
    return-void
.end method
