.class public final enum Lorg/sqlite/SQLiteLimits;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sqlite/SQLiteLimits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sqlite/SQLiteLimits;

.field public static final enum SQLITE_LIMIT_ATTACHED:Lorg/sqlite/SQLiteLimits;

.field public static final enum SQLITE_LIMIT_COLUMN:Lorg/sqlite/SQLiteLimits;

.field public static final enum SQLITE_LIMIT_COMPOUND_SELECT:Lorg/sqlite/SQLiteLimits;

.field public static final enum SQLITE_LIMIT_EXPR_DEPTH:Lorg/sqlite/SQLiteLimits;

.field public static final enum SQLITE_LIMIT_FUNCTION_ARG:Lorg/sqlite/SQLiteLimits;

.field public static final enum SQLITE_LIMIT_LENGTH:Lorg/sqlite/SQLiteLimits;

.field public static final enum SQLITE_LIMIT_LIKE_PATTERN_LENGTH:Lorg/sqlite/SQLiteLimits;

.field public static final enum SQLITE_LIMIT_PAGE_COUNT:Lorg/sqlite/SQLiteLimits;

.field public static final enum SQLITE_LIMIT_SQL_LENGTH:Lorg/sqlite/SQLiteLimits;

.field public static final enum SQLITE_LIMIT_TRIGGER_DEPTH:Lorg/sqlite/SQLiteLimits;

.field public static final enum SQLITE_LIMIT_VARIABLE_NUMBER:Lorg/sqlite/SQLiteLimits;

.field public static final enum SQLITE_LIMIT_VDBE_OP:Lorg/sqlite/SQLiteLimits;

.field public static final enum SQLITE_LIMIT_WORKER_THREADS:Lorg/sqlite/SQLiteLimits;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lorg/sqlite/SQLiteLimits;

    .line 2
    .line 3
    const-string v1, "SQLITE_LIMIT_LENGTH"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lorg/sqlite/SQLiteLimits;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_LENGTH:Lorg/sqlite/SQLiteLimits;

    .line 10
    .line 11
    new-instance v1, Lorg/sqlite/SQLiteLimits;

    .line 12
    .line 13
    const-string v2, "SQLITE_LIMIT_SQL_LENGTH"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lorg/sqlite/SQLiteLimits;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_SQL_LENGTH:Lorg/sqlite/SQLiteLimits;

    .line 20
    .line 21
    new-instance v2, Lorg/sqlite/SQLiteLimits;

    .line 22
    .line 23
    const-string v3, "SQLITE_LIMIT_COLUMN"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lorg/sqlite/SQLiteLimits;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_COLUMN:Lorg/sqlite/SQLiteLimits;

    .line 30
    .line 31
    new-instance v3, Lorg/sqlite/SQLiteLimits;

    .line 32
    .line 33
    const-string v4, "SQLITE_LIMIT_EXPR_DEPTH"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Lorg/sqlite/SQLiteLimits;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_EXPR_DEPTH:Lorg/sqlite/SQLiteLimits;

    .line 40
    .line 41
    new-instance v4, Lorg/sqlite/SQLiteLimits;

    .line 42
    .line 43
    const-string v5, "SQLITE_LIMIT_COMPOUND_SELECT"

    .line 44
    .line 45
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6, v6}, Lorg/sqlite/SQLiteLimits;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v4, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_COMPOUND_SELECT:Lorg/sqlite/SQLiteLimits;

    .line 50
    .line 51
    new-instance v5, Lorg/sqlite/SQLiteLimits;

    .line 52
    .line 53
    const-string v6, "SQLITE_LIMIT_VDBE_OP"

    .line 54
    .line 55
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7, v7}, Lorg/sqlite/SQLiteLimits;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v5, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_VDBE_OP:Lorg/sqlite/SQLiteLimits;

    .line 60
    .line 61
    new-instance v6, Lorg/sqlite/SQLiteLimits;

    .line 62
    .line 63
    const-string v7, "SQLITE_LIMIT_FUNCTION_ARG"

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8, v8}, Lorg/sqlite/SQLiteLimits;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    sput-object v6, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_FUNCTION_ARG:Lorg/sqlite/SQLiteLimits;

    .line 70
    .line 71
    new-instance v7, Lorg/sqlite/SQLiteLimits;

    .line 72
    .line 73
    const-string v8, "SQLITE_LIMIT_ATTACHED"

    .line 74
    .line 75
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9, v9}, Lorg/sqlite/SQLiteLimits;-><init>(Ljava/lang/String;II)V

    .line 77
    .line 78
    .line 79
    sput-object v7, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_ATTACHED:Lorg/sqlite/SQLiteLimits;

    .line 80
    .line 81
    new-instance v8, Lorg/sqlite/SQLiteLimits;

    .line 82
    .line 83
    const-string v9, "SQLITE_LIMIT_LIKE_PATTERN_LENGTH"

    .line 84
    .line 85
    const/16 v10, 0x8

    .line 86
    .line 87
    invoke-direct {v8, v9, v10, v10}, Lorg/sqlite/SQLiteLimits;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v8, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_LIKE_PATTERN_LENGTH:Lorg/sqlite/SQLiteLimits;

    .line 91
    .line 92
    new-instance v9, Lorg/sqlite/SQLiteLimits;

    .line 93
    .line 94
    const-string v10, "SQLITE_LIMIT_VARIABLE_NUMBER"

    .line 95
    .line 96
    const/16 v11, 0x9

    .line 97
    .line 98
    invoke-direct {v9, v10, v11, v11}, Lorg/sqlite/SQLiteLimits;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v9, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_VARIABLE_NUMBER:Lorg/sqlite/SQLiteLimits;

    .line 102
    .line 103
    new-instance v10, Lorg/sqlite/SQLiteLimits;

    .line 104
    .line 105
    const-string v11, "SQLITE_LIMIT_TRIGGER_DEPTH"

    .line 106
    .line 107
    const/16 v12, 0xa

    .line 108
    .line 109
    invoke-direct {v10, v11, v12, v12}, Lorg/sqlite/SQLiteLimits;-><init>(Ljava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    sput-object v10, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_TRIGGER_DEPTH:Lorg/sqlite/SQLiteLimits;

    .line 113
    .line 114
    new-instance v11, Lorg/sqlite/SQLiteLimits;

    .line 115
    .line 116
    const-string v12, "SQLITE_LIMIT_WORKER_THREADS"

    .line 117
    .line 118
    const/16 v13, 0xb

    .line 119
    .line 120
    invoke-direct {v11, v12, v13, v13}, Lorg/sqlite/SQLiteLimits;-><init>(Ljava/lang/String;II)V

    .line 121
    .line 122
    .line 123
    sput-object v11, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_WORKER_THREADS:Lorg/sqlite/SQLiteLimits;

    .line 124
    .line 125
    new-instance v12, Lorg/sqlite/SQLiteLimits;

    .line 126
    .line 127
    const-string v13, "SQLITE_LIMIT_PAGE_COUNT"

    .line 128
    .line 129
    const/16 v14, 0xc

    .line 130
    .line 131
    invoke-direct {v12, v13, v14, v14}, Lorg/sqlite/SQLiteLimits;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    sput-object v12, Lorg/sqlite/SQLiteLimits;->SQLITE_LIMIT_PAGE_COUNT:Lorg/sqlite/SQLiteLimits;

    .line 135
    .line 136
    filled-new-array/range {v0 .. v12}, [Lorg/sqlite/SQLiteLimits;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sput-object v0, Lorg/sqlite/SQLiteLimits;->$VALUES:[Lorg/sqlite/SQLiteLimits;

    .line 141
    .line 142
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/sqlite/SQLiteLimits;->id:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sqlite/SQLiteLimits;
    .locals 1

    .line 1
    const-class v0, Lorg/sqlite/SQLiteLimits;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/sqlite/SQLiteLimits;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/sqlite/SQLiteLimits;
    .locals 1

    .line 1
    sget-object v0, Lorg/sqlite/SQLiteLimits;->$VALUES:[Lorg/sqlite/SQLiteLimits;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/sqlite/SQLiteLimits;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/sqlite/SQLiteLimits;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/sqlite/SQLiteLimits;->id:I

    .line 2
    .line 3
    return v0
.end method
