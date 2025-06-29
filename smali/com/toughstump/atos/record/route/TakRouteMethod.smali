.class public final enum Lcom/toughstump/atos/record/route/TakRouteMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/toughstump/atos/record/route/TakRouteMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/toughstump/atos/record/route/TakRouteMethod;

.field public static final enum Driving:Lcom/toughstump/atos/record/route/TakRouteMethod;

.field public static final enum Flying:Lcom/toughstump/atos/record/route/TakRouteMethod;

.field public static final enum Swimming:Lcom/toughstump/atos/record/route/TakRouteMethod;

.field public static final enum Walking:Lcom/toughstump/atos/record/route/TakRouteMethod;

.field public static final enum Watercraft:Lcom/toughstump/atos/record/route/TakRouteMethod;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lcom/toughstump/atos/record/route/TakRouteMethod;
    .locals 5

    sget-object v0, Lcom/toughstump/atos/record/route/TakRouteMethod;->Driving:Lcom/toughstump/atos/record/route/TakRouteMethod;

    sget-object v1, Lcom/toughstump/atos/record/route/TakRouteMethod;->Flying:Lcom/toughstump/atos/record/route/TakRouteMethod;

    sget-object v2, Lcom/toughstump/atos/record/route/TakRouteMethod;->Walking:Lcom/toughstump/atos/record/route/TakRouteMethod;

    sget-object v3, Lcom/toughstump/atos/record/route/TakRouteMethod;->Swimming:Lcom/toughstump/atos/record/route/TakRouteMethod;

    sget-object v4, Lcom/toughstump/atos/record/route/TakRouteMethod;->Watercraft:Lcom/toughstump/atos/record/route/TakRouteMethod;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/toughstump/atos/record/route/TakRouteMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 2
    .line 3
    const-string v1, "Driving"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/toughstump/atos/record/route/TakRouteMethod;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/toughstump/atos/record/route/TakRouteMethod;->Driving:Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 10
    .line 11
    new-instance v0, Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 12
    .line 13
    const-string v1, "Flying"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/toughstump/atos/record/route/TakRouteMethod;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/toughstump/atos/record/route/TakRouteMethod;->Flying:Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 20
    .line 21
    new-instance v0, Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 22
    .line 23
    const-string v1, "Walking"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/toughstump/atos/record/route/TakRouteMethod;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/toughstump/atos/record/route/TakRouteMethod;->Walking:Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 30
    .line 31
    new-instance v0, Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 32
    .line 33
    const-string v1, "Swimming"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/toughstump/atos/record/route/TakRouteMethod;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/toughstump/atos/record/route/TakRouteMethod;->Swimming:Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 40
    .line 41
    new-instance v0, Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 42
    .line 43
    const-string v1, "Watercraft"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/toughstump/atos/record/route/TakRouteMethod;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/toughstump/atos/record/route/TakRouteMethod;->Watercraft:Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 50
    .line 51
    invoke-static {}, Lcom/toughstump/atos/record/route/TakRouteMethod;->$values()[Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/toughstump/atos/record/route/TakRouteMethod;->$VALUES:[Lcom/toughstump/atos/record/route/TakRouteMethod;

    .line 56
    .line 57
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
    iput p3, p0, Lcom/toughstump/atos/record/route/TakRouteMethod;->code:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toughstump/atos/record/route/TakRouteMethod;
    .locals 1

    const-class v0, Lcom/toughstump/atos/record/route/TakRouteMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/record/route/TakRouteMethod;

    return-object p0
.end method

.method public static values()[Lcom/toughstump/atos/record/route/TakRouteMethod;
    .locals 1

    sget-object v0, Lcom/toughstump/atos/record/route/TakRouteMethod;->$VALUES:[Lcom/toughstump/atos/record/route/TakRouteMethod;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/toughstump/atos/record/route/TakRouteMethod;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/record/route/TakRouteMethod;->code:I

    .line 2
    .line 3
    return v0
.end method
