.class public final enum Lkot/Affiliation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkot/Affiliation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkot/Affiliation;

.field public static final enum ASSUMED_FRIEND:Lkot/Affiliation;

.field public static final enum FAKER:Lkot/Affiliation;

.field public static final enum FRIEND:Lkot/Affiliation;

.field public static final enum HOSTILE:Lkot/Affiliation;

.field public static final enum JOKER:Lkot/Affiliation;

.field public static final enum NEUTRAL:Lkot/Affiliation;

.field public static final enum OTHER:Lkot/Affiliation;

.field public static final enum PENDING:Lkot/Affiliation;

.field public static final enum SUSPECT:Lkot/Affiliation;

.field public static final enum UNKNOWN:Lkot/Affiliation;

.field public static final enum UNSPECIFIED:Lkot/Affiliation;


# direct methods
.method private static final synthetic $values()[Lkot/Affiliation;
    .locals 11

    sget-object v0, Lkot/Affiliation;->ASSUMED_FRIEND:Lkot/Affiliation;

    sget-object v1, Lkot/Affiliation;->FRIEND:Lkot/Affiliation;

    sget-object v2, Lkot/Affiliation;->HOSTILE:Lkot/Affiliation;

    sget-object v3, Lkot/Affiliation;->JOKER:Lkot/Affiliation;

    sget-object v4, Lkot/Affiliation;->FAKER:Lkot/Affiliation;

    sget-object v5, Lkot/Affiliation;->NEUTRAL:Lkot/Affiliation;

    sget-object v6, Lkot/Affiliation;->UNSPECIFIED:Lkot/Affiliation;

    sget-object v7, Lkot/Affiliation;->PENDING:Lkot/Affiliation;

    sget-object v8, Lkot/Affiliation;->SUSPECT:Lkot/Affiliation;

    sget-object v9, Lkot/Affiliation;->OTHER:Lkot/Affiliation;

    sget-object v10, Lkot/Affiliation;->UNKNOWN:Lkot/Affiliation;

    filled-new-array/range {v0 .. v10}, [Lkot/Affiliation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkot/Affiliation;

    .line 2
    .line 3
    const-string v1, "ASSUMED_FRIEND"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lkot/Affiliation;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lkot/Affiliation;->ASSUMED_FRIEND:Lkot/Affiliation;

    .line 10
    .line 11
    new-instance v0, Lkot/Affiliation;

    .line 12
    .line 13
    const-string v1, "FRIEND"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lkot/Affiliation;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lkot/Affiliation;->FRIEND:Lkot/Affiliation;

    .line 20
    .line 21
    new-instance v0, Lkot/Affiliation;

    .line 22
    .line 23
    const-string v1, "HOSTILE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lkot/Affiliation;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lkot/Affiliation;->HOSTILE:Lkot/Affiliation;

    .line 30
    .line 31
    new-instance v0, Lkot/Affiliation;

    .line 32
    .line 33
    const-string v1, "JOKER"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lkot/Affiliation;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lkot/Affiliation;->JOKER:Lkot/Affiliation;

    .line 40
    .line 41
    new-instance v0, Lkot/Affiliation;

    .line 42
    .line 43
    const-string v1, "FAKER"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lkot/Affiliation;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lkot/Affiliation;->FAKER:Lkot/Affiliation;

    .line 50
    .line 51
    new-instance v0, Lkot/Affiliation;

    .line 52
    .line 53
    const-string v1, "NEUTRAL"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lkot/Affiliation;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lkot/Affiliation;->NEUTRAL:Lkot/Affiliation;

    .line 60
    .line 61
    new-instance v0, Lkot/Affiliation;

    .line 62
    .line 63
    const-string v1, "UNSPECIFIED"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lkot/Affiliation;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lkot/Affiliation;->UNSPECIFIED:Lkot/Affiliation;

    .line 70
    .line 71
    new-instance v0, Lkot/Affiliation;

    .line 72
    .line 73
    const-string v1, "PENDING"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lkot/Affiliation;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lkot/Affiliation;->PENDING:Lkot/Affiliation;

    .line 80
    .line 81
    new-instance v0, Lkot/Affiliation;

    .line 82
    .line 83
    const-string v1, "SUSPECT"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lkot/Affiliation;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lkot/Affiliation;->SUSPECT:Lkot/Affiliation;

    .line 91
    .line 92
    new-instance v0, Lkot/Affiliation;

    .line 93
    .line 94
    const-string v1, "OTHER"

    .line 95
    .line 96
    const/16 v2, 0x9

    .line 97
    .line 98
    invoke-direct {v0, v1, v2}, Lkot/Affiliation;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lkot/Affiliation;->OTHER:Lkot/Affiliation;

    .line 102
    .line 103
    new-instance v0, Lkot/Affiliation;

    .line 104
    .line 105
    const-string v1, "UNKNOWN"

    .line 106
    .line 107
    const/16 v2, 0xa

    .line 108
    .line 109
    invoke-direct {v0, v1, v2}, Lkot/Affiliation;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lkot/Affiliation;->UNKNOWN:Lkot/Affiliation;

    .line 113
    .line 114
    invoke-static {}, Lkot/Affiliation;->$values()[Lkot/Affiliation;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lkot/Affiliation;->$VALUES:[Lkot/Affiliation;

    .line 119
    .line 120
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkot/Affiliation;
    .locals 1

    const-class v0, Lkot/Affiliation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkot/Affiliation;

    return-object p0
.end method

.method public static values()[Lkot/Affiliation;
    .locals 1

    sget-object v0, Lkot/Affiliation;->$VALUES:[Lkot/Affiliation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkot/Affiliation;

    return-object v0
.end method
