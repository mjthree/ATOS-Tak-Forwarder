.class public final enum Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

.field public static final enum Driving:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

.field public static final enum Flying:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

.field public static final enum Swimming:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

.field public static final enum Walking:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

.field public static final enum Watercraft:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;


# instance fields
.field private final code:I


# direct methods
.method private static final synthetic $values()[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;
    .locals 5

    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->Driving:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    sget-object v1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->Flying:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    sget-object v2, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->Walking:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    sget-object v3, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->Swimming:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    sget-object v4, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->Watercraft:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 2
    .line 3
    const-string v1, "Driving"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->Driving:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 10
    .line 11
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 12
    .line 13
    const-string v1, "Flying"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->Flying:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 20
    .line 21
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 22
    .line 23
    const-string v1, "Walking"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->Walking:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 30
    .line 31
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 32
    .line 33
    const-string v1, "Swimming"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->Swimming:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 40
    .line 41
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 42
    .line 43
    const-string v1, "Watercraft"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->Watercraft:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 50
    .line 51
    invoke-static {}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->$values()[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->$VALUES:[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 62
    .line 63
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
    iput p3, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->code:I

    .line 5
    .line 6
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->$VALUES:[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteMethod;->code:I

    .line 2
    .line 3
    return v0
.end method
