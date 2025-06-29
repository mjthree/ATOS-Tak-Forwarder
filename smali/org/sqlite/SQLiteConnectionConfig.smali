.class public Lorg/sqlite/SQLiteConnectionConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final beginCommandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/sqlite/SQLiteConfig$TransactionMode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autoCommit:Z

.field private dateClass:Lorg/sqlite/SQLiteConfig$DateClass;

.field private dateFormat:Lorg/sqlite/date/FastDateFormat;

.field private datePrecision:Lorg/sqlite/SQLiteConfig$DatePrecision;

.field private dateStringFormat:Ljava/lang/String;

.field private transactionIsolation:I

.field private transactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 2
    .line 3
    const-class v1, Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/sqlite/SQLiteConnectionConfig;->beginCommandMap:Ljava/util/Map;

    .line 9
    .line 10
    sget-object v1, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 11
    .line 12
    const-string v2, "begin;"

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lorg/sqlite/SQLiteConfig$TransactionMode;->IMMEDIATE:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 18
    .line 19
    const-string v2, "begin immediate;"

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget-object v1, Lorg/sqlite/SQLiteConfig$TransactionMode;->EXCLUSIVE:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 25
    .line 26
    const-string v2, "begin exclusive;"

    .line 27
    .line 28
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/sqlite/SQLiteConfig$DateClass;Lorg/sqlite/SQLiteConfig$DatePrecision;Ljava/lang/String;ILorg/sqlite/SQLiteConfig$TransactionMode;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/sqlite/SQLiteConfig$DateClass;->INTEGER:Lorg/sqlite/SQLiteConfig$DateClass;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateClass:Lorg/sqlite/SQLiteConfig$DateClass;

    .line 7
    .line 8
    sget-object v0, Lorg/sqlite/SQLiteConfig$DatePrecision;->MILLISECONDS:Lorg/sqlite/SQLiteConfig$DatePrecision;

    .line 9
    .line 10
    iput-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->datePrecision:Lorg/sqlite/SQLiteConfig$DatePrecision;

    .line 11
    .line 12
    const-string v0, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 13
    .line 14
    iput-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateStringFormat:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/sqlite/date/FastDateFormat;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateFormat:Lorg/sqlite/date/FastDateFormat;

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    iput v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionIsolation:I

    .line 25
    .line 26
    sget-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 27
    .line 28
    iput-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->autoCommit:Z

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lorg/sqlite/SQLiteConnectionConfig;->setDateClass(Lorg/sqlite/SQLiteConfig$DateClass;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p2}, Lorg/sqlite/SQLiteConnectionConfig;->setDatePrecision(Lorg/sqlite/SQLiteConfig$DatePrecision;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p3}, Lorg/sqlite/SQLiteConnectionConfig;->setDateStringFormat(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p4}, Lorg/sqlite/SQLiteConnectionConfig;->setTransactionIsolation(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p5}, Lorg/sqlite/SQLiteConnectionConfig;->setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p6}, Lorg/sqlite/SQLiteConnectionConfig;->setAutoCommit(Z)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static fromPragmaTable(Ljava/util/Properties;)Lorg/sqlite/SQLiteConnectionConfig;
    .locals 8

    .line 1
    new-instance v7, Lorg/sqlite/SQLiteConnectionConfig;

    .line 2
    .line 3
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_CLASS:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v1, Lorg/sqlite/SQLiteConfig$DateClass;->INTEGER:Lorg/sqlite/SQLiteConfig$DateClass;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lorg/sqlite/SQLiteConfig$DateClass;->getDateClass(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DateClass;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_PRECISION:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 22
    .line 23
    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 24
    .line 25
    sget-object v2, Lorg/sqlite/SQLiteConfig$DatePrecision;->MILLISECONDS:Lorg/sqlite/SQLiteConfig$DatePrecision;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lorg/sqlite/SQLiteConfig$DatePrecision;->getPrecision(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$DatePrecision;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->DATE_STRING_FORMAT:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 40
    .line 41
    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 44
    .line 45
    invoke-virtual {p0, v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    sget-object v0, Lorg/sqlite/SQLiteConfig$Pragma;->TRANSACTION_MODE:Lorg/sqlite/SQLiteConfig$Pragma;

    .line 50
    .line 51
    iget-object v0, v0, Lorg/sqlite/SQLiteConfig$Pragma;->pragmaName:Ljava/lang/String;

    .line 52
    .line 53
    sget-object v4, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p0, v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lorg/sqlite/SQLiteConfig$TransactionMode;->getMode(Ljava/lang/String;)Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const/4 v6, 0x1

    .line 68
    const/16 v4, 0x8

    .line 69
    .line 70
    move-object v0, v7

    .line 71
    invoke-direct/range {v0 .. v6}, Lorg/sqlite/SQLiteConnectionConfig;-><init>(Lorg/sqlite/SQLiteConfig$DateClass;Lorg/sqlite/SQLiteConfig$DatePrecision;Ljava/lang/String;ILorg/sqlite/SQLiteConfig$TransactionMode;Z)V

    .line 72
    .line 73
    .line 74
    return-object v7
.end method


# virtual methods
.method public copyConfig()Lorg/sqlite/SQLiteConnectionConfig;
    .locals 8

    .line 1
    new-instance v7, Lorg/sqlite/SQLiteConnectionConfig;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateClass:Lorg/sqlite/SQLiteConfig$DateClass;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/sqlite/SQLiteConnectionConfig;->datePrecision:Lorg/sqlite/SQLiteConfig$DatePrecision;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateStringFormat:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionIsolation:I

    .line 10
    .line 11
    iget-object v5, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 12
    .line 13
    iget-boolean v6, p0, Lorg/sqlite/SQLiteConnectionConfig;->autoCommit:Z

    .line 14
    .line 15
    move-object v0, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Lorg/sqlite/SQLiteConnectionConfig;-><init>(Lorg/sqlite/SQLiteConfig$DateClass;Lorg/sqlite/SQLiteConfig$DatePrecision;Ljava/lang/String;ILorg/sqlite/SQLiteConfig$TransactionMode;Z)V

    .line 17
    .line 18
    .line 19
    return-object v7
.end method

.method public getDateClass()Lorg/sqlite/SQLiteConfig$DateClass;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateClass:Lorg/sqlite/SQLiteConfig$DateClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDateFormat()Lorg/sqlite/date/FastDateFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateFormat:Lorg/sqlite/date/FastDateFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDateMultiplier()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->datePrecision:Lorg/sqlite/SQLiteConfig$DatePrecision;

    .line 2
    .line 3
    sget-object v1, Lorg/sqlite/SQLiteConfig$DatePrecision;->MILLISECONDS:Lorg/sqlite/SQLiteConfig$DatePrecision;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 11
    .line 12
    :goto_0
    return-wide v0
.end method

.method public getDatePrecision()Lorg/sqlite/SQLiteConfig$DatePrecision;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->datePrecision:Lorg/sqlite/SQLiteConfig$DatePrecision;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDateStringFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateStringFormat:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTransactionIsolation()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionIsolation:I

    .line 2
    .line 3
    return v0
.end method

.method public getTransactionMode()Lorg/sqlite/SQLiteConfig$TransactionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public isAutoCommit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/sqlite/SQLiteConnectionConfig;->autoCommit:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAutoCommit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->autoCommit:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDateClass(Lorg/sqlite/SQLiteConfig$DateClass;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateClass:Lorg/sqlite/SQLiteConfig$DateClass;

    .line 2
    .line 3
    return-void
.end method

.method public setDatePrecision(Lorg/sqlite/SQLiteConfig$DatePrecision;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->datePrecision:Lorg/sqlite/SQLiteConfig$DatePrecision;

    .line 2
    .line 3
    return-void
.end method

.method public setDateStringFormat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateStringFormat:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/sqlite/date/FastDateFormat;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->dateFormat:Lorg/sqlite/date/FastDateFormat;

    .line 8
    .line 9
    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionIsolation:I

    .line 2
    .line 3
    return-void
.end method

.method public setTransactionMode(Lorg/sqlite/SQLiteConfig$TransactionMode;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFFERED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lorg/sqlite/SQLiteConfig$TransactionMode;->DEFERRED:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 6
    .line 7
    :cond_0
    iput-object p1, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 8
    .line 9
    return-void
.end method

.method transactionPrefix()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteConnectionConfig;->beginCommandMap:Ljava/util/Map;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/sqlite/SQLiteConnectionConfig;->transactionMode:Lorg/sqlite/SQLiteConfig$TransactionMode;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method
