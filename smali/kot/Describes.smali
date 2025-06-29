.class public final enum Lkot/Describes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkot/Describes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkot/Describes;

.field public static final enum ATOMS:Lkot/Describes;

.field public static final enum BITS:Lkot/Describes;

.field public static final enum CAPABILITY:Lkot/Describes;

.field public static final enum REPLY:Lkot/Describes;

.field public static final enum RESERVATION:Lkot/Describes;

.field public static final enum SERVICE:Lkot/Describes;

.field public static final enum TASKING:Lkot/Describes;

.field public static final enum UNKNOWN:Lkot/Describes;


# direct methods
.method private static final synthetic $values()[Lkot/Describes;
    .locals 8

    sget-object v0, Lkot/Describes;->ATOMS:Lkot/Describes;

    sget-object v1, Lkot/Describes;->BITS:Lkot/Describes;

    sget-object v2, Lkot/Describes;->CAPABILITY:Lkot/Describes;

    sget-object v3, Lkot/Describes;->RESERVATION:Lkot/Describes;

    sget-object v4, Lkot/Describes;->SERVICE:Lkot/Describes;

    sget-object v5, Lkot/Describes;->TASKING:Lkot/Describes;

    sget-object v6, Lkot/Describes;->REPLY:Lkot/Describes;

    sget-object v7, Lkot/Describes;->UNKNOWN:Lkot/Describes;

    filled-new-array/range {v0 .. v7}, [Lkot/Describes;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkot/Describes;

    .line 2
    .line 3
    const-string v1, "ATOMS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lkot/Describes;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lkot/Describes;->ATOMS:Lkot/Describes;

    .line 10
    .line 11
    new-instance v0, Lkot/Describes;

    .line 12
    .line 13
    const-string v1, "BITS"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lkot/Describes;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lkot/Describes;->BITS:Lkot/Describes;

    .line 20
    .line 21
    new-instance v0, Lkot/Describes;

    .line 22
    .line 23
    const-string v1, "CAPABILITY"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lkot/Describes;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lkot/Describes;->CAPABILITY:Lkot/Describes;

    .line 30
    .line 31
    new-instance v0, Lkot/Describes;

    .line 32
    .line 33
    const-string v1, "RESERVATION"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lkot/Describes;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lkot/Describes;->RESERVATION:Lkot/Describes;

    .line 40
    .line 41
    new-instance v0, Lkot/Describes;

    .line 42
    .line 43
    const-string v1, "SERVICE"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lkot/Describes;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lkot/Describes;->SERVICE:Lkot/Describes;

    .line 50
    .line 51
    new-instance v0, Lkot/Describes;

    .line 52
    .line 53
    const-string v1, "TASKING"

    .line 54
    .line 55
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lkot/Describes;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lkot/Describes;->TASKING:Lkot/Describes;

    .line 60
    .line 61
    new-instance v0, Lkot/Describes;

    .line 62
    .line 63
    const-string v1, "REPLY"

    .line 64
    .line 65
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lkot/Describes;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lkot/Describes;->REPLY:Lkot/Describes;

    .line 70
    .line 71
    new-instance v0, Lkot/Describes;

    .line 72
    .line 73
    const-string v1, "UNKNOWN"

    .line 74
    .line 75
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lkot/Describes;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lkot/Describes;->UNKNOWN:Lkot/Describes;

    .line 80
    .line 81
    invoke-static {}, Lkot/Describes;->$values()[Lkot/Describes;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lkot/Describes;->$VALUES:[Lkot/Describes;

    .line 86
    .line 87
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

.method public static valueOf(Ljava/lang/String;)Lkot/Describes;
    .locals 1

    const-class v0, Lkot/Describes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkot/Describes;

    return-object p0
.end method

.method public static values()[Lkot/Describes;
    .locals 1

    sget-object v0, Lkot/Describes;->$VALUES:[Lkot/Describes;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkot/Describes;

    return-object v0
.end method
