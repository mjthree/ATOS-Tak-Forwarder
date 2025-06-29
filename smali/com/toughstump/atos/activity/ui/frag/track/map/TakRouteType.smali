.class public final enum Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

.field public static final enum Primary:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

.field public static final enum Secondary:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;


# instance fields
.field private final id:I

.field private final text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;
    .locals 2

    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->Primary:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    sget-object v1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->Secondary:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    filled-new-array {v0, v1}, [Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    .line 2
    .line 3
    const-string v1, "Primary"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2, v1}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->Primary:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    .line 10
    .line 11
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    .line 12
    .line 13
    const-string v1, "Secondary"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2, v1}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->Secondary:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    .line 20
    .line 21
    invoke-static {}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->$values()[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->$VALUES:[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 32
    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->id:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->text:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;
    .locals 1

    .line 1
    const-class v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->$VALUES:[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteType;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
