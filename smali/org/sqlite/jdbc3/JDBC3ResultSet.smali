.class public abstract Lorg/sqlite/jdbc3/JDBC3ResultSet;
.super Lorg/sqlite/core/CoreResultSet;
.source "SourceFile"


# static fields
.field protected static final COLUMN_PRECISION:Ljava/util/regex/Pattern;

.field protected static final COLUMN_TYPECAST:Ljava/util/regex/Pattern;

.field protected static final COLUMN_TYPENAME:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "([^\\(]*)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_TYPENAME:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "cast\\(.*?\\s+as\\s+(.*?)\\s*\\)"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_TYPECAST:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, ".*?\\((.*?)\\)"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_PRECISION:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    return-void
.end method

.method protected constructor <init>(Lorg/sqlite/core/CoreStatement;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/core/CoreResultSet;-><init>(Lorg/sqlite/core/CoreStatement;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lorg/sqlite/jdbc3/JDBC3ResultSet;ILorg/sqlite/core/DB;J)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->lambda$getInt$1(ILorg/sqlite/core/DB;J)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/sqlite/jdbc3/JDBC3ResultSet;ILorg/sqlite/core/DB;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->lambda$safeGetColumnTableName$7(ILorg/sqlite/core/DB;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/sqlite/jdbc3/JDBC3ResultSet;ILorg/sqlite/core/DB;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->lambda$safeGetColumnText$6(ILorg/sqlite/core/DB;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/sqlite/jdbc3/JDBC3ResultSet;ILorg/sqlite/core/DB;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->lambda$safeGetColumnName$8(ILorg/sqlite/core/DB;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/sqlite/jdbc3/JDBC3ResultSet;ILorg/sqlite/core/DB;J)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->lambda$safeGetLongCol$4(ILorg/sqlite/core/DB;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic f(Lorg/sqlite/jdbc3/JDBC3ResultSet;ILorg/sqlite/core/DB;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->lambda$getColumnDeclType$2(ILorg/sqlite/core/DB;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(ILorg/sqlite/core/DB;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->lambda$safeGetColumnType$3(ILorg/sqlite/core/DB;J)I

    move-result p0

    return p0
.end method

.method private getColumnDeclType(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 4
    .line 5
    new-instance v1, Latakplugin/atos/h0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Latakplugin/atos/h0;-><init>(Lorg/sqlite/jdbc3/JDBC3ResultSet;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRun(Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_TYPECAST:Ljava/util/regex/Pattern;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnName(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :goto_0
    move-object v0, p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 p1, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static synthetic h(Lorg/sqlite/jdbc3/JDBC3ResultSet;ILorg/sqlite/core/DB;J)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->lambda$getBytes$0(ILorg/sqlite/core/DB;J)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/sqlite/jdbc3/JDBC3ResultSet;ILorg/sqlite/core/DB;J)D
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->lambda$safeGetDoubleCol$5(ILorg/sqlite/core/DB;J)D

    move-result-wide p0

    return-wide p0
.end method

.method private julianDateToCalendar(Ljava/lang/Double;)Ljava/util/Calendar;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method private julianDateToCalendar(Ljava/lang/Double;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 16

    move-object/from16 v7, p2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v2, v0

    int-to-double v3, v2

    sub-double/2addr v0, v3

    const v5, 0x231519

    if-ge v2, v5, :cond_1

    goto :goto_0

    :cond_1
    const-wide v5, 0x413c7dd040000000L    # 1867216.25

    sub-double/2addr v3, v5

    const-wide v5, 0x40e1d58800000000L    # 36524.25

    div-double/2addr v3, v5

    double-to-int v3, v3

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    div-double/2addr v3, v5

    double-to-int v3, v3

    sub-int/2addr v2, v3

    :goto_0
    add-int/lit16 v2, v2, 0x5f4

    int-to-double v3, v2

    const-wide v5, 0x405e866666666666L    # 122.1

    sub-double/2addr v3, v5

    const-wide v5, 0x4076d40000000000L    # 365.25

    div-double/2addr v3, v5

    double-to-int v3, v3

    int-to-double v8, v3

    mul-double/2addr v8, v5

    double-to-int v4, v8

    sub-int/2addr v2, v4

    int-to-double v4, v2

    const-wide v8, 0x403e99a027525461L    # 30.6001

    div-double/2addr v4, v8

    double-to-int v4, v4

    int-to-double v5, v4

    const-wide/high16 v10, 0x402b000000000000L    # 13.5

    cmpg-double v10, v5, v10

    const/4 v11, 0x1

    if-gez v10, :cond_2

    move v10, v11

    goto :goto_1

    :cond_2
    const/16 v10, 0xd

    :goto_1
    sub-int/2addr v4, v10

    int-to-double v12, v4

    const-wide/high16 v14, 0x4004000000000000L    # 2.5

    cmpl-double v10, v12, v14

    if-lez v10, :cond_3

    const/16 v10, 0x126c

    goto :goto_2

    :cond_3
    const/16 v10, 0x126b

    :goto_2
    sub-int v10, v3, v10

    mul-double/2addr v5, v8

    double-to-int v3, v5

    sub-int/2addr v2, v3

    int-to-double v2, v2

    add-double/2addr v2, v0

    double-to-int v5, v2

    int-to-double v0, v5

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    mul-double/2addr v2, v0

    double-to-int v6, v2

    int-to-double v0, v6

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v0

    double-to-int v8, v2

    int-to-double v12, v8

    sub-double/2addr v2, v12

    mul-double/2addr v2, v0

    double-to-int v9, v2

    int-to-double v0, v9

    sub-double/2addr v2, v0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v0

    double-to-int v12, v2

    add-int/lit8 v2, v4, -0x1

    move-object/from16 v0, p2

    move v1, v10

    move v3, v5

    move v4, v6

    move v5, v8

    move v6, v9

    .line 3
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v0, 0xe

    .line 4
    invoke-virtual {v7, v0, v12}, Ljava/util/Calendar;->set(II)V

    if-ge v10, v11, :cond_4

    const/4 v0, 0x0

    .line 5
    invoke-virtual {v7, v0, v0}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v10, v11

    neg-int v0, v10

    .line 6
    invoke-virtual {v7, v11, v0}, Ljava/util/Calendar;->set(II)V

    :cond_4
    return-object v7
.end method

.method private synthetic lambda$getBytes$0(ILorg/sqlite/core/DB;J)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p3, p4, p1}, Lorg/sqlite/core/DB;->column_blob(JI)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private synthetic lambda$getColumnDeclType$2(ILorg/sqlite/core/DB;J)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->checkCol(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p3, p4, p1}, Lorg/sqlite/core/DB;->column_decltype(JI)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private synthetic lambda$getInt$1(ILorg/sqlite/core/DB;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p3, p4, p1}, Lorg/sqlite/core/DB;->column_int(JI)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private synthetic lambda$safeGetColumnName$8(ILorg/sqlite/core/DB;J)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->checkCol(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p3, p4, p1}, Lorg/sqlite/core/DB;->column_name(JI)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private synthetic lambda$safeGetColumnTableName$7(ILorg/sqlite/core/DB;J)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->checkCol(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p3, p4, p1}, Lorg/sqlite/core/DB;->column_table_name(JI)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private synthetic lambda$safeGetColumnText$6(ILorg/sqlite/core/DB;J)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p3, p4, p1}, Lorg/sqlite/core/DB;->column_text(JI)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private static synthetic lambda$safeGetColumnType$3(ILorg/sqlite/core/DB;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3, p0}, Lorg/sqlite/core/DB;->column_type(JI)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private synthetic lambda$safeGetDoubleCol$5(ILorg/sqlite/core/DB;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p3, p4, p1}, Lorg/sqlite/core/DB;->column_double(JI)D

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method private synthetic lambda$safeGetLongCol$4(ILorg/sqlite/core/DB;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2, p3, p4, p1}, Lorg/sqlite/core/DB;->column_long(JI)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1
.end method

.method private requireCalendarNotNull(Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "Expected a calendar instance."

    .line 12
    .line 13
    invoke-direct {p1, v1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method private safeGetColumnName(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 4
    .line 5
    new-instance v1, Latakplugin/atos/n0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Latakplugin/atos/n0;-><init>(Lorg/sqlite/jdbc3/JDBC3ResultSet;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRun(Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    return-object p1
.end method

.method private safeGetColumnTableName(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 4
    .line 5
    new-instance v1, Latakplugin/atos/j0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Latakplugin/atos/j0;-><init>(Lorg/sqlite/jdbc3/JDBC3ResultSet;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRun(Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    return-object p1
.end method

.method private safeGetColumnText(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 4
    .line 5
    new-instance v1, Latakplugin/atos/k0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Latakplugin/atos/k0;-><init>(Lorg/sqlite/jdbc3/JDBC3ResultSet;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRun(Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    return-object p1
.end method

.method private safeGetDoubleCol(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 4
    .line 5
    new-instance v1, Latakplugin/atos/p0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Latakplugin/atos/p0;-><init>(Lorg/sqlite/jdbc3/JDBC3ResultSet;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRunDouble(Lorg/sqlite/core/SafeStmtPtr$SafePtrDoubleFunction;)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method private safeGetLongCol(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 4
    .line 5
    new-instance v1, Latakplugin/atos/i0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Latakplugin/atos/i0;-><init>(Lorg/sqlite/jdbc3/JDBC3ResultSet;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRunLong(Lorg/sqlite/core/SafeStmtPtr$SafePtrLongFunction;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method


# virtual methods
.method public clearWarnings()V
    .locals 0

    return-void
.end method

.method public findColumn(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->checkOpen()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->findColumnIndexInCache(Ljava/lang/String;)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Lorg/sqlite/core/CoreResultSet;->cols:[Ljava/lang/String;

    .line 17
    .line 18
    array-length v2, v1

    .line 19
    if-ge v0, v2, :cond_2

    .line 20
    .line 21
    aget-object v1, v1, v0

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lorg/sqlite/core/CoreResultSet;->addColumnIndexInCache(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    new-instance v0, Ljava/sql/SQLException;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "no such column: \'"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, "\'"

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->checkCol(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnText(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value for type BigDecimal : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetDoubleCol(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetLongCol(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getBytes(I)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBinaryStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getInt(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getByte(I)B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getInt(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getByte(I)B

    move-result p1

    return p1
.end method

.method public getBytes(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-object v0, v0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    new-instance v1, Latakplugin/atos/m0;

    invoke-direct {v1, p0, p1}, Latakplugin/atos/m0;-><init>(Lorg/sqlite/jdbc3/JDBC3ResultSet;I)V

    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRun(Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getBytes(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getCatalogName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnTableName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getColumnClassName(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    if-eq v0, p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x4

    .line 16
    if-eq v0, p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x5

    .line 19
    if-eq v0, p1, :cond_0

    .line 20
    .line 21
    const-string p1, "java.lang.String"

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    const-string p1, "java.lang.Object"

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    const-string p1, "java.lang.Double"

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getLong(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    const-wide/32 v2, 0x7fffffff

    .line 35
    .line 36
    .line 37
    cmp-long p1, v0, v2

    .line 38
    .line 39
    if-gtz p1, :cond_4

    .line 40
    .line 41
    const-wide/32 v2, -0x80000000

    .line 42
    .line 43
    .line 44
    cmp-long p1, v0, v2

    .line 45
    .line 46
    if-gez p1, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const-string p1, "java.lang.Integer"

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_4
    :goto_0
    const-string p1, "java.lang.Long"

    .line 53
    .line 54
    return-object p1
.end method

.method public getColumnCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/sqlite/core/CoreResultSet;->checkCol(I)I

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->colsMeta:[Ljava/lang/String;

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    return v0
.end method

.method public getColumnDisplaySize(I)I
    .locals 0

    const p1, 0x7fffffff

    return p1
.end method

.method public getColumnLabel(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getColumnName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getColumnType(I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getColumnTypeName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->checkCol(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x5b

    .line 14
    .line 15
    const/16 v3, 0x5d

    .line 16
    .line 17
    const-string v4, "TIMESTAMP"

    .line 18
    .line 19
    const-string v5, "DATETIME"

    .line 20
    .line 21
    const-string v6, "DATE"

    .line 22
    .line 23
    const/4 v7, 0x4

    .line 24
    const/4 v8, 0x5

    .line 25
    const/4 v9, 0x1

    .line 26
    if-eq v1, v9, :cond_0

    .line 27
    .line 28
    if-ne v1, v8, :cond_7

    .line 29
    .line 30
    :cond_0
    const-string v10, "BOOLEAN"

    .line 31
    .line 32
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    if-eqz v10, :cond_1

    .line 37
    .line 38
    const/16 p1, 0x10

    .line 39
    .line 40
    return p1

    .line 41
    :cond_1
    const-string v10, "TINYINT"

    .line 42
    .line 43
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-eqz v10, :cond_2

    .line 48
    .line 49
    const/4 p1, -0x6

    .line 50
    return p1

    .line 51
    :cond_2
    const-string v10, "SMALLINT"

    .line 52
    .line 53
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    if-nez v10, :cond_22

    .line 58
    .line 59
    const-string v10, "INT2"

    .line 60
    .line 61
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-eqz v10, :cond_3

    .line 66
    .line 67
    goto/16 :goto_a

    .line 68
    .line 69
    :cond_3
    const-string v10, "BIGINT"

    .line 70
    .line 71
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    const/4 v11, -0x5

    .line 76
    if-nez v10, :cond_21

    .line 77
    .line 78
    const-string v10, "INT8"

    .line 79
    .line 80
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-nez v10, :cond_21

    .line 85
    .line 86
    const-string v10, "UNSIGNED BIG INT"

    .line 87
    .line 88
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    if-eqz v10, :cond_4

    .line 93
    .line 94
    goto/16 :goto_9

    .line 95
    .line 96
    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-nez v10, :cond_20

    .line 101
    .line 102
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-eqz v10, :cond_5

    .line 107
    .line 108
    goto/16 :goto_8

    .line 109
    .line 110
    :cond_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    if-eqz v10, :cond_6

    .line 115
    .line 116
    return v3

    .line 117
    :cond_6
    if-eq v1, v9, :cond_1d

    .line 118
    .line 119
    const-string v10, "INT"

    .line 120
    .line 121
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    if-nez v10, :cond_1d

    .line 126
    .line 127
    const-string v10, "INTEGER"

    .line 128
    .line 129
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-nez v10, :cond_1d

    .line 134
    .line 135
    const-string v10, "MEDIUMINT"

    .line 136
    .line 137
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    if-eqz v10, :cond_7

    .line 142
    .line 143
    goto/16 :goto_6

    .line 144
    .line 145
    :cond_7
    const/4 p1, 0x3

    .line 146
    const/4 v10, 0x2

    .line 147
    if-eq v1, v10, :cond_8

    .line 148
    .line 149
    if-ne v1, v8, :cond_d

    .line 150
    .line 151
    :cond_8
    const-string v11, "DECIMAL"

    .line 152
    .line 153
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    if-eqz v11, :cond_9

    .line 158
    .line 159
    return p1

    .line 160
    :cond_9
    const-string v11, "DOUBLE"

    .line 161
    .line 162
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    if-nez v11, :cond_1c

    .line 167
    .line 168
    const-string v11, "DOUBLE PRECISION"

    .line 169
    .line 170
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    if-eqz v11, :cond_a

    .line 175
    .line 176
    goto/16 :goto_5

    .line 177
    .line 178
    :cond_a
    const-string v11, "NUMERIC"

    .line 179
    .line 180
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    if-eqz v11, :cond_b

    .line 185
    .line 186
    return v10

    .line 187
    :cond_b
    const-string v11, "REAL"

    .line 188
    .line 189
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-eqz v11, :cond_c

    .line 194
    .line 195
    const/4 p1, 0x7

    .line 196
    return p1

    .line 197
    :cond_c
    if-eq v1, v10, :cond_1b

    .line 198
    .line 199
    const-string v11, "FLOAT"

    .line 200
    .line 201
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    if-eqz v11, :cond_d

    .line 206
    .line 207
    goto/16 :goto_4

    .line 208
    .line 209
    :cond_d
    if-eq v1, p1, :cond_e

    .line 210
    .line 211
    if-ne v1, v8, :cond_13

    .line 212
    .line 213
    :cond_e
    const-string v11, "CHARACTER"

    .line 214
    .line 215
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v11

    .line 219
    if-nez v11, :cond_1a

    .line 220
    .line 221
    const-string v11, "NCHAR"

    .line 222
    .line 223
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    if-nez v11, :cond_1a

    .line 228
    .line 229
    const-string v11, "NATIVE CHARACTER"

    .line 230
    .line 231
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    if-nez v11, :cond_1a

    .line 236
    .line 237
    const-string v11, "CHAR"

    .line 238
    .line 239
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    if-eqz v11, :cond_f

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_f
    const-string v9, "CLOB"

    .line 247
    .line 248
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    if-eqz v9, :cond_10

    .line 253
    .line 254
    const/16 p1, 0x7d5

    .line 255
    .line 256
    return p1

    .line 257
    :cond_10
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    if-nez v6, :cond_19

    .line 262
    .line 263
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-eqz v5, :cond_11

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_11
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_12

    .line 275
    .line 276
    return v3

    .line 277
    :cond_12
    if-eq v1, p1, :cond_18

    .line 278
    .line 279
    const-string p1, "VARCHAR"

    .line 280
    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-nez p1, :cond_18

    .line 286
    .line 287
    const-string p1, "VARYING CHARACTER"

    .line 288
    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    if-nez p1, :cond_18

    .line 294
    .line 295
    const-string p1, "NVARCHAR"

    .line 296
    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    if-nez p1, :cond_18

    .line 302
    .line 303
    const-string p1, "TEXT"

    .line 304
    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-eqz p1, :cond_13

    .line 310
    .line 311
    goto :goto_1

    .line 312
    :cond_13
    if-eq v1, v7, :cond_14

    .line 313
    .line 314
    if-ne v1, v8, :cond_16

    .line 315
    .line 316
    :cond_14
    const-string p1, "BINARY"

    .line 317
    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    if-eqz p1, :cond_15

    .line 323
    .line 324
    const/4 p1, -0x2

    .line 325
    return p1

    .line 326
    :cond_15
    if-eq v1, v7, :cond_17

    .line 327
    .line 328
    const-string p1, "BLOB"

    .line 329
    .line 330
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    if-eqz p1, :cond_16

    .line 335
    .line 336
    goto :goto_0

    .line 337
    :cond_16
    return v10

    .line 338
    :cond_17
    :goto_0
    const/16 p1, 0x7d4

    .line 339
    .line 340
    return p1

    .line 341
    :cond_18
    :goto_1
    const/16 p1, 0xc

    .line 342
    .line 343
    return p1

    .line 344
    :cond_19
    :goto_2
    return v2

    .line 345
    :cond_1a
    :goto_3
    return v9

    .line 346
    :cond_1b
    :goto_4
    const/4 p1, 0x6

    .line 347
    return p1

    .line 348
    :cond_1c
    :goto_5
    const/16 p1, 0x8

    .line 349
    .line 350
    return p1

    .line 351
    :cond_1d
    :goto_6
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getLong(I)J

    .line 352
    .line 353
    .line 354
    move-result-wide v0

    .line 355
    const-wide/32 v2, 0x7fffffff

    .line 356
    .line 357
    .line 358
    cmp-long p1, v0, v2

    .line 359
    .line 360
    if-gtz p1, :cond_1f

    .line 361
    .line 362
    const-wide/32 v2, -0x80000000

    .line 363
    .line 364
    .line 365
    cmp-long p1, v0, v2

    .line 366
    .line 367
    if-gez p1, :cond_1e

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_1e
    return v7

    .line 371
    :cond_1f
    :goto_7
    return v11

    .line 372
    :cond_20
    :goto_8
    return v2

    .line 373
    :cond_21
    :goto_9
    return v11

    .line 374
    :cond_22
    :goto_a
    return v8
.end method

.method public getColumnTypeName(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getColumnDeclType(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_TYPENAME:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->checkCol(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eq p1, v1, :cond_4

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    if-eq p1, v0, :cond_3

    .line 40
    .line 41
    const/4 v0, 0x3

    .line 42
    if-eq p1, v0, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    if-eq p1, v0, :cond_1

    .line 46
    .line 47
    const-string p1, "NUMERIC"

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_1
    const-string p1, "BLOB"

    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_2
    const-string p1, "TEXT"

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_3
    const-string p1, "FLOAT"

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_4
    const-string p1, "INTEGER"

    .line 60
    .line 61
    return-object p1
.end method

.method public getConcurrency()I
    .locals 1

    const/16 v0, 0x3ef

    return v0
.end method

.method public getCursorName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/sql/Date;

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetLongCol(I)J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    move-result-wide v3

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    :cond_0
    return-object v2

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnText(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 5
    :cond_2
    :try_start_0
    new-instance v0, Ljava/sql/Date;

    .line 6
    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateFormat()Lorg/sqlite/date/FastDateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/sqlite/date/FastDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Error parsing date"

    invoke-direct {v0, v1, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_3
    new-instance v0, Ljava/sql/Date;

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetDoubleCol(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method

.method public getDate(ILjava/util/Calendar;)Ljava/sql/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->requireCalendarNotNull(Ljava/util/Calendar;)V

    .line 10
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 11
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetLongCol(I)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    move-result-wide v2

    mul-long/2addr v0, v2

    .line 12
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13
    new-instance p1, Ljava/sql/Date;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Date;-><init>(J)V

    return-object p1

    :cond_0
    return-object v2

    .line 14
    :cond_1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnText(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 16
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getDateStringFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    .line 17
    invoke-static {v0, p2}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/sqlite/date/FastDateFormat;

    move-result-object p2

    .line 18
    new-instance v0, Ljava/sql/Date;

    invoke-virtual {p2, p1}, Lorg/sqlite/date/FastDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Ljava/sql/SQLException;

    const-string v0, "Error parsing time stamp"

    invoke-direct {p2, v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 20
    :cond_3
    new-instance v0, Ljava/sql/Date;

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetDoubleCol(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/sql/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Date;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDate(ILjava/util/Calendar;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetDoubleCol(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFetchDirection()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->checkOpen()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    return v0
.end method

.method public getFetchSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/sqlite/core/CoreResultSet;->limitRows:I

    .line 2
    .line 3
    return v0
.end method

.method public getFloat(I)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetDoubleCol(I)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    iget-object v0, v0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    new-instance v1, Latakplugin/atos/l0;

    invoke-direct {v1, p0, p1}, Latakplugin/atos/l0;-><init>(Lorg/sqlite/jdbc3/JDBC3ResultSet;I)V

    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetLongCol(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaData()Ljava/sql/ResultSetMetaData;
    .locals 1

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Ljava/sql/ResultSetMetaData;

    .line 3
    .line 4
    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getBytes(I)[B

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getDouble(I)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    .line 5
    :cond_3
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getLong(I)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_5

    const-wide/32 v2, -0x80000000

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    new-instance p1, Ljava/lang/Integer;

    long-to-int v0, v0

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    .line 7
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPrecision(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getColumnDeclType(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_PRECISION:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v1, ","

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    aget-object p1, p1, v0

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :cond_0
    return v0
.end method

.method public getRow()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/sqlite/core/CoreResultSet;->row:I

    .line 2
    .line 3
    return v0
.end method

.method public getScale(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getColumnDeclType(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/sqlite/jdbc3/JDBC3ResultSet;->COLUMN_PRECISION:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v1, ","

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    array-length v1, p1

    .line 31
    const/4 v2, 0x2

    .line 32
    if-ne v1, v2, :cond_0

    .line 33
    .line 34
    aget-object p1, p1, v0

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    return p1
.end method

.method public getSchemaName(I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    return-object p1
.end method

.method public getShort(I)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getInt(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getStatement()Ljava/sql/Statement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 2
    .line 3
    check-cast v0, Ljava/sql/Statement;

    .line 4
    .line 5
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnTableName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    return-object p1
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/sql/Time;

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetLongCol(I)J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    move-result-wide v3

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    :cond_0
    return-object v2

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnText(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 5
    :cond_2
    :try_start_0
    new-instance v0, Ljava/sql/Time;

    .line 6
    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateFormat()Lorg/sqlite/date/FastDateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/sqlite/date/FastDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Error parsing time"

    invoke-direct {v0, v1, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_3
    new-instance v0, Ljava/sql/Time;

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetDoubleCol(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0
.end method

.method public getTime(ILjava/util/Calendar;)Ljava/sql/Time;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 9
    invoke-direct {p0, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->requireCalendarNotNull(Ljava/util/Calendar;)V

    .line 10
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 11
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetLongCol(I)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    move-result-wide v2

    mul-long/2addr v0, v2

    .line 12
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13
    new-instance p1, Ljava/sql/Time;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Time;-><init>(J)V

    return-object p1

    :cond_0
    return-object v2

    .line 14
    :cond_1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnText(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 16
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getDateStringFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    .line 17
    invoke-static {v0, p2}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/sqlite/date/FastDateFormat;

    move-result-object p2

    .line 18
    new-instance v0, Ljava/sql/Time;

    invoke-virtual {p2, p1}, Lorg/sqlite/date/FastDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/sql/Time;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 19
    new-instance p2, Ljava/sql/SQLException;

    const-string v0, "Error parsing time"

    invoke-direct {p2, v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 20
    :cond_3
    new-instance v0, Ljava/sql/Time;

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetDoubleCol(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/sql/Time;-><init>(J)V

    return-object v0
.end method

.method public getTime(Ljava/lang/String;)Ljava/sql/Time;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTime(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Time;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getTime(ILjava/util/Calendar;)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/sql/Timestamp;

    .line 3
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetLongCol(I)J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    move-result-wide v3

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    :cond_0
    return-object v2

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnText(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 6
    :cond_2
    :try_start_0
    new-instance v0, Ljava/sql/Timestamp;

    .line 7
    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateFormat()Lorg/sqlite/date/FastDateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/sqlite/date/FastDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Error parsing time stamp"

    invoke-direct {v0, v1, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :cond_3
    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetDoubleCol(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0
.end method

.method public getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 10
    invoke-direct {p0, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->requireCalendarNotNull(Ljava/util/Calendar;)V

    .line 11
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 12
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetLongCol(I)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/sqlite/SQLiteConnectionConfig;->getDateMultiplier()J

    move-result-wide v2

    mul-long/2addr v0, v2

    .line 13
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 14
    new-instance p1, Ljava/sql/Timestamp;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p1

    :cond_0
    return-object v2

    .line 15
    :cond_1
    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnText(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 17
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->getConnectionConfig()Lorg/sqlite/SQLiteConnectionConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sqlite/SQLiteConnectionConfig;->getDateStringFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    .line 18
    invoke-static {v0, p2}, Lorg/sqlite/date/FastDateFormat;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lorg/sqlite/date/FastDateFormat;

    move-result-object p2

    .line 19
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p2, p1}, Lorg/sqlite/date/FastDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Ljava/sql/Timestamp;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Ljava/sql/SQLException;

    const-string v0, "Error parsing time stamp"

    invoke-direct {p2, v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 21
    :cond_3
    new-instance p2, Ljava/sql/Timestamp;

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetDoubleCol(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->julianDateToCalendar(Ljava/lang/Double;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    return-object p2
.end method

.method public getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(Ljava/lang/String;Ljava/util/Calendar;)Ljava/sql/Timestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->findColumn(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getTimestamp(ILjava/util/Calendar;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x3eb

    return v0
.end method

.method public getWarnings()Ljava/sql/SQLWarning;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAfterLast()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->pastLastRow:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->emptyResultSet:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public isAutoIncrement(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->checkMeta()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->meta:[[Z

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->checkCol(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget-object p1, v0, p1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    aget-boolean p1, p1, v0

    .line 14
    .line 15
    return p1
.end method

.method public isBeforeFirst()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->emptyResultSet:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->open:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lorg/sqlite/core/CoreResultSet;->row:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public isCaseSensitive(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isCurrency(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isDefinitelyWritable(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isFirst()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/sqlite/core/CoreResultSet;->row:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public isLast()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    .line 2
    .line 3
    const-string v1, "not supported by sqlite"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/sql/SQLFeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public isNullable(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->checkMeta()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->meta:[[Z

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/sqlite/core/CoreResultSet;->checkCol(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget-object p1, v0, p1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    aget-boolean p1, p1, v0

    .line 14
    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    return p1
.end method

.method public isReadOnly(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSearchable(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isSigned(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->getColumnTypeName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "NUMERIC"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, "INTEGER"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "REAL"

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    return p1
.end method

.method public isWritable(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public next()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->open:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->emptyResultSet:Z

    .line 7
    .line 8
    if-nez v0, :cond_5

    .line 9
    .line 10
    iget-boolean v0, p0, Lorg/sqlite/core/CoreResultSet;->pastLastRow:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lorg/sqlite/core/CoreResultSet;->lastCol:I

    .line 17
    .line 18
    iget v0, p0, Lorg/sqlite/core/CoreResultSet;->row:I

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    add-int/2addr v0, v2

    .line 24
    iput v0, p0, Lorg/sqlite/core/CoreResultSet;->row:I

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    iget-wide v3, p0, Lorg/sqlite/core/CoreResultSet;->maxRows:J

    .line 28
    .line 29
    const-wide/16 v5, 0x0

    .line 30
    .line 31
    cmp-long v5, v3, v5

    .line 32
    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    int-to-long v5, v0

    .line 36
    cmp-long v0, v5, v3

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 42
    .line 43
    iget-object v0, v0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 44
    .line 45
    new-instance v3, Latakplugin/atos/M;

    .line 46
    .line 47
    invoke-direct {v3}, Latakplugin/atos/M;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const/16 v3, 0x64

    .line 55
    .line 56
    if-eq v0, v3, :cond_4

    .line 57
    .line 58
    const/16 v3, 0x65

    .line 59
    .line 60
    if-eq v0, v3, :cond_3

    .line 61
    .line 62
    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->getDatabase()Lorg/sqlite/core/DB;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2, v0}, Lorg/sqlite/core/DB;->throwex(I)V

    .line 67
    .line 68
    .line 69
    return v1

    .line 70
    :cond_3
    iput-boolean v2, p0, Lorg/sqlite/core/CoreResultSet;->pastLastRow:Z

    .line 71
    .line 72
    return v1

    .line 73
    :cond_4
    iget v0, p0, Lorg/sqlite/core/CoreResultSet;->row:I

    .line 74
    .line 75
    add-int/2addr v0, v2

    .line 76
    iput v0, p0, Lorg/sqlite/core/CoreResultSet;->row:I

    .line 77
    .line 78
    return v2

    .line 79
    :cond_5
    :goto_0
    return v1
.end method

.method public rowDeleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rowInserted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rowUpdated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected safeGetColumnType(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/sqlite/core/CoreResultSet;->stmt:Lorg/sqlite/core/CoreStatement;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/sqlite/core/CoreStatement;->pointer:Lorg/sqlite/core/SafeStmtPtr;

    .line 4
    .line 5
    new-instance v1, Latakplugin/atos/o0;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Latakplugin/atos/o0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lorg/sqlite/core/SafeStmtPtr;->safeRunInt(Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public setFetchDirection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/sqlite/core/CoreResultSet;->checkOpen()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    .line 10
    .line 11
    const-string v0, "only FETCH_FORWARD direction supported"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public setFetchSize(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-wide v0, p0, Lorg/sqlite/core/CoreResultSet;->maxRows:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    int-to-long v2, p1

    .line 12
    cmp-long v0, v2, v0

    .line 13
    .line 14
    if-gtz v0, :cond_1

    .line 15
    .line 16
    :cond_0
    iput p1, p0, Lorg/sqlite/core/CoreResultSet;->limitRows:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    new-instance v0, Ljava/sql/SQLException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "fetch size "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " out of bounds "

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-wide v2, p0, Lorg/sqlite/core/CoreResultSet;->maxRows:J

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public wasNull()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/sqlite/core/CoreResultSet;->lastCol:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/sqlite/core/CoreResultSet;->markCol(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->safeGetColumnType(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x5

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method
