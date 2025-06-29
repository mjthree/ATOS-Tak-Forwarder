.class public Lorg/sqlite/jdbc3/JDBC3Savepoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/sql/Savepoint;


# instance fields
.field final id:I

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->id:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->name:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->id:I

    .line 6
    iput-object p2, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSavepointId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getSavepointName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->name:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/sqlite/jdbc3/JDBC3Savepoint;->id:I

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "SQLITE_SAVEPOINT_%s"

    .line 16
    .line 17
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    return-object v0
.end method
