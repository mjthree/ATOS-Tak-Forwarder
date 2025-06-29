.class Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForeignKey"
.end annotation


# instance fields
.field private final fkColNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fkName:Ljava/lang/String;

.field private final fkTableName:Ljava/lang/String;

.field private final match:Ljava/lang/String;

.field private final onDelete:Ljava/lang/String;

.field private final onUpdate:Ljava/lang/String;

.field private final pkColNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pkTableName:Ljava/lang/String;

.field final synthetic this$1:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;


# direct methods
.method constructor <init>(Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->this$1:Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkColNames:Ljava/util/List;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkColNames:Ljava/util/List;

    .line 19
    .line 20
    iput-object p2, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkName:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p3, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkTableName:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p4, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkTableName:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p5, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->onUpdate:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p6, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->onDelete:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p7, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->match:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method addColumnMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkColNames:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkColNames:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getColumnMapping(I)[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkColNames:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkColNames:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getColumnMappingCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkColNames:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getFkName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFkTableName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkTableName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMatch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->match:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnDelete()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->onDelete:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnUpdate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->onUpdate:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPkTableName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkTableName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ForeignKey [fkName="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", pkTableName="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkTableName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", fkTableName="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkTableName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", pkColNames="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->pkColNames:Ljava/util/List;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", fkColNames="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lorg/sqlite/jdbc3/JDBC3DatabaseMetaData$ImportedKeyFinder$ForeignKey;->fkColNames:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, "]"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
